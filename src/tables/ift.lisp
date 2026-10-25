;;;; ift.lisp — Generated OpenType tables
;;;; Generated automatically from OpenType sexp schema
;;;; DO NOT EDIT DIRECTLY


(in-package #:zpb-otf)


(export
 '(+design-space-segment-size+ +entry-format-flags-child-indices+
   +entry-format-flags-codepoints-bit-1+ +entry-format-flags-codepoints-bit-2+
   +entry-format-flags-entry-id-delta+
   +entry-format-flags-features-and-design-space+ +entry-format-flags-ignored+
   +entry-format-flags-patch-format+ +entry-format-flags-reserved+
   +glyph-keyed-flags-none+ +glyph-keyed-flags-wide-glyph-ids+
   +patch-map-field-presence-flags-cff-charstrings-offset+
   +patch-map-field-presence-flags-cff2-charstrings-offset+
   +table-patch-flags-drop-table+ +table-patch-flags-replace-table+
   design-space-segment design-space-segment-axis-tag design-space-segment-end
   design-space-segment-p design-space-segment-start entry-data
   entry-data-child-indices entry-data-child-indices-count
   entry-data-child-indices-ref entry-data-design-space-count
   entry-data-design-space-segments entry-data-design-space-segments-count
   entry-data-design-space-segments-ref entry-data-feature-count
   entry-data-feature-tags entry-data-feature-tags-count
   entry-data-feature-tags-ref entry-data-format-flags
   entry-data-match-mode-and-count entry-data-p entry-data-trailing-data
   entry-data-trailing-data-bytes entry-data-trailing-data-count
   entry-data-trailing-data-ref glyph-keyed-patch glyph-keyed-patch--reserved
   glyph-keyed-patch-brotli-stream glyph-keyed-patch-brotli-stream-bytes
   glyph-keyed-patch-brotli-stream-count glyph-keyed-patch-brotli-stream-ref
   glyph-keyed-patch-compatibility-id glyph-keyed-patch-flags
   glyph-keyed-patch-format-table glyph-keyed-patch-max-uncompressed-length
   glyph-keyed-patch-p glyph-patches glyph-patches-glyph-count
   glyph-patches-glyph-data-offsets glyph-patches-glyph-data-offsets-count
   glyph-patches-glyph-data-offsets-ref glyph-patches-glyph-ids glyph-patches-p
   glyph-patches-table-count glyph-patches-tables glyph-patches-tables-count
   glyph-patches-tables-ref id-string-data id-string-data-id-data
   id-string-data-id-data-bytes id-string-data-id-data-count
   id-string-data-id-data-ref id-string-data-p ift-glyph-data
   ift-glyph-data-data ift-glyph-data-data-bytes ift-glyph-data-data-count
   ift-glyph-data-data-ref ift-glyph-data-p ift-patch-map
   ift-patch-map--reserved-0 ift-patch-map--reserved-1
   ift-patch-map--reserved-2 ift-patch-map-cff-charstrings-offset
   ift-patch-map-cff2-charstrings-offset ift-patch-map-compatibility-id
   ift-patch-map-default-patch-format ift-patch-map-entries-offset
   ift-patch-map-entries-offset-offset ift-patch-map-entry-count
   ift-patch-map-entry-id-string-data-offset
   ift-patch-map-entry-id-string-data-offset-offset ift-patch-map-field-flags
   ift-patch-map-format-table ift-patch-map-p ift-patch-map-url-template
   ift-patch-map-url-template-bytes ift-patch-map-url-template-count
   ift-patch-map-url-template-length ift-patch-map-url-template-ref
   mapping-entries mapping-entries-entry-data mapping-entries-entry-data-bytes
   mapping-entries-entry-data-count mapping-entries-entry-data-ref
   mapping-entries-p read-entry-data read-glyph-keyed-patch read-glyph-patches
   read-id-string-data read-ift-glyph-data read-ift-patch-map
   read-mapping-entries read-table-keyed-patch read-table-patch
   sanitize-entry-data sanitize-glyph-keyed-patch sanitize-glyph-patches
   sanitize-id-string-data sanitize-ift-glyph-data sanitize-ift-patch-map
   sanitize-mapping-entries sanitize-table-keyed-patch sanitize-table-patch
   table-keyed-patch table-keyed-patch--reserved
   table-keyed-patch-compatibility-id table-keyed-patch-format-table
   table-keyed-patch-p table-keyed-patch-patch-offsets
   table-keyed-patch-patch-offsets-count table-keyed-patch-patch-offsets-ref
   table-keyed-patch-patches-count table-patch table-patch-brotli-stream
   table-patch-brotli-stream-bytes table-patch-brotli-stream-count
   table-patch-brotli-stream-ref table-patch-flags
   table-patch-max-uncompressed-length table-patch-p table-patch-tag))


