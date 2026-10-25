;;;; variations.lisp — Generated OpenType tables
;;;; Generated automatically from OpenType sexp schema
;;;; DO NOT EDIT DIRECTLY


(in-package #:zpb-otf)


(export
 '(+entry-format-inner-index-bit-count-mask+ +entry-format-map-entry-size-mask+
   +region-axis-coordinates-size+ delta-set-index-map-format0
   delta-set-index-map-format0-entry-format
   delta-set-index-map-format0-format-table
   delta-set-index-map-format0-map-count delta-set-index-map-format0-map-data
   delta-set-index-map-format0-map-data-bytes
   delta-set-index-map-format0-map-data-count
   delta-set-index-map-format0-map-data-ref delta-set-index-map-format0-p
   delta-set-index-map-format1 delta-set-index-map-format1-entry-format
   delta-set-index-map-format1-format-table
   delta-set-index-map-format1-map-count delta-set-index-map-format1-map-data
   delta-set-index-map-format1-map-data-bytes
   delta-set-index-map-format1-map-data-count
   delta-set-index-map-format1-map-data-ref delta-set-index-map-format1-p
   entry-format-inner-index-bit-count-mask-p entry-format-map-entry-size-mask-p
   item-variation-data item-variation-data-delta-sets
   item-variation-data-delta-sets-bytes item-variation-data-delta-sets-count
   item-variation-data-delta-sets-ref item-variation-data-item-count
   item-variation-data-p item-variation-data-region-index-count
   item-variation-data-region-indexes item-variation-data-region-indexes-count
   item-variation-data-region-indexes-ref item-variation-data-word-delta-count
   item-variation-store item-variation-store-format-table
   item-variation-store-item-variation-data-count
   item-variation-store-item-variation-data-offsets
   item-variation-store-item-variation-data-offsets-count
   item-variation-store-item-variation-data-offsets-ref item-variation-store-p
   item-variation-store-variation-region-list-offset
   item-variation-store-variation-region-list-offset-offset
   read-delta-set-index-map read-delta-set-index-map-format0
   read-delta-set-index-map-format1 read-item-variation-data
   read-item-variation-store read-tuple-variation-header
   read-variation-region-list region-axis-coordinates
   region-axis-coordinates-end-coord region-axis-coordinates-p
   region-axis-coordinates-peak-coord region-axis-coordinates-start-coord
   sanitize-delta-set-index-map-format0 sanitize-delta-set-index-map-format1
   sanitize-item-variation-data sanitize-item-variation-store
   sanitize-tuple-variation-header sanitize-variation-region-list tuple tuple-p
   tuple-values tuple-values-count tuple-values-ref tuple-variation-header
   tuple-variation-header-intermediate-end-tuple
   tuple-variation-header-intermediate-end-tuple-count
   tuple-variation-header-intermediate-end-tuple-ref
   tuple-variation-header-intermediate-start-tuple
   tuple-variation-header-intermediate-start-tuple-count
   tuple-variation-header-intermediate-start-tuple-ref tuple-variation-header-p
   tuple-variation-header-peak-tuple tuple-variation-header-peak-tuple-count
   tuple-variation-header-peak-tuple-ref tuple-variation-header-tuple-index
   tuple-variation-header-variation-data-size variation-region
   variation-region-list variation-region-list-axis-count
   variation-region-list-p variation-region-list-region-count
   variation-region-list-variation-regions variation-region-p
   variation-region-region-axes variation-region-region-axes-count
   variation-region-region-axes-ref))


(define-constant +entry-format-inner-index-bit-count-mask+ 15)


(declaim (inline entry-format-inner-index-bit-count-mask-p))


(defun entry-format-inner-index-bit-count-mask-p (flags)
  (logtest flags +entry-format-inner-index-bit-count-mask+))


(define-constant +entry-format-map-entry-size-mask+ 48)


(declaim (inline entry-format-map-entry-size-mask-p))


(defun entry-format-map-entry-size-mask-p (flags)
  (logtest flags +entry-format-map-entry-size-mask+))


(defstruct
    (tuple (:include record-ref)
     (:constructor %make-tuple (%record-font-data %record-offset))))


(declaim (inline tuple-values))


(defun tuple-values-count (rec &optional axis-count)
  "Coordinate array specifying a position within the font’s variation space.  The number of elements must match the axisCount specified in the 'fvar' table."
  (declare (type tuple rec))
  axis-count)


