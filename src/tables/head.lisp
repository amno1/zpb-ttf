;;;; head.lisp — Generated OpenType tables
;;;; Generated automatically from OpenType sexp schema
;;;; DO NOT EDIT DIRECTLY


(in-package #:zpb-otf)


(export
 '(+flags-baseline-at-y-0+ +flags-converted-font+ +flags-force-integer-ppem+
   +flags-instructions-may-alter-advance-width+
   +flags-instructions-may-depend-on-point-size+ +flags-last-resort-font+
   +flags-lossless-transformed-font-data+ +flags-lsb-at-x-0+
   +flags-optimized-for-cleartype+ +mac-style-bold+ +mac-style-condensed+
   +mac-style-extended+ +mac-style-italic+ +mac-style-outline+
   +mac-style-shadow+ +mac-style-underline+ head head-checksum-adjustment
   head-created head-flags head-font-direction-hint head-font-revision
   head-glyph-data-format head-index-to-loc-format head-lowest-rec-ppem
   head-mac-style head-magic-number head-modified head-p head-units-per-em
   head-version head-x-max head-x-min head-y-max head-y-min read-head
   sanitize-head))


(define-constant +mac-style-bold+ 1)


(define-constant +mac-style-italic+ 2)


(define-constant +mac-style-underline+ 4)


(define-constant +mac-style-outline+ 8)


(define-constant +mac-style-shadow+ 16)


(define-constant +mac-style-condensed+ 32)


(define-constant +mac-style-extended+ 64)


(define-constant +flags-baseline-at-y-0+ 1)


(define-constant +flags-lsb-at-x-0+ 2)


(define-constant +flags-instructions-may-depend-on-point-size+ 4)


(define-constant +flags-force-integer-ppem+ 8)


(define-constant +flags-instructions-may-alter-advance-width+ 16)


(define-constant +flags-lossless-transformed-font-data+ 2048)


(define-constant +flags-converted-font+ 4096)


(define-constant +flags-optimized-for-cleartype+ 8192)


(define-constant +flags-last-resort-font+ 16384)


(defstruct
    (head (:include table-ref)
     (:constructor %make-head (%table-font-data %table-offset %table-length))))


(defun head-version (table)
  "Version number of the font header table, set to (1, 0)"
  (declare (type head table))
  (font-data-read-u32 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline head-version-raw))


(defun head-version-raw (font-data offset)
  (font-data-read-u32 font-data offset))


(defun head-font-revision (table)
  "Set by font manufacturer."
  (declare (type head table))
  (font-data-read-fixed (table-ref-font-data table)
                        (+ (table-ref-offset table) 4)))


(declaim (inline head-font-revision-raw))


(defun head-font-revision-raw (font-data offset)
  (font-data-read-fixed font-data (+ offset 4)))


(defun head-checksum-adjustment (table)
  "To compute: set it to 0, sum the entire font as uint32, then store 0xB1B0AFBA - sum. If the font is used as a component in a font collection file, the value of this field will be invalidated by changes to the file structure and font table directory, and must be ignored."
  (declare (type head table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 8)))


(declaim (inline head-checksum-adjustment-raw))


(defun head-checksum-adjustment-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 8)))


(defun head-magic-number (table)
  "Set to 0x5F0F3CF5."
  (declare (type head table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 12)))


(declaim (inline head-magic-number-raw))


(defun head-magic-number-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 12)))


(defun head-flags (table)
  "See the flags enum."
  (declare (type head table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 16)))


(declaim (inline head-flags-raw))


(defun head-flags-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 16)))


(defun head-units-per-em (table)
  "Set to a value from 16 to 16384. Any value in this range is valid. In fonts that have TrueType outlines, a power of 2 is recommended as this allows performance optimizations in some rasterizers."
  (declare (type head table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 18)))


(declaim (inline head-units-per-em-raw))


(defun head-units-per-em-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 18)))


(defun head-created (table)
  "Number of seconds since 12:00 midnight that started January 1st 1904 in GMT/UTC time zone."
  (declare (type head table))
  (font-data-read-u64 (table-ref-font-data table)
                      (+ (table-ref-offset table) 20)))


(declaim (inline head-created-raw))


(defun head-created-raw (font-data offset)
  (font-data-read-u64 font-data (+ offset 20)))


(defun head-modified (table)
  "Number of seconds since 12:00 midnight that started January 1st 1904 in GMT/UTC time zone."
  (declare (type head table))
  (font-data-read-u64 (table-ref-font-data table)
                      (+ (table-ref-offset table) 28)))


(declaim (inline head-modified-raw))


(defun head-modified-raw (font-data offset)
  (font-data-read-u64 font-data (+ offset 28)))


(defun head-x-min (table)
  "Minimum x coordinate across all glyph bounding boxes."
  (declare (type head table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 36)))


(declaim (inline head-x-min-raw))


(defun head-x-min-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 36)))


(defun head-y-min (table)
  "Minimum y coordinate across all glyph bounding boxes."
  (declare (type head table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 38)))


(declaim (inline head-y-min-raw))


(defun head-y-min-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 38)))


(defun head-x-max (table)
  "Maximum x coordinate across all glyph bounding boxes."
  (declare (type head table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 40)))


(declaim (inline head-x-max-raw))


(defun head-x-max-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 40)))


(defun head-y-max (table)
  "Maximum y coordinate across all glyph bounding boxes."
  (declare (type head table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 42)))


(declaim (inline head-y-max-raw))


(defun head-y-max-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 42)))


(defun head-mac-style (table)
  "Bits identifying the font's style; see [MacStyle]"
  (declare (type head table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 44)))


(declaim (inline head-mac-style-raw))


(defun head-mac-style-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 44)))


(defun head-lowest-rec-ppem (table)
  "Smallest readable size in pixels."
  (declare (type head table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 46)))


(declaim (inline head-lowest-rec-ppem-raw))


(defun head-lowest-rec-ppem-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 46)))


(defun head-font-direction-hint (table)
  "Deprecated (Set to 2)."
  (declare (type head table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 48)))


(declaim (inline head-font-direction-hint-raw))


(defun head-font-direction-hint-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 48)))


(defun head-index-to-loc-format (table)
  "0 for short offsets (Offset16), 1 for long (Offset32)."
  (declare (type head table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 50)))


(declaim (inline head-index-to-loc-format-raw))


(defun head-index-to-loc-format-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 50)))


(defun head-glyph-data-format (table)
  "0 for current format."
  (declare (type head table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 52)))


(declaim (inline head-glyph-data-format-raw))


(declaim
 (inline head-version head-font-revision head-checksum-adjustment
  head-magic-number head-flags head-units-per-em head-created head-modified
  head-x-min head-y-min head-x-max head-y-max head-mac-style
  head-lowest-rec-ppem head-font-direction-hint head-index-to-loc-format
  head-glyph-data-format))


(defun head-glyph-data-format-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 52)))


(defun sanitize-head (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 54 length) (font-data-valid-range-p font-data offset 54))
    (error 'font-out-of-bounds-error :pos offset :size 54 :length
           (font-data-length font-data)))
  t)


(defun read-head
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-head font-data offset length)
  (%make-head font-data offset length))