(define-constant +patch-map-field-presence-flags-cff-charstrings-offset+ 1)


(define-constant +patch-map-field-presence-flags-cff2-charstrings-offset+ 2)


(define-constant +entry-format-flags-features-and-design-space+ 1)


(define-constant +entry-format-flags-child-indices+ 2)


(define-constant +entry-format-flags-entry-id-delta+ 4)


(define-constant +entry-format-flags-patch-format+ 8)


(define-constant +entry-format-flags-codepoints-bit-1+ 16)


(define-constant +entry-format-flags-codepoints-bit-2+ 32)


(define-constant +entry-format-flags-ignored+ 64)


(define-constant +entry-format-flags-reserved+ 128)


(define-constant +table-patch-flags-replace-table+ 1)


(define-constant +table-patch-flags-drop-table+ 2)


(define-constant +glyph-keyed-flags-none+ 0)


(define-constant +glyph-keyed-flags-wide-glyph-ids+ 1)


(defstruct
    (design-space-segment (:include record-ref)
     (:constructor %make-design-space-segment
      (%record-font-data %record-offset))))


(defun design-space-segment-axis-tag (rec)
  (declare (type design-space-segment rec))
  (font-data-read-tag-string (record-ref-font-data rec)
                             (record-ref-offset rec)))


(defun design-space-segment-start (rec)
  (declare (type design-space-segment rec))
  (font-data-read-fixed (record-ref-font-data rec)
                        (+ (record-ref-offset rec) 4)))


(defun design-space-segment-end (rec)
  (declare (type design-space-segment rec))
  (font-data-read-fixed (record-ref-font-data rec)
                        (+ (record-ref-offset rec) 8)))


(declaim
 (inline design-space-segment-axis-tag design-space-segment-start
  design-space-segment-end))


(define-constant +design-space-segment-size+ 12)


(defstruct
    (ift-patch-map (:include table-ref)
     (:constructor %make-ift-patch-map
      (%table-font-data %table-offset %table-length))))


(defun ift-patch-map-format-table (table)
  "Format identifier: format = 2"
  (declare (type ift-patch-map table))
  (font-data-read-u8 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline ift-patch-map-format-table-raw))


(defun ift-patch-map-format-table-raw (font-data offset)
  (font-data-read-u8 font-data offset))


(defun ift-patch-map--reserved-0 (table)
  (declare (type ift-patch-map table))
  (font-data-read-u8 (table-ref-font-data table)
                     (+ (table-ref-offset table) 1)))


(declaim (inline ift-patch-map--reserved-0-raw))


(defun ift-patch-map--reserved-0-raw (font-data offset)
  (font-data-read-u8 font-data (+ offset 1)))


(defun ift-patch-map--reserved-1 (table)
  (declare (type ift-patch-map table))
  (font-data-read-u8 (table-ref-font-data table)
                     (+ (table-ref-offset table) 2)))


(declaim (inline ift-patch-map--reserved-1-raw))


(defun ift-patch-map--reserved-1-raw (font-data offset)
  (font-data-read-u8 font-data (+ offset 2)))


(defun ift-patch-map--reserved-2 (table)
  (declare (type ift-patch-map table))
  (font-data-read-u8 (table-ref-font-data table)
                     (+ (table-ref-offset table) 3)))


(declaim (inline ift-patch-map--reserved-2-raw))


(defun ift-patch-map--reserved-2-raw (font-data offset)
  (font-data-read-u8 font-data (+ offset 3)))


