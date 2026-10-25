;;;; gvar.lisp — Generated OpenType tables
;;;; Generated automatically from OpenType sexp schema
;;;; DO NOT EDIT DIRECTLY


(in-package #:zpb-otf)


(export
 '(+gvar-flags-long-offsets+ glyph-variation-data-header
   glyph-variation-data-header-extended glyph-variation-data-header-extended-p
   glyph-variation-data-header-extended-serialized-data-offset
   glyph-variation-data-header-extended-serialized-data-offset-offset
   glyph-variation-data-header-extended-tuple-variation-count
   glyph-variation-data-header-extended-tuple-variation-headers
   glyph-variation-data-header-p
   glyph-variation-data-header-serialized-data-offset
   glyph-variation-data-header-serialized-data-offset-offset
   glyph-variation-data-header-tuple-variation-count
   glyph-variation-data-header-tuple-variation-headers gvar gvar-axis-count
   gvar-extended gvar-extended-axis-count gvar-extended-flags
   gvar-extended-glyph-count gvar-extended-glyph-variation-data-array-offset
   gvar-extended-glyph-variation-data-offsets gvar-extended-p
   gvar-extended-shared-tuple-count gvar-extended-shared-tuples-offset
   gvar-extended-shared-tuples-offset-offset gvar-extended-version gvar-flags
   gvar-glyph-count gvar-glyph-variation-data-array-offset
   gvar-glyph-variation-data-offsets gvar-p gvar-shared-tuple-count
   gvar-shared-tuples-offset gvar-shared-tuples-offset-offset gvar-version
   read-glyph-variation-data-header read-glyph-variation-data-header-extended
   read-gvar read-gvar-extended read-shared-tuples
   sanitize-glyph-variation-data-header
   sanitize-glyph-variation-data-header-extended sanitize-gvar
   sanitize-gvar-extended sanitize-shared-tuples shared-tuples shared-tuples-p
   shared-tuples-tuples))


(define-constant +gvar-flags-long-offsets+ 1)


(defstruct
    (gvar (:include table-ref)
     (:constructor %make-gvar (%table-font-data %table-offset %table-length))))


(defun gvar-version (table)
  "Major/minor version number of the glyph variations table — set to (1,0)."
  (declare (type gvar table))
  (font-data-read-u32 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline gvar-version-raw))


(defun gvar-version-raw (font-data offset)
  (font-data-read-u32 font-data offset))


(defun gvar-axis-count (table)
  "The number of variation axes for this font. This must be the same number as axisCount in the 'fvar' table."
  (declare (type gvar table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline gvar-axis-count-raw))


(defun gvar-axis-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun gvar-shared-tuple-count (table)
  "The number of shared tuple records. Shared tuple records can be referenced within glyph variation data tables for multiple glyphs, as opposed to other tuple records stored directly within a glyph variation data table."
  (declare (type gvar table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6)))


(declaim (inline gvar-shared-tuple-count-raw))


(defun gvar-shared-tuple-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 6)))


(defun gvar-shared-tuples-offset-offset (table)
  "Offset from the start of this table to the shared tuple records."
  (declare (type gvar table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 8)))


(defun gvar-shared-tuples-offset (table)
  "Offset from the start of this table to the shared tuple records."
  (declare (type gvar table))
  (let ((off (gvar-shared-tuples-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-shared-tuples (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun gvar-glyph-count (table)
  "The number of glyphs in this font. This must match the number of glyphs stored elsewhere in the font."
  (declare (type gvar table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 12)))


(declaim (inline gvar-glyph-count-raw))


(defun gvar-glyph-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 12)))


(defun gvar-flags (table)
  "Bit-field that gives the format of the offset array that follows. If bit 0 is clear, the offsets are uint16; if bit 0 is set, the offsets are uint32."
  (declare (type gvar table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 14)))


(declaim (inline gvar-flags-raw))


(defun gvar-flags-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 14)))


(defun gvar-glyph-variation-data-array-offset (table)
  "Offset from the start of this table to the array of GlyphVariationData tables."
  (declare (type gvar table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 16)))


(declaim (inline gvar-glyph-variation-data-array-offset-raw))


(declaim
 (inline gvar-version gvar-axis-count gvar-shared-tuple-count
  gvar-shared-tuples-offset gvar-shared-tuples-offset-offset gvar-glyph-count
  gvar-flags gvar-glyph-variation-data-array-offset
  gvar-glyph-variation-data-offsets))


(defun gvar-glyph-variation-data-array-offset-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 16)))


(defun sanitize-gvar (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 20 length) (font-data-valid-range-p font-data offset 20))
    (error 'font-out-of-bounds-error :pos offset :size 20 :length
           (font-data-length font-data)))
  t)


(defun read-gvar
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-gvar font-data offset length)
  (%make-gvar font-data offset length))


(defstruct
    (gvar-extended (:include table-ref)
     (:constructor %make-gvar-extended
      (%table-font-data %table-offset %table-length))))


(defun gvar-extended-version (table)
  (declare (type gvar-extended table))
  (font-data-read-u32 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline gvar-extended-version-raw))


