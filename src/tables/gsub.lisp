;;;; gsub.lisp — Generated OpenType tables
;;;; Generated automatically from OpenType sexp schema
;;;; DO NOT EDIT DIRECTLY


(in-package #:zpb-otf)


(export
 '(alternate-set alternate-set-alternate-glyph-ids
   alternate-set-alternate-glyph-ids-count
   alternate-set-alternate-glyph-ids-ref alternate-set-glyph-count
   alternate-set-p alternate-set2 alternate-set2-alternate-glyph-ids
   alternate-set2-alternate-glyph-ids-count
   alternate-set2-alternate-glyph-ids-ref alternate-set2-glyph-count
   alternate-set2-p alternate-subst-format1
   alternate-subst-format1-alternate-set-count
   alternate-subst-format1-alternate-set-offsets
   alternate-subst-format1-alternate-set-offsets-count
   alternate-subst-format1-alternate-set-offsets-ref
   alternate-subst-format1-coverage-offset
   alternate-subst-format1-coverage-offset-offset alternate-subst-format1-p
   alternate-subst-format1-subst-format alternate-subst-format2
   alternate-subst-format2-alternate-set-count
   alternate-subst-format2-alternate-set-offsets
   alternate-subst-format2-alternate-set-offsets-count
   alternate-subst-format2-alternate-set-offsets-ref
   alternate-subst-format2-coverage-offset
   alternate-subst-format2-coverage-offset-offset alternate-subst-format2-p
   alternate-subst-format2-subst-format extension-subst-format1
   extension-subst-format1-extension-lookup-type
   extension-subst-format1-extension-offset
   extension-subst-format1-extension-offset-offset extension-subst-format1-p
   extension-subst-format1-subst-format gsub gsub-feature-list-offset
   gsub-feature-list-offset-offset gsub-feature-list2-offset
   gsub-feature-list2-offset-offset gsub-feature-variations-offset
   gsub-feature-variations-offset-offset gsub-lookup-list-offset
   gsub-lookup-list-offset-offset gsub-lookup-list2-offset
   gsub-lookup-list2-offset-offset gsub-p gsub-script-list-offset
   gsub-script-list-offset-offset gsub-script-list2-offset
   gsub-script-list2-offset-offset gsub-version ligature
   ligature-component-count ligature-component-glyph-ids
   ligature-component-glyph-ids-count ligature-component-glyph-ids-ref
   ligature-ligature-glyph ligature-p ligature-set ligature-set-ligature-count
   ligature-set-ligature-offsets ligature-set-ligature-offsets-count
   ligature-set-ligature-offsets-ref ligature-set-p ligature-set2
   ligature-set2-ligature-count ligature-set2-ligature-offsets
   ligature-set2-ligature-offsets-count ligature-set2-ligature-offsets-ref
   ligature-set2-p ligature-subst-format1
   ligature-subst-format1-coverage-offset
   ligature-subst-format1-coverage-offset-offset
   ligature-subst-format1-ligature-set-count
   ligature-subst-format1-ligature-set-offsets
   ligature-subst-format1-ligature-set-offsets-count
   ligature-subst-format1-ligature-set-offsets-ref ligature-subst-format1-p
   ligature-subst-format1-subst-format ligature-subst-format2
   ligature-subst-format2-coverage-offset
   ligature-subst-format2-coverage-offset-offset
   ligature-subst-format2-ligature-set-count
   ligature-subst-format2-ligature-set-offsets
   ligature-subst-format2-ligature-set-offsets-count
   ligature-subst-format2-ligature-set-offsets-ref ligature-subst-format2-p
   ligature-subst-format2-subst-format ligature2 ligature2-component-count
   ligature2-component-glyph-ids ligature2-component-glyph-ids-count
   ligature2-component-glyph-ids-ref ligature2-ligature-glyph ligature2-p
   multiple-subst-format1 multiple-subst-format1-coverage-offset
   multiple-subst-format1-coverage-offset-offset multiple-subst-format1-p
   multiple-subst-format1-sequence-count
   multiple-subst-format1-sequence-offsets
   multiple-subst-format1-sequence-offsets-count
   multiple-subst-format1-sequence-offsets-ref
   multiple-subst-format1-subst-format multiple-subst-format2
   multiple-subst-format2-coverage-offset
   multiple-subst-format2-coverage-offset-offset multiple-subst-format2-p
   multiple-subst-format2-sequence-count
   multiple-subst-format2-sequence-offsets
   multiple-subst-format2-sequence-offsets-count
   multiple-subst-format2-sequence-offsets-ref
   multiple-subst-format2-subst-format read-alternate-set read-alternate-set2
   read-alternate-subst read-alternate-subst-format1
   read-alternate-subst-format2 read-extension-subst-format1 read-gsub
   read-ligature read-ligature-set read-ligature-set2 read-ligature-subst
   read-ligature-subst-format1 read-ligature-subst-format2 read-ligature2
   read-multiple-subst read-multiple-subst-format1 read-multiple-subst-format2
   read-reverse-chain-single-subst read-reverse-chain-single-subst-format1
   read-reverse-chain-single-subst-format2 read-sequence-table read-sequence2
   read-single-subst read-single-subst-format1 read-single-subst-format2
   read-single-subst-format3 read-single-subst-format4
   reverse-chain-single-subst-format1
   reverse-chain-single-subst-format1-backtrack-coverage-offsets
   reverse-chain-single-subst-format1-backtrack-coverage-offsets-count
   reverse-chain-single-subst-format1-backtrack-coverage-offsets-ref
   reverse-chain-single-subst-format1-backtrack-glyph-count
   reverse-chain-single-subst-format1-coverage-offset
   reverse-chain-single-subst-format1-coverage-offset-offset
   reverse-chain-single-subst-format1-glyph-count
   reverse-chain-single-subst-format1-lookahead-coverage-offsets
   reverse-chain-single-subst-format1-lookahead-coverage-offsets-count
   reverse-chain-single-subst-format1-lookahead-coverage-offsets-ref
   reverse-chain-single-subst-format1-lookahead-glyph-count
   reverse-chain-single-subst-format1-p
   reverse-chain-single-subst-format1-subst-format
   reverse-chain-single-subst-format1-substitute-glyph-ids
   reverse-chain-single-subst-format1-substitute-glyph-ids-count
   reverse-chain-single-subst-format1-substitute-glyph-ids-ref
   reverse-chain-single-subst-format2
   reverse-chain-single-subst-format2-backtrack-coverage-offsets
   reverse-chain-single-subst-format2-backtrack-coverage-offsets-count
   reverse-chain-single-subst-format2-backtrack-coverage-offsets-ref
   reverse-chain-single-subst-format2-backtrack-glyph-count
   reverse-chain-single-subst-format2-coverage-offset
   reverse-chain-single-subst-format2-coverage-offset-offset
   reverse-chain-single-subst-format2-glyph-count
   reverse-chain-single-subst-format2-lookahead-coverage-offsets
   reverse-chain-single-subst-format2-lookahead-coverage-offsets-count
   reverse-chain-single-subst-format2-lookahead-coverage-offsets-ref
   reverse-chain-single-subst-format2-lookahead-glyph-count
   reverse-chain-single-subst-format2-p
   reverse-chain-single-subst-format2-subst-format
   reverse-chain-single-subst-format2-substitute-glyph-ids
   reverse-chain-single-subst-format2-substitute-glyph-ids-count
   reverse-chain-single-subst-format2-substitute-glyph-ids-ref
   sanitize-alternate-set sanitize-alternate-set2
   sanitize-alternate-subst-format1 sanitize-alternate-subst-format2
   sanitize-extension-subst-format1 sanitize-gsub sanitize-ligature
   sanitize-ligature-set sanitize-ligature-set2 sanitize-ligature-subst-format1
   sanitize-ligature-subst-format2 sanitize-ligature2
   sanitize-multiple-subst-format1 sanitize-multiple-subst-format2
   sanitize-reverse-chain-single-subst-format1
   sanitize-reverse-chain-single-subst-format2 sanitize-sequence-table
   sanitize-sequence2 sanitize-single-subst-format1
   sanitize-single-subst-format2 sanitize-single-subst-format3
   sanitize-single-subst-format4 sequence-table sequence-table-glyph-count
   sequence-table-p sequence-table-substitute-glyph-ids
   sequence-table-substitute-glyph-ids-count
   sequence-table-substitute-glyph-ids-ref sequence2 sequence2-glyph-count
   sequence2-p sequence2-substitute-glyph-ids
   sequence2-substitute-glyph-ids-count sequence2-substitute-glyph-ids-ref
   single-subst-format1 single-subst-format1-coverage-offset
   single-subst-format1-coverage-offset-offset
   single-subst-format1-delta-glyph-id single-subst-format1-p
   single-subst-format1-subst-format single-subst-format2
   single-subst-format2-coverage-offset
   single-subst-format2-coverage-offset-offset single-subst-format2-glyph-count
   single-subst-format2-p single-subst-format2-subst-format
   single-subst-format2-substitute-glyph-ids
   single-subst-format2-substitute-glyph-ids-count
   single-subst-format2-substitute-glyph-ids-ref single-subst-format3
   single-subst-format3-coverage-offset
   single-subst-format3-coverage-offset-offset
   single-subst-format3-delta-glyph-id single-subst-format3-p
   single-subst-format3-subst-format single-subst-format4
   single-subst-format4-coverage-offset
   single-subst-format4-coverage-offset-offset single-subst-format4-glyph-count
   single-subst-format4-p single-subst-format4-subst-format
   single-subst-format4-substitute-glyph-ids
   single-subst-format4-substitute-glyph-ids-count
   single-subst-format4-substitute-glyph-ids-ref))


