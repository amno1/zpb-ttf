;;;; hhea.lisp — Generated OpenType tables
;;;; Generated automatically from OpenType sexp schema
;;;; DO NOT EDIT DIRECTLY


(in-package #:zpb-otf)


(export
 '(hhea hhea-advance-width-max hhea-ascender hhea-caret-offset
   hhea-caret-slope-rise hhea-caret-slope-run hhea-descender hhea-extended
   hhea-extended-advance-width-max hhea-extended-ascender
   hhea-extended-caret-offset hhea-extended-caret-slope-rise
   hhea-extended-caret-slope-run hhea-extended-descender hhea-extended-line-gap
   hhea-extended-metric-data-format hhea-extended-min-left-side-bearing
   hhea-extended-min-right-side-bearing hhea-extended-number-of-h-metrics
   hhea-extended-p hhea-extended-reserved1 hhea-extended-reserved2
   hhea-extended-reserved3 hhea-extended-reserved4 hhea-extended-version
   hhea-extended-x-max-extent hhea-line-gap hhea-metric-data-format
   hhea-min-left-side-bearing hhea-min-right-side-bearing
   hhea-number-of-h-metrics hhea-p hhea-reserved1 hhea-reserved2 hhea-reserved3
   hhea-reserved4 hhea-version hhea-x-max-extent read-hhea read-hhea-extended
   sanitize-hhea sanitize-hhea-extended))


(defstruct
    (hhea (:include table-ref)
     (:constructor %make-hhea (%table-font-data %table-offset %table-length))))


(defun hhea-version (table)
  "The major/minor version (1, 0)"
  (declare (type hhea table))
  (font-data-read-u32 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline hhea-version-raw))


(defun hhea-version-raw (font-data offset)
  (font-data-read-u32 font-data offset))


(defun hhea-ascender (table)
  "Typographic ascent."
  (declare (type hhea table))
  (font-data-read-fword (table-ref-font-data table)
                        (+ (table-ref-offset table) 4)))


(declaim (inline hhea-ascender-raw))


(defun hhea-ascender-raw (font-data offset)
  (font-data-read-fword font-data (+ offset 4)))


(defun hhea-descender (table)
  "Typographic descent."
  (declare (type hhea table))
  (font-data-read-fword (table-ref-font-data table)
                        (+ (table-ref-offset table) 6)))


(declaim (inline hhea-descender-raw))


(defun hhea-descender-raw (font-data offset)
  (font-data-read-fword font-data (+ offset 6)))


(defun hhea-line-gap (table)
  "Typographic line gap. Negative LineGap values are treated as zero in some legacy platform implementations."
  (declare (type hhea table))
  (font-data-read-fword (table-ref-font-data table)
                        (+ (table-ref-offset table) 8)))


(declaim (inline hhea-line-gap-raw))


(defun hhea-line-gap-raw (font-data offset)
  (font-data-read-fword font-data (+ offset 8)))


(defun hhea-advance-width-max (table)
  "Maximum advance width value in 'hmtx' table."
  (declare (type hhea table))
  (font-data-read-ufword (table-ref-font-data table)
                         (+ (table-ref-offset table) 10)))


(declaim (inline hhea-advance-width-max-raw))


(defun hhea-advance-width-max-raw (font-data offset)
  (font-data-read-ufword font-data (+ offset 10)))


(defun hhea-min-left-side-bearing (table)
  "Minimum left sidebearing value in 'hmtx' table for glyphs with contours (empty glyphs should be ignored)."
  (declare (type hhea table))
  (font-data-read-fword (table-ref-font-data table)
                        (+ (table-ref-offset table) 12)))


(declaim (inline hhea-min-left-side-bearing-raw))


(defun hhea-min-left-side-bearing-raw (font-data offset)
  (font-data-read-fword font-data (+ offset 12)))


(defun hhea-min-right-side-bearing (table)
  "Minimum right sidebearing value; calculated as min(aw - (lsb + xMax - xMin)) for glyphs with contours (empty glyphs should be ignored)."
  (declare (type hhea table))
  (font-data-read-fword (table-ref-font-data table)
                        (+ (table-ref-offset table) 14)))


(declaim (inline hhea-min-right-side-bearing-raw))


(defun hhea-min-right-side-bearing-raw (font-data offset)
  (font-data-read-fword font-data (+ offset 14)))


(defun hhea-x-max-extent (table)
  "Max(lsb + (xMax-xMin))"
  (declare (type hhea table))
  (font-data-read-fword (table-ref-font-data table)
                        (+ (table-ref-offset table) 16)))