(defun tuple-values-ref (rec index)
  "Coordinate array specifying a position within the font’s variation space.  The number of elements must match the axisCount specified in the 'fvar' table."
  (declare (type tuple rec)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (record-ref-offset rec) (* index 2))))
    (font-data-read-f2dot14 (record-ref-font-data rec) pos)))


(defstruct
    (variation-region (:include record-ref)
     (:constructor %make-variation-region (%record-font-data %record-offset))))


(declaim (inline variation-region-region-axes))


(defun variation-region-region-axes-count (rec &optional axis-count)
  "Array of region axis coordinates records, in the order of axes given in the 'fvar' table."
  (declare (type variation-region rec))
  axis-count)


(defun variation-region-region-axes-ref (rec index)
  "Array of region axis coordinates records, in the order of axes given in the 'fvar' table."
  (declare (type variation-region rec)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (record-ref-offset rec) (* index 6))))
    (%make-region-axis-coordinates (record-ref-font-data rec) pos)))


(defstruct
    (region-axis-coordinates (:include record-ref)
     (:constructor %make-region-axis-coordinates
      (%record-font-data %record-offset))))


(define-constant +region-axis-coordinates-size+ 6)


(declaim
 (inline region-axis-coordinates-start-coord region-axis-coordinates-peak-coord
  region-axis-coordinates-end-coord))


(defun region-axis-coordinates-start-coord (rec)
  "The region start coordinate value for the current axis."
  (declare (type region-axis-coordinates rec))
  (font-data-read-f2dot14 (record-ref-font-data rec) (record-ref-offset rec)))


(defun region-axis-coordinates-peak-coord (rec)
  "The region peak coordinate value for the current axis."
  (declare (type region-axis-coordinates rec))
  (font-data-read-f2dot14 (record-ref-font-data rec)
                          (+ (record-ref-offset rec) 2)))


(defun region-axis-coordinates-end-coord (rec)
  "The region end coordinate value for the current axis."
  (declare (type region-axis-coordinates rec))
  (font-data-read-f2dot14 (record-ref-font-data rec)
                          (+ (record-ref-offset rec) 4)))


(defstruct
    (tuple-variation-header (:include table-ref)
     (:constructor %make-tuple-variation-header
      (%table-font-data %table-offset %table-length))))


(declaim
 (inline tuple-variation-header-variation-data-size
  tuple-variation-header-tuple-index tuple-variation-header-peak-tuple
  tuple-variation-header-peak-tuple-count
  tuple-variation-header-intermediate-start-tuple
  tuple-variation-header-intermediate-start-tuple-count
  tuple-variation-header-intermediate-end-tuple
  tuple-variation-header-intermediate-end-tuple-count
  tuple-variation-header-variation-data-size-raw))