(defun ift-patch-map-field-flags (table)
  (declare (type ift-patch-map table))
  (font-data-read-u8 (table-ref-font-data table)
                     (+ (table-ref-offset table) 4)))


(declaim (inline ift-patch-map-field-flags-raw))


(defun ift-patch-map-field-flags-raw (font-data offset)
  (font-data-read-u8 font-data (+ offset 4)))


(defun ift-patch-map-default-patch-format (table)
  "Patch format number for patches referenced by this mapping."
  (declare (type ift-patch-map table))
  (font-data-read-u8 (table-ref-font-data table)
                     (+ (table-ref-offset table) 5)))


(declaim (inline ift-patch-map-default-patch-format-raw))


(defun ift-patch-map-default-patch-format-raw (font-data offset)
  (font-data-read-u8 font-data (+ offset 5)))


(defun ift-patch-map-entries-offset-offset (table)
  (declare (type ift-patch-map table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6)))


(defun ift-patch-map-entries-offset (table)
  (declare (type ift-patch-map table))
  (let ((off (ift-patch-map-entries-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-mapping-entries (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun ift-patch-map-entry-id-string-data-offset-offset (table)
  (declare (type ift-patch-map table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 10)))


(defun ift-patch-map-entry-id-string-data-offset (table)
  (declare (type ift-patch-map table))
  (let ((off (ift-patch-map-entry-id-string-data-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-id-string-data (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun ift-patch-map-url-template-length (table)
  (declare (type ift-patch-map table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 14)))


(declaim (inline ift-patch-map-url-template-length-raw))


(defun ift-patch-map-url-template-length-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 14)))


(defun ift-patch-map-url-template-count (table)
  (ift-patch-map-url-template-length table))


(defun ift-patch-map-url-template-ref (table index)
  (declare (type ift-patch-map table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 16) (* index 1))))
    (unless
        (<= (+ pos 1) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 1 :length
             (table-ref-length table)))
    (font-data-read-u8 (table-ref-font-data table) pos)))


(defun ift-patch-map-url-template-bytes (table)
  (font-data-slice (table-ref-font-data table) (+ (table-ref-offset table) 16)
                   (ift-patch-map-url-template-count table)))


(defun ift-patch-map-cff-charstrings-offset (table)
  (declare (type ift-patch-map table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 16
                         (* (ift-patch-map-url-template-count table) 1))))


(declaim
 (inline ift-patch-map-format-table ift-patch-map--reserved-0
  ift-patch-map--reserved-1 ift-patch-map--reserved-2 ift-patch-map-field-flags
  ift-patch-map-compatibility-id ift-patch-map-default-patch-format
  ift-patch-map-entry-count ift-patch-map-entries-offset
  ift-patch-map-entries-offset-offset ift-patch-map-entry-id-string-data-offset
  ift-patch-map-entry-id-string-data-offset-offset
  ift-patch-map-url-template-length ift-patch-map-url-template
  ift-patch-map-url-template-count ift-patch-map-cff-charstrings-offset
  ift-patch-map-cff2-charstrings-offset))


(defun ift-patch-map-cff2-charstrings-offset (table)
  (declare (type ift-patch-map table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 20
                         (* (ift-patch-map-url-template-count table) 1))))


(defun sanitize-ift-patch-map (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 16 length) (font-data-valid-range-p font-data offset 16))
    (error 'font-out-of-bounds-error :pos offset :size 16 :length
           (font-data-length font-data)))
  (let ((cnt (ift-patch-map-url-template-length-raw font-data offset)))
    (unless
        (and (<= (+ 16 (* cnt 1)) length)
             (font-data-valid-range-p font-data offset (+ 16 (* cnt 1))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 16 (* cnt 1))
             :length (font-data-length font-data))))
  t)


(defun read-ift-patch-map
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-ift-patch-map font-data offset length)
  (%make-ift-patch-map font-data offset length))


(defstruct
    (mapping-entries (:include table-ref)
     (:constructor %make-mapping-entries
      (%table-font-data %table-offset %table-length))))


(defun mapping-entries-entry-data-count (table)
  (max 0 (floor (- (table-ref-length table) (table-ref-offset table)) 1)))


(defun mapping-entries-entry-data-ref (table index)
  (declare (type mapping-entries table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (table-ref-offset table) (* index 1))))
    (unless
        (<= (+ pos 1) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 1 :length
             (table-ref-length table)))
    (font-data-read-u8 (table-ref-font-data table) pos)))


