;;;; font-loader-interface.lisp — Initialization and entry points for font-loader
;;;; Copyright (c) 2006 Zachary Beane, 2026 Arthur Miller and contributors
;;;; SPDX-License-Identifier: BSD-2-Clause

(in-package #:zpb-ttf)

(defun close-font-loader (font-loader)
  (when (input-stream font-loader)
    (close (input-stream font-loader))
    (setf (input-stream font-loader) nil))
  font-loader)

(defmacro with-font-loader ((loader thing &rest args) &body body)
  `(let ((,loader (open-font-loader ,thing ,@args)))
     (unwind-protect
          (progn ,@body)
       (close-font-loader ,loader))))

(defun decode-name-string-from-fd (fd offset length platform-id encoding-id)
  (cond
    ;; UTF-16BE: platform 0 (Unicode) or platform 3 (Windows) with encoding 1 or 10
    ((or (zerop platform-id)
         (and (= platform-id 3) (or (= encoding-id 1) (= encoding-id 10))))
     (let ((str (make-string (/ length 2))))
       (dotimes (i (/ length 2) str)
         (let ((code (zpb-otf:font-data-read-u16 fd (+ offset (* i 2)))))
           (setf (char str i) (code-char code))))))
    ;; Latin/MacRoman/ASCII:
    (t
     (let ((str (make-string length)))
       (dotimes (i length str)
         (setf (char str i) (code-char (zpb-otf:font-data-read-u8 fd (+ offset i)))))))))

(defun setup-cmap-lookup (loader cmap cmap-offset)
  (let ((fd (font-data loader))
        (best-fmt nil)
        (best-sub-off nil))
    ;; Look for Format 12 (preferred full Unicode) or Format 4 (BMP Unicode)
    (dotimes (i (zpb-otf:cmap-num-tables cmap))
      (let* ((erec (zpb-otf:cmap-encoding-records-ref cmap i))
             (plat (zpb-otf:encoding-record-platform-id erec))
             (enc (zpb-otf:encoding-record-encoding-id erec))
             (sub-off (+ cmap-offset (zpb-otf:encoding-record-subtable-offset erec)))
             (fmt (zpb-otf:font-data-read-u16 fd sub-off)))
        (cond
          ((and (= fmt 12) (or (= plat 0) (= plat 3)))
           (setf best-fmt 12 best-sub-off sub-off)
           (return))
          ((and (= fmt 4) (or (= plat 0) (and (= plat 3) (or (= enc 1) (= enc 10)))))
           (unless (eql best-fmt 12)
             (setf best-fmt 4 best-sub-off sub-off))))))

    (cond
      ((eql best-fmt 12)
       (let* ((cmap12 (zpb-otf:read-cmap12 fd best-sub-off))
              (num-groups (zpb-otf:cmap12-num-groups cmap12)))
         (setf (cmap-lookup-fn loader)
               (lambda (cp)
                 (let ((low 0)
                       (high (1- num-groups)))
                   (loop while (<= low high) do
                         (let* ((mid (floor (+ low high) 2))
                                (grp (zpb-otf:cmap12-groups-ref cmap12 mid))
                                (start (zpb-otf:sequential-map-group-start-char-code grp))
                                (end (zpb-otf:sequential-map-group-end-char-code grp)))
                           (cond
                             ((< cp start) (setf high (1- mid)))
                             ((> cp end) (setf low (1+ mid)))
                             (t (return-from nil
                                  (+ (zpb-otf:sequential-map-group-start-glyph-id grp)
                                     (- cp start)))))))
                   0)))))

      ((eql best-fmt 4)
       (let* ((cmap4 (zpb-otf:read-cmap4 fd best-sub-off))
              (seg-len (/ (zpb-otf:cmap4-seg-count-x2 cmap4) 2)))
         (setf (cmap-lookup-fn loader)
               (lambda (cp)
                 (if (> cp #xFFFF)
                     0
                     (dotimes (s seg-len 0)
                       (let ((end (zpb-otf:cmap4-end-code-ref cmap4 s)))
                         (when (<= cp end)
                           (let ((start (zpb-otf:cmap4-start-code-ref cmap4 s))
                                 (delta (zpb-otf:cmap4-id-delta-ref cmap4 s))
                                 (ro-off (zpb-otf:cmap4-id-range-offsets-ref cmap4 s)))
                             (return
                               (if (< cp start)
                                   0
                                   (if (zerop ro-off)
                                       (logand #xFFFF (+ cp delta))
                                       (let* ((ro-addr (+ best-sub-off 14 (* 2 seg-len) 2 (* 2 seg-len) (* 2 seg-len) (* 2 s)))
                                              (g-addr (+ ro-addr ro-off (* 2 (- cp start))))
                                              (gid (zpb-otf:font-data-read-u16 fd g-addr)))
                                         (if (zerop gid) 0 (logand #xFFFF (+ gid delta))))))))))))))))
      (t
       (setf (cmap-lookup-fn loader) (constantly 0))))))

(defun open-font-loader-from-data (data &key (collection-index 0) input-stream)
  (let* ((sfnt-magic (zpb-otf:font-data-read-u32 data 0))
         (font-offset 0)
         (coll-count nil)
         (coll-idx nil))

    ;; Handle Font Collection (ttcf)
    (when (= sfnt-magic #x74746366)
      (let ((num-fonts (zpb-otf:font-data-read-u32 data 8)))
        (setf coll-count num-fonts coll-idx collection-index)
        (when (>= collection-index num-fonts)
          (error 'unsupported-value
                 :description "Font index out of range in collection"
                 :actual-value collection-index
                 :expected-values (list num-fonts)))
        (setf font-offset (zpb-otf:font-data-read-u32 data (+ 12 (* collection-index 4))))))

    (let* ((dir (zpb-otf:read-table-directory data font-offset))
           (num-tables (zpb-otf:table-directory-num-tables dir))
           (loader (make-instance 'font-loader
                                  :font-data data
                                  :input-stream input-stream
                                  :table-count num-tables
                                  :collection-font-count coll-count
                                  :collection-font-index coll-idx)))

      ;; Register table-info
      (dotimes (i num-tables)
        (let* ((rec (zpb-otf:table-directory-table-records-ref dir i))
               (tag (zpb-otf:table-record-tag rec))
               (t-off (zpb-otf:table-record-offset rec))
               (t-len (zpb-otf:table-record-length rec)))
          (setf (gethash tag (tables loader))
                (make-instance 'table-info :name tag :offset t-off :size t-len))))

      ;; 1. MAXP table
      (let ((info (table-info "maxp" loader)))
        (when info
          (let ((maxp (zpb-otf:read-maxp data (offset info) (size info))))
            (setf (glyph-count loader) (zpb-otf:maxp-num-glyphs maxp)))))

      ;; 2. HEAD table
      (let ((info (table-info "head" loader)))
        (when info
          (let ((head (zpb-otf:read-head data (offset info) (size info))))
            (setf (units/em loader) (zpb-otf:head-units-per-em head)
                  (bounding-box loader) (vector (zpb-otf:head-x-min head)
                                               (zpb-otf:head-y-min head)
                                               (zpb-otf:head-x-max head)
                                               (zpb-otf:head-y-max head))
                  (loca-offset-format loader) (if (zerop (zpb-otf:head-index-to-loc-format head))
                                                  :short
                                                  :long)))))

      ;; 3. HHEA & HMTX tables
      (let ((hhea-info (table-info "hhea" loader))
            (hmtx-info (table-info "hmtx" loader)))
        (when hhea-info
          (let* ((hhea (zpb-otf:read-hhea data (offset hhea-info) (size hhea-info)))
                 (num-h-metrics (zpb-otf:hhea-number-of-h-metrics hhea)))
            (setf (ascender loader) (zpb-otf:hhea-ascender hhea)
                  (descender loader) (zpb-otf:hhea-descender hhea)
                  (line-gap loader) (zpb-otf:hhea-line-gap hhea)
                  (max-width loader) (zpb-otf:hhea-advance-width-max hhea))
            (when hmtx-info
              (let* ((hmtx (zpb-otf:read-hmtx data (offset hmtx-info) (size hmtx-info)))
                     (widths (make-array num-h-metrics))
                     (lsbs (make-array num-h-metrics)))
                (dotimes (i num-h-metrics)
                  (let ((mrec (zpb-otf:hmtx-h-metrics-ref hmtx i)))
                    (setf (aref widths i) (zpb-otf:long-metric-advance mrec)
                          (aref lsbs i) (zpb-otf:long-metric-side-bearing mrec))))
                (setf (advance-widths loader) widths
                      (left-side-bearings loader) lsbs))))))

      ;; 4. VHEA & VMTX tables (with horizontal metrics fallback)
      (let ((vhea-info (table-info "vhea" loader))
            (vmtx-info (table-info "vmtx" loader)))
        (cond
          ((and vhea-info vmtx-info)
           (let* ((vhea (zpb-otf:read-vhea data (offset vhea-info) (size vhea-info)))
                  (num-v-metrics (zpb-otf:vhea-number-of-long-ver-metrics vhea))
                  (vmtx (zpb-otf:read-vmtx data (offset vmtx-info) (size vmtx-info)))
                  (heights (make-array num-v-metrics))
                  (tsbs (make-array num-v-metrics)))
             (setf (vascender loader) (zpb-otf:vhea-ascender vhea)
                   (vdescender loader) (zpb-otf:vhea-descender vhea))
             (dotimes (i num-v-metrics)
               (let ((mrec (zpb-otf:vmtx-v-metrics-ref vmtx i)))
                 (setf (aref heights i) (zpb-otf:long-metric-advance mrec)
                       (aref tsbs i) (zpb-otf:long-metric-side-bearing mrec))))
             (setf (advance-heights loader) heights
                   (top-side-bearings loader) tsbs)))
          (t
           (setf (vhea-missing-p loader) t
                 (vmtx-missing-p loader) t)
           (let ((dx (/ (max-width loader) 2)))
             (setf (vascender loader) dx
                   (vdescender loader) (- dx)
                   (advance-heights loader) (vector (- (ascender loader) (descender loader))))))))

      ;; 5. POST table
      (let ((info (table-info "post" loader)))
        (when info
          (let ((post (zpb-otf:read-post data (offset info) (size info))))
            (setf (italic-angle loader) (zpb-otf:post-italic-angle post)
                  (fixed-pitch-p loader) (not (zerop (zpb-otf:post-is-fixed-pitch post)))
                  (underline-position loader) (zpb-otf:post-underline-position post)
                  (underline-thickness loader) (zpb-otf:post-underline-thickness post)))))

      ;; 6. NAME table
      (let ((info (table-info "name" loader)))
        (when info
          (let* ((name-tbl (zpb-otf:read-name data (offset info) (size info)))
                 (storage (+ (offset info) (zpb-otf:name-storage-offset name-tbl)))
                 (cnt (zpb-otf:name-count name-tbl))
                 (entries (make-array cnt)))
            (dotimes (i cnt)
              (let* ((nrec (zpb-otf:name-name-record-ref name-tbl i))
                     (plat (zpb-otf:name-record-platform-id nrec))
                     (enc (zpb-otf:name-record-encoding-id nrec))
                     (lang (zpb-otf:name-record-language-id nrec))
                     (nid (zpb-otf:name-record-name-id nrec))
                     (slen (zpb-otf:name-record-length nrec))
                     (soff (+ storage (zpb-otf:name-record-string-offset nrec)))
                     (val (decode-name-string-from-fd data soff slen plat enc)))
                (setf (aref entries i)
                      (make-instance 'name-entry
                                     :font-loader loader
                                     :platform-id plat
                                     :encoding-id enc
                                     :language-id lang
                                     :name-id nid
                                     :value val))))
            (setf (name-entries loader) entries))))

      ;; 7. CMAP table
      (let ((info (table-info "cmap" loader)))
        (when info
          (let ((cmap (zpb-otf:read-cmap data (offset info) (size info))))
            (setup-cmap-lookup loader cmap (offset info)))))

      ;; 8. KERN table
      (let ((info (table-info "kern" loader)))
        (when info
          (handler-case
              (let* ((koff (offset info))
                     (version (zpb-otf:font-data-read-u16 data koff)))
                (when (zerop version)
                  (let* ((n-tables (zpb-otf:font-data-read-u16 data (+ koff 2)))
                         (sub-off (+ koff 4)))
                    (dotimes (t-idx n-tables)
                      (let* ((sub-ver (zpb-otf:font-data-read-u16 data sub-off))
                             (sub-len (zpb-otf:font-data-read-u16 data (+ sub-off 2)))
                             (sub-cov (zpb-otf:font-data-read-u16 data (+ sub-off 4))))
                        (when (and (zerop sub-ver) (logbitp 0 sub-cov)) ; format 0 horizontal
                          (let* ((n-pairs (zpb-otf:font-data-read-u16 data (+ sub-off 6)))
                                 (pair-pos (+ sub-off 14)))
                            (dotimes (p n-pairs)
                              (let ((left (zpb-otf:font-data-read-u16 data pair-pos))
                                    (right (zpb-otf:font-data-read-u16 data (+ pair-pos 2)))
                                    (val (zpb-otf:font-data-read-i16 data (+ pair-pos 4))))
                                (setf (gethash (logior (ash left 16) right) (kerning-table loader)) val)
                                (incf pair-pos 6)))))
                        (incf sub-off sub-len))))))
            (error () nil))))

      ;; Initialize glyph cache
      (setf (glyph-cache loader)
            (make-array (glyph-count loader) :initial-element nil))

      loader)))

(defun open-font-loader (thing &key (collection-index 0))
  (cond
    ((streamp thing)
     (let* ((len (file-length thing))
            (buf (make-array len :element-type '(unsigned-byte 8))))
       (file-position thing 0)
       (read-sequence buf thing)
       (open-font-loader-from-data (zpb-otf:make-font-data buf)
                                   :collection-index collection-index
                                   :input-stream thing)))
    (t
     (let ((data (zpb-otf:ensure-font-data thing)))
       (open-font-loader-from-data data :collection-index collection-index)))))