(defun tuple-variation-header-variation-data-size (table)
  "The size in bytes of the serialized data for this tuple variation table."
  (declare (type tuple-variation-header table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(defun tuple-variation-header-variation-data-size-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun tuple-variation-header-peak-tuple-count (table &optional count)
  "Peak tuple record for this tuple variation table — optional, determined by flags in the tupleIndex value.  Note that this must always be included in the 'cvar' table."
  (or count
      (max 0
           (floor (- (table-ref-length table) (+ (table-ref-offset table) 2))
                  2))))


(defun tuple-variation-header-peak-tuple-ref (table index)
  "Peak tuple record for this tuple variation table — optional, determined by flags in the tupleIndex value.  Note that this must always be included in the 'cvar' table."
  (declare (type tuple-variation-header table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 2) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-f2dot14 (table-ref-font-data table) pos)))


(defun tuple-variation-header-intermediate-start-tuple-count
       (table &optional count)
  "Intermediate start tuple record for this tuple variation table — optional, determined by flags in the tupleIndex value."
  (or count
      (max 0
           (floor
            (- (table-ref-length table)
               (+ (table-ref-offset table) 2
                  (* (tuple-variation-header-peak-tuple-count table) 2)))
            2))))


(defun tuple-variation-header-intermediate-start-tuple-ref (table index)
  "Intermediate start tuple record for this tuple variation table — optional, determined by flags in the tupleIndex value."
  (declare (type tuple-variation-header table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 2
             (* (tuple-variation-header-peak-tuple-count table) 2))
          (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-f2dot14 (table-ref-font-data table) pos)))


(defun tuple-variation-header-intermediate-end-tuple-count
       (table &optional count)
  "Intermediate end tuple record for this tuple variation table — optional, determined by flags in the tupleIndex value."
  (or count
      (max 0
           (floor
            (- (table-ref-length table)
               (+ (table-ref-offset table) 2
                  (*
                   (tuple-variation-header-intermediate-start-tuple-count
                    table)
                   2)
                  (* (tuple-variation-header-peak-tuple-count table) 2)))
            2))))


(defun tuple-variation-header-intermediate-end-tuple-ref (table index)
  "Intermediate end tuple record for this tuple variation table — optional, determined by flags in the tupleIndex value."
  (declare (type tuple-variation-header table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 2
             (* (tuple-variation-header-intermediate-start-tuple-count table)
                2)
             (* (tuple-variation-header-peak-tuple-count table) 2))
          (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-f2dot14 (table-ref-font-data table) pos)))


(defun sanitize-tuple-variation-header (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  t)


(defun read-tuple-variation-header
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-tuple-variation-header font-data offset length)
  (%make-tuple-variation-header font-data offset length))


(defstruct
    (delta-set-index-map-format0 (:include table-ref)
     (:constructor %make-delta-set-index-map-format0
      (%table-font-data %table-offset %table-length))))


(declaim
 (inline delta-set-index-map-format0-format-table
  delta-set-index-map-format0-entry-format
  delta-set-index-map-format0-map-count delta-set-index-map-format0-map-data
  delta-set-index-map-format0-map-data-count
  delta-set-index-map-format0-format-table-raw
  delta-set-index-map-format0-entry-format-raw
  delta-set-index-map-format0-map-count-raw))


(defun delta-set-index-map-format0-format-table (table)
  "DeltaSetIndexMap format: set to 0."
  (declare (type delta-set-index-map-format0 table))
  (font-data-read-u8 (table-ref-font-data table) (table-ref-offset table)))


(defun delta-set-index-map-format0-format-table-raw (font-data offset)
  (font-data-read-u8 font-data offset))


(defun delta-set-index-map-format0-entry-format (table)
  "A packed field that describes the compressed representation of delta-set indices. See details below."
  (declare (type delta-set-index-map-format0 table))
  (font-data-read-u8 (table-ref-font-data table)
                     (+ (table-ref-offset table) 1)))


(defun delta-set-index-map-format0-entry-format-raw (font-data offset)
  (font-data-read-u8 font-data (+ offset 1)))


(defun delta-set-index-map-format0-map-count (table)
  "The number of mapping entries."
  (declare (type delta-set-index-map-format0 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun delta-set-index-map-format0-map-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun delta-set-index-map-format0-map-data-count (table &optional count)
  "The delta-set index mapping data. See details below."
  (or count
      (max 0
           (floor (- (table-ref-length table) (+ (table-ref-offset table) 4))
                  1))))


(defun delta-set-index-map-format0-map-data-ref (table index)
  "The delta-set index mapping data. See details below."
  (declare (type delta-set-index-map-format0 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 4) (* index 1))))
    (unless
        (<= (+ pos 1) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 1 :length
             (table-ref-length table)))
    (font-data-read-u8 (table-ref-font-data table) pos)))


(defun delta-set-index-map-format0-map-data-bytes (table)
  "The delta-set index mapping data. See details below."
  (font-data-slice (table-ref-font-data table) (+ (table-ref-offset table) 4)
                   (delta-set-index-map-format0-map-data-count table)))


(defun sanitize-delta-set-index-map-format0 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 4 length) (font-data-valid-range-p font-data offset 4))
    (error 'font-out-of-bounds-error :pos offset :size 4 :length
           (font-data-length font-data)))
  t)


(defun read-delta-set-index-map-format0
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-delta-set-index-map-format0 font-data offset length)
  (%make-delta-set-index-map-format0 font-data offset length))


(defstruct
    (delta-set-index-map-format1 (:include table-ref)
     (:constructor %make-delta-set-index-map-format1
      (%table-font-data %table-offset %table-length))))


(declaim
 (inline delta-set-index-map-format1-format-table
  delta-set-index-map-format1-entry-format
  delta-set-index-map-format1-map-count delta-set-index-map-format1-map-data
  delta-set-index-map-format1-map-data-count
  delta-set-index-map-format1-format-table-raw
  delta-set-index-map-format1-entry-format-raw
  delta-set-index-map-format1-map-count-raw))