(declaim (inline mapping-entries-entry-data mapping-entries-entry-data-count))


(defun mapping-entries-entry-data-bytes (table)
  (font-data-slice (table-ref-font-data table) (table-ref-offset table)
                   (mapping-entries-entry-data-count table)))


(defun sanitize-mapping-entries (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 0 length) (font-data-valid-range-p font-data offset 0))
    (error 'font-out-of-bounds-error :pos offset :size 0 :length
           (font-data-length font-data)))
  t)


(defun read-mapping-entries
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-mapping-entries font-data offset length)
  (%make-mapping-entries font-data offset length))


(defstruct
    (entry-data (:include table-ref)
     (:constructor %make-entry-data
      (%table-font-data %table-offset %table-length))))


(defun entry-data-format-flags (table)
  (declare (type entry-data table))
  (font-data-read-u8 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline entry-data-format-flags-raw))


(defun entry-data-format-flags-raw (font-data offset)
  (font-data-read-u8 font-data offset))


(defun entry-data-feature-count (table)
  (declare (type entry-data table))
  (font-data-read-u8 (table-ref-font-data table)
                     (+ (table-ref-offset table) 1)))


(declaim (inline entry-data-feature-count-raw))


(defun entry-data-feature-count-raw (font-data offset)
  (font-data-read-u8 font-data (+ offset 1)))


(defun entry-data-feature-tags-count (table) (entry-data-feature-count table))


(defun entry-data-feature-tags-ref (table index)
  (declare (type entry-data table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 2) (* index 4))))
    (unless
        (<= (+ pos 4) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 4 :length
             (table-ref-length table)))
    (font-data-read-tag-string (table-ref-font-data table) pos)))


(defun entry-data-design-space-count (table)
  (declare (type entry-data table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2
                         (* (entry-data-feature-tags-count table) 4))))


(defun entry-data-design-space-segments-count (table)
  (entry-data-design-space-count table))


(defun entry-data-design-space-segments-ref (table index)
  (declare (type entry-data table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 4
             (* (entry-data-feature-tags-count table) 4))
          (* index 12))))
    (unless
        (<= (+ pos 12) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 12 :length
             (table-ref-length table)))
    (%make-design-space-segment (table-ref-font-data table) pos)))


(defun entry-data-child-indices-count (table &optional count)
  (or count
      (max 0
           (floor
            (- (table-ref-length table)
               (+ (table-ref-offset table) 4
                  (* (entry-data-design-space-segments-count table) 12)
                  (* (entry-data-feature-tags-count table) 4)))
            1))))


(defun entry-data-trailing-data-count (table)
  (max 0
       (floor
        (- (table-ref-length table)
           (+ (table-ref-offset table) 4
              (* (entry-data-child-indices-count table) 1)
              (* (entry-data-design-space-segments-count table) 12)
              (* (entry-data-feature-tags-count table) 4)))
        1)))


(defun entry-data-trailing-data-ref (table index)
  (declare (type entry-data table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 4
             (* (entry-data-child-indices-count table) 1)
             (* (entry-data-design-space-segments-count table) 12)
             (* (entry-data-feature-tags-count table) 4))
          (* index 1))))
    (unless
        (<= (+ pos 1) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 1 :length
             (table-ref-length table)))
    (font-data-read-u8 (table-ref-font-data table) pos)))


(declaim
 (inline entry-data-format-flags entry-data-feature-count
  entry-data-feature-tags entry-data-feature-tags-count
  entry-data-design-space-count entry-data-design-space-segments
  entry-data-design-space-segments-count entry-data-match-mode-and-count
  entry-data-child-indices entry-data-child-indices-count
  entry-data-trailing-data entry-data-trailing-data-count))