(declaim (inline hhea-x-max-extent-raw))


(defun hhea-x-max-extent-raw (font-data offset)
  (font-data-read-fword font-data (+ offset 16)))


(defun hhea-caret-slope-rise (table)
  "Used to calculate the slope of the cursor (rise/run); 1 for vertical caret, 0 for horizontal."
  (declare (type hhea table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 18)))


(declaim (inline hhea-caret-slope-rise-raw))


(defun hhea-caret-slope-rise-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 18)))


(defun hhea-caret-slope-run (table)
  "0 for vertical caret, 1 for horizontal."
  (declare (type hhea table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 20)))


(declaim (inline hhea-caret-slope-run-raw))


(defun hhea-caret-slope-run-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 20)))


(defun hhea-caret-offset (table)
  "The amount by which a slanted highlight on a glyph needs to be shifted to produce the best appearance. Set to 0 for non-slanted fonts"
  (declare (type hhea table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 22)))


(declaim (inline hhea-caret-offset-raw))


(defun hhea-caret-offset-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 22)))


(defun hhea-reserved1 (table)
  "set to 0"
  (declare (type hhea table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 24)))


(declaim (inline hhea-reserved1-raw))


(defun hhea-reserved1-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 24)))


(defun hhea-reserved2 (table)
  "set to 0"
  (declare (type hhea table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 26)))


(declaim (inline hhea-reserved2-raw))


(defun hhea-reserved2-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 26)))


(defun hhea-reserved3 (table)
  "set to 0"
  (declare (type hhea table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 28)))


(declaim (inline hhea-reserved3-raw))


(defun hhea-reserved3-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 28)))


(defun hhea-reserved4 (table)
  "set to 0"
  (declare (type hhea table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 30)))


(declaim (inline hhea-reserved4-raw))


(defun hhea-reserved4-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 30)))


(defun hhea-metric-data-format (table)
  "0 for current format."
  (declare (type hhea table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 32)))


(declaim (inline hhea-metric-data-format-raw))


(defun hhea-metric-data-format-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 32)))


(defun hhea-number-of-h-metrics (table)
  "Number of hMetric entries in 'hmtx' table"
  (declare (type hhea table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 34)))


(declaim (inline hhea-number-of-h-metrics-raw))


(declaim
 (inline hhea-version hhea-ascender hhea-descender hhea-line-gap
  hhea-advance-width-max hhea-min-left-side-bearing hhea-min-right-side-bearing
  hhea-x-max-extent hhea-caret-slope-rise hhea-caret-slope-run
  hhea-caret-offset hhea-reserved1 hhea-reserved2 hhea-reserved3 hhea-reserved4
  hhea-metric-data-format hhea-number-of-h-metrics))


(defun hhea-number-of-h-metrics-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 34)))


(defun sanitize-hhea (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 36 length) (font-data-valid-range-p font-data offset 36))
    (error 'font-out-of-bounds-error :pos offset :size 36 :length
           (font-data-length font-data)))
  t)


(defun read-hhea
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-hhea font-data offset length)
  (%make-hhea font-data offset length))


(defstruct
    (hhea-extended (:include table-ref)
     (:constructor %make-hhea-extended
      (%table-font-data %table-offset %table-length))))


(defun hhea-extended-version (table)
  (declare (type hhea-extended table))
  (font-data-read-u32 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline hhea-extended-version-raw))


(defun hhea-extended-version-raw (font-data offset)
  (font-data-read-u32 font-data offset))


(defun hhea-extended-ascender (table)
  (declare (type hhea-extended table))
  (font-data-read-fword (table-ref-font-data table)
                        (+ (table-ref-offset table) 4)))


(declaim (inline hhea-extended-ascender-raw))


(defun hhea-extended-ascender-raw (font-data offset)
  (font-data-read-fword font-data (+ offset 4)))


(defun hhea-extended-descender (table)
  (declare (type hhea-extended table))
  (font-data-read-fword (table-ref-font-data table)
                        (+ (table-ref-offset table) 6)))


(declaim (inline hhea-extended-descender-raw))


(defun hhea-extended-descender-raw (font-data offset)
  (font-data-read-fword font-data (+ offset 6)))


(defun hhea-extended-line-gap (table)
  (declare (type hhea-extended table))
  (font-data-read-fword (table-ref-font-data table)
                        (+ (table-ref-offset table) 8)))


(declaim (inline hhea-extended-line-gap-raw))


(defun hhea-extended-line-gap-raw (font-data offset)
  (font-data-read-fword font-data (+ offset 8)))


