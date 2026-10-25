;;;; hmtx.lisp — Generated OpenType tables
;;;; Generated automatically from OpenType sexp schema
;;;; DO NOT EDIT DIRECTLY


(in-package #:zpb-otf)


(export
 '(+long-metric-size+ hmtx hmtx-extended hmtx-extended-h-metrics
   hmtx-extended-h-metrics-count hmtx-extended-h-metrics-ref
   hmtx-extended-left-side-bearings hmtx-extended-left-side-bearings-count
   hmtx-extended-left-side-bearings-ref hmtx-extended-p hmtx-h-metrics
   hmtx-h-metrics-count hmtx-h-metrics-ref hmtx-left-side-bearings
   hmtx-left-side-bearings-count hmtx-left-side-bearings-ref hmtx-p long-metric
   long-metric-advance long-metric-p long-metric-side-bearing read-hmtx
   read-hmtx-extended sanitize-hmtx sanitize-hmtx-extended))


(defstruct
    (long-metric (:include record-ref)
     (:constructor %make-long-metric (%record-font-data %record-offset))))


(define-constant +long-metric-size+ 4)


(declaim (inline long-metric-advance long-metric-side-bearing))


(defun long-metric-advance (rec)
  "Advance width/height, in font design units."
  (declare (type long-metric rec))
  (font-data-read-u16 (record-ref-font-data rec) (record-ref-offset rec)))


(defun long-metric-side-bearing (rec)
  "Glyph leading (left/top) side bearing, in font design units."
  (declare (type long-metric rec))
  (font-data-read-i16 (record-ref-font-data rec) (+ (record-ref-offset rec) 2)))


(defstruct
    (hmtx (:include table-ref)
     (:constructor %make-hmtx (%table-font-data %table-offset %table-length))))


(declaim
 (inline hmtx-h-metrics hmtx-h-metrics-count hmtx-left-side-bearings
  hmtx-left-side-bearings-count))


(defun hmtx-h-metrics-count (table &optional number-of-h-metrics)
  "Paired advance width/height and left/top side bearing values for each glyph. Records are indexed by glyph ID."
  (or number-of-h-metrics
      (max 0 (floor (- (table-ref-length table) (table-ref-offset table)) 4))))


(defun hmtx-h-metrics-ref (table index)
  "Paired advance width/height and left/top side bearing values for each glyph. Records are indexed by glyph ID."
  (declare (type hmtx table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (table-ref-offset table) (* index 4))))
    (unless
        (<= (+ pos 4) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 4 :length
             (table-ref-length table)))
    (%make-long-metric (table-ref-font-data table) pos)))


(defun hmtx-left-side-bearings-count (table)
  "Leading (left/top) side bearings for glyph IDs greater than or equal to numberOfLongMetrics."
  (max 0
       (floor
        (- (table-ref-length table)
           (+ (table-ref-offset table) (* (hmtx-h-metrics-count table) 4)))
        2)))


(defun hmtx-left-side-bearings-ref (table index)
  "Leading (left/top) side bearings for glyph IDs greater than or equal to numberOfLongMetrics."
  (declare (type hmtx table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+ (+ (table-ref-offset table) (* (hmtx-h-metrics-count table) 4))
            (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-i16 (table-ref-font-data table) pos)))


(defun sanitize-hmtx (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 0 length) (font-data-valid-range-p font-data offset 0))
    (error 'font-out-of-bounds-error :pos offset :size 0 :length
           (font-data-length font-data)))
  t)


(defun read-hmtx
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-hmtx font-data offset length)
  (%make-hmtx font-data offset length))


(defstruct
    (hmtx-extended (:include table-ref)
     (:constructor %make-hmtx-extended
      (%table-font-data %table-offset %table-length))))


(declaim
 (inline hmtx-extended-h-metrics hmtx-extended-h-metrics-count
  hmtx-extended-left-side-bearings hmtx-extended-left-side-bearings-count))


(defun hmtx-extended-h-metrics-count (table &optional number-of-h-metrics)
  (or number-of-h-metrics
      (max 0 (floor (- (table-ref-length table) (table-ref-offset table)) 4))))


(defun hmtx-extended-h-metrics-ref (table index)
  (declare (type hmtx-extended table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (table-ref-offset table) (* index 4))))
    (unless
        (<= (+ pos 4) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 4 :length
             (table-ref-length table)))
    (%make-long-metric (table-ref-font-data table) pos)))


(defun hmtx-extended-left-side-bearings-count (table)
  (max 0
       (floor
        (- (table-ref-length table)
           (+ (table-ref-offset table)
              (* (hmtx-extended-h-metrics-count table) 4)))
        2)))


(defun hmtx-extended-left-side-bearings-ref (table index)
  (declare (type hmtx-extended table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table)
             (* (hmtx-extended-h-metrics-count table) 4))
          (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-i16 (table-ref-font-data table) pos)))


(defun sanitize-hmtx-extended (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 0 length) (font-data-valid-range-p font-data offset 0))
    (error 'font-out-of-bounds-error :pos offset :size 0 :length
           (font-data-length font-data)))
  t)


(defun read-hmtx-extended
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-hmtx-extended font-data offset length)
  (%make-hmtx-extended font-data offset length))