(defun entry-data-trailing-data-bytes (table)
  (font-data-slice (table-ref-font-data table)
                   (+ (table-ref-offset table) 4
                      (* (entry-data-child-indices-count table) 1)
                      (* (entry-data-design-space-segments-count table) 12)
                      (* (entry-data-feature-tags-count table) 4))
                   (entry-data-trailing-data-count table)))


(defun sanitize-entry-data (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  (let ((cnt (entry-data-feature-count-raw font-data offset)))
    (unless
        (and (<= (+ 2 (* cnt 4)) length)
             (font-data-valid-range-p font-data offset (+ 2 (* cnt 4))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 2 (* cnt 4))
             :length (font-data-length font-data))))
  t)


(defun read-entry-data
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-entry-data font-data offset length)
  (%make-entry-data font-data offset length))


(defstruct
    (id-string-data (:include table-ref)
     (:constructor %make-id-string-data
      (%table-font-data %table-offset %table-length))))


(defun id-string-data-id-data-count (table)
  (max 0 (floor (- (table-ref-length table) (table-ref-offset table)) 1)))


(defun id-string-data-id-data-ref (table index)
  (declare (type id-string-data table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (table-ref-offset table) (* index 1))))
    (unless
        (<= (+ pos 1) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 1 :length
             (table-ref-length table)))
    (font-data-read-u8 (table-ref-font-data table) pos)))


(declaim (inline id-string-data-id-data id-string-data-id-data-count))


(defun id-string-data-id-data-bytes (table)
  (font-data-slice (table-ref-font-data table) (table-ref-offset table)
                   (id-string-data-id-data-count table)))


(defun sanitize-id-string-data (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 0 length) (font-data-valid-range-p font-data offset 0))
    (error 'font-out-of-bounds-error :pos offset :size 0 :length
           (font-data-length font-data)))
  t)


(defun read-id-string-data
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-id-string-data font-data offset length)
  (%make-id-string-data font-data offset length))


(defstruct
    (table-keyed-patch (:include table-ref)
     (:constructor %make-table-keyed-patch
      (%table-font-data %table-offset %table-length))))


(defun table-keyed-patch-format-table (table)
  (declare (type table-keyed-patch table))
  (font-data-read-tag-string (table-ref-font-data table)
                             (table-ref-offset table)))


(declaim (inline table-keyed-patch-format-table-raw))


(defun table-keyed-patch-format-table-raw (font-data offset)
  (font-data-read-tag-string font-data offset))


(defun table-keyed-patch--reserved (table)
  (declare (type table-keyed-patch table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline table-keyed-patch--reserved-raw))


(defun table-keyed-patch--reserved-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 4)))


(defun table-keyed-patch-patches-count (table)
  (declare (type table-keyed-patch table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 8)))


(declaim (inline table-keyed-patch-patches-count-raw))


(defun table-keyed-patch-patches-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 8)))


(defun table-keyed-patch-patch-offsets-count (table)
  (+ (table-keyed-patch-patches-count table) 1))


(declaim
 (inline table-keyed-patch-format-table table-keyed-patch--reserved
  table-keyed-patch-compatibility-id table-keyed-patch-patches-count
  table-keyed-patch-patch-offsets table-keyed-patch-patch-offsets-count))


(defun table-keyed-patch-patch-offsets-ref (table index)
  (declare (type table-keyed-patch table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 10) (* index 4))))
    (unless
        (<= (+ pos 4) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 4 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u32 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-table-patch (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-table-keyed-patch (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 10 length) (font-data-valid-range-p font-data offset 10))
    (error 'font-out-of-bounds-error :pos offset :size 10 :length
           (font-data-length font-data)))
  t)


(defun read-table-keyed-patch
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-table-keyed-patch font-data offset length)
  (%make-table-keyed-patch font-data offset length))


(defstruct
    (table-patch (:include table-ref)
     (:constructor %make-table-patch
      (%table-font-data %table-offset %table-length))))


(defun table-patch-tag (table)
  (declare (type table-patch table))
  (font-data-read-tag-string (table-ref-font-data table)
                             (table-ref-offset table)))


(declaim (inline table-patch-tag-raw))


(defun table-patch-tag-raw (font-data offset)
  (font-data-read-tag-string font-data offset))