(defun hhea-extended-advance-width-max (table)
  (declare (type hhea-extended table))
  (font-data-read-ufword (table-ref-font-data table)
                         (+ (table-ref-offset table) 10)))


(declaim (inline hhea-extended-advance-width-max-raw))


(defun hhea-extended-advance-width-max-raw (font-data offset)
  (font-data-read-ufword font-data (+ offset 10)))


(defun hhea-extended-min-left-side-bearing (table)
  (declare (type hhea-extended table))
  (font-data-read-fword (table-ref-font-data table)
                        (+ (table-ref-offset table) 12)))


(declaim (inline hhea-extended-min-left-side-bearing-raw))


(defun hhea-extended-min-left-side-bearing-raw (font-data offset)
  (font-data-read-fword font-data (+ offset 12)))


(defun hhea-extended-min-right-side-bearing (table)
  (declare (type hhea-extended table))
  (font-data-read-fword (table-ref-font-data table)
                        (+ (table-ref-offset table) 14)))


(declaim (inline hhea-extended-min-right-side-bearing-raw))


(defun hhea-extended-min-right-side-bearing-raw (font-data offset)
  (font-data-read-fword font-data (+ offset 14)))


(defun hhea-extended-x-max-extent (table)
  (declare (type hhea-extended table))
  (font-data-read-fword (table-ref-font-data table)
                        (+ (table-ref-offset table) 16)))


(declaim (inline hhea-extended-x-max-extent-raw))


(defun hhea-extended-x-max-extent-raw (font-data offset)
  (font-data-read-fword font-data (+ offset 16)))


(defun hhea-extended-caret-slope-rise (table)
  (declare (type hhea-extended table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 18)))


(declaim (inline hhea-extended-caret-slope-rise-raw))


(defun hhea-extended-caret-slope-rise-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 18)))


(defun hhea-extended-caret-slope-run (table)
  (declare (type hhea-extended table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 20)))


(declaim (inline hhea-extended-caret-slope-run-raw))


(defun hhea-extended-caret-slope-run-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 20)))


(defun hhea-extended-caret-offset (table)
  (declare (type hhea-extended table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 22)))


(declaim (inline hhea-extended-caret-offset-raw))


(defun hhea-extended-caret-offset-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 22)))


(defun hhea-extended-reserved1 (table)
  (declare (type hhea-extended table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 24)))


(declaim (inline hhea-extended-reserved1-raw))


(defun hhea-extended-reserved1-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 24)))


(defun hhea-extended-reserved2 (table)
  (declare (type hhea-extended table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 26)))


(declaim (inline hhea-extended-reserved2-raw))


(defun hhea-extended-reserved2-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 26)))


(defun hhea-extended-reserved3 (table)
  (declare (type hhea-extended table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 28)))


(declaim (inline hhea-extended-reserved3-raw))


(defun hhea-extended-reserved3-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 28)))


(defun hhea-extended-reserved4 (table)
  (declare (type hhea-extended table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 30)))


(declaim (inline hhea-extended-reserved4-raw))


(defun hhea-extended-reserved4-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 30)))


(defun hhea-extended-metric-data-format (table)
  (declare (type hhea-extended table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 32)))


(declaim (inline hhea-extended-metric-data-format-raw))


(defun hhea-extended-metric-data-format-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 32)))


(defun hhea-extended-number-of-h-metrics (table)
  "Number of long metric records in HMTX."
  (declare (type hhea-extended table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 34)))


(declaim (inline hhea-extended-number-of-h-metrics-raw))


(declaim
 (inline hhea-extended-version hhea-extended-ascender hhea-extended-descender
  hhea-extended-line-gap hhea-extended-advance-width-max
  hhea-extended-min-left-side-bearing hhea-extended-min-right-side-bearing
  hhea-extended-x-max-extent hhea-extended-caret-slope-rise
  hhea-extended-caret-slope-run hhea-extended-caret-offset
  hhea-extended-reserved1 hhea-extended-reserved2 hhea-extended-reserved3
  hhea-extended-reserved4 hhea-extended-metric-data-format
  hhea-extended-number-of-h-metrics))


(defun hhea-extended-number-of-h-metrics-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 34)))


(defun sanitize-hhea-extended (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 38 length) (font-data-valid-range-p font-data offset 38))
    (error 'font-out-of-bounds-error :pos offset :size 38 :length
           (font-data-length font-data)))
  t)


(defun read-hhea-extended
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-hhea-extended font-data offset length)
  (%make-hhea-extended font-data offset length))