(defun delta-set-index-map-format1-format-table (table)
  "DeltaSetIndexMap format: set to 1."
  (declare (type delta-set-index-map-format1 table))
  (font-data-read-u8 (table-ref-font-data table) (table-ref-offset table)))


(defun delta-set-index-map-format1-format-table-raw (font-data offset)
  (font-data-read-u8 font-data offset))


(defun delta-set-index-map-format1-entry-format (table)
  "A packed field that describes the compressed representation of delta-set indices. See details below."
  (declare (type delta-set-index-map-format1 table))
  (font-data-read-u8 (table-ref-font-data table)
                     (+ (table-ref-offset table) 1)))


(defun delta-set-index-map-format1-entry-format-raw (font-data offset)
  (font-data-read-u8 font-data (+ offset 1)))


(defun delta-set-index-map-format1-map-count (table)
  "The number of mapping entries."
  (declare (type delta-set-index-map-format1 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun delta-set-index-map-format1-map-count-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 2)))


(defun delta-set-index-map-format1-map-data-count (table &optional count)
  "The delta-set index mapping data. See details below."
  (or count
      (max 0
           (floor (- (table-ref-length table) (+ (table-ref-offset table) 6))
                  1))))


(defun delta-set-index-map-format1-map-data-ref (table index)
  "The delta-set index mapping data. See details below."
  (declare (type delta-set-index-map-format1 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 6) (* index 1))))
    (unless
        (<= (+ pos 1) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 1 :length
             (table-ref-length table)))
    (font-data-read-u8 (table-ref-font-data table) pos)))


(defun delta-set-index-map-format1-map-data-bytes (table)
  "The delta-set index mapping data. See details below."
  (font-data-slice (table-ref-font-data table) (+ (table-ref-offset table) 6)
                   (delta-set-index-map-format1-map-data-count table)))


(defun sanitize-delta-set-index-map-format1 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 6 length) (font-data-valid-range-p font-data offset 6))
    (error 'font-out-of-bounds-error :pos offset :size 6 :length
           (font-data-length font-data)))
  t)


(defun read-delta-set-index-map-format1
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-delta-set-index-map-format1 font-data offset length)
  (%make-delta-set-index-map-format1 font-data offset length))