(defun table-patch-flags (table)
  (declare (type table-patch table))
  (font-data-read-u8 (table-ref-font-data table)
                     (+ (table-ref-offset table) 4)))


(declaim (inline table-patch-flags-raw))


(defun table-patch-flags-raw (font-data offset)
  (font-data-read-u8 font-data (+ offset 4)))


(defun table-patch-max-uncompressed-length (table)
  (declare (type table-patch table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 5)))


(declaim (inline table-patch-max-uncompressed-length-raw))


(defun table-patch-max-uncompressed-length-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 5)))


(defun table-patch-brotli-stream-count (table)
  (max 0 (floor (- (table-ref-length table) (+ (table-ref-offset table) 9)) 1)))


(defun table-patch-brotli-stream-ref (table index)
  (declare (type table-patch table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 9) (* index 1))))
    (unless
        (<= (+ pos 1) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 1 :length
             (table-ref-length table)))
    (font-data-read-u8 (table-ref-font-data table) pos)))


(declaim
 (inline table-patch-tag table-patch-flags table-patch-max-uncompressed-length
  table-patch-brotli-stream table-patch-brotli-stream-count))


(defun table-patch-brotli-stream-bytes (table)
  (font-data-slice (table-ref-font-data table) (+ (table-ref-offset table) 9)
                   (table-patch-brotli-stream-count table)))


(defun sanitize-table-patch (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 9 length) (font-data-valid-range-p font-data offset 9))
    (error 'font-out-of-bounds-error :pos offset :size 9 :length
           (font-data-length font-data)))
  t)


(defun read-table-patch
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-table-patch font-data offset length)
  (%make-table-patch font-data offset length))


(defstruct
    (glyph-keyed-patch (:include table-ref)
     (:constructor %make-glyph-keyed-patch
      (%table-font-data %table-offset %table-length))))


(defun glyph-keyed-patch-format-table (table)
  (declare (type glyph-keyed-patch table))
  (font-data-read-tag-string (table-ref-font-data table)
                             (table-ref-offset table)))


(declaim (inline glyph-keyed-patch-format-table-raw))


(defun glyph-keyed-patch-format-table-raw (font-data offset)
  (font-data-read-tag-string font-data offset))


(defun glyph-keyed-patch--reserved (table)
  (declare (type glyph-keyed-patch table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline glyph-keyed-patch--reserved-raw))


(defun glyph-keyed-patch--reserved-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 4)))


(defun glyph-keyed-patch-flags (table)
  (declare (type glyph-keyed-patch table))
  (font-data-read-u8 (table-ref-font-data table)
                     (+ (table-ref-offset table) 8)))


(declaim (inline glyph-keyed-patch-flags-raw))


(defun glyph-keyed-patch-flags-raw (font-data offset)
  (font-data-read-u8 font-data (+ offset 8)))


(defun glyph-keyed-patch-max-uncompressed-length (table)
  (declare (type glyph-keyed-patch table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 9)))


(declaim (inline glyph-keyed-patch-max-uncompressed-length-raw))


(defun glyph-keyed-patch-max-uncompressed-length-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 9)))


(defun glyph-keyed-patch-brotli-stream-count (table)
  (max 0
       (floor (- (table-ref-length table) (+ (table-ref-offset table) 13)) 1)))


(defun glyph-keyed-patch-brotli-stream-ref (table index)
  (declare (type glyph-keyed-patch table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 13) (* index 1))))
    (unless
        (<= (+ pos 1) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 1 :length
             (table-ref-length table)))
    (font-data-read-u8 (table-ref-font-data table) pos)))


(declaim
 (inline glyph-keyed-patch-format-table glyph-keyed-patch--reserved
  glyph-keyed-patch-flags glyph-keyed-patch-compatibility-id
  glyph-keyed-patch-max-uncompressed-length glyph-keyed-patch-brotli-stream
  glyph-keyed-patch-brotli-stream-count))


(defun glyph-keyed-patch-brotli-stream-bytes (table)
  (font-data-slice (table-ref-font-data table) (+ (table-ref-offset table) 13)
                   (glyph-keyed-patch-brotli-stream-count table)))


