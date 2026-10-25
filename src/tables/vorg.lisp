;;;; vorg.lisp — Generated OpenType tables
;;;; Generated automatically from OpenType sexp schema
;;;; DO NOT EDIT DIRECTLY


(in-package #:zpb-otf)


(export
 '(+vert-origin-y-metrics-size+ read-vorg sanitize-vorg vert-origin-y-metrics
   vert-origin-y-metrics-glyph-index vert-origin-y-metrics-p
   vert-origin-y-metrics-vert-origin-y vorg vorg-default-vert-origin-y
   vorg-num-vert-origin-y-metrics vorg-p vorg-version
   vorg-vert-origin-y-metrics vorg-vert-origin-y-metrics-count
   vorg-vert-origin-y-metrics-ref))


(defstruct
    (vert-origin-y-metrics (:include record-ref)
     (:constructor %make-vert-origin-y-metrics
      (%record-font-data %record-offset))))


(define-constant +vert-origin-y-metrics-size+ 4)


(declaim
 (inline vert-origin-y-metrics-glyph-index vert-origin-y-metrics-vert-origin-y))


(defun vert-origin-y-metrics-glyph-index (rec)
  "Glyph index."
  (declare (type vert-origin-y-metrics rec))
  (font-data-read-u16 (record-ref-font-data rec) (record-ref-offset rec)))


(defun vert-origin-y-metrics-vert-origin-y (rec)
  "Y coordinate, in the font’s design coordinate system, of the glyph’s vertical origin."
  (declare (type vert-origin-y-metrics rec))
  (font-data-read-i16 (record-ref-font-data rec) (+ (record-ref-offset rec) 2)))


(defstruct
    (vorg (:include table-ref)
     (:constructor %make-vorg (%table-font-data %table-offset %table-length))))


(declaim
 (inline vorg-version vorg-default-vert-origin-y vorg-num-vert-origin-y-metrics
  vorg-vert-origin-y-metrics vorg-vert-origin-y-metrics-count vorg-version-raw
  vorg-default-vert-origin-y-raw vorg-num-vert-origin-y-metrics-raw))


(defun vorg-version (table)
  "Major/minor version number. Set to 1.0."
  (declare (type vorg table))
  (font-data-read-u32 (table-ref-font-data table) (table-ref-offset table)))


(defun vorg-version-raw (font-data offset)
  (font-data-read-u32 font-data offset))


(defun vorg-default-vert-origin-y (table)
  "The y coordinate of a glyph’s vertical origin, in the font’s design coordinate system, to be used if no entry is present for the glyph in the vertOriginYMetrics array."
  (declare (type vorg table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(defun vorg-default-vert-origin-y-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 4)))


(defun vorg-num-vert-origin-y-metrics (table)
  "Number of elements in the vertOriginYMetrics array."
  (declare (type vorg table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6)))


(defun vorg-num-vert-origin-y-metrics-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 6)))


(defun vorg-vert-origin-y-metrics-count (table)
  "Array of VertOriginYMetrics records, sorted by glyph ID."
  (vorg-num-vert-origin-y-metrics table))


(defun vorg-vert-origin-y-metrics-ref (table index)
  "Array of VertOriginYMetrics records, sorted by glyph ID."
  (declare (type vorg table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 8) (* index 4))))
    (unless
        (<= (+ pos 4) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 4 :length
             (table-ref-length table)))
    (%make-vert-origin-y-metrics (table-ref-font-data table) pos)))


(defun sanitize-vorg (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 8 length) (font-data-valid-range-p font-data offset 8))
    (error 'font-out-of-bounds-error :pos offset :size 8 :length
           (font-data-length font-data)))
  (let ((cnt (vorg-num-vert-origin-y-metrics-raw font-data offset)))
    (unless
        (and (<= (+ 8 (* cnt 4)) length)
             (font-data-valid-range-p font-data offset (+ 8 (* cnt 4))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 8 (* cnt 4))
             :length (font-data-length font-data))))
  t)


(defun read-vorg
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-vorg font-data offset length)
  (%make-vorg font-data offset length))

