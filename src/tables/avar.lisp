;;;; avar.lisp — Generated OpenType tables
;;;; Generated automatically from OpenType sexp schema
;;;; DO NOT EDIT DIRECTLY


(in-package #:zpb-otf)


(export
 '(+axis-value-map-size+ avar avar--reserved avar-axis-count
   avar-axis-index-map-offset avar-axis-index-map-offset-offset
   avar-axis-segment-maps avar-p avar-var-store-offset
   avar-var-store-offset-offset avar-version axis-value-map
   axis-value-map-from-coordinate axis-value-map-p axis-value-map-to-coordinate
   read-avar sanitize-avar segment-maps segment-maps-axis-value-maps
   segment-maps-axis-value-maps-count segment-maps-axis-value-maps-ref
   segment-maps-p segment-maps-position-map-count))


(defstruct
    (segment-maps (:include record-ref)
     (:constructor %make-segment-maps (%record-font-data %record-offset))))


(defun segment-maps-position-map-count (rec)
  "The number of correspondence pairs for this axis."
  (declare (type segment-maps rec))
  (font-data-read-u16 (record-ref-font-data rec) (record-ref-offset rec)))


(defun segment-maps-axis-value-maps-count (rec)
  "The array of axis value map records for this axis."
  (declare (type segment-maps rec))
  (segment-maps-position-map-count rec))


(declaim (inline segment-maps-position-map-count segment-maps-axis-value-maps))


(defun segment-maps-axis-value-maps-ref (rec index)
  "The array of axis value map records for this axis."
  (declare (type segment-maps rec)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (record-ref-offset rec) 2) (* index 4))))
    (%make-axis-value-map (record-ref-font-data rec) pos)))


(defstruct
    (axis-value-map (:include record-ref)
     (:constructor %make-axis-value-map (%record-font-data %record-offset))))


(defun axis-value-map-from-coordinate (rec)
  "A normalized coordinate value obtained using default normalization."
  (declare (type axis-value-map rec))
  (font-data-read-f2dot14 (record-ref-font-data rec) (record-ref-offset rec)))


(defun axis-value-map-to-coordinate (rec)
  "The modified, normalized coordinate value."
  (declare (type axis-value-map rec))
  (font-data-read-f2dot14 (record-ref-font-data rec)
                          (+ (record-ref-offset rec) 2)))


(declaim (inline axis-value-map-from-coordinate axis-value-map-to-coordinate))


(define-constant +axis-value-map-size+ 4)


(defstruct
    (avar (:include table-ref)
     (:constructor %make-avar (%table-font-data %table-offset %table-length))))


(defun avar-version (table)
  "Major version number of the axis variations table — set to 1 or 2. Minor version number of the axis variations table — set to 0."
  (declare (type avar table))
  (font-data-read-u32 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline avar-version-raw))


(defun avar-version-raw (font-data offset)
  (font-data-read-u32 font-data offset))


(defun avar--reserved (table)
  "Permanently reserved; set to zero."
  (declare (type avar table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline avar--reserved-raw))


(defun avar--reserved-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun avar-axis-count (table)
  "The number of variation axes for this font. This must be the same number as axisCount in the 'fvar' table."
  (declare (type avar table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6)))


(declaim (inline avar-axis-count-raw))


(defun avar-axis-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 6)))


(defun avar-axis-index-map-offset-offset (table)
  "Offset to DeltaSetIndexMap table (may be NULL)."
  (declare (type avar table))
  (when (>= (table-ref-length table) 12)
    (font-data-read-u32 (table-ref-font-data table)
                        (+ (table-ref-offset table) 8))))


(defun avar-axis-index-map-offset (table)
  "Offset to DeltaSetIndexMap table (may be NULL)."
  (declare (type avar table))
  (let ((off (avar-axis-index-map-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-delta-set-index-map (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun avar-var-store-offset-offset (table)
  "Offset to ItemVariationStore (may be NULL)."
  (declare (type avar table))
  (when (>= (table-ref-length table) 16)
    (font-data-read-u32 (table-ref-font-data table)
                        (+ (table-ref-offset table) 12))))


(declaim
 (inline avar-version avar--reserved avar-axis-count avar-axis-segment-maps
  avar-axis-index-map-offset avar-axis-index-map-offset-offset
  avar-var-store-offset avar-var-store-offset-offset))


(defun avar-var-store-offset (table)
  "Offset to ItemVariationStore (may be NULL)."
  (declare (type avar table))
  (let ((off (avar-var-store-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-item-variation-store (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun sanitize-avar (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 8 length) (font-data-valid-range-p font-data offset 8))
    (error 'font-out-of-bounds-error :pos offset :size 8 :length
           (font-data-length font-data)))
  t)


(defun read-avar
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-avar font-data offset length)
  (%make-avar font-data offset length))