(defun sanitize-glyph-keyed-patch (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 13 length) (font-data-valid-range-p font-data offset 13))
    (error 'font-out-of-bounds-error :pos offset :size 13 :length
           (font-data-length font-data)))
  t)


(defun read-glyph-keyed-patch
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-glyph-keyed-patch font-data offset length)
  (%make-glyph-keyed-patch font-data offset length))


(defstruct
    (glyph-patches (:include table-ref)
     (:constructor %make-glyph-patches
      (%table-font-data %table-offset %table-length))))


(defun glyph-patches-glyph-count (table)
  (declare (type glyph-patches table))
  (font-data-read-u32 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline glyph-patches-glyph-count-raw))


(defun glyph-patches-glyph-count-raw (font-data offset)
  (font-data-read-u32 font-data offset))


(defun glyph-patches-table-count (table)
  (declare (type glyph-patches table))
  (font-data-read-u8 (table-ref-font-data table)
                     (+ (table-ref-offset table) 4)))


(declaim (inline glyph-patches-table-count-raw))


(defun glyph-patches-table-count-raw (font-data offset)
  (font-data-read-u8 font-data (+ offset 4)))


(defun glyph-patches-tables-count (table) (glyph-patches-table-count table))


(defun glyph-patches-tables-ref (table index)
  (declare (type glyph-patches table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 5) (* index 4))))
    (unless
        (<= (+ pos 4) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 4 :length
             (table-ref-length table)))
    (font-data-read-tag-string (table-ref-font-data table) pos)))


(defun glyph-patches-glyph-data-offsets-count (table &optional count)
  (or count
      (max 0
           (floor
            (- (table-ref-length table)
               (+ (table-ref-offset table) 5
                  (* (glyph-patches-tables-count table) 4)))
            4))))


(declaim
 (inline glyph-patches-glyph-count glyph-patches-table-count
  glyph-patches-glyph-ids glyph-patches-tables glyph-patches-tables-count
  glyph-patches-glyph-data-offsets glyph-patches-glyph-data-offsets-count))


(defun glyph-patches-glyph-data-offsets-ref (table index)
  (declare (type glyph-patches table)
           (type (unsigned-byte 32) index))
  (let* ((pos
          (+
           (+ (table-ref-offset table) 5
              (* (glyph-patches-tables-count table) 4))
           (* index 4))))
    (unless
        (<= (+ pos 4) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 4 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u32 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-ift-glyph-data (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-glyph-patches (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 5 length) (font-data-valid-range-p font-data offset 5))
    (error 'font-out-of-bounds-error :pos offset :size 5 :length
           (font-data-length font-data)))
  (let ((cnt (glyph-patches-table-count-raw font-data offset)))
    (unless
        (and (<= (+ 5 (* cnt 4)) length)
             (font-data-valid-range-p font-data offset (+ 5 (* cnt 4))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 5 (* cnt 4))
             :length (font-data-length font-data))))
  t)


(defun read-glyph-patches
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-glyph-patches font-data offset length)
  (%make-glyph-patches font-data offset length))


(defstruct
    (ift-glyph-data (:include table-ref)
     (:constructor %make-ift-glyph-data
      (%table-font-data %table-offset %table-length))))


(defun ift-glyph-data-data-count (table)
  (max 0 (floor (- (table-ref-length table) (table-ref-offset table)) 1)))


(defun ift-glyph-data-data-ref (table index)
  (declare (type ift-glyph-data table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (table-ref-offset table) (* index 1))))
    (unless
        (<= (+ pos 1) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 1 :length
             (table-ref-length table)))
    (font-data-read-u8 (table-ref-font-data table) pos)))


(declaim (inline ift-glyph-data-data ift-glyph-data-data-count))


(defun ift-glyph-data-data-bytes (table)
  (font-data-slice (table-ref-font-data table) (table-ref-offset table)
                   (ift-glyph-data-data-count table)))


(defun sanitize-ift-glyph-data (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 0 length) (font-data-valid-range-p font-data offset 0))
    (error 'font-out-of-bounds-error :pos offset :size 0 :length
           (font-data-length font-data)))
  t)


(defun read-ift-glyph-data
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-ift-glyph-data font-data offset length)
  (%make-ift-glyph-data font-data offset length))