(defun gvar-extended-version-raw (font-data offset)
  (font-data-read-u32 font-data offset))


(defun gvar-extended-axis-count (table)
  (declare (type gvar-extended table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline gvar-extended-axis-count-raw))


(defun gvar-extended-axis-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun gvar-extended-shared-tuple-count (table)
  (declare (type gvar-extended table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6)))


(declaim (inline gvar-extended-shared-tuple-count-raw))


(defun gvar-extended-shared-tuple-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 6)))


(defun gvar-extended-shared-tuples-offset-offset (table)
  (declare (type gvar-extended table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 8)))


(defun gvar-extended-shared-tuples-offset (table)
  (declare (type gvar-extended table))
  (let ((off (gvar-extended-shared-tuples-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-shared-tuples (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun gvar-extended-flags (table)
  (declare (type gvar-extended table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 12)))


(declaim (inline gvar-extended-flags-raw))


(defun gvar-extended-flags-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 12)))


(defun gvar-extended-glyph-variation-data-array-offset (table)
  (declare (type gvar-extended table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 14)))


(declaim (inline gvar-extended-glyph-variation-data-array-offset-raw))


(declaim
 (inline gvar-extended-version gvar-extended-axis-count
  gvar-extended-shared-tuple-count gvar-extended-shared-tuples-offset
  gvar-extended-shared-tuples-offset-offset gvar-extended-glyph-count
  gvar-extended-flags gvar-extended-glyph-variation-data-array-offset
  gvar-extended-glyph-variation-data-offsets))


(defun gvar-extended-glyph-variation-data-array-offset-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 14)))


(defun sanitize-gvar-extended (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 18 length) (font-data-valid-range-p font-data offset 18))
    (error 'font-out-of-bounds-error :pos offset :size 18 :length
           (font-data-length font-data)))
  t)


(defun read-gvar-extended
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-gvar-extended font-data offset length)
  (%make-gvar-extended font-data offset length))


(declaim (inline shared-tuples-tuples))


(defstruct
    (shared-tuples (:include table-ref)
     (:constructor %make-shared-tuples
      (%table-font-data %table-offset %table-length))))


(defun sanitize-shared-tuples (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 0 length) (font-data-valid-range-p font-data offset 0))
    (error 'font-out-of-bounds-error :pos offset :size 0 :length
           (font-data-length font-data)))
  t)


(defun read-shared-tuples
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-shared-tuples font-data offset length)
  (%make-shared-tuples font-data offset length))


(defstruct
    (glyph-variation-data-header (:include table-ref)
     (:constructor %make-glyph-variation-data-header
      (%table-font-data %table-offset %table-length))))


(defun glyph-variation-data-header-serialized-data-offset-offset (table)
  "Offset from the start of the GlyphVariationData table to the serialized data"
  (declare (type glyph-variation-data-header table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim
 (inline glyph-variation-data-header-tuple-variation-count
  glyph-variation-data-header-serialized-data-offset
  glyph-variation-data-header-serialized-data-offset-offset
  glyph-variation-data-header-tuple-variation-headers))


(defun glyph-variation-data-header-serialized-data-offset (table)
  "Offset from the start of the GlyphVariationData table to the serialized data"
  (declare (type glyph-variation-data-header table))
  (let ((off (glyph-variation-data-header-serialized-data-offset-offset table)))
    (when (and off (not (zerop off)))
      (font-data-slice (table-ref-font-data table)
                       (+ (table-ref-offset table) off)))))


(defun sanitize-glyph-variation-data-header (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  t)


(defun read-glyph-variation-data-header
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-glyph-variation-data-header font-data offset length)
  (%make-glyph-variation-data-header font-data offset length))


(defstruct
    (glyph-variation-data-header-extended (:include table-ref)
     (:constructor %make-glyph-variation-data-header-extended
      (%table-font-data %table-offset %table-length))))


(defun glyph-variation-data-header-extended-serialized-data-offset-offset
       (table)
  (declare (type glyph-variation-data-header-extended table))
  (font-data-read-u24 (table-ref-font-data table) (table-ref-offset table)))


(declaim
 (inline glyph-variation-data-header-extended-tuple-variation-count
  glyph-variation-data-header-extended-serialized-data-offset
  glyph-variation-data-header-extended-serialized-data-offset-offset
  glyph-variation-data-header-extended-tuple-variation-headers))


(defun glyph-variation-data-header-extended-serialized-data-offset (table)
  (declare (type glyph-variation-data-header-extended table))
  (let ((off
         (glyph-variation-data-header-extended-serialized-data-offset-offset
          table)))
    (when (and off (not (zerop off)))
      (font-data-slice (table-ref-font-data table)
                       (+ (table-ref-offset table) off)))))


(defun sanitize-glyph-variation-data-header-extended (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 3 length) (font-data-valid-range-p font-data offset 3))
    (error 'font-out-of-bounds-error :pos offset :size 3 :length
           (font-data-length font-data)))
  t)


(defun read-glyph-variation-data-header-extended
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-glyph-variation-data-header-extended font-data offset length)
  (%make-glyph-variation-data-header-extended font-data offset length))