(defstruct
    (gsub (:include table-ref)
     (:constructor %make-gsub (%table-font-data %table-offset %table-length))))


(defun gsub-version (table)
  "The major and minor version of the GSUB table, as a tuple (u16, u16)"
  (declare (type gsub table))
  (font-data-read-u32 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline gsub-version-raw))


(defun gsub-version-raw (font-data offset)
  (font-data-read-u32 font-data offset))


(defun gsub-script-list-offset-offset (table)
  "Offset to ScriptList table, from beginning of GSUB table"
  (declare (type gsub table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(defun gsub-script-list-offset (table)
  "Offset to ScriptList table, from beginning of GSUB table"
  (declare (type gsub table))
  (let ((off (gsub-script-list-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-script-list (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun gsub-feature-list-offset-offset (table)
  "Offset to FeatureList table, from beginning of GSUB table"
  (declare (type gsub table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6)))


(defun gsub-feature-list-offset (table)
  "Offset to FeatureList table, from beginning of GSUB table"
  (declare (type gsub table))
  (let ((off (gsub-feature-list-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-feature-list (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun gsub-lookup-list-offset-offset (table)
  "Offset to LookupList table, from beginning of GSUB table"
  (declare (type gsub table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 8)))


(defun gsub-lookup-list-offset (table)
  "Offset to LookupList table, from beginning of GSUB table"
  (declare (type gsub table))
  (let ((off (gsub-lookup-list-offset-offset table)))
    (when (and off (not (zerop off)))
      (font-data-slice (table-ref-font-data table)
                       (+ (table-ref-offset table) off)))))


(defun gsub-feature-variations-offset-offset (table)
  "Offset to FeatureVariations table, from beginning of the GSUB table (may be NULL)"
  (declare (type gsub table))
  (when (>= (table-ref-length table) 14)
    (font-data-read-u32 (table-ref-font-data table)
                        (+ (table-ref-offset table) 10))))


(defun gsub-feature-variations-offset (table)
  "Offset to FeatureVariations table, from beginning of the GSUB table (may be NULL)"
  (declare (type gsub table))
  (let ((off (gsub-feature-variations-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-feature-variations (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun gsub-script-list2-offset-offset (table)
  "32-bit offset to ScriptList, taking precedence when nonzero."
  (declare (type gsub table))
  (when (>= (table-ref-length table) 18)
    (font-data-read-u32 (table-ref-font-data table)
                        (+ (table-ref-offset table) 14))))


(defun gsub-script-list2-offset (table)
  "32-bit offset to ScriptList, taking precedence when nonzero."
  (declare (type gsub table))
  (let ((off (gsub-script-list2-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-script-list (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun gsub-feature-list2-offset-offset (table)
  "32-bit offset to FeatureList, taking precedence when nonzero."
  (declare (type gsub table))
  (when (>= (table-ref-length table) 22)
    (font-data-read-u32 (table-ref-font-data table)
                        (+ (table-ref-offset table) 18))))


(defun gsub-feature-list2-offset (table)
  "32-bit offset to FeatureList, taking precedence when nonzero."
  (declare (type gsub table))
  (let ((off (gsub-feature-list2-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-feature-list (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun gsub-lookup-list2-offset-offset (table)
  "32-bit offset to LookupList2, taking precedence when nonzero."
  (declare (type gsub table))
  (when (>= (table-ref-length table) 26)
    (font-data-read-u32 (table-ref-font-data table)
                        (+ (table-ref-offset table) 22))))


(declaim
 (inline gsub-version gsub-script-list-offset gsub-script-list-offset-offset
  gsub-feature-list-offset gsub-feature-list-offset-offset
  gsub-lookup-list-offset gsub-lookup-list-offset-offset
  gsub-feature-variations-offset gsub-feature-variations-offset-offset
  gsub-script-list2-offset gsub-script-list2-offset-offset
  gsub-feature-list2-offset gsub-feature-list2-offset-offset
  gsub-lookup-list2-offset gsub-lookup-list2-offset-offset))


(defun gsub-lookup-list2-offset (table)
  "32-bit offset to LookupList2, taking precedence when nonzero."
  (declare (type gsub table))
  (let ((off (gsub-lookup-list2-offset-offset table)))
    (when (and off (not (zerop off)))
      (font-data-slice (table-ref-font-data table)
                       (+ (table-ref-offset table) off)))))


(defun sanitize-gsub (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 10 length) (font-data-valid-range-p font-data offset 10))
    (error 'font-out-of-bounds-error :pos offset :size 10 :length
           (font-data-length font-data)))
  t)


(defun read-gsub
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-gsub font-data offset length)
  (%make-gsub font-data offset length))


(defun read-single-subst
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (declare (ignorable length))
  (let ((fmt (font-data-read-u16 font-data (+ offset 0))))
    (case fmt
      (1 (read-single-subst-format1 font-data offset length))
      (2 (read-single-subst-format2 font-data offset length))
      (3 (read-single-subst-format3 font-data offset length))
      (4 (read-single-subst-format4 font-data offset length))
      (otherwise
       (error 'unsupported-format-error :format fmt :table 'single-subst)))))


(defstruct
    (single-subst-format1 (:include table-ref)
     (:constructor %make-single-subst-format1
      (%table-font-data %table-offset %table-length))))


(defun single-subst-format1-subst-format (table)
  "Format identifier: format = 1"
  (declare (type single-subst-format1 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline single-subst-format1-subst-format-raw))


(defun single-subst-format1-subst-format-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun single-subst-format1-coverage-offset-offset (table)
  "Offset to Coverage table, from beginning of substitution subtable"
  (declare (type single-subst-format1 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun single-subst-format1-coverage-offset (table)
  "Offset to Coverage table, from beginning of substitution subtable"
  (declare (type single-subst-format1 table))
  (let ((off (single-subst-format1-coverage-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-coverage-table (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun single-subst-format1-delta-glyph-id (table)
  "Add to original glyph ID to get substitute glyph ID"
  (declare (type single-subst-format1 table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline single-subst-format1-delta-glyph-id-raw))


(declaim
 (inline single-subst-format1-subst-format single-subst-format1-coverage-offset
  single-subst-format1-coverage-offset-offset
  single-subst-format1-delta-glyph-id))


(defun single-subst-format1-delta-glyph-id-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 4)))


(defun sanitize-single-subst-format1 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 6 length) (font-data-valid-range-p font-data offset 6))
    (error 'font-out-of-bounds-error :pos offset :size 6 :length
           (font-data-length font-data)))
  t)


(defun read-single-subst-format1
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-single-subst-format1 font-data offset length)
  (%make-single-subst-format1 font-data offset length))


(defstruct
    (single-subst-format2 (:include table-ref)
     (:constructor %make-single-subst-format2
      (%table-font-data %table-offset %table-length))))


(defun single-subst-format2-subst-format (table)
  "Format identifier: format = 2"
  (declare (type single-subst-format2 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline single-subst-format2-subst-format-raw))


(defun single-subst-format2-subst-format-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun single-subst-format2-coverage-offset-offset (table)
  "Offset to Coverage table, from beginning of substitution subtable"
  (declare (type single-subst-format2 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun single-subst-format2-coverage-offset (table)
  "Offset to Coverage table, from beginning of substitution subtable"
  (declare (type single-subst-format2 table))
  (let ((off (single-subst-format2-coverage-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-coverage-table (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun single-subst-format2-glyph-count (table)
  "Number of glyph IDs in the substituteGlyphIDs array"
  (declare (type single-subst-format2 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline single-subst-format2-glyph-count-raw))


(defun single-subst-format2-glyph-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun single-subst-format2-substitute-glyph-ids-count (table)
  "Array of substitute glyph IDs — ordered by Coverage index"
  (single-subst-format2-glyph-count table))


(declaim
 (inline single-subst-format2-subst-format single-subst-format2-coverage-offset
  single-subst-format2-coverage-offset-offset single-subst-format2-glyph-count
  single-subst-format2-substitute-glyph-ids
  single-subst-format2-substitute-glyph-ids-count))


(defun single-subst-format2-substitute-glyph-ids-ref (table index)
  "Array of substitute glyph IDs — ordered by Coverage index"
  (declare (type single-subst-format2 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 6) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun sanitize-single-subst-format2 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 6 length) (font-data-valid-range-p font-data offset 6))
    (error 'font-out-of-bounds-error :pos offset :size 6 :length
           (font-data-length font-data)))
  (let ((cnt (single-subst-format2-glyph-count-raw font-data offset)))
    (unless
        (and (<= (+ 6 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 6 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 6 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-single-subst-format2
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-single-subst-format2 font-data offset length)
  (%make-single-subst-format2 font-data offset length))


(defstruct
    (multiple-subst-format1 (:include table-ref)
     (:constructor %make-multiple-subst-format1
      (%table-font-data %table-offset %table-length))))


(defun multiple-subst-format1-subst-format (table)
  "Format identifier: format = 1"
  (declare (type multiple-subst-format1 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline multiple-subst-format1-subst-format-raw))


(defun multiple-subst-format1-subst-format-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun multiple-subst-format1-coverage-offset-offset (table)
  "Offset to Coverage table, from beginning of substitution subtable"
  (declare (type multiple-subst-format1 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun multiple-subst-format1-coverage-offset (table)
  "Offset to Coverage table, from beginning of substitution subtable"
  (declare (type multiple-subst-format1 table))
  (let ((off (multiple-subst-format1-coverage-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-coverage-table (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun multiple-subst-format1-sequence-count (table)
  "Number of Sequence table offsets in the sequenceOffsets array"
  (declare (type multiple-subst-format1 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline multiple-subst-format1-sequence-count-raw))


(defun multiple-subst-format1-sequence-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun multiple-subst-format1-sequence-offsets-count (table)
  "Array of offsets to Sequence tables. Offsets are from beginning of substitution subtable, ordered by Coverage index"
  (multiple-subst-format1-sequence-count table))


(declaim
 (inline multiple-subst-format1-subst-format
  multiple-subst-format1-coverage-offset
  multiple-subst-format1-coverage-offset-offset
  multiple-subst-format1-sequence-count multiple-subst-format1-sequence-offsets
  multiple-subst-format1-sequence-offsets-count))


(defun multiple-subst-format1-sequence-offsets-ref (table index)
  "Array of offsets to Sequence tables. Offsets are from beginning of substitution subtable, ordered by Coverage index"
  (declare (type multiple-subst-format1 table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 6) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u16 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-sequence-table (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-multiple-subst-format1 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 6 length) (font-data-valid-range-p font-data offset 6))
    (error 'font-out-of-bounds-error :pos offset :size 6 :length
           (font-data-length font-data)))
  (let ((cnt (multiple-subst-format1-sequence-count-raw font-data offset)))
    (unless
        (and (<= (+ 6 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 6 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 6 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-multiple-subst-format1
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-multiple-subst-format1 font-data offset length)
  (%make-multiple-subst-format1 font-data offset length))


(defstruct
    (sequence-table (:include table-ref)
     (:constructor %make-sequence-table
      (%table-font-data %table-offset %table-length))))


(defun sequence-table-glyph-count (table)
  "Number of glyph IDs in the substituteGlyphIDs array. This must always be greater than 0."
  (declare (type sequence-table table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline sequence-table-glyph-count-raw))


(defun sequence-table-glyph-count-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun sequence-table-substitute-glyph-ids-count (table)
  "String of glyph IDs to substitute"
  (sequence-table-glyph-count table))


(declaim
 (inline sequence-table-glyph-count sequence-table-substitute-glyph-ids
  sequence-table-substitute-glyph-ids-count))


(defun sequence-table-substitute-glyph-ids-ref (table index)
  "String of glyph IDs to substitute"
  (declare (type sequence-table table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 2) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun sanitize-sequence-table (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  (let ((cnt (sequence-table-glyph-count-raw font-data offset)))
    (unless
        (and (<= (+ 2 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 2 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 2 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-sequence-table
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-sequence-table font-data offset length)
  (%make-sequence-table font-data offset length))


(defstruct
    (alternate-subst-format1 (:include table-ref)
     (:constructor %make-alternate-subst-format1
      (%table-font-data %table-offset %table-length))))


(defun alternate-subst-format1-subst-format (table)
  "Format identifier: format = 1"
  (declare (type alternate-subst-format1 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline alternate-subst-format1-subst-format-raw))


(defun alternate-subst-format1-subst-format-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun alternate-subst-format1-coverage-offset-offset (table)
  "Offset to Coverage table, from beginning of substitution subtable"
  (declare (type alternate-subst-format1 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun alternate-subst-format1-coverage-offset (table)
  "Offset to Coverage table, from beginning of substitution subtable"
  (declare (type alternate-subst-format1 table))
  (let ((off (alternate-subst-format1-coverage-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-coverage-table (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun alternate-subst-format1-alternate-set-count (table)
  "Number of AlternateSet tables"
  (declare (type alternate-subst-format1 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline alternate-subst-format1-alternate-set-count-raw))


(defun alternate-subst-format1-alternate-set-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun alternate-subst-format1-alternate-set-offsets-count (table)
  "Array of offsets to AlternateSet tables. Offsets are from beginning of substitution subtable, ordered by Coverage index"
  (alternate-subst-format1-alternate-set-count table))


(declaim
 (inline alternate-subst-format1-subst-format
  alternate-subst-format1-coverage-offset
  alternate-subst-format1-coverage-offset-offset
  alternate-subst-format1-alternate-set-count
  alternate-subst-format1-alternate-set-offsets
  alternate-subst-format1-alternate-set-offsets-count))


(defun alternate-subst-format1-alternate-set-offsets-ref (table index)
  "Array of offsets to AlternateSet tables. Offsets are from beginning of substitution subtable, ordered by Coverage index"
  (declare (type alternate-subst-format1 table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 6) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u16 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-alternate-set (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-alternate-subst-format1 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 6 length) (font-data-valid-range-p font-data offset 6))
    (error 'font-out-of-bounds-error :pos offset :size 6 :length
           (font-data-length font-data)))
  (let ((cnt
         (alternate-subst-format1-alternate-set-count-raw font-data offset)))
    (unless
        (and (<= (+ 6 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 6 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 6 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-alternate-subst-format1
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-alternate-subst-format1 font-data offset length)
  (%make-alternate-subst-format1 font-data offset length))


(defstruct
    (alternate-set (:include table-ref)
     (:constructor %make-alternate-set
      (%table-font-data %table-offset %table-length))))


(defun alternate-set-glyph-count (table)
  "Number of glyph IDs in the alternateGlyphIDs array"
  (declare (type alternate-set table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline alternate-set-glyph-count-raw))


(defun alternate-set-glyph-count-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun alternate-set-alternate-glyph-ids-count (table)
  "Array of alternate glyph IDs, in arbitrary order"
  (alternate-set-glyph-count table))


(declaim
 (inline alternate-set-glyph-count alternate-set-alternate-glyph-ids
  alternate-set-alternate-glyph-ids-count))


(defun alternate-set-alternate-glyph-ids-ref (table index)
  "Array of alternate glyph IDs, in arbitrary order"
  (declare (type alternate-set table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 2) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun sanitize-alternate-set (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  (let ((cnt (alternate-set-glyph-count-raw font-data offset)))
    (unless
        (and (<= (+ 2 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 2 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 2 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-alternate-set
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-alternate-set font-data offset length)
  (%make-alternate-set font-data offset length))


(defstruct
    (ligature-subst-format1 (:include table-ref)
     (:constructor %make-ligature-subst-format1
      (%table-font-data %table-offset %table-length))))


(defun ligature-subst-format1-subst-format (table)
  "Format identifier: format = 1"
  (declare (type ligature-subst-format1 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline ligature-subst-format1-subst-format-raw))


(defun ligature-subst-format1-subst-format-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun ligature-subst-format1-coverage-offset-offset (table)
  "Offset to Coverage table, from beginning of substitution subtable"
  (declare (type ligature-subst-format1 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun ligature-subst-format1-coverage-offset (table)
  "Offset to Coverage table, from beginning of substitution subtable"
  (declare (type ligature-subst-format1 table))
  (let ((off (ligature-subst-format1-coverage-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-coverage-table (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun ligature-subst-format1-ligature-set-count (table)
  "Number of LigatureSet tables"
  (declare (type ligature-subst-format1 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline ligature-subst-format1-ligature-set-count-raw))


(defun ligature-subst-format1-ligature-set-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun ligature-subst-format1-ligature-set-offsets-count (table)
  "Array of offsets to LigatureSet tables. Offsets are from beginning of substitution subtable, ordered by Coverage index"
  (ligature-subst-format1-ligature-set-count table))


(declaim
 (inline ligature-subst-format1-subst-format
  ligature-subst-format1-coverage-offset
  ligature-subst-format1-coverage-offset-offset
  ligature-subst-format1-ligature-set-count
  ligature-subst-format1-ligature-set-offsets
  ligature-subst-format1-ligature-set-offsets-count))


(defun ligature-subst-format1-ligature-set-offsets-ref (table index)
  "Array of offsets to LigatureSet tables. Offsets are from beginning of substitution subtable, ordered by Coverage index"
  (declare (type ligature-subst-format1 table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 6) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u16 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-ligature-set (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-ligature-subst-format1 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 6 length) (font-data-valid-range-p font-data offset 6))
    (error 'font-out-of-bounds-error :pos offset :size 6 :length
           (font-data-length font-data)))
  (let ((cnt (ligature-subst-format1-ligature-set-count-raw font-data offset)))
    (unless
        (and (<= (+ 6 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 6 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 6 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-ligature-subst-format1
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-ligature-subst-format1 font-data offset length)
  (%make-ligature-subst-format1 font-data offset length))


(defstruct
    (ligature-set (:include table-ref)
     (:constructor %make-ligature-set
      (%table-font-data %table-offset %table-length))))


(defun ligature-set-ligature-count (table)
  "Number of Ligature tables"
  (declare (type ligature-set table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline ligature-set-ligature-count-raw))


(defun ligature-set-ligature-count-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun ligature-set-ligature-offsets-count (table)
  "Array of offsets to Ligature tables. Offsets are from beginning of LigatureSet table, ordered by preference."
  (ligature-set-ligature-count table))


(declaim
 (inline ligature-set-ligature-count ligature-set-ligature-offsets
  ligature-set-ligature-offsets-count))


(defun ligature-set-ligature-offsets-ref (table index)
  "Array of offsets to Ligature tables. Offsets are from beginning of LigatureSet table, ordered by preference."
  (declare (type ligature-set table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 2) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u16 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-ligature (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-ligature-set (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  (let ((cnt (ligature-set-ligature-count-raw font-data offset)))
    (unless
        (and (<= (+ 2 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 2 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 2 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-ligature-set
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-ligature-set font-data offset length)
  (%make-ligature-set font-data offset length))


(defstruct
    (ligature (:include table-ref)
     (:constructor %make-ligature
      (%table-font-data %table-offset %table-length))))


(defun ligature-ligature-glyph (table)
  "glyph ID of ligature to substitute"
  (declare (type ligature table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline ligature-ligature-glyph-raw))


(defun ligature-ligature-glyph-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun ligature-component-count (table)
  "Number of components in the ligature"
  (declare (type ligature table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline ligature-component-count-raw))


(defun ligature-component-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun ligature-component-glyph-ids-count (table)
  "Array of component glyph IDs — start with the second component, ordered in writing direction"
  (max 0 (- (ligature-component-count table) 1)))


(declaim
 (inline ligature-ligature-glyph ligature-component-count
  ligature-component-glyph-ids ligature-component-glyph-ids-count))


(defun ligature-component-glyph-ids-ref (table index)
  "Array of component glyph IDs — start with the second component, ordered in writing direction"
  (declare (type ligature table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 4) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun sanitize-ligature (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 4 length) (font-data-valid-range-p font-data offset 4))
    (error 'font-out-of-bounds-error :pos offset :size 4 :length
           (font-data-length font-data)))
  t)


(defun read-ligature
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-ligature font-data offset length)
  (%make-ligature font-data offset length))


(defstruct
    (extension-subst-format1 (:include table-ref)
     (:constructor %make-extension-subst-format1
      (%table-font-data %table-offset %table-length))))


(defun extension-subst-format1-subst-format (table)
  "Format identifier. Set to 1."
  (declare (type extension-subst-format1 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline extension-subst-format1-subst-format-raw))


(defun extension-subst-format1-subst-format-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun extension-subst-format1-extension-lookup-type (table)
  "Lookup type of subtable referenced by extensionOffset (that is, the extension subtable)."
  (declare (type extension-subst-format1 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline extension-subst-format1-extension-lookup-type-raw))


(defun extension-subst-format1-extension-lookup-type-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun extension-subst-format1-extension-offset-offset (table)
  "Offset to the extension subtable, of lookup type extensionLookupType, relative to the start of the ExtensionSubstFormat1 subtable."
  (declare (type extension-subst-format1 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim
 (inline extension-subst-format1-subst-format
  extension-subst-format1-extension-lookup-type
  extension-subst-format1-extension-offset
  extension-subst-format1-extension-offset-offset))


(defun extension-subst-format1-extension-offset (table)
  "Offset to the extension subtable, of lookup type extensionLookupType, relative to the start of the ExtensionSubstFormat1 subtable."
  (declare (type extension-subst-format1 table))
  (let ((off (extension-subst-format1-extension-offset-offset table)))
    (when (and off (not (zerop off)))
      (font-data-slice (table-ref-font-data table)
                       (+ (table-ref-offset table) off)))))


(defun sanitize-extension-subst-format1 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 8 length) (font-data-valid-range-p font-data offset 8))
    (error 'font-out-of-bounds-error :pos offset :size 8 :length
           (font-data-length font-data)))
  t)


(defun read-extension-subst-format1
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-extension-subst-format1 font-data offset length)
  (%make-extension-subst-format1 font-data offset length))


(defstruct
    (reverse-chain-single-subst-format1 (:include table-ref)
     (:constructor %make-reverse-chain-single-subst-format1
      (%table-font-data %table-offset %table-length))))


(defun reverse-chain-single-subst-format1-subst-format (table)
  "Format identifier: format = 1"
  (declare (type reverse-chain-single-subst-format1 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline reverse-chain-single-subst-format1-subst-format-raw))


(defun reverse-chain-single-subst-format1-subst-format-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun reverse-chain-single-subst-format1-coverage-offset-offset (table)
  "Offset to Coverage table, from beginning of substitution subtable."
  (declare (type reverse-chain-single-subst-format1 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun reverse-chain-single-subst-format1-coverage-offset (table)
  "Offset to Coverage table, from beginning of substitution subtable."
  (declare (type reverse-chain-single-subst-format1 table))
  (let ((off (reverse-chain-single-subst-format1-coverage-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-coverage-table (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun reverse-chain-single-subst-format1-backtrack-glyph-count (table)
  "Number of glyphs in the backtrack sequence."
  (declare (type reverse-chain-single-subst-format1 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline reverse-chain-single-subst-format1-backtrack-glyph-count-raw))


(defun reverse-chain-single-subst-format1-backtrack-glyph-count-raw
       (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun reverse-chain-single-subst-format1-backtrack-coverage-offsets-count
       (table)
  "Array of offsets to coverage tables in backtrack sequence, in glyph sequence order."
  (reverse-chain-single-subst-format1-backtrack-glyph-count table))


(defun reverse-chain-single-subst-format1-backtrack-coverage-offsets-ref
       (table index)
  "Array of offsets to coverage tables in backtrack sequence, in glyph sequence order."
  (declare (type reverse-chain-single-subst-format1 table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 6) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u16 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-coverage-table (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun reverse-chain-single-subst-format1-lookahead-glyph-count (table)
  "Number of glyphs in lookahead sequence."
  (declare (type reverse-chain-single-subst-format1 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6
                         (*
                          (reverse-chain-single-subst-format1-backtrack-coverage-offsets-count
                           table)
                          2))))


(defun reverse-chain-single-subst-format1-lookahead-coverage-offsets-count
       (table)
  "Array of offsets to coverage tables in lookahead sequence, in glyph sequence order."
  (reverse-chain-single-subst-format1-lookahead-glyph-count table))


(defun reverse-chain-single-subst-format1-lookahead-coverage-offsets-ref
       (table index)
  "Array of offsets to coverage tables in lookahead sequence, in glyph sequence order."
  (declare (type reverse-chain-single-subst-format1 table)
           (type (unsigned-byte 32) index))
  (let* ((pos
          (+
           (+ (table-ref-offset table) 8
              (*
               (reverse-chain-single-subst-format1-backtrack-coverage-offsets-count
                table)
               2))
           (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u16 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-coverage-table (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun reverse-chain-single-subst-format1-glyph-count (table)
  "Number of glyph IDs in the substituteGlyphIDs array."
  (declare (type reverse-chain-single-subst-format1 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 8
                         (*
                          (reverse-chain-single-subst-format1-lookahead-coverage-offsets-count
                           table)
                          2)
                         (*
                          (reverse-chain-single-subst-format1-backtrack-coverage-offsets-count
                           table)
                          2))))


(defun reverse-chain-single-subst-format1-substitute-glyph-ids-count (table)
  "Array of substitute glyph IDs — ordered by Coverage index."
  (reverse-chain-single-subst-format1-glyph-count table))


(declaim
 (inline reverse-chain-single-subst-format1-subst-format
  reverse-chain-single-subst-format1-coverage-offset
  reverse-chain-single-subst-format1-coverage-offset-offset
  reverse-chain-single-subst-format1-backtrack-glyph-count
  reverse-chain-single-subst-format1-backtrack-coverage-offsets
  reverse-chain-single-subst-format1-backtrack-coverage-offsets-count
  reverse-chain-single-subst-format1-lookahead-glyph-count
  reverse-chain-single-subst-format1-lookahead-coverage-offsets
  reverse-chain-single-subst-format1-lookahead-coverage-offsets-count
  reverse-chain-single-subst-format1-glyph-count
  reverse-chain-single-subst-format1-substitute-glyph-ids
  reverse-chain-single-subst-format1-substitute-glyph-ids-count))


(defun reverse-chain-single-subst-format1-substitute-glyph-ids-ref
       (table index)
  "Array of substitute glyph IDs — ordered by Coverage index."
  (declare (type reverse-chain-single-subst-format1 table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 10
             (*
              (reverse-chain-single-subst-format1-lookahead-coverage-offsets-count
               table)
              2)
             (*
              (reverse-chain-single-subst-format1-backtrack-coverage-offsets-count
               table)
              2))
          (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun sanitize-reverse-chain-single-subst-format1 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 6 length) (font-data-valid-range-p font-data offset 6))
    (error 'font-out-of-bounds-error :pos offset :size 6 :length
           (font-data-length font-data)))
  (let ((cnt
         (reverse-chain-single-subst-format1-backtrack-glyph-count-raw
          font-data offset)))
    (unless
        (and (<= (+ 6 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 6 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 6 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-reverse-chain-single-subst-format1
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-reverse-chain-single-subst-format1 font-data offset length)
  (%make-reverse-chain-single-subst-format1 font-data offset length))


(defstruct
    (single-subst-format3 (:include table-ref)
     (:constructor %make-single-subst-format3
      (%table-font-data %table-offset %table-length))))


(defun single-subst-format3-subst-format (table)
  "Format identifier: format = 3"
  (declare (type single-subst-format3 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline single-subst-format3-subst-format-raw))


(defun single-subst-format3-subst-format-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun single-subst-format3-coverage-offset-offset (table)
  "Offset to Coverage table, from beginning of substitution subtable"
  (declare (type single-subst-format3 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim
 (inline single-subst-format3-subst-format single-subst-format3-coverage-offset
  single-subst-format3-coverage-offset-offset
  single-subst-format3-delta-glyph-id))


(defun single-subst-format3-coverage-offset (table)
  "Offset to Coverage table, from beginning of substitution subtable"
  (declare (type single-subst-format3 table))
  (let ((off (single-subst-format3-coverage-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-coverage-table (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun sanitize-single-subst-format3 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 6 length) (font-data-valid-range-p font-data offset 6))
    (error 'font-out-of-bounds-error :pos offset :size 6 :length
           (font-data-length font-data)))
  t)


(defun read-single-subst-format3
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-single-subst-format3 font-data offset length)
  (%make-single-subst-format3 font-data offset length))


(defstruct
    (single-subst-format4 (:include table-ref)
     (:constructor %make-single-subst-format4
      (%table-font-data %table-offset %table-length))))


(defun single-subst-format4-subst-format (table)
  "Format identifier: format = 4"
  (declare (type single-subst-format4 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline single-subst-format4-subst-format-raw))


(defun single-subst-format4-subst-format-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun single-subst-format4-coverage-offset-offset (table)
  "Offset to Coverage table, from beginning of substitution subtable"
  (declare (type single-subst-format4 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun single-subst-format4-coverage-offset (table)
  "Offset to Coverage table, from beginning of substitution subtable"
  (declare (type single-subst-format4 table))
  (let ((off (single-subst-format4-coverage-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-coverage-table (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun single-subst-format4-substitute-glyph-ids-count (table)
  "Array of substitute glyph IDs — ordered by Coverage index"
  (single-subst-format4-glyph-count table))


(declaim
 (inline single-subst-format4-subst-format single-subst-format4-coverage-offset
  single-subst-format4-coverage-offset-offset single-subst-format4-glyph-count
  single-subst-format4-substitute-glyph-ids
  single-subst-format4-substitute-glyph-ids-count))


(defun single-subst-format4-substitute-glyph-ids-ref (table index)
  "Array of substitute glyph IDs — ordered by Coverage index"
  (declare (type single-subst-format4 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 6) (* index 3))))
    (unless
        (<= (+ pos 3) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 3 :length
             (table-ref-length table)))
    (font-data-read-u24 (table-ref-font-data table) pos)))


(defun sanitize-single-subst-format4 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 6 length) (font-data-valid-range-p font-data offset 6))
    (error 'font-out-of-bounds-error :pos offset :size 6 :length
           (font-data-length font-data)))
  (let ((cnt (single-subst-format4-glyph-count-raw font-data offset)))
    (unless
        (and (<= (+ 6 (* cnt 3)) length)
             (font-data-valid-range-p font-data offset (+ 6 (* cnt 3))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 6 (* cnt 3))
             :length (font-data-length font-data))))
  t)


(defun read-single-subst-format4
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-single-subst-format4 font-data offset length)
  (%make-single-subst-format4 font-data offset length))


(defstruct
    (multiple-subst-format2 (:include table-ref)
     (:constructor %make-multiple-subst-format2
      (%table-font-data %table-offset %table-length))))


(defun multiple-subst-format2-subst-format (table)
  "Format identifier: format = 2"
  (declare (type multiple-subst-format2 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline multiple-subst-format2-subst-format-raw))


(defun multiple-subst-format2-subst-format-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun multiple-subst-format2-coverage-offset-offset (table)
  "Offset to Coverage table, from beginning of substitution subtable"
  (declare (type multiple-subst-format2 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun multiple-subst-format2-coverage-offset (table)
  "Offset to Coverage table, from beginning of substitution subtable"
  (declare (type multiple-subst-format2 table))
  (let ((off (multiple-subst-format2-coverage-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-coverage-table (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun multiple-subst-format2-sequence-offsets-count (table)
  "Array of offsets to Sequence tables. Offsets are from beginning of substitution subtable, ordered by Coverage index"
  (multiple-subst-format2-sequence-count table))


(declaim
 (inline multiple-subst-format2-subst-format
  multiple-subst-format2-coverage-offset
  multiple-subst-format2-coverage-offset-offset
  multiple-subst-format2-sequence-count multiple-subst-format2-sequence-offsets
  multiple-subst-format2-sequence-offsets-count))


(defun multiple-subst-format2-sequence-offsets-ref (table index)
  "Array of offsets to Sequence tables. Offsets are from beginning of substitution subtable, ordered by Coverage index"
  (declare (type multiple-subst-format2 table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 6) (* index 3))))
    (unless
        (<= (+ pos 3) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 3 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u24 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-sequence2 (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-multiple-subst-format2 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 6 length) (font-data-valid-range-p font-data offset 6))
    (error 'font-out-of-bounds-error :pos offset :size 6 :length
           (font-data-length font-data)))
  (let ((cnt (multiple-subst-format2-sequence-count-raw font-data offset)))
    (unless
        (and (<= (+ 6 (* cnt 3)) length)
             (font-data-valid-range-p font-data offset (+ 6 (* cnt 3))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 6 (* cnt 3))
             :length (font-data-length font-data))))
  t)


(defun read-multiple-subst-format2
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-multiple-subst-format2 font-data offset length)
  (%make-multiple-subst-format2 font-data offset length))


(defstruct
    (alternate-subst-format2 (:include table-ref)
     (:constructor %make-alternate-subst-format2
      (%table-font-data %table-offset %table-length))))


(defun alternate-subst-format2-subst-format (table)
  "Format identifier: format = 2"
  (declare (type alternate-subst-format2 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline alternate-subst-format2-subst-format-raw))


(defun alternate-subst-format2-subst-format-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun alternate-subst-format2-coverage-offset-offset (table)
  "Offset to Coverage table, from beginning of substitution subtable"
  (declare (type alternate-subst-format2 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun alternate-subst-format2-coverage-offset (table)
  "Offset to Coverage table, from beginning of substitution subtable"
  (declare (type alternate-subst-format2 table))
  (let ((off (alternate-subst-format2-coverage-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-coverage-table (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun alternate-subst-format2-alternate-set-offsets-count (table)
  "Array of offsets to AlternateSet tables. Offsets are from beginning of substitution subtable, ordered by Coverage index"
  (alternate-subst-format2-alternate-set-count table))


(declaim
 (inline alternate-subst-format2-subst-format
  alternate-subst-format2-coverage-offset
  alternate-subst-format2-coverage-offset-offset
  alternate-subst-format2-alternate-set-count
  alternate-subst-format2-alternate-set-offsets
  alternate-subst-format2-alternate-set-offsets-count))


(defun alternate-subst-format2-alternate-set-offsets-ref (table index)
  "Array of offsets to AlternateSet tables. Offsets are from beginning of substitution subtable, ordered by Coverage index"
  (declare (type alternate-subst-format2 table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 6) (* index 3))))
    (unless
        (<= (+ pos 3) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 3 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u24 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-alternate-set2 (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-alternate-subst-format2 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 6 length) (font-data-valid-range-p font-data offset 6))
    (error 'font-out-of-bounds-error :pos offset :size 6 :length
           (font-data-length font-data)))
  (let ((cnt
         (alternate-subst-format2-alternate-set-count-raw font-data offset)))
    (unless
        (and (<= (+ 6 (* cnt 3)) length)
             (font-data-valid-range-p font-data offset (+ 6 (* cnt 3))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 6 (* cnt 3))
             :length (font-data-length font-data))))
  t)


(defun read-alternate-subst-format2
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-alternate-subst-format2 font-data offset length)
  (%make-alternate-subst-format2 font-data offset length))


(defstruct
    (ligature-subst-format2 (:include table-ref)
     (:constructor %make-ligature-subst-format2
      (%table-font-data %table-offset %table-length))))


(defun ligature-subst-format2-subst-format (table)
  "Format identifier: format = 2"
  (declare (type ligature-subst-format2 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline ligature-subst-format2-subst-format-raw))


(defun ligature-subst-format2-subst-format-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun ligature-subst-format2-coverage-offset-offset (table)
  "Offset to Coverage table, from beginning of substitution subtable"
  (declare (type ligature-subst-format2 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun ligature-subst-format2-coverage-offset (table)
  "Offset to Coverage table, from beginning of substitution subtable"
  (declare (type ligature-subst-format2 table))
  (let ((off (ligature-subst-format2-coverage-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-coverage-table (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun ligature-subst-format2-ligature-set-offsets-count (table)
  "Array of offsets to LigatureSet tables. Offsets are from beginning of substitution subtable, ordered by Coverage index"
  (ligature-subst-format2-ligature-set-count table))


(declaim
 (inline ligature-subst-format2-subst-format
  ligature-subst-format2-coverage-offset
  ligature-subst-format2-coverage-offset-offset
  ligature-subst-format2-ligature-set-count
  ligature-subst-format2-ligature-set-offsets
  ligature-subst-format2-ligature-set-offsets-count))


(defun ligature-subst-format2-ligature-set-offsets-ref (table index)
  "Array of offsets to LigatureSet tables. Offsets are from beginning of substitution subtable, ordered by Coverage index"
  (declare (type ligature-subst-format2 table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 6) (* index 3))))
    (unless
        (<= (+ pos 3) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 3 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u24 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-ligature-set2 (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-ligature-subst-format2 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 6 length) (font-data-valid-range-p font-data offset 6))
    (error 'font-out-of-bounds-error :pos offset :size 6 :length
           (font-data-length font-data)))
  (let ((cnt (ligature-subst-format2-ligature-set-count-raw font-data offset)))
    (unless
        (and (<= (+ 6 (* cnt 3)) length)
             (font-data-valid-range-p font-data offset (+ 6 (* cnt 3))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 6 (* cnt 3))
             :length (font-data-length font-data))))
  t)


(defun read-ligature-subst-format2
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-ligature-subst-format2 font-data offset length)
  (%make-ligature-subst-format2 font-data offset length))


(defstruct
    (reverse-chain-single-subst-format2 (:include table-ref)
     (:constructor %make-reverse-chain-single-subst-format2
      (%table-font-data %table-offset %table-length))))


(defun reverse-chain-single-subst-format2-subst-format (table)
  "Format identifier: format = 2"
  (declare (type reverse-chain-single-subst-format2 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline reverse-chain-single-subst-format2-subst-format-raw))


(defun reverse-chain-single-subst-format2-subst-format-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun reverse-chain-single-subst-format2-coverage-offset-offset (table)
  "Offset to Coverage table, from beginning of substitution subtable."
  (declare (type reverse-chain-single-subst-format2 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun reverse-chain-single-subst-format2-coverage-offset (table)
  "Offset to Coverage table, from beginning of substitution subtable."
  (declare (type reverse-chain-single-subst-format2 table))
  (let ((off (reverse-chain-single-subst-format2-coverage-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-coverage-table (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun reverse-chain-single-subst-format2-backtrack-glyph-count (table)
  "Number of glyphs in the backtrack sequence."
  (declare (type reverse-chain-single-subst-format2 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6)))


(declaim (inline reverse-chain-single-subst-format2-backtrack-glyph-count-raw))


(defun reverse-chain-single-subst-format2-backtrack-glyph-count-raw
       (font-data offset)
  (font-data-read-u16 font-data (+ offset 6)))


(defun reverse-chain-single-subst-format2-backtrack-coverage-offsets-count
       (table)
  "Array of offsets to coverage tables in backtrack sequence, in glyph sequence order."
  (reverse-chain-single-subst-format2-backtrack-glyph-count table))


(defun reverse-chain-single-subst-format2-backtrack-coverage-offsets-ref
       (table index)
  "Array of offsets to coverage tables in backtrack sequence, in glyph sequence order."
  (declare (type reverse-chain-single-subst-format2 table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 8) (* index 3))))
    (unless
        (<= (+ pos 3) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 3 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u24 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-coverage-table (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun reverse-chain-single-subst-format2-lookahead-glyph-count (table)
  "Number of glyphs in lookahead sequence."
  (declare (type reverse-chain-single-subst-format2 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 8
                         (*
                          (reverse-chain-single-subst-format2-backtrack-coverage-offsets-count
                           table)
                          3))))


(defun reverse-chain-single-subst-format2-lookahead-coverage-offsets-count
       (table)
  "Array of offsets to coverage tables in lookahead sequence, in glyph sequence order."
  (reverse-chain-single-subst-format2-lookahead-glyph-count table))


(defun reverse-chain-single-subst-format2-lookahead-coverage-offsets-ref
       (table index)
  "Array of offsets to coverage tables in lookahead sequence, in glyph sequence order."
  (declare (type reverse-chain-single-subst-format2 table)
           (type (unsigned-byte 32) index))
  (let* ((pos
          (+
           (+ (table-ref-offset table) 10
              (*
               (reverse-chain-single-subst-format2-backtrack-coverage-offsets-count
                table)
               3))
           (* index 3))))
    (unless
        (<= (+ pos 3) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 3 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u24 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-coverage-table (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun reverse-chain-single-subst-format2-substitute-glyph-ids-count (table)
  "Array of substitute glyph IDs — ordered by Coverage index."
  (reverse-chain-single-subst-format2-glyph-count table))


(declaim
 (inline reverse-chain-single-subst-format2-subst-format
  reverse-chain-single-subst-format2-coverage-offset
  reverse-chain-single-subst-format2-coverage-offset-offset
  reverse-chain-single-subst-format2-backtrack-glyph-count
  reverse-chain-single-subst-format2-backtrack-coverage-offsets
  reverse-chain-single-subst-format2-backtrack-coverage-offsets-count
  reverse-chain-single-subst-format2-lookahead-glyph-count
  reverse-chain-single-subst-format2-lookahead-coverage-offsets
  reverse-chain-single-subst-format2-lookahead-coverage-offsets-count
  reverse-chain-single-subst-format2-glyph-count
  reverse-chain-single-subst-format2-substitute-glyph-ids
  reverse-chain-single-subst-format2-substitute-glyph-ids-count))


(defun reverse-chain-single-subst-format2-substitute-glyph-ids-ref
       (table index)
  "Array of substitute glyph IDs — ordered by Coverage index."
  (declare (type reverse-chain-single-subst-format2 table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 10
             (*
              (reverse-chain-single-subst-format2-lookahead-coverage-offsets-count
               table)
              3)
             (*
              (reverse-chain-single-subst-format2-backtrack-coverage-offsets-count
               table)
              3))
          (* index 3))))
    (unless
        (<= (+ pos 3) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 3 :length
             (table-ref-length table)))
    (font-data-read-u24 (table-ref-font-data table) pos)))


(defun sanitize-reverse-chain-single-subst-format2 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 8 length) (font-data-valid-range-p font-data offset 8))
    (error 'font-out-of-bounds-error :pos offset :size 8 :length
           (font-data-length font-data)))
  (let ((cnt
         (reverse-chain-single-subst-format2-backtrack-glyph-count-raw
          font-data offset)))
    (unless
        (and (<= (+ 8 (* cnt 3)) length)
             (font-data-valid-range-p font-data offset (+ 8 (* cnt 3))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 8 (* cnt 3))
             :length (font-data-length font-data))))
  t)


(defun read-reverse-chain-single-subst-format2
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-reverse-chain-single-subst-format2 font-data offset length)
  (%make-reverse-chain-single-subst-format2 font-data offset length))


(defstruct
    (sequence2 (:include table-ref)
     (:constructor %make-sequence2
      (%table-font-data %table-offset %table-length))))


(defun sequence2-glyph-count (table)
  "Number of glyph IDs in the substituteGlyphIDs array. This must always be greater than 0."
  (declare (type sequence2 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline sequence2-glyph-count-raw))


(defun sequence2-glyph-count-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun sequence2-substitute-glyph-ids-count (table)
  "String of glyph IDs to substitute"
  (sequence2-glyph-count table))


(declaim
 (inline sequence2-glyph-count sequence2-substitute-glyph-ids
  sequence2-substitute-glyph-ids-count))


(defun sequence2-substitute-glyph-ids-ref (table index)
  "String of glyph IDs to substitute"
  (declare (type sequence2 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 2) (* index 3))))
    (unless
        (<= (+ pos 3) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 3 :length
             (table-ref-length table)))
    (font-data-read-u24 (table-ref-font-data table) pos)))


(defun sanitize-sequence2 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  (let ((cnt (sequence2-glyph-count-raw font-data offset)))
    (unless
        (and (<= (+ 2 (* cnt 3)) length)
             (font-data-valid-range-p font-data offset (+ 2 (* cnt 3))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 2 (* cnt 3))
             :length (font-data-length font-data))))
  t)


(defun read-sequence2
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-sequence2 font-data offset length)
  (%make-sequence2 font-data offset length))


(defstruct
    (alternate-set2 (:include table-ref)
     (:constructor %make-alternate-set2
      (%table-font-data %table-offset %table-length))))


(defun alternate-set2-glyph-count (table)
  "Number of glyph IDs in the alternateGlyphIDs array"
  (declare (type alternate-set2 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline alternate-set2-glyph-count-raw))


(defun alternate-set2-glyph-count-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun alternate-set2-alternate-glyph-ids-count (table)
  "Array of alternate glyph IDs, in arbitrary order"
  (alternate-set2-glyph-count table))


(declaim
 (inline alternate-set2-glyph-count alternate-set2-alternate-glyph-ids
  alternate-set2-alternate-glyph-ids-count))


(defun alternate-set2-alternate-glyph-ids-ref (table index)
  "Array of alternate glyph IDs, in arbitrary order"
  (declare (type alternate-set2 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 2) (* index 3))))
    (unless
        (<= (+ pos 3) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 3 :length
             (table-ref-length table)))
    (font-data-read-u24 (table-ref-font-data table) pos)))


(defun sanitize-alternate-set2 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  (let ((cnt (alternate-set2-glyph-count-raw font-data offset)))
    (unless
        (and (<= (+ 2 (* cnt 3)) length)
             (font-data-valid-range-p font-data offset (+ 2 (* cnt 3))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 2 (* cnt 3))
             :length (font-data-length font-data))))
  t)


(defun read-alternate-set2
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-alternate-set2 font-data offset length)
  (%make-alternate-set2 font-data offset length))


(defstruct
    (ligature-set2 (:include table-ref)
     (:constructor %make-ligature-set2
      (%table-font-data %table-offset %table-length))))


(defun ligature-set2-ligature-count (table)
  "Number of Ligature tables"
  (declare (type ligature-set2 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline ligature-set2-ligature-count-raw))


(defun ligature-set2-ligature-count-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun ligature-set2-ligature-offsets-count (table)
  "Array of offsets to Ligature tables. Offsets are from beginning of LigatureSet2 table, ordered by preference."
  (ligature-set2-ligature-count table))


(declaim
 (inline ligature-set2-ligature-count ligature-set2-ligature-offsets
  ligature-set2-ligature-offsets-count))


(defun ligature-set2-ligature-offsets-ref (table index)
  "Array of offsets to Ligature tables. Offsets are from beginning of LigatureSet2 table, ordered by preference."
  (declare (type ligature-set2 table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 2) (* index 3))))
    (unless
        (<= (+ pos 3) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 3 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u24 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-ligature2 (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-ligature-set2 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  (let ((cnt (ligature-set2-ligature-count-raw font-data offset)))
    (unless
        (and (<= (+ 2 (* cnt 3)) length)
             (font-data-valid-range-p font-data offset (+ 2 (* cnt 3))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 2 (* cnt 3))
             :length (font-data-length font-data))))
  t)


(defun read-ligature-set2
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-ligature-set2 font-data offset length)
  (%make-ligature-set2 font-data offset length))


(defstruct
    (ligature2 (:include table-ref)
     (:constructor %make-ligature2
      (%table-font-data %table-offset %table-length))))


(defun ligature2-ligature-glyph (table)
  "glyph ID of ligature to substitute"
  (declare (type ligature2 table))
  (font-data-read-u24 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline ligature2-ligature-glyph-raw))


(defun ligature2-ligature-glyph-raw (font-data offset)
  (font-data-read-u24 font-data offset))


(defun ligature2-component-count (table)
  "Number of components in the ligature"
  (declare (type ligature2 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 3)))


(declaim (inline ligature2-component-count-raw))


(defun ligature2-component-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 3)))


(defun ligature2-component-glyph-ids-count (table)
  "Array of component glyph IDs — start with the second component, ordered in writing direction"
  (max 0 (- (ligature2-component-count table) 1)))


(declaim
 (inline ligature2-ligature-glyph ligature2-component-count
  ligature2-component-glyph-ids ligature2-component-glyph-ids-count))


(defun ligature2-component-glyph-ids-ref (table index)
  "Array of component glyph IDs — start with the second component, ordered in writing direction"
  (declare (type ligature2 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 5) (* index 3))))
    (unless
        (<= (+ pos 3) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 3 :length
             (table-ref-length table)))
    (font-data-read-u24 (table-ref-font-data table) pos)))


(defun sanitize-ligature2 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 5 length) (font-data-valid-range-p font-data offset 5))
    (error 'font-out-of-bounds-error :pos offset :size 5 :length
           (font-data-length font-data)))
  t)


(defun read-ligature2
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-ligature2 font-data offset length)
  (%make-ligature2 font-data offset length))


(defun read-multiple-subst
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (declare (ignorable length))
  (let ((fmt (font-data-read-u16 font-data (+ offset 0))))
    (case fmt
      (1 (read-multiple-subst-format1 font-data offset length))
      (2 (read-multiple-subst-format2 font-data offset length))
      (otherwise
       (error 'unsupported-format-error :format fmt :table 'multiple-subst)))))


(defun read-alternate-subst
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (declare (ignorable length))
  (let ((fmt (font-data-read-u16 font-data (+ offset 0))))
    (case fmt
      (1 (read-alternate-subst-format1 font-data offset length))
      (2 (read-alternate-subst-format2 font-data offset length))
      (otherwise
       (error 'unsupported-format-error :format fmt :table 'alternate-subst)))))


(defun read-ligature-subst
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (declare (ignorable length))
  (let ((fmt (font-data-read-u16 font-data (+ offset 0))))
    (case fmt
      (1 (read-ligature-subst-format1 font-data offset length))
      (2 (read-ligature-subst-format2 font-data offset length))
      (otherwise
       (error 'unsupported-format-error :format fmt :table 'ligature-subst)))))


(defun read-reverse-chain-single-subst
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (declare (ignorable length))
  (let ((fmt (font-data-read-u16 font-data (+ offset 0))))
    (case fmt
      (1 (read-reverse-chain-single-subst-format1 font-data offset length))
      (2 (read-reverse-chain-single-subst-format2 font-data offset length))
      (otherwise
       (error 'unsupported-format-error :format fmt :table
              'reverse-chain-single-subst)))))