(defun read-delta-set-index-map
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (declare (ignorable length))
  (let ((fmt (font-data-read-u8 font-data (+ offset 0))))
    (case fmt
      (0 (read-delta-set-index-map-format0 font-data offset length))
      (1 (read-delta-set-index-map-format1 font-data offset length))
      (otherwise
       (error 'unsupported-format-error :format fmt :table
              'delta-set-index-map)))))


(defstruct
    (variation-region-list (:include table-ref)
     (:constructor %make-variation-region-list
      (%table-font-data %table-offset %table-length))))


(declaim
 (inline variation-region-list-axis-count variation-region-list-region-count
  variation-region-list-variation-regions variation-region-list-axis-count-raw
  variation-region-list-region-count-raw))


(defun variation-region-list-axis-count (table)
  "The number of variation axes for this font. This must be the same number as axisCount in the 'fvar' table."
  (declare (type variation-region-list table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(defun variation-region-list-axis-count-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun variation-region-list-region-count (table)
  "The number of variation region tables in the variation region list. Must be less than 32,768."
  (declare (type variation-region-list table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun variation-region-list-region-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun sanitize-variation-region-list (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 4 length) (font-data-valid-range-p font-data offset 4))
    (error 'font-out-of-bounds-error :pos offset :size 4 :length
           (font-data-length font-data)))
  t)


(defun read-variation-region-list
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-variation-region-list font-data offset length)
  (%make-variation-region-list font-data offset length))


(defstruct
    (item-variation-store (:include table-ref)
     (:constructor %make-item-variation-store
      (%table-font-data %table-offset %table-length))))


(declaim
 (inline item-variation-store-format-table
  item-variation-store-variation-region-list-offset
  item-variation-store-variation-region-list-offset-offset
  item-variation-store-item-variation-data-count
  item-variation-store-item-variation-data-offsets
  item-variation-store-item-variation-data-offsets-count
  item-variation-store-format-table-raw
  item-variation-store-item-variation-data-count-raw))


(defun item-variation-store-format-table (table)
  "Format— set to 1"
  (declare (type item-variation-store table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(defun item-variation-store-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun item-variation-store-variation-region-list-offset-offset (table)
  "Offset in bytes from the start of the item variation store to the variation region list."
  (declare (type item-variation-store table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun item-variation-store-variation-region-list-offset (table)
  "Offset in bytes from the start of the item variation store to the variation region list."
  (declare (type item-variation-store table))
  (let ((off (item-variation-store-variation-region-list-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-variation-region-list (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun item-variation-store-item-variation-data-count (table)
  "The number of item variation data subtables."
  (declare (type item-variation-store table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6)))


(defun item-variation-store-item-variation-data-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 6)))


(defun item-variation-store-item-variation-data-offsets-count (table)
  "Offsets in bytes from the start of the item variation store to each item variation data subtable."
  (item-variation-store-item-variation-data-count table))


(defun item-variation-store-item-variation-data-offsets-ref (table index)
  "Offsets in bytes from the start of the item variation store to each item variation data subtable."
  (declare (type item-variation-store table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 8) (* index 4))))
    (unless
        (<= (+ pos 4) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 4 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u32 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-item-variation-data (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-item-variation-store (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 8 length) (font-data-valid-range-p font-data offset 8))
    (error 'font-out-of-bounds-error :pos offset :size 8 :length
           (font-data-length font-data)))
  (let ((cnt
         (item-variation-store-item-variation-data-count-raw font-data offset)))
    (unless
        (and (<= (+ 8 (* cnt 4)) length)
             (font-data-valid-range-p font-data offset (+ 8 (* cnt 4))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 8 (* cnt 4))
             :length (font-data-length font-data))))
  t)


(defun read-item-variation-store
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-item-variation-store font-data offset length)
  (%make-item-variation-store font-data offset length))


(defstruct
    (item-variation-data (:include table-ref)
     (:constructor %make-item-variation-data
      (%table-font-data %table-offset %table-length))))


(declaim
 (inline item-variation-data-item-count item-variation-data-word-delta-count
  item-variation-data-region-index-count item-variation-data-region-indexes
  item-variation-data-region-indexes-count item-variation-data-delta-sets
  item-variation-data-delta-sets-count item-variation-data-item-count-raw
  item-variation-data-word-delta-count-raw
  item-variation-data-region-index-count-raw))


(defun item-variation-data-item-count (table)
  "The number of delta sets for distinct items."
  (declare (type item-variation-data table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(defun item-variation-data-item-count-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun item-variation-data-word-delta-count (table)
  "A packed field: the high bit is a flag—see details below."
  (declare (type item-variation-data table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun item-variation-data-word-delta-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun item-variation-data-region-index-count (table)
  "The number of variation regions referenced."
  (declare (type item-variation-data table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(defun item-variation-data-region-index-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun item-variation-data-region-indexes-count (table)
  "Array of indices into the variation region list for the regions referenced by this item variation data table."
  (item-variation-data-region-index-count table))


(defun item-variation-data-region-indexes-ref (table index)
  "Array of indices into the variation region list for the regions referenced by this item variation data table."
  (declare (type item-variation-data table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 6) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun item-variation-data-delta-sets-count (table &optional count)
  "Delta-set rows."
  (or count
      (max 0
           (floor
            (- (table-ref-length table)
               (+ (table-ref-offset table) 6
                  (* (item-variation-data-region-indexes-count table) 2)))
            1))))


(defun item-variation-data-delta-sets-ref (table index)
  "Delta-set rows."
  (declare (type item-variation-data table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 6
             (* (item-variation-data-region-indexes-count table) 2))
          (* index 1))))
    (unless
        (<= (+ pos 1) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 1 :length
             (table-ref-length table)))
    (font-data-read-u8 (table-ref-font-data table) pos)))


(defun item-variation-data-delta-sets-bytes (table)
  "Delta-set rows."
  (font-data-slice (table-ref-font-data table)
                   (+ (table-ref-offset table) 6
                      (* (item-variation-data-region-indexes-count table) 2))
                   (item-variation-data-delta-sets-count table)))


(defun sanitize-item-variation-data (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 6 length) (font-data-valid-range-p font-data offset 6))
    (error 'font-out-of-bounds-error :pos offset :size 6 :length
           (font-data-length font-data)))
  (let ((cnt (item-variation-data-region-index-count-raw font-data offset)))
    (unless
        (and (<= (+ 6 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 6 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 6 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-item-variation-data
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-item-variation-data font-data offset length)
  (%make-item-variation-data font-data offset length))

