;;;; vmtx.lisp — Generated OpenType tables
;;;; Generated automatically from OpenType sexp schema
;;;; DO NOT EDIT DIRECTLY


(in-package #:zpb-otf)


(export
 '(read-vmtx read-vmtx-extended sanitize-vmtx sanitize-vmtx-extended vmtx
   vmtx-extended vmtx-extended-p vmtx-extended-top-side-bearings
   vmtx-extended-top-side-bearings-count vmtx-extended-top-side-bearings-ref
   vmtx-extended-v-metrics vmtx-extended-v-metrics-count
   vmtx-extended-v-metrics-ref vmtx-p vmtx-top-side-bearings
   vmtx-top-side-bearings-count vmtx-top-side-bearings-ref vmtx-v-metrics
   vmtx-v-metrics-count vmtx-v-metrics-ref))


(defstruct
    (vmtx (:include table-ref)
     (:constructor %make-vmtx (%table-font-data %table-offset %table-length))))


(defun vmtx-v-metrics-count (table &optional number-of-long-ver-metrics)
  "Paired advance height and top side bearing values for each glyph. Records are indexed by glyph ID."
  (or number-of-long-ver-metrics
      (max 0 (floor (- (table-ref-length table) (table-ref-offset table)) 4))))


(defun vmtx-v-metrics-ref (table index)
  "Paired advance height and top side bearing values for each glyph. Records are indexed by glyph ID."
  (declare (type vmtx table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (table-ref-offset table) (* index 4))))
    (unless
        (<= (+ pos 4) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 4 :length
             (table-ref-length table)))
    (%make-long-metric (table-ref-font-data table) pos)))


(defun vmtx-top-side-bearings-count (table)
  "Top side bearings for glyph IDs greater than or equal to numberOfLongMetrics."
  (max 0
       (floor
        (- (table-ref-length table)
           (+ (table-ref-offset table) (* (vmtx-v-metrics-count table) 4)))
        2)))


(declaim
 (inline vmtx-v-metrics vmtx-v-metrics-count vmtx-top-side-bearings
  vmtx-top-side-bearings-count))


(defun vmtx-top-side-bearings-ref (table index)
  "Top side bearings for glyph IDs greater than or equal to numberOfLongMetrics."
  (declare (type vmtx table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+ (+ (table-ref-offset table) (* (vmtx-v-metrics-count table) 4))
            (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-i16 (table-ref-font-data table) pos)))


(defun sanitize-vmtx (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 0 length) (font-data-valid-range-p font-data offset 0))
    (error 'font-out-of-bounds-error :pos offset :size 0 :length
           (font-data-length font-data)))
  t)


(defun read-vmtx
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-vmtx font-data offset length)
  (%make-vmtx font-data offset length))


(defstruct
    (vmtx-extended (:include table-ref)
     (:constructor %make-vmtx-extended
      (%table-font-data %table-offset %table-length))))


(defun vmtx-extended-v-metrics-count
       (table &optional number-of-long-ver-metrics)
  (or number-of-long-ver-metrics
      (max 0 (floor (- (table-ref-length table) (table-ref-offset table)) 4))))


(defun vmtx-extended-v-metrics-ref (table index)
  (declare (type vmtx-extended table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (table-ref-offset table) (* index 4))))
    (unless
        (<= (+ pos 4) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 4 :length
             (table-ref-length table)))
    (%make-long-metric (table-ref-font-data table) pos)))


(defun vmtx-extended-top-side-bearings-count (table)
  (max 0
       (floor
        (- (table-ref-length table)
           (+ (table-ref-offset table)
              (* (vmtx-extended-v-metrics-count table) 4)))
        2)))


(declaim
 (inline vmtx-extended-v-metrics vmtx-extended-v-metrics-count
  vmtx-extended-top-side-bearings vmtx-extended-top-side-bearings-count))


(defun vmtx-extended-top-side-bearings-ref (table index)
  (declare (type vmtx-extended table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table)
             (* (vmtx-extended-v-metrics-count table) 4))
          (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-i16 (table-ref-font-data table) pos)))


(defun sanitize-vmtx-extended (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 0 length) (font-data-valid-range-p font-data offset 0))
    (error 'font-out-of-bounds-error :pos offset :size 0 :length
           (font-data-length font-data)))
  t)


(defun read-vmtx-extended
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-vmtx-extended font-data offset length)
  (%make-vmtx-extended font-data offset length))

