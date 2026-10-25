;;;; layout.lisp — Generated OpenType tables
;;;; Generated automatically from OpenType sexp schema
;;;; DO NOT EDIT DIRECTLY


(in-package #:zpb-otf)


(export
 '(+class-range-record-size+ +class-range-record2-size+
   +delta-format-local2-bit-deltas+ +delta-format-local4-bit-deltas+
   +delta-format-local8-bit-deltas+ +delta-format-variation-index+
   +feature-lookups-flags-add-default-lookups+ +feature-record-size+
   +feature-table-substitution-record-size+ +feature-variation-record-size+
   +lang-sys-record-size+ +lookup-condition-record-size+
   +lookup-variation-record-size+ +range-record-size+ +range-record2-size+
   +script-record-size+ +sequence-lookup-record-size+
   chained-class-sequence-rule
   chained-class-sequence-rule-backtrack-glyph-count
   chained-class-sequence-rule-backtrack-sequence
   chained-class-sequence-rule-backtrack-sequence-count
   chained-class-sequence-rule-backtrack-sequence-ref
   chained-class-sequence-rule-input-glyph-count
   chained-class-sequence-rule-input-sequence
   chained-class-sequence-rule-input-sequence-count
   chained-class-sequence-rule-input-sequence-ref
   chained-class-sequence-rule-lookahead-glyph-count
   chained-class-sequence-rule-lookahead-sequence
   chained-class-sequence-rule-lookahead-sequence-count
   chained-class-sequence-rule-lookahead-sequence-ref
   chained-class-sequence-rule-p chained-class-sequence-rule-seq-lookup-count
   chained-class-sequence-rule-seq-lookup-records
   chained-class-sequence-rule-seq-lookup-records-count
   chained-class-sequence-rule-seq-lookup-records-ref
   chained-class-sequence-rule-set
   chained-class-sequence-rule-set-chained-class-seq-rule-count
   chained-class-sequence-rule-set-chained-class-seq-rule-offsets
   chained-class-sequence-rule-set-chained-class-seq-rule-offsets-count
   chained-class-sequence-rule-set-chained-class-seq-rule-offsets-ref
   chained-class-sequence-rule-set-p chained-class-sequence-rule-set2
   chained-class-sequence-rule-set2-chained-class-seq-rule-count
   chained-class-sequence-rule-set2-chained-class-seq-rule-offsets
   chained-class-sequence-rule-set2-chained-class-seq-rule-offsets-count
   chained-class-sequence-rule-set2-chained-class-seq-rule-offsets-ref
   chained-class-sequence-rule-set2-p chained-sequence-context-format1
   chained-sequence-context-format1-chained-seq-rule-set-count
   chained-sequence-context-format1-chained-seq-rule-set-offsets
   chained-sequence-context-format1-chained-seq-rule-set-offsets-count
   chained-sequence-context-format1-chained-seq-rule-set-offsets-ref
   chained-sequence-context-format1-coverage-offset
   chained-sequence-context-format1-coverage-offset-offset
   chained-sequence-context-format1-format-table
   chained-sequence-context-format1-p chained-sequence-context-format2
   chained-sequence-context-format2-backtrack-class-def-offset
   chained-sequence-context-format2-backtrack-class-def-offset-offset
   chained-sequence-context-format2-chained-class-seq-rule-set-count
   chained-sequence-context-format2-chained-class-seq-rule-set-offsets
   chained-sequence-context-format2-chained-class-seq-rule-set-offsets-count
   chained-sequence-context-format2-chained-class-seq-rule-set-offsets-ref
   chained-sequence-context-format2-coverage-offset
   chained-sequence-context-format2-coverage-offset-offset
   chained-sequence-context-format2-format-table
   chained-sequence-context-format2-input-class-def-offset
   chained-sequence-context-format2-input-class-def-offset-offset
   chained-sequence-context-format2-lookahead-class-def-offset
   chained-sequence-context-format2-lookahead-class-def-offset-offset
   chained-sequence-context-format2-p chained-sequence-context-format3
   chained-sequence-context-format3-backtrack-coverage-offsets
   chained-sequence-context-format3-backtrack-coverage-offsets-count
   chained-sequence-context-format3-backtrack-coverage-offsets-ref
   chained-sequence-context-format3-backtrack-glyph-count
   chained-sequence-context-format3-format-table
   chained-sequence-context-format3-input-coverage-offsets
   chained-sequence-context-format3-input-coverage-offsets-count
   chained-sequence-context-format3-input-coverage-offsets-ref
   chained-sequence-context-format3-input-glyph-count
   chained-sequence-context-format3-lookahead-coverage-offsets
   chained-sequence-context-format3-lookahead-coverage-offsets-count
   chained-sequence-context-format3-lookahead-coverage-offsets-ref
   chained-sequence-context-format3-lookahead-glyph-count
   chained-sequence-context-format3-p
   chained-sequence-context-format3-seq-lookup-count
   chained-sequence-context-format3-seq-lookup-records
   chained-sequence-context-format3-seq-lookup-records-count
   chained-sequence-context-format3-seq-lookup-records-ref
   chained-sequence-context-format4
   chained-sequence-context-format4-chained-seq-rule-set-count
   chained-sequence-context-format4-chained-seq-rule-set-offsets
   chained-sequence-context-format4-chained-seq-rule-set-offsets-count
   chained-sequence-context-format4-chained-seq-rule-set-offsets-ref
   chained-sequence-context-format4-coverage-offset
   chained-sequence-context-format4-coverage-offset-offset
   chained-sequence-context-format4-format-table
   chained-sequence-context-format4-p chained-sequence-context-format5
   chained-sequence-context-format5-backtrack-class-def-offset
   chained-sequence-context-format5-backtrack-class-def-offset-offset
   chained-sequence-context-format5-chained-class-seq-rule-set-count
   chained-sequence-context-format5-chained-class-seq-rule-set-offsets
   chained-sequence-context-format5-chained-class-seq-rule-set-offsets-count
   chained-sequence-context-format5-chained-class-seq-rule-set-offsets-ref
   chained-sequence-context-format5-coverage-offset
   chained-sequence-context-format5-coverage-offset-offset
   chained-sequence-context-format5-format-table
   chained-sequence-context-format5-input-class-def-offset
   chained-sequence-context-format5-input-class-def-offset-offset
   chained-sequence-context-format5-lookahead-class-def-offset
   chained-sequence-context-format5-lookahead-class-def-offset-offset
   chained-sequence-context-format5-p chained-sequence-rule
   chained-sequence-rule-backtrack-glyph-count
   chained-sequence-rule-backtrack-sequence
   chained-sequence-rule-backtrack-sequence-count
   chained-sequence-rule-backtrack-sequence-ref
   chained-sequence-rule-input-glyph-count chained-sequence-rule-input-sequence
   chained-sequence-rule-input-sequence-count
   chained-sequence-rule-input-sequence-ref
   chained-sequence-rule-lookahead-glyph-count
   chained-sequence-rule-lookahead-sequence
   chained-sequence-rule-lookahead-sequence-count
   chained-sequence-rule-lookahead-sequence-ref chained-sequence-rule-p
   chained-sequence-rule-seq-lookup-count
   chained-sequence-rule-seq-lookup-records
   chained-sequence-rule-seq-lookup-records-count
   chained-sequence-rule-seq-lookup-records-ref chained-sequence-rule-set
   chained-sequence-rule-set-chained-seq-rule-count
   chained-sequence-rule-set-chained-seq-rule-offsets
   chained-sequence-rule-set-chained-seq-rule-offsets-count
   chained-sequence-rule-set-chained-seq-rule-offsets-ref
   chained-sequence-rule-set-p chained-sequence-rule-set2
   chained-sequence-rule-set2-chained-seq-rule-count
   chained-sequence-rule-set2-chained-seq-rule-offsets
   chained-sequence-rule-set2-chained-seq-rule-offsets-count
   chained-sequence-rule-set2-chained-seq-rule-offsets-ref
   chained-sequence-rule-set2-p chained-sequence-rule2
   chained-sequence-rule2-backtrack-glyph-count
   chained-sequence-rule2-backtrack-sequence
   chained-sequence-rule2-backtrack-sequence-count
   chained-sequence-rule2-backtrack-sequence-ref
   chained-sequence-rule2-input-glyph-count
   chained-sequence-rule2-input-sequence
   chained-sequence-rule2-input-sequence-count
   chained-sequence-rule2-input-sequence-ref
   chained-sequence-rule2-lookahead-glyph-count
   chained-sequence-rule2-lookahead-sequence
   chained-sequence-rule2-lookahead-sequence-count
   chained-sequence-rule2-lookahead-sequence-ref chained-sequence-rule2-p
   chained-sequence-rule2-seq-lookup-count
   chained-sequence-rule2-seq-lookup-records
   chained-sequence-rule2-seq-lookup-records-count
   chained-sequence-rule2-seq-lookup-records-ref character-variant-params
   character-variant-params-char-count character-variant-params-character-table
   character-variant-params-character-table-count
   character-variant-params-character-table-ref
   character-variant-params-feat-ui-label-name-id
   character-variant-params-feat-ui-tooltip-text-name-id
   character-variant-params-first-param-ui-label-name-id
   character-variant-params-format-table
   character-variant-params-num-named-parameters character-variant-params-p
   character-variant-params-sample-text-name-id class-def-format1
   class-def-format1-class-format class-def-format1-class-value-array
   class-def-format1-class-value-array-count
   class-def-format1-class-value-array-ref class-def-format1-glyph-count
   class-def-format1-p class-def-format1-start-glyph-id class-def-format2
   class-def-format2-class-format class-def-format2-class-range-count
   class-def-format2-class-range-records
   class-def-format2-class-range-records-count
   class-def-format2-class-range-records-ref class-def-format2-p
   class-def-format3 class-def-format3-class-format
   class-def-format3-class-value-array
   class-def-format3-class-value-array-count
   class-def-format3-class-value-array-ref class-def-format3-glyph-count
   class-def-format3-p class-def-format3-start-glyph-id class-def-format4
   class-def-format4-class-format class-def-format4-class-range-count
   class-def-format4-class-range-records
   class-def-format4-class-range-records-count
   class-def-format4-class-range-records-ref class-def-format4-p
   class-range-record class-range-record-class class-range-record-end-glyph-id
   class-range-record-p class-range-record-start-glyph-id class-range-record2
   class-range-record2-class class-range-record2-end-glyph-id
   class-range-record2-p class-range-record2-start-glyph-id class-sequence-rule
   class-sequence-rule-glyph-count class-sequence-rule-input-sequence
   class-sequence-rule-input-sequence-count
   class-sequence-rule-input-sequence-ref class-sequence-rule-p
   class-sequence-rule-seq-lookup-count class-sequence-rule-seq-lookup-records
   class-sequence-rule-seq-lookup-records-count
   class-sequence-rule-seq-lookup-records-ref class-sequence-rule-set
   class-sequence-rule-set-class-seq-rule-count
   class-sequence-rule-set-class-seq-rule-offsets
   class-sequence-rule-set-class-seq-rule-offsets-count
   class-sequence-rule-set-class-seq-rule-offsets-ref class-sequence-rule-set-p
   class-sequence-rule-set2 class-sequence-rule-set2-class-seq-rule-count
   class-sequence-rule-set2-class-seq-rule-offsets
   class-sequence-rule-set2-class-seq-rule-offsets-count
   class-sequence-rule-set2-class-seq-rule-offsets-ref
   class-sequence-rule-set2-p condition-format1 condition-format1-axis-index
   condition-format1-filter-range-max-value
   condition-format1-filter-range-min-value condition-format1-format-table
   condition-format1-p condition-format2 condition-format2-default-value
   condition-format2-format-table condition-format2-p
   condition-format2-var-index condition-format3
   condition-format3-condition-count condition-format3-condition-offsets
   condition-format3-condition-offsets-count
   condition-format3-condition-offsets-ref condition-format3-format-table
   condition-format3-p condition-format4 condition-format4-condition-count
   condition-format4-condition-offsets
   condition-format4-condition-offsets-count
   condition-format4-condition-offsets-ref condition-format4-format-table
   condition-format4-p condition-format5 condition-format5-condition-offset
   condition-format5-condition-offset-offset condition-format5-format-table
   condition-format5-p condition-set condition-set-condition-count
   condition-set-condition-offsets condition-set-condition-offsets-count
   condition-set-condition-offsets-ref condition-set-p coverage-format1
   coverage-format1-coverage-format coverage-format1-glyph-array
   coverage-format1-glyph-array-count coverage-format1-glyph-array-ref
   coverage-format1-glyph-count coverage-format1-p coverage-format2
   coverage-format2-coverage-format coverage-format2-p
   coverage-format2-range-count coverage-format2-range-records
   coverage-format2-range-records-count coverage-format2-range-records-ref
   coverage-format3 coverage-format3-coverage-format
   coverage-format3-glyph-array coverage-format3-glyph-array-count
   coverage-format3-glyph-array-ref coverage-format3-glyph-count
   coverage-format3-p coverage-format4 coverage-format4-coverage-format
   coverage-format4-p coverage-format4-range-count
   coverage-format4-range-records coverage-format4-range-records-count
   coverage-format4-range-records-ref device device-delta-format
   device-delta-value device-delta-value-count device-delta-value-ref
   device-end-size device-p device-start-size feature
   feature-feature-params-offset feature-feature-params-offset-offset
   feature-list feature-list-feature-count feature-list-feature-records
   feature-list-feature-records-count feature-list-feature-records-ref
   feature-list-p feature-lookup-index-count feature-lookup-list-indices
   feature-lookup-list-indices-count feature-lookup-list-indices-ref
   feature-lookups feature-lookups-flags feature-lookups-lookup-condition-count
   feature-lookups-lookup-condition-records
   feature-lookups-lookup-condition-records-count
   feature-lookups-lookup-condition-records-ref feature-lookups-p
   feature-lookups-version feature-p feature-record
   feature-record-feature-offset feature-record-feature-tag feature-record-p
   feature-table-substitution feature-table-substitution-p
   feature-table-substitution-record
   feature-table-substitution-record-alternate-feature-offset
   feature-table-substitution-record-feature-index
   feature-table-substitution-record-p
   feature-table-substitution-substitution-count
   feature-table-substitution-substitutions
   feature-table-substitution-substitutions-count
   feature-table-substitution-substitutions-ref
   feature-table-substitution-version feature-variation-record
   feature-variation-record-condition-set-offset
   feature-variation-record-feature-table-substitution-offset
   feature-variation-record-p feature-variations
   feature-variations-feature-variation-record-count
   feature-variations-feature-variation-records
   feature-variations-feature-variation-records-count
   feature-variations-feature-variation-records-ref
   feature-variations-lookup-variation-record-count
   feature-variations-lookup-variation-records
   feature-variations-lookup-variation-records-count
   feature-variations-lookup-variation-records-ref feature-variations-p
   feature-variations-version lang-sys lang-sys-feature-index-count
   lang-sys-feature-indices lang-sys-feature-indices-count
   lang-sys-feature-indices-ref lang-sys-lookup-order-offset lang-sys-p
   lang-sys-record lang-sys-record-lang-sys-offset lang-sys-record-lang-sys-tag
   lang-sys-record-p lang-sys-required-feature-index lookup
   lookup-condition-record lookup-condition-record-condition-offset
   lookup-condition-record-lookup-index-list-offset lookup-condition-record-p
   lookup-index-list lookup-index-list-lookup-index-count
   lookup-index-list-lookup-indices lookup-index-list-lookup-indices-count
   lookup-index-list-lookup-indices-ref lookup-index-list-p lookup-list
   lookup-list-lookup-count lookup-list-lookup-offsets
   lookup-list-lookup-offsets-count lookup-list-lookup-offsets-ref
   lookup-list-p lookup-list2 lookup-list2-lookup-count
   lookup-list2-lookup-offsets lookup-list2-lookup-offsets-count
   lookup-list2-lookup-offsets-ref lookup-list2-p lookup-lookup-flag
   lookup-lookup-type lookup-mark-filtering-set lookup-p lookup-sub-table-count
   lookup-subtable-offsets lookup-subtable-offsets-count
   lookup-subtable-offsets-ref lookup-variation-record
   lookup-variation-record-feature-index
   lookup-variation-record-feature-lookups-offset lookup-variation-record-p
   pending-variation-index pending-variation-index-delta-set-id
   pending-variation-index-p range-record range-record-end-glyph-id
   range-record-p range-record-start-coverage-index range-record-start-glyph-id
   range-record2 range-record2-end-glyph-id range-record2-p
   range-record2-start-coverage-index range-record2-start-glyph-id
   read-chained-class-sequence-rule read-chained-class-sequence-rule-set
   read-chained-class-sequence-rule-set2 read-chained-sequence-context
   read-chained-sequence-context-format1 read-chained-sequence-context-format2
   read-chained-sequence-context-format3 read-chained-sequence-context-format4
   read-chained-sequence-context-format5 read-chained-sequence-rule
   read-chained-sequence-rule-set read-chained-sequence-rule-set2
   read-chained-sequence-rule2 read-character-variant-params read-class-def
   read-class-def-format1 read-class-def-format2 read-class-def-format3
   read-class-def-format4 read-class-sequence-rule read-class-sequence-rule-set
   read-class-sequence-rule-set2 read-condition read-condition-format1
   read-condition-format2 read-condition-format3 read-condition-format4
   read-condition-format5 read-condition-set read-coverage-format1
   read-coverage-format2 read-coverage-format3 read-coverage-format4
   read-coverage-table read-device read-device-or-variation-index read-feature
   read-feature-list read-feature-lookups read-feature-table-substitution
   read-feature-variations read-lang-sys read-lookup read-lookup-index-list
   read-lookup-list read-lookup-list2 read-pending-variation-index read-script
   read-script-list read-sequence-context read-sequence-context-format1
   read-sequence-context-format2 read-sequence-context-format3
   read-sequence-context-format4 read-sequence-context-format5
   read-sequence-context-format6 read-sequence-rule read-sequence-rule-set
   read-sequence-rule-set2 read-sequence-rule2 read-size-params
   read-stylistic-set-params read-variation-index
   sanitize-chained-class-sequence-rule
   sanitize-chained-class-sequence-rule-set
   sanitize-chained-class-sequence-rule-set2
   sanitize-chained-sequence-context-format1
   sanitize-chained-sequence-context-format2
   sanitize-chained-sequence-context-format3
   sanitize-chained-sequence-context-format4
   sanitize-chained-sequence-context-format5 sanitize-chained-sequence-rule
   sanitize-chained-sequence-rule-set sanitize-chained-sequence-rule-set2
   sanitize-chained-sequence-rule2 sanitize-character-variant-params
   sanitize-class-def-format1 sanitize-class-def-format2
   sanitize-class-def-format3 sanitize-class-def-format4
   sanitize-class-sequence-rule sanitize-class-sequence-rule-set
   sanitize-class-sequence-rule-set2 sanitize-condition-format1
   sanitize-condition-format2 sanitize-condition-format3
   sanitize-condition-format4 sanitize-condition-format5 sanitize-condition-set
   sanitize-coverage-format1 sanitize-coverage-format2
   sanitize-coverage-format3 sanitize-coverage-format4 sanitize-device
   sanitize-feature sanitize-feature-list sanitize-feature-lookups
   sanitize-feature-table-substitution sanitize-feature-variations
   sanitize-lang-sys sanitize-lookup sanitize-lookup-index-list
   sanitize-lookup-list sanitize-lookup-list2 sanitize-pending-variation-index
   sanitize-script sanitize-script-list sanitize-sequence-context-format1
   sanitize-sequence-context-format2 sanitize-sequence-context-format3
   sanitize-sequence-context-format4 sanitize-sequence-context-format5
   sanitize-sequence-context-format6 sanitize-sequence-rule
   sanitize-sequence-rule-set sanitize-sequence-rule-set2
   sanitize-sequence-rule2 sanitize-size-params sanitize-stylistic-set-params
   sanitize-variation-index script script-default-lang-sys-offset
   script-default-lang-sys-offset-offset script-lang-sys-count
   script-lang-sys-records script-lang-sys-records-count
   script-lang-sys-records-ref script-list script-list-p
   script-list-script-count script-list-script-records
   script-list-script-records-count script-list-script-records-ref script-p
   script-record script-record-p script-record-script-offset
   script-record-script-tag sequence-context-format1
   sequence-context-format1-coverage-offset
   sequence-context-format1-coverage-offset-offset
   sequence-context-format1-format-table sequence-context-format1-p
   sequence-context-format1-seq-rule-set-count
   sequence-context-format1-seq-rule-set-offsets
   sequence-context-format1-seq-rule-set-offsets-count
   sequence-context-format1-seq-rule-set-offsets-ref sequence-context-format2
   sequence-context-format2-class-def-offset
   sequence-context-format2-class-def-offset-offset
   sequence-context-format2-class-seq-rule-set-count
   sequence-context-format2-class-seq-rule-set-offsets
   sequence-context-format2-class-seq-rule-set-offsets-count
   sequence-context-format2-class-seq-rule-set-offsets-ref
   sequence-context-format2-coverage-offset
   sequence-context-format2-coverage-offset-offset
   sequence-context-format2-format-table sequence-context-format2-p
   sequence-context-format3 sequence-context-format3-coverage-offsets
   sequence-context-format3-coverage-offsets-count
   sequence-context-format3-coverage-offsets-ref
   sequence-context-format3-format-table sequence-context-format3-glyph-count
   sequence-context-format3-p sequence-context-format3-seq-lookup-count
   sequence-context-format3-seq-lookup-records
   sequence-context-format3-seq-lookup-records-count
   sequence-context-format3-seq-lookup-records-ref sequence-context-format4
   sequence-context-format4-coverage-offset
   sequence-context-format4-coverage-offset-offset
   sequence-context-format4-format-table sequence-context-format4-p
   sequence-context-format4-seq-rule-set-count
   sequence-context-format4-seq-rule-set-offsets
   sequence-context-format4-seq-rule-set-offsets-count
   sequence-context-format4-seq-rule-set-offsets-ref sequence-context-format5
   sequence-context-format5-class-def-offset
   sequence-context-format5-class-def-offset-offset
   sequence-context-format5-class-seq-rule-set-count
   sequence-context-format5-class-seq-rule-set-offsets
   sequence-context-format5-class-seq-rule-set-offsets-count
   sequence-context-format5-class-seq-rule-set-offsets-ref
   sequence-context-format5-coverage-offset
   sequence-context-format5-coverage-offset-offset
   sequence-context-format5-format-table sequence-context-format5-p
   sequence-context-format6 sequence-context-format6-coverage-offsets
   sequence-context-format6-coverage-offsets-count
   sequence-context-format6-coverage-offsets-ref
   sequence-context-format6-format-table sequence-context-format6-glyph-count
   sequence-context-format6-p sequence-context-format6-seq-lookup-count
   sequence-context-format6-seq-lookup-records
   sequence-context-format6-seq-lookup-records-count
   sequence-context-format6-seq-lookup-records-ref sequence-lookup-record
   sequence-lookup-record-lookup-list-index sequence-lookup-record-p
   sequence-lookup-record-sequence-index sequence-rule
   sequence-rule-glyph-count sequence-rule-input-sequence
   sequence-rule-input-sequence-count sequence-rule-input-sequence-ref
   sequence-rule-p sequence-rule-seq-lookup-count
   sequence-rule-seq-lookup-records sequence-rule-seq-lookup-records-count
   sequence-rule-seq-lookup-records-ref sequence-rule-set sequence-rule-set-p
   sequence-rule-set-seq-rule-count sequence-rule-set-seq-rule-offsets
   sequence-rule-set-seq-rule-offsets-count
   sequence-rule-set-seq-rule-offsets-ref sequence-rule-set2
   sequence-rule-set2-p sequence-rule-set2-seq-rule-count
   sequence-rule-set2-seq-rule-offsets
   sequence-rule-set2-seq-rule-offsets-count
   sequence-rule-set2-seq-rule-offsets-ref sequence-rule2
   sequence-rule2-glyph-count sequence-rule2-input-sequence
   sequence-rule2-input-sequence-count sequence-rule2-input-sequence-ref
   sequence-rule2-p sequence-rule2-seq-lookup-count
   sequence-rule2-seq-lookup-records sequence-rule2-seq-lookup-records-count
   sequence-rule2-seq-lookup-records-ref size-params size-params-design-size
   size-params-identifier size-params-name-entry size-params-p
   size-params-range-end size-params-range-start stylistic-set-params
   stylistic-set-params-p stylistic-set-params-ui-name-id
   stylistic-set-params-version variation-index variation-index-delta-format
   variation-index-delta-set-inner-index variation-index-delta-set-outer-index
   variation-index-p))


(define-constant +delta-format-local2-bit-deltas+ 1)


(define-constant +delta-format-local4-bit-deltas+ 2)


(define-constant +delta-format-local8-bit-deltas+ 3)


(define-constant +delta-format-variation-index+ 32768)


(define-constant +feature-lookups-flags-add-default-lookups+ 1)


(defstruct
    (script-record (:include record-ref)
     (:constructor %make-script-record (%record-font-data %record-offset))))


(defun script-record-script-tag (rec)
  "4-byte script tag identifier"
  (declare (type script-record rec))
  (font-data-read-tag-string (record-ref-font-data rec)
                             (record-ref-offset rec)))


(defun script-record-script-offset (rec)
  "Offset to Script table, from beginning of ScriptList"
  (declare (type script-record rec))
  (font-data-read-u16 (record-ref-font-data rec) (+ (record-ref-offset rec) 4)))


(declaim (inline script-record-script-tag script-record-script-offset))


(define-constant +script-record-size+ 6)


(defstruct
    (lang-sys-record (:include record-ref)
     (:constructor %make-lang-sys-record (%record-font-data %record-offset))))


(defun lang-sys-record-lang-sys-tag (rec)
  "4-byte LangSysTag identifier"
  (declare (type lang-sys-record rec))
  (font-data-read-tag-string (record-ref-font-data rec)
                             (record-ref-offset rec)))


(defun lang-sys-record-lang-sys-offset (rec)
  "Offset to LangSys table, from beginning of Script table"
  (declare (type lang-sys-record rec))
  (font-data-read-u16 (record-ref-font-data rec) (+ (record-ref-offset rec) 4)))


(declaim (inline lang-sys-record-lang-sys-tag lang-sys-record-lang-sys-offset))


(define-constant +lang-sys-record-size+ 6)


(defstruct
    (feature-record (:include record-ref)
     (:constructor %make-feature-record (%record-font-data %record-offset))))


(defun feature-record-feature-tag (rec)
  "4-byte feature identification tag"
  (declare (type feature-record rec))
  (font-data-read-tag-string (record-ref-font-data rec)
                             (record-ref-offset rec)))


(defun feature-record-feature-offset (rec)
  "Offset to Feature table, from beginning of FeatureList"
  (declare (type feature-record rec))
  (font-data-read-u16 (record-ref-font-data rec) (+ (record-ref-offset rec) 4)))


(declaim (inline feature-record-feature-tag feature-record-feature-offset))


(define-constant +feature-record-size+ 6)


(defstruct
    (range-record (:include record-ref)
     (:constructor %make-range-record (%record-font-data %record-offset))))


(defun range-record-start-glyph-id (rec)
  "First glyph ID in the range"
  (declare (type range-record rec))
  (font-data-read-u16 (record-ref-font-data rec) (record-ref-offset rec)))


(defun range-record-end-glyph-id (rec)
  "Last glyph ID in the range"
  (declare (type range-record rec))
  (font-data-read-u16 (record-ref-font-data rec) (+ (record-ref-offset rec) 2)))


(defun range-record-start-coverage-index (rec)
  "Coverage Index of first glyph ID in range"
  (declare (type range-record rec))
  (font-data-read-u16 (record-ref-font-data rec) (+ (record-ref-offset rec) 4)))


(declaim
 (inline range-record-start-glyph-id range-record-end-glyph-id
  range-record-start-coverage-index))


(define-constant +range-record-size+ 6)


(defstruct
    (class-range-record (:include record-ref)
     (:constructor %make-class-range-record
      (%record-font-data %record-offset))))


(defun class-range-record-start-glyph-id (rec)
  "First glyph ID in the range"
  (declare (type class-range-record rec))
  (font-data-read-u16 (record-ref-font-data rec) (record-ref-offset rec)))


(defun class-range-record-end-glyph-id (rec)
  "Last glyph ID in the range"
  (declare (type class-range-record rec))
  (font-data-read-u16 (record-ref-font-data rec) (+ (record-ref-offset rec) 2)))


(defun class-range-record-class (rec)
  "Applied to all glyphs in the range"
  (declare (type class-range-record rec))
  (font-data-read-u16 (record-ref-font-data rec) (+ (record-ref-offset rec) 4)))


(declaim
 (inline class-range-record-start-glyph-id class-range-record-end-glyph-id
  class-range-record-class))


(define-constant +class-range-record-size+ 6)


(defstruct
    (sequence-lookup-record (:include record-ref)
     (:constructor %make-sequence-lookup-record
      (%record-font-data %record-offset))))


(defun sequence-lookup-record-sequence-index (rec)
  "Index (zero-based) into the input glyph sequence"
  (declare (type sequence-lookup-record rec))
  (font-data-read-u16 (record-ref-font-data rec) (record-ref-offset rec)))


(defun sequence-lookup-record-lookup-list-index (rec)
  "Index (zero-based) into the LookupList"
  (declare (type sequence-lookup-record rec))
  (font-data-read-u16 (record-ref-font-data rec) (+ (record-ref-offset rec) 2)))


(declaim
 (inline sequence-lookup-record-sequence-index
  sequence-lookup-record-lookup-list-index))


(define-constant +sequence-lookup-record-size+ 4)


(defstruct
    (feature-variation-record (:include record-ref)
     (:constructor %make-feature-variation-record
      (%record-font-data %record-offset))))


(defun feature-variation-record-condition-set-offset (rec)
  "Offset to a condition set table, from beginning of FeatureVariations table."
  (declare (type feature-variation-record rec))
  (font-data-read-u32 (record-ref-font-data rec) (record-ref-offset rec)))


(defun feature-variation-record-feature-table-substitution-offset (rec)
  "Offset to a feature table substitution table, from beginning of the FeatureVariations table."
  (declare (type feature-variation-record rec))
  (font-data-read-u32 (record-ref-font-data rec) (+ (record-ref-offset rec) 4)))


(declaim
 (inline feature-variation-record-condition-set-offset
  feature-variation-record-feature-table-substitution-offset))


(define-constant +feature-variation-record-size+ 8)


(defstruct
    (lookup-variation-record (:include record-ref)
     (:constructor %make-lookup-variation-record
      (%record-font-data %record-offset))))


(defun lookup-variation-record-feature-index (rec)
  (declare (type lookup-variation-record rec))
  (font-data-read-u16 (record-ref-font-data rec) (record-ref-offset rec)))


(defun lookup-variation-record-feature-lookups-offset (rec)
  "Offset from the beginning of FeatureVariations."
  (declare (type lookup-variation-record rec))
  (font-data-read-u32 (record-ref-font-data rec) (+ (record-ref-offset rec) 2)))


(declaim
 (inline lookup-variation-record-feature-index
  lookup-variation-record-feature-lookups-offset))


(define-constant +lookup-variation-record-size+ 6)


(defstruct
    (lookup-condition-record (:include record-ref)
     (:constructor %make-lookup-condition-record
      (%record-font-data %record-offset))))


(defun lookup-condition-record-condition-offset (rec)
  "Offset from the beginning of FeatureLookups; null means true."
  (declare (type lookup-condition-record rec))
  (font-data-read-u32 (record-ref-font-data rec) (record-ref-offset rec)))


(defun lookup-condition-record-lookup-index-list-offset (rec)
  "Offset from the beginning of FeatureLookups."
  (declare (type lookup-condition-record rec))
  (font-data-read-u32 (record-ref-font-data rec) (+ (record-ref-offset rec) 4)))


(declaim
 (inline lookup-condition-record-condition-offset
  lookup-condition-record-lookup-index-list-offset))


(define-constant +lookup-condition-record-size+ 8)


(defstruct
    (feature-table-substitution-record (:include record-ref)
     (:constructor %make-feature-table-substitution-record
      (%record-font-data %record-offset))))


(defun feature-table-substitution-record-feature-index (rec)
  "The feature table index to match."
  (declare (type feature-table-substitution-record rec))
  (font-data-read-u16 (record-ref-font-data rec) (record-ref-offset rec)))


(defun feature-table-substitution-record-alternate-feature-offset (rec)
  "Offset to an alternate feature table, from start of the FeatureTableSubstitution table."
  (declare (type feature-table-substitution-record rec))
  (font-data-read-u32 (record-ref-font-data rec) (+ (record-ref-offset rec) 2)))


(declaim
 (inline feature-table-substitution-record-feature-index
  feature-table-substitution-record-alternate-feature-offset))


(define-constant +feature-table-substitution-record-size+ 6)


(defstruct
    (range-record2 (:include record-ref)
     (:constructor %make-range-record2 (%record-font-data %record-offset))))


(defun range-record2-start-glyph-id (rec)
  "First glyph ID in the range"
  (declare (type range-record2 rec))
  (font-data-read-u24 (record-ref-font-data rec) (record-ref-offset rec)))


(defun range-record2-end-glyph-id (rec)
  "Last glyph ID in the range"
  (declare (type range-record2 rec))
  (font-data-read-u24 (record-ref-font-data rec) (+ (record-ref-offset rec) 3)))


(declaim
 (inline range-record2-start-glyph-id range-record2-end-glyph-id
  range-record2-start-coverage-index))


(define-constant +range-record2-size+ 6)


(defstruct
    (class-range-record2 (:include record-ref)
     (:constructor %make-class-range-record2
      (%record-font-data %record-offset))))


(defun class-range-record2-start-glyph-id (rec)
  "First glyph ID in the range"
  (declare (type class-range-record2 rec))
  (font-data-read-u24 (record-ref-font-data rec) (record-ref-offset rec)))


(defun class-range-record2-end-glyph-id (rec)
  "Last glyph ID in the range"
  (declare (type class-range-record2 rec))
  (font-data-read-u24 (record-ref-font-data rec) (+ (record-ref-offset rec) 3)))


(defun class-range-record2-class (rec)
  "Applied to all glyphs in the range"
  (declare (type class-range-record2 rec))
  (font-data-read-u16 (record-ref-font-data rec) (+ (record-ref-offset rec) 6)))


(declaim
 (inline class-range-record2-start-glyph-id class-range-record2-end-glyph-id
  class-range-record2-class))


(define-constant +class-range-record2-size+ 8)


(defstruct
    (script-list (:include table-ref)
     (:constructor %make-script-list
      (%table-font-data %table-offset %table-length))))


(defun script-list-script-count (table)
  "Number of ScriptRecords"
  (declare (type script-list table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline script-list-script-count-raw))


(defun script-list-script-count-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun script-list-script-records-count (table)
  "Array of ScriptRecords, listed alphabetically by script tag"
  (script-list-script-count table))


(declaim
 (inline script-list-script-count script-list-script-records
  script-list-script-records-count))


(defun script-list-script-records-ref (table index)
  "Array of ScriptRecords, listed alphabetically by script tag"
  (declare (type script-list table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 2) (* index 6))))
    (unless
        (<= (+ pos 6) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 6 :length
             (table-ref-length table)))
    (%make-script-record (table-ref-font-data table) pos)))


(defun sanitize-script-list (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  (let ((cnt (script-list-script-count-raw font-data offset)))
    (unless
        (and (<= (+ 2 (* cnt 6)) length)
             (font-data-valid-range-p font-data offset (+ 2 (* cnt 6))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 2 (* cnt 6))
             :length (font-data-length font-data))))
  t)


(defun read-script-list
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-script-list font-data offset length)
  (%make-script-list font-data offset length))


(defstruct
    (script (:include table-ref)
     (:constructor %make-script
      (%table-font-data %table-offset %table-length))))


(defun script-default-lang-sys-offset-offset (table)
  "Offset to default LangSys table, from beginning of Script table — may be NULL"
  (declare (type script table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(defun script-default-lang-sys-offset (table)
  "Offset to default LangSys table, from beginning of Script table — may be NULL"
  (declare (type script table))
  (let ((off (script-default-lang-sys-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-lang-sys (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun script-lang-sys-count (table)
  "Number of LangSysRecords for this script — excluding the default LangSys"
  (declare (type script table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline script-lang-sys-count-raw))


(defun script-lang-sys-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun script-lang-sys-records-count (table)
  "Array of LangSysRecords, listed alphabetically by LangSys tag"
  (script-lang-sys-count table))


(declaim
 (inline script-default-lang-sys-offset script-default-lang-sys-offset-offset
  script-lang-sys-count script-lang-sys-records script-lang-sys-records-count))


(defun script-lang-sys-records-ref (table index)
  "Array of LangSysRecords, listed alphabetically by LangSys tag"
  (declare (type script table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 4) (* index 6))))
    (unless
        (<= (+ pos 6) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 6 :length
             (table-ref-length table)))
    (%make-lang-sys-record (table-ref-font-data table) pos)))


(defun sanitize-script (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 4 length) (font-data-valid-range-p font-data offset 4))
    (error 'font-out-of-bounds-error :pos offset :size 4 :length
           (font-data-length font-data)))
  (let ((cnt (script-lang-sys-count-raw font-data offset)))
    (unless
        (and (<= (+ 4 (* cnt 6)) length)
             (font-data-valid-range-p font-data offset (+ 4 (* cnt 6))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 4 (* cnt 6))
             :length (font-data-length font-data))))
  t)


(defun read-script
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-script font-data offset length)
  (%make-script font-data offset length))


(defstruct
    (lang-sys (:include table-ref)
     (:constructor %make-lang-sys
      (%table-font-data %table-offset %table-length))))


(defun lang-sys-lookup-order-offset (table)
  "= NULL (reserved for an offset to a reordering table)"
  (declare (type lang-sys table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline lang-sys-lookup-order-offset-raw))


(defun lang-sys-lookup-order-offset-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun lang-sys-required-feature-index (table)
  "Index of a feature required for this language system; if no required features = 0xFFFF"
  (declare (type lang-sys table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline lang-sys-required-feature-index-raw))


(defun lang-sys-required-feature-index-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun lang-sys-feature-index-count (table)
  "Number of feature index values for this language system — excludes the required feature"
  (declare (type lang-sys table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline lang-sys-feature-index-count-raw))


(defun lang-sys-feature-index-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun lang-sys-feature-indices-count (table)
  "Array of indices into the FeatureList, in arbitrary order"
  (lang-sys-feature-index-count table))


(declaim
 (inline lang-sys-lookup-order-offset lang-sys-required-feature-index
  lang-sys-feature-index-count lang-sys-feature-indices
  lang-sys-feature-indices-count))


(defun lang-sys-feature-indices-ref (table index)
  "Array of indices into the FeatureList, in arbitrary order"
  (declare (type lang-sys table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 6) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun sanitize-lang-sys (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 6 length) (font-data-valid-range-p font-data offset 6))
    (error 'font-out-of-bounds-error :pos offset :size 6 :length
           (font-data-length font-data)))
  (let ((cnt (lang-sys-feature-index-count-raw font-data offset)))
    (unless
        (and (<= (+ 6 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 6 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 6 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-lang-sys
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-lang-sys font-data offset length)
  (%make-lang-sys font-data offset length))


(defstruct
    (feature-list (:include table-ref)
     (:constructor %make-feature-list
      (%table-font-data %table-offset %table-length))))


(defun feature-list-feature-count (table)
  "Number of FeatureRecords in this table"
  (declare (type feature-list table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline feature-list-feature-count-raw))


(defun feature-list-feature-count-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun feature-list-feature-records-count (table)
  "Array of FeatureRecords — zero-based (first feature has FeatureIndex = 0), listed alphabetically by feature tag"
  (feature-list-feature-count table))


(declaim
 (inline feature-list-feature-count feature-list-feature-records
  feature-list-feature-records-count))


(defun feature-list-feature-records-ref (table index)
  "Array of FeatureRecords — zero-based (first feature has FeatureIndex = 0), listed alphabetically by feature tag"
  (declare (type feature-list table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 2) (* index 6))))
    (unless
        (<= (+ pos 6) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 6 :length
             (table-ref-length table)))
    (%make-feature-record (table-ref-font-data table) pos)))


(defun sanitize-feature-list (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  (let ((cnt (feature-list-feature-count-raw font-data offset)))
    (unless
        (and (<= (+ 2 (* cnt 6)) length)
             (font-data-valid-range-p font-data offset (+ 2 (* cnt 6))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 2 (* cnt 6))
             :length (font-data-length font-data))))
  t)


(defun read-feature-list
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-feature-list font-data offset length)
  (%make-feature-list font-data offset length))


(defstruct
    (feature (:include table-ref)
     (:constructor %make-feature
      (%table-font-data %table-offset %table-length))))


(defun feature-feature-params-offset-offset (table)
  "Offset from start of Feature table to FeatureParams table, if defined for the feature and present, else NULL"
  (declare (type feature table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(defun feature-feature-params-offset (table)
  "Offset from start of Feature table to FeatureParams table, if defined for the feature and present, else NULL"
  (declare (type feature table))
  (let ((off (feature-feature-params-offset-offset table)))
    (when (and off (not (zerop off)))
      (font-data-slice (table-ref-font-data table)
                       (+ (table-ref-offset table) off)))))


(defun feature-lookup-index-count (table)
  "Number of LookupList indices for this feature"
  (declare (type feature table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline feature-lookup-index-count-raw))


(defun feature-lookup-index-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun feature-lookup-list-indices-count (table)
  "Array of indices into the LookupList — zero-based (first lookup is LookupListIndex = 0)"
  (feature-lookup-index-count table))


(declaim
 (inline feature-feature-params-offset feature-feature-params-offset-offset
  feature-lookup-index-count feature-lookup-list-indices
  feature-lookup-list-indices-count))


(defun feature-lookup-list-indices-ref (table index)
  "Array of indices into the LookupList — zero-based (first lookup is LookupListIndex = 0)"
  (declare (type feature table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 4) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun sanitize-feature (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 4 length) (font-data-valid-range-p font-data offset 4))
    (error 'font-out-of-bounds-error :pos offset :size 4 :length
           (font-data-length font-data)))
  (let ((cnt (feature-lookup-index-count-raw font-data offset)))
    (unless
        (and (<= (+ 4 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 4 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 4 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-feature
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-feature font-data offset length)
  (%make-feature font-data offset length))


(defstruct
    (lookup-list (:include table-ref)
     (:constructor %make-lookup-list
      (%table-font-data %table-offset %table-length))))


(defun lookup-list-lookup-count (table)
  "Number of lookups in this table"
  (declare (type lookup-list table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline lookup-list-lookup-count-raw))


(defun lookup-list-lookup-count-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun lookup-list-lookup-offsets-count (table)
  "Array of offsets to Lookup tables, from beginning of LookupList — zero based (first lookup is Lookup index = 0)"
  (lookup-list-lookup-count table))


(declaim
 (inline lookup-list-lookup-count lookup-list-lookup-offsets
  lookup-list-lookup-offsets-count))


(defun lookup-list-lookup-offsets-ref (table index)
  "Array of offsets to Lookup tables, from beginning of LookupList — zero based (first lookup is Lookup index = 0)"
  (declare (type lookup-list table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 2) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u16 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (font-data-slice (table-ref-font-data table)
                         (+ (table-ref-offset table) off))))))


(defun sanitize-lookup-list (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  (let ((cnt (lookup-list-lookup-count-raw font-data offset)))
    (unless
        (and (<= (+ 2 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 2 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 2 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-lookup-list
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-lookup-list font-data offset length)
  (%make-lookup-list font-data offset length))


(defstruct
    (lookup (:include table-ref)
     (:constructor %make-lookup
      (%table-font-data %table-offset %table-length))))


(defun lookup-lookup-type (table)
  "Different enumerations for GSUB and GPOS"
  (declare (type lookup table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline lookup-lookup-type-raw))


(defun lookup-lookup-type-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun lookup-sub-table-count (table)
  "Number of subtables for this lookup"
  (declare (type lookup table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline lookup-sub-table-count-raw))


(defun lookup-sub-table-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun lookup-subtable-offsets-count (table)
  "Array of offsets to lookup subtables, from beginning of Lookup table"
  (lookup-sub-table-count table))


(defun lookup-subtable-offsets-ref (table index)
  "Array of offsets to lookup subtables, from beginning of Lookup table"
  (declare (type lookup table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 4) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u16 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (font-data-slice (table-ref-font-data table)
                         (+ (table-ref-offset table) off))))))


(declaim
 (inline lookup-lookup-type lookup-lookup-flag lookup-sub-table-count
  lookup-subtable-offsets lookup-subtable-offsets-count
  lookup-mark-filtering-set))


(defun lookup-mark-filtering-set (table)
  "Index (base 0) into GDEF mark glyph sets structure. This field is only present if the USE_MARK_FILTERING_SET lookup flag is set."
  (declare (type lookup table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4
                         (* (lookup-subtable-offsets-count table) 2))))


(defun sanitize-lookup (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 4 length) (font-data-valid-range-p font-data offset 4))
    (error 'font-out-of-bounds-error :pos offset :size 4 :length
           (font-data-length font-data)))
  (let ((cnt (lookup-sub-table-count-raw font-data offset)))
    (unless
        (and (<= (+ 4 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 4 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 4 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-lookup
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-lookup font-data offset length)
  (%make-lookup font-data offset length))


(defstruct
    (coverage-format1 (:include table-ref)
     (:constructor %make-coverage-format1
      (%table-font-data %table-offset %table-length))))


(defun coverage-format1-coverage-format (table)
  "Format identifier — format = 1"
  (declare (type coverage-format1 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline coverage-format1-coverage-format-raw))


(defun coverage-format1-coverage-format-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun coverage-format1-glyph-count (table)
  "Number of glyphs in the glyph array"
  (declare (type coverage-format1 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline coverage-format1-glyph-count-raw))


(defun coverage-format1-glyph-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun coverage-format1-glyph-array-count (table)
  "Array of glyph IDs — in numerical order"
  (coverage-format1-glyph-count table))


(declaim
 (inline coverage-format1-coverage-format coverage-format1-glyph-count
  coverage-format1-glyph-array coverage-format1-glyph-array-count))


(defun coverage-format1-glyph-array-ref (table index)
  "Array of glyph IDs — in numerical order"
  (declare (type coverage-format1 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 4) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun sanitize-coverage-format1 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 4 length) (font-data-valid-range-p font-data offset 4))
    (error 'font-out-of-bounds-error :pos offset :size 4 :length
           (font-data-length font-data)))
  (let ((cnt (coverage-format1-glyph-count-raw font-data offset)))
    (unless
        (and (<= (+ 4 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 4 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 4 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-coverage-format1
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-coverage-format1 font-data offset length)
  (%make-coverage-format1 font-data offset length))


(defstruct
    (coverage-format2 (:include table-ref)
     (:constructor %make-coverage-format2
      (%table-font-data %table-offset %table-length))))


(defun coverage-format2-coverage-format (table)
  "Format identifier — format = 2"
  (declare (type coverage-format2 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline coverage-format2-coverage-format-raw))


(defun coverage-format2-coverage-format-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun coverage-format2-range-count (table)
  "Number of RangeRecords"
  (declare (type coverage-format2 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline coverage-format2-range-count-raw))


(defun coverage-format2-range-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun coverage-format2-range-records-count (table)
  "Array of glyph ranges — ordered by startGlyphID."
  (coverage-format2-range-count table))


(declaim
 (inline coverage-format2-coverage-format coverage-format2-range-count
  coverage-format2-range-records coverage-format2-range-records-count))


(defun coverage-format2-range-records-ref (table index)
  "Array of glyph ranges — ordered by startGlyphID."
  (declare (type coverage-format2 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 4) (* index 6))))
    (unless
        (<= (+ pos 6) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 6 :length
             (table-ref-length table)))
    (%make-range-record (table-ref-font-data table) pos)))


(defun sanitize-coverage-format2 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 4 length) (font-data-valid-range-p font-data offset 4))
    (error 'font-out-of-bounds-error :pos offset :size 4 :length
           (font-data-length font-data)))
  (let ((cnt (coverage-format2-range-count-raw font-data offset)))
    (unless
        (and (<= (+ 4 (* cnt 6)) length)
             (font-data-valid-range-p font-data offset (+ 4 (* cnt 6))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 4 (* cnt 6))
             :length (font-data-length font-data))))
  t)


(defun read-coverage-format2
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-coverage-format2 font-data offset length)
  (%make-coverage-format2 font-data offset length))


(defun read-coverage-table
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (declare (ignorable length))
  (let ((fmt (font-data-read-u16 font-data (+ offset 0))))
    (case fmt
      (1 (read-coverage-format1 font-data offset length))
      (2 (read-coverage-format2 font-data offset length))
      (3 (read-coverage-format3 font-data offset length))
      (4 (read-coverage-format4 font-data offset length))
      (otherwise
       (error 'unsupported-format-error :format fmt :table 'coverage-table)))))


(defstruct
    (class-def-format1 (:include table-ref)
     (:constructor %make-class-def-format1
      (%table-font-data %table-offset %table-length))))


(defun class-def-format1-class-format (table)
  "Format identifier — format = 1"
  (declare (type class-def-format1 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline class-def-format1-class-format-raw))


(defun class-def-format1-class-format-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun class-def-format1-start-glyph-id (table)
  "First glyph ID of the classValueArray"
  (declare (type class-def-format1 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline class-def-format1-start-glyph-id-raw))


(defun class-def-format1-start-glyph-id-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun class-def-format1-glyph-count (table)
  "Size of the classValueArray"
  (declare (type class-def-format1 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline class-def-format1-glyph-count-raw))


(defun class-def-format1-glyph-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun class-def-format1-class-value-array-count (table)
  "Array of Class Values — one per glyph ID"
  (class-def-format1-glyph-count table))


(declaim
 (inline class-def-format1-class-format class-def-format1-start-glyph-id
  class-def-format1-glyph-count class-def-format1-class-value-array
  class-def-format1-class-value-array-count))


(defun class-def-format1-class-value-array-ref (table index)
  "Array of Class Values — one per glyph ID"
  (declare (type class-def-format1 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 6) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun sanitize-class-def-format1 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 6 length) (font-data-valid-range-p font-data offset 6))
    (error 'font-out-of-bounds-error :pos offset :size 6 :length
           (font-data-length font-data)))
  (let ((cnt (class-def-format1-glyph-count-raw font-data offset)))
    (unless
        (and (<= (+ 6 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 6 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 6 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-class-def-format1
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-class-def-format1 font-data offset length)
  (%make-class-def-format1 font-data offset length))


(defstruct
    (class-def-format2 (:include table-ref)
     (:constructor %make-class-def-format2
      (%table-font-data %table-offset %table-length))))


(defun class-def-format2-class-format (table)
  "Format identifier — format = 2"
  (declare (type class-def-format2 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline class-def-format2-class-format-raw))


(defun class-def-format2-class-format-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun class-def-format2-class-range-count (table)
  "Number of ClassRangeRecords"
  (declare (type class-def-format2 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline class-def-format2-class-range-count-raw))


(defun class-def-format2-class-range-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun class-def-format2-class-range-records-count (table)
  "Array of ClassRangeRecords — ordered by startGlyphID"
  (class-def-format2-class-range-count table))


(declaim
 (inline class-def-format2-class-format class-def-format2-class-range-count
  class-def-format2-class-range-records
  class-def-format2-class-range-records-count))


(defun class-def-format2-class-range-records-ref (table index)
  "Array of ClassRangeRecords — ordered by startGlyphID"
  (declare (type class-def-format2 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 4) (* index 6))))
    (unless
        (<= (+ pos 6) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 6 :length
             (table-ref-length table)))
    (%make-class-range-record (table-ref-font-data table) pos)))


(defun sanitize-class-def-format2 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 4 length) (font-data-valid-range-p font-data offset 4))
    (error 'font-out-of-bounds-error :pos offset :size 4 :length
           (font-data-length font-data)))
  (let ((cnt (class-def-format2-class-range-count-raw font-data offset)))
    (unless
        (and (<= (+ 4 (* cnt 6)) length)
             (font-data-valid-range-p font-data offset (+ 4 (* cnt 6))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 4 (* cnt 6))
             :length (font-data-length font-data))))
  t)


(defun read-class-def-format2
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-class-def-format2 font-data offset length)
  (%make-class-def-format2 font-data offset length))


(defun read-class-def
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (declare (ignorable length))
  (let ((fmt (font-data-read-u16 font-data (+ offset 0))))
    (case fmt
      (1 (read-class-def-format1 font-data offset length))
      (2 (read-class-def-format2 font-data offset length))
      (3 (read-class-def-format3 font-data offset length))
      (4 (read-class-def-format4 font-data offset length))
      (otherwise
       (error 'unsupported-format-error :format fmt :table 'class-def)))))


(defstruct
    (sequence-context-format1 (:include table-ref)
     (:constructor %make-sequence-context-format1
      (%table-font-data %table-offset %table-length))))


(defun sequence-context-format1-format-table (table)
  "Format identifier: format = 1"
  (declare (type sequence-context-format1 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline sequence-context-format1-format-table-raw))


(defun sequence-context-format1-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun sequence-context-format1-coverage-offset-offset (table)
  "Offset to Coverage table, from beginning of SequenceContextFormat1 table"
  (declare (type sequence-context-format1 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun sequence-context-format1-coverage-offset (table)
  "Offset to Coverage table, from beginning of SequenceContextFormat1 table"
  (declare (type sequence-context-format1 table))
  (let ((off (sequence-context-format1-coverage-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-coverage-table (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun sequence-context-format1-seq-rule-set-count (table)
  "Number of SequenceRuleSet tables"
  (declare (type sequence-context-format1 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline sequence-context-format1-seq-rule-set-count-raw))


(defun sequence-context-format1-seq-rule-set-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun sequence-context-format1-seq-rule-set-offsets-count (table)
  "Array of offsets to SequenceRuleSet tables, from beginning of SequenceContextFormat1 table (offsets may be NULL)"
  (sequence-context-format1-seq-rule-set-count table))


(declaim
 (inline sequence-context-format1-format-table
  sequence-context-format1-coverage-offset
  sequence-context-format1-coverage-offset-offset
  sequence-context-format1-seq-rule-set-count
  sequence-context-format1-seq-rule-set-offsets
  sequence-context-format1-seq-rule-set-offsets-count))


(defun sequence-context-format1-seq-rule-set-offsets-ref (table index)
  "Array of offsets to SequenceRuleSet tables, from beginning of SequenceContextFormat1 table (offsets may be NULL)"
  (declare (type sequence-context-format1 table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 6) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u16 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-sequence-rule-set (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-sequence-context-format1 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 6 length) (font-data-valid-range-p font-data offset 6))
    (error 'font-out-of-bounds-error :pos offset :size 6 :length
           (font-data-length font-data)))
  (let ((cnt
         (sequence-context-format1-seq-rule-set-count-raw font-data offset)))
    (unless
        (and (<= (+ 6 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 6 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 6 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-sequence-context-format1
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-sequence-context-format1 font-data offset length)
  (%make-sequence-context-format1 font-data offset length))


(defstruct
    (sequence-rule-set (:include table-ref)
     (:constructor %make-sequence-rule-set
      (%table-font-data %table-offset %table-length))))


(defun sequence-rule-set-seq-rule-count (table)
  "Number of SequenceRule tables"
  (declare (type sequence-rule-set table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline sequence-rule-set-seq-rule-count-raw))


(defun sequence-rule-set-seq-rule-count-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun sequence-rule-set-seq-rule-offsets-count (table)
  "Array of offsets to SequenceRule tables, from beginning of the SequenceRuleSet table"
  (sequence-rule-set-seq-rule-count table))


(declaim
 (inline sequence-rule-set-seq-rule-count sequence-rule-set-seq-rule-offsets
  sequence-rule-set-seq-rule-offsets-count))


(defun sequence-rule-set-seq-rule-offsets-ref (table index)
  "Array of offsets to SequenceRule tables, from beginning of the SequenceRuleSet table"
  (declare (type sequence-rule-set table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 2) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u16 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-sequence-rule (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-sequence-rule-set (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  (let ((cnt (sequence-rule-set-seq-rule-count-raw font-data offset)))
    (unless
        (and (<= (+ 2 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 2 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 2 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-sequence-rule-set
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-sequence-rule-set font-data offset length)
  (%make-sequence-rule-set font-data offset length))


(defstruct
    (sequence-rule (:include table-ref)
     (:constructor %make-sequence-rule
      (%table-font-data %table-offset %table-length))))


(defun sequence-rule-glyph-count (table)
  "Number of glyphs in the input glyph sequence"
  (declare (type sequence-rule table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline sequence-rule-glyph-count-raw))


(defun sequence-rule-glyph-count-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun sequence-rule-seq-lookup-count (table)
  "Number of SequenceLookupRecords"
  (declare (type sequence-rule table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline sequence-rule-seq-lookup-count-raw))


(defun sequence-rule-seq-lookup-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun sequence-rule-input-sequence-count (table)
  "Array of input glyph IDs—starting with the second glyph"
  (max 0 (- (sequence-rule-glyph-count table) 1)))


(defun sequence-rule-input-sequence-ref (table index)
  "Array of input glyph IDs—starting with the second glyph"
  (declare (type sequence-rule table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 4) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun sequence-rule-seq-lookup-records-count (table)
  "Array of Sequence lookup records"
  (sequence-rule-seq-lookup-count table))


(declaim
 (inline sequence-rule-glyph-count sequence-rule-seq-lookup-count
  sequence-rule-input-sequence sequence-rule-input-sequence-count
  sequence-rule-seq-lookup-records sequence-rule-seq-lookup-records-count))


(defun sequence-rule-seq-lookup-records-ref (table index)
  "Array of Sequence lookup records"
  (declare (type sequence-rule table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 4
             (* (sequence-rule-input-sequence-count table) 2))
          (* index 4))))
    (unless
        (<= (+ pos 4) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 4 :length
             (table-ref-length table)))
    (%make-sequence-lookup-record (table-ref-font-data table) pos)))


(defun sanitize-sequence-rule (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 4 length) (font-data-valid-range-p font-data offset 4))
    (error 'font-out-of-bounds-error :pos offset :size 4 :length
           (font-data-length font-data)))
  t)


(defun read-sequence-rule
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-sequence-rule font-data offset length)
  (%make-sequence-rule font-data offset length))


(defstruct
    (sequence-context-format2 (:include table-ref)
     (:constructor %make-sequence-context-format2
      (%table-font-data %table-offset %table-length))))


(defun sequence-context-format2-format-table (table)
  "Format identifier: format = 2"
  (declare (type sequence-context-format2 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline sequence-context-format2-format-table-raw))


(defun sequence-context-format2-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun sequence-context-format2-coverage-offset-offset (table)
  "Offset to Coverage table, from beginning of SequenceContextFormat2 table"
  (declare (type sequence-context-format2 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun sequence-context-format2-coverage-offset (table)
  "Offset to Coverage table, from beginning of SequenceContextFormat2 table"
  (declare (type sequence-context-format2 table))
  (let ((off (sequence-context-format2-coverage-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-coverage-table (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun sequence-context-format2-class-def-offset-offset (table)
  "Offset to ClassDef table, from beginning of SequenceContextFormat2 table"
  (declare (type sequence-context-format2 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(defun sequence-context-format2-class-def-offset (table)
  "Offset to ClassDef table, from beginning of SequenceContextFormat2 table"
  (declare (type sequence-context-format2 table))
  (let ((off (sequence-context-format2-class-def-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-class-def (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun sequence-context-format2-class-seq-rule-set-count (table)
  "Number of ClassSequenceRuleSet tables"
  (declare (type sequence-context-format2 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6)))


(declaim (inline sequence-context-format2-class-seq-rule-set-count-raw))


(defun sequence-context-format2-class-seq-rule-set-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 6)))


(defun sequence-context-format2-class-seq-rule-set-offsets-count (table)
  "Array of offsets to ClassSequenceRuleSet tables, from beginning of SequenceContextFormat2 table (may be NULL)"
  (sequence-context-format2-class-seq-rule-set-count table))


(declaim
 (inline sequence-context-format2-format-table
  sequence-context-format2-coverage-offset
  sequence-context-format2-coverage-offset-offset
  sequence-context-format2-class-def-offset
  sequence-context-format2-class-def-offset-offset
  sequence-context-format2-class-seq-rule-set-count
  sequence-context-format2-class-seq-rule-set-offsets
  sequence-context-format2-class-seq-rule-set-offsets-count))


(defun sequence-context-format2-class-seq-rule-set-offsets-ref (table index)
  "Array of offsets to ClassSequenceRuleSet tables, from beginning of SequenceContextFormat2 table (may be NULL)"
  (declare (type sequence-context-format2 table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 8) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u16 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-class-sequence-rule-set (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-sequence-context-format2 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 8 length) (font-data-valid-range-p font-data offset 8))
    (error 'font-out-of-bounds-error :pos offset :size 8 :length
           (font-data-length font-data)))
  (let ((cnt
         (sequence-context-format2-class-seq-rule-set-count-raw font-data
          offset)))
    (unless
        (and (<= (+ 8 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 8 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 8 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-sequence-context-format2
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-sequence-context-format2 font-data offset length)
  (%make-sequence-context-format2 font-data offset length))


(defstruct
    (class-sequence-rule-set (:include table-ref)
     (:constructor %make-class-sequence-rule-set
      (%table-font-data %table-offset %table-length))))


(defun class-sequence-rule-set-class-seq-rule-count (table)
  "Number of ClassSequenceRule tables"
  (declare (type class-sequence-rule-set table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline class-sequence-rule-set-class-seq-rule-count-raw))


(defun class-sequence-rule-set-class-seq-rule-count-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun class-sequence-rule-set-class-seq-rule-offsets-count (table)
  "Array of offsets to ClassSequenceRule tables, from beginning of ClassSequenceRuleSet table"
  (class-sequence-rule-set-class-seq-rule-count table))


(declaim
 (inline class-sequence-rule-set-class-seq-rule-count
  class-sequence-rule-set-class-seq-rule-offsets
  class-sequence-rule-set-class-seq-rule-offsets-count))


(defun class-sequence-rule-set-class-seq-rule-offsets-ref (table index)
  "Array of offsets to ClassSequenceRule tables, from beginning of ClassSequenceRuleSet table"
  (declare (type class-sequence-rule-set table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 2) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u16 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-class-sequence-rule (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-class-sequence-rule-set (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  (let ((cnt
         (class-sequence-rule-set-class-seq-rule-count-raw font-data offset)))
    (unless
        (and (<= (+ 2 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 2 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 2 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-class-sequence-rule-set
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-class-sequence-rule-set font-data offset length)
  (%make-class-sequence-rule-set font-data offset length))


(defstruct
    (class-sequence-rule (:include table-ref)
     (:constructor %make-class-sequence-rule
      (%table-font-data %table-offset %table-length))))


(defun class-sequence-rule-glyph-count (table)
  "Number of glyphs to be matched"
  (declare (type class-sequence-rule table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline class-sequence-rule-glyph-count-raw))


(defun class-sequence-rule-glyph-count-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun class-sequence-rule-seq-lookup-count (table)
  "Number of SequenceLookupRecords"
  (declare (type class-sequence-rule table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline class-sequence-rule-seq-lookup-count-raw))


(defun class-sequence-rule-seq-lookup-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun class-sequence-rule-input-sequence-count (table)
  "Sequence of classes to be matched to the input glyph sequence, beginning with the second glyph position"
  (max 0 (- (class-sequence-rule-glyph-count table) 1)))


(defun class-sequence-rule-input-sequence-ref (table index)
  "Sequence of classes to be matched to the input glyph sequence, beginning with the second glyph position"
  (declare (type class-sequence-rule table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 4) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun class-sequence-rule-seq-lookup-records-count (table)
  "Array of SequenceLookupRecords"
  (class-sequence-rule-seq-lookup-count table))


(declaim
 (inline class-sequence-rule-glyph-count class-sequence-rule-seq-lookup-count
  class-sequence-rule-input-sequence class-sequence-rule-input-sequence-count
  class-sequence-rule-seq-lookup-records
  class-sequence-rule-seq-lookup-records-count))


(defun class-sequence-rule-seq-lookup-records-ref (table index)
  "Array of SequenceLookupRecords"
  (declare (type class-sequence-rule table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 4
             (* (class-sequence-rule-input-sequence-count table) 2))
          (* index 4))))
    (unless
        (<= (+ pos 4) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 4 :length
             (table-ref-length table)))
    (%make-sequence-lookup-record (table-ref-font-data table) pos)))


(defun sanitize-class-sequence-rule (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 4 length) (font-data-valid-range-p font-data offset 4))
    (error 'font-out-of-bounds-error :pos offset :size 4 :length
           (font-data-length font-data)))
  t)


(defun read-class-sequence-rule
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-class-sequence-rule font-data offset length)
  (%make-class-sequence-rule font-data offset length))


(defstruct
    (sequence-context-format3 (:include table-ref)
     (:constructor %make-sequence-context-format3
      (%table-font-data %table-offset %table-length))))


(defun sequence-context-format3-format-table (table)
  "Format identifier: format = 3"
  (declare (type sequence-context-format3 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline sequence-context-format3-format-table-raw))


(defun sequence-context-format3-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun sequence-context-format3-glyph-count (table)
  "Number of glyphs in the input sequence"
  (declare (type sequence-context-format3 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline sequence-context-format3-glyph-count-raw))


(defun sequence-context-format3-glyph-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun sequence-context-format3-seq-lookup-count (table)
  "Number of SequenceLookupRecords"
  (declare (type sequence-context-format3 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline sequence-context-format3-seq-lookup-count-raw))


(defun sequence-context-format3-seq-lookup-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun sequence-context-format3-coverage-offsets-count (table)
  "Array of offsets to Coverage tables, from beginning of SequenceContextFormat3 subtable"
  (sequence-context-format3-glyph-count table))


(defun sequence-context-format3-coverage-offsets-ref (table index)
  "Array of offsets to Coverage tables, from beginning of SequenceContextFormat3 subtable"
  (declare (type sequence-context-format3 table)
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


(defun sequence-context-format3-seq-lookup-records-count (table)
  "Array of SequenceLookupRecords"
  (sequence-context-format3-seq-lookup-count table))


(declaim
 (inline sequence-context-format3-format-table
  sequence-context-format3-glyph-count
  sequence-context-format3-seq-lookup-count
  sequence-context-format3-coverage-offsets
  sequence-context-format3-coverage-offsets-count
  sequence-context-format3-seq-lookup-records
  sequence-context-format3-seq-lookup-records-count))


(defun sequence-context-format3-seq-lookup-records-ref (table index)
  "Array of SequenceLookupRecords"
  (declare (type sequence-context-format3 table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 6
             (* (sequence-context-format3-coverage-offsets-count table) 2))
          (* index 4))))
    (unless
        (<= (+ pos 4) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 4 :length
             (table-ref-length table)))
    (%make-sequence-lookup-record (table-ref-font-data table) pos)))


(defun sanitize-sequence-context-format3 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 6 length) (font-data-valid-range-p font-data offset 6))
    (error 'font-out-of-bounds-error :pos offset :size 6 :length
           (font-data-length font-data)))
  (let ((cnt (sequence-context-format3-glyph-count-raw font-data offset)))
    (unless
        (and (<= (+ 6 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 6 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 6 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-sequence-context-format3
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-sequence-context-format3 font-data offset length)
  (%make-sequence-context-format3 font-data offset length))


(defun read-sequence-context
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (declare (ignorable length))
  (let ((fmt (font-data-read-u16 font-data (+ offset 0))))
    (case fmt
      (1 (read-sequence-context-format1 font-data offset length))
      (2 (read-sequence-context-format2 font-data offset length))
      (3 (read-sequence-context-format3 font-data offset length))
      (4 (read-sequence-context-format4 font-data offset length))
      (5 (read-sequence-context-format5 font-data offset length))
      (6 (read-sequence-context-format6 font-data offset length))
      (otherwise
       (error 'unsupported-format-error :format fmt :table
              'sequence-context)))))


(defstruct
    (chained-sequence-context-format1 (:include table-ref)
     (:constructor %make-chained-sequence-context-format1
      (%table-font-data %table-offset %table-length))))


(defun chained-sequence-context-format1-format-table (table)
  "Format identifier: format = 1"
  (declare (type chained-sequence-context-format1 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline chained-sequence-context-format1-format-table-raw))


(defun chained-sequence-context-format1-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun chained-sequence-context-format1-coverage-offset-offset (table)
  "Offset to Coverage table, from beginning of ChainSequenceContextFormat1 table"
  (declare (type chained-sequence-context-format1 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun chained-sequence-context-format1-coverage-offset (table)
  "Offset to Coverage table, from beginning of ChainSequenceContextFormat1 table"
  (declare (type chained-sequence-context-format1 table))
  (let ((off (chained-sequence-context-format1-coverage-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-coverage-table (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun chained-sequence-context-format1-chained-seq-rule-set-count (table)
  "Number of ChainedSequenceRuleSet tables"
  (declare (type chained-sequence-context-format1 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim
 (inline chained-sequence-context-format1-chained-seq-rule-set-count-raw))


(defun chained-sequence-context-format1-chained-seq-rule-set-count-raw
       (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun chained-sequence-context-format1-chained-seq-rule-set-offsets-count
       (table)
  "Array of offsets to ChainedSeqRuleSet tables, from beginning of ChainedSequenceContextFormat1 table (may be NULL)"
  (chained-sequence-context-format1-chained-seq-rule-set-count table))


(declaim
 (inline chained-sequence-context-format1-format-table
  chained-sequence-context-format1-coverage-offset
  chained-sequence-context-format1-coverage-offset-offset
  chained-sequence-context-format1-chained-seq-rule-set-count
  chained-sequence-context-format1-chained-seq-rule-set-offsets
  chained-sequence-context-format1-chained-seq-rule-set-offsets-count))


(defun chained-sequence-context-format1-chained-seq-rule-set-offsets-ref
       (table index)
  "Array of offsets to ChainedSeqRuleSet tables, from beginning of ChainedSequenceContextFormat1 table (may be NULL)"
  (declare (type chained-sequence-context-format1 table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 6) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u16 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-chained-sequence-rule-set (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-chained-sequence-context-format1 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 6 length) (font-data-valid-range-p font-data offset 6))
    (error 'font-out-of-bounds-error :pos offset :size 6 :length
           (font-data-length font-data)))
  (let ((cnt
         (chained-sequence-context-format1-chained-seq-rule-set-count-raw
          font-data offset)))
    (unless
        (and (<= (+ 6 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 6 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 6 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-chained-sequence-context-format1
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-chained-sequence-context-format1 font-data offset length)
  (%make-chained-sequence-context-format1 font-data offset length))


(defstruct
    (chained-sequence-rule-set (:include table-ref)
     (:constructor %make-chained-sequence-rule-set
      (%table-font-data %table-offset %table-length))))


(defun chained-sequence-rule-set-chained-seq-rule-count (table)
  "Number of ChainedSequenceRule tables"
  (declare (type chained-sequence-rule-set table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline chained-sequence-rule-set-chained-seq-rule-count-raw))


(defun chained-sequence-rule-set-chained-seq-rule-count-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun chained-sequence-rule-set-chained-seq-rule-offsets-count (table)
  "Array of offsets to ChainedSequenceRule tables, from beginning of ChainedSequenceRuleSet table"
  (chained-sequence-rule-set-chained-seq-rule-count table))


(declaim
 (inline chained-sequence-rule-set-chained-seq-rule-count
  chained-sequence-rule-set-chained-seq-rule-offsets
  chained-sequence-rule-set-chained-seq-rule-offsets-count))


(defun chained-sequence-rule-set-chained-seq-rule-offsets-ref (table index)
  "Array of offsets to ChainedSequenceRule tables, from beginning of ChainedSequenceRuleSet table"
  (declare (type chained-sequence-rule-set table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 2) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u16 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-chained-sequence-rule (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-chained-sequence-rule-set (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  (let ((cnt
         (chained-sequence-rule-set-chained-seq-rule-count-raw font-data
          offset)))
    (unless
        (and (<= (+ 2 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 2 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 2 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-chained-sequence-rule-set
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-chained-sequence-rule-set font-data offset length)
  (%make-chained-sequence-rule-set font-data offset length))


(defstruct
    (chained-sequence-rule (:include table-ref)
     (:constructor %make-chained-sequence-rule
      (%table-font-data %table-offset %table-length))))


(defun chained-sequence-rule-backtrack-glyph-count (table)
  "Number of glyphs in the backtrack sequence"
  (declare (type chained-sequence-rule table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline chained-sequence-rule-backtrack-glyph-count-raw))


(defun chained-sequence-rule-backtrack-glyph-count-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun chained-sequence-rule-backtrack-sequence-count (table)
  "Array of backtrack glyph IDs"
  (chained-sequence-rule-backtrack-glyph-count table))


(defun chained-sequence-rule-backtrack-sequence-ref (table index)
  "Array of backtrack glyph IDs"
  (declare (type chained-sequence-rule table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 2) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun chained-sequence-rule-input-glyph-count (table)
  "Number of glyphs in the input sequence"
  (declare (type chained-sequence-rule table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2
                         (*
                          (chained-sequence-rule-backtrack-sequence-count
                           table)
                          2))))


(defun chained-sequence-rule-input-sequence-count (table)
  "Array of input glyph IDs—start with second glyph"
  (max 0 (- (chained-sequence-rule-input-glyph-count table) 1)))


(defun chained-sequence-rule-input-sequence-ref (table index)
  "Array of input glyph IDs—start with second glyph"
  (declare (type chained-sequence-rule table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 4
             (* (chained-sequence-rule-backtrack-sequence-count table) 2))
          (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun chained-sequence-rule-lookahead-glyph-count (table)
  "Number of glyphs in the lookahead sequence"
  (declare (type chained-sequence-rule table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4
                         (* (chained-sequence-rule-input-sequence-count table)
                            2)
                         (*
                          (chained-sequence-rule-backtrack-sequence-count
                           table)
                          2))))


(defun chained-sequence-rule-lookahead-sequence-count (table)
  "Array of lookahead glyph IDs"
  (chained-sequence-rule-lookahead-glyph-count table))


(defun chained-sequence-rule-lookahead-sequence-ref (table index)
  "Array of lookahead glyph IDs"
  (declare (type chained-sequence-rule table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 6
             (* (chained-sequence-rule-input-sequence-count table) 2)
             (* (chained-sequence-rule-backtrack-sequence-count table) 2))
          (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun chained-sequence-rule-seq-lookup-count (table)
  "Number of SequenceLookupRecords"
  (declare (type chained-sequence-rule table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6
                         (*
                          (chained-sequence-rule-lookahead-sequence-count
                           table)
                          2)
                         (* (chained-sequence-rule-input-sequence-count table)
                            2)
                         (*
                          (chained-sequence-rule-backtrack-sequence-count
                           table)
                          2))))


(defun chained-sequence-rule-seq-lookup-records-count (table)
  "Array of SequenceLookupRecords"
  (chained-sequence-rule-seq-lookup-count table))


(declaim
 (inline chained-sequence-rule-backtrack-glyph-count
  chained-sequence-rule-backtrack-sequence
  chained-sequence-rule-backtrack-sequence-count
  chained-sequence-rule-input-glyph-count chained-sequence-rule-input-sequence
  chained-sequence-rule-input-sequence-count
  chained-sequence-rule-lookahead-glyph-count
  chained-sequence-rule-lookahead-sequence
  chained-sequence-rule-lookahead-sequence-count
  chained-sequence-rule-seq-lookup-count
  chained-sequence-rule-seq-lookup-records
  chained-sequence-rule-seq-lookup-records-count))


(defun chained-sequence-rule-seq-lookup-records-ref (table index)
  "Array of SequenceLookupRecords"
  (declare (type chained-sequence-rule table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 8
             (* (chained-sequence-rule-lookahead-sequence-count table) 2)
             (* (chained-sequence-rule-input-sequence-count table) 2)
             (* (chained-sequence-rule-backtrack-sequence-count table) 2))
          (* index 4))))
    (unless
        (<= (+ pos 4) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 4 :length
             (table-ref-length table)))
    (%make-sequence-lookup-record (table-ref-font-data table) pos)))


(defun sanitize-chained-sequence-rule (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  (let ((cnt
         (chained-sequence-rule-backtrack-glyph-count-raw font-data offset)))
    (unless
        (and (<= (+ 2 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 2 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 2 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-chained-sequence-rule
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-chained-sequence-rule font-data offset length)
  (%make-chained-sequence-rule font-data offset length))


(defstruct
    (chained-sequence-context-format2 (:include table-ref)
     (:constructor %make-chained-sequence-context-format2
      (%table-font-data %table-offset %table-length))))


(defun chained-sequence-context-format2-format-table (table)
  "Format identifier: format = 2"
  (declare (type chained-sequence-context-format2 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline chained-sequence-context-format2-format-table-raw))


(defun chained-sequence-context-format2-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun chained-sequence-context-format2-coverage-offset-offset (table)
  "Offset to Coverage table, from beginning of ChainedSequenceContextFormat2 table"
  (declare (type chained-sequence-context-format2 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun chained-sequence-context-format2-coverage-offset (table)
  "Offset to Coverage table, from beginning of ChainedSequenceContextFormat2 table"
  (declare (type chained-sequence-context-format2 table))
  (let ((off (chained-sequence-context-format2-coverage-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-coverage-table (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun chained-sequence-context-format2-backtrack-class-def-offset-offset
       (table)
  "Offset to ClassDef table containing backtrack sequence context, from beginning of ChainedSequenceContextFormat2 table"
  (declare (type chained-sequence-context-format2 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(defun chained-sequence-context-format2-backtrack-class-def-offset (table)
  "Offset to ClassDef table containing backtrack sequence context, from beginning of ChainedSequenceContextFormat2 table"
  (declare (type chained-sequence-context-format2 table))
  (let ((off
         (chained-sequence-context-format2-backtrack-class-def-offset-offset
          table)))
    (when (and off (not (zerop off)))
      (read-class-def (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun chained-sequence-context-format2-input-class-def-offset-offset (table)
  "Offset to ClassDef table containing input sequence context, from beginning of ChainedSequenceContextFormat2 table"
  (declare (type chained-sequence-context-format2 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6)))


(defun chained-sequence-context-format2-input-class-def-offset (table)
  "Offset to ClassDef table containing input sequence context, from beginning of ChainedSequenceContextFormat2 table"
  (declare (type chained-sequence-context-format2 table))
  (let ((off
         (chained-sequence-context-format2-input-class-def-offset-offset
          table)))
    (when (and off (not (zerop off)))
      (read-class-def (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun chained-sequence-context-format2-lookahead-class-def-offset-offset
       (table)
  "Offset to ClassDef table containing lookahead sequence context, from beginning of ChainedSequenceContextFormat2 table"
  (declare (type chained-sequence-context-format2 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 8)))


(defun chained-sequence-context-format2-lookahead-class-def-offset (table)
  "Offset to ClassDef table containing lookahead sequence context, from beginning of ChainedSequenceContextFormat2 table"
  (declare (type chained-sequence-context-format2 table))
  (let ((off
         (chained-sequence-context-format2-lookahead-class-def-offset-offset
          table)))
    (when (and off (not (zerop off)))
      (read-class-def (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun chained-sequence-context-format2-chained-class-seq-rule-set-count
       (table)
  "Number of ChainedClassSequenceRuleSet tables"
  (declare (type chained-sequence-context-format2 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 10)))


(declaim
 (inline chained-sequence-context-format2-chained-class-seq-rule-set-count-raw))


(defun chained-sequence-context-format2-chained-class-seq-rule-set-count-raw
       (font-data offset)
  (font-data-read-u16 font-data (+ offset 10)))


(defun chained-sequence-context-format2-chained-class-seq-rule-set-offsets-count
       (table)
  "Array of offsets to ChainedClassSequenceRuleSet tables, from beginning of ChainedSequenceContextFormat2 table (may be NULL)"
  (chained-sequence-context-format2-chained-class-seq-rule-set-count table))


(declaim
 (inline chained-sequence-context-format2-format-table
  chained-sequence-context-format2-coverage-offset
  chained-sequence-context-format2-coverage-offset-offset
  chained-sequence-context-format2-backtrack-class-def-offset
  chained-sequence-context-format2-backtrack-class-def-offset-offset
  chained-sequence-context-format2-input-class-def-offset
  chained-sequence-context-format2-input-class-def-offset-offset
  chained-sequence-context-format2-lookahead-class-def-offset
  chained-sequence-context-format2-lookahead-class-def-offset-offset
  chained-sequence-context-format2-chained-class-seq-rule-set-count
  chained-sequence-context-format2-chained-class-seq-rule-set-offsets
  chained-sequence-context-format2-chained-class-seq-rule-set-offsets-count))


(defun chained-sequence-context-format2-chained-class-seq-rule-set-offsets-ref
       (table index)
  "Array of offsets to ChainedClassSequenceRuleSet tables, from beginning of ChainedSequenceContextFormat2 table (may be NULL)"
  (declare (type chained-sequence-context-format2 table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 12) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u16 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-chained-class-sequence-rule-set (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-chained-sequence-context-format2 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 12 length) (font-data-valid-range-p font-data offset 12))
    (error 'font-out-of-bounds-error :pos offset :size 12 :length
           (font-data-length font-data)))
  (let ((cnt
         (chained-sequence-context-format2-chained-class-seq-rule-set-count-raw
          font-data offset)))
    (unless
        (and (<= (+ 12 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 12 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 12 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-chained-sequence-context-format2
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-chained-sequence-context-format2 font-data offset length)
  (%make-chained-sequence-context-format2 font-data offset length))


(defstruct
    (chained-class-sequence-rule-set (:include table-ref)
     (:constructor %make-chained-class-sequence-rule-set
      (%table-font-data %table-offset %table-length))))


(defun chained-class-sequence-rule-set-chained-class-seq-rule-count (table)
  "Number of ChainedClassSequenceRule tables"
  (declare (type chained-class-sequence-rule-set table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim
 (inline chained-class-sequence-rule-set-chained-class-seq-rule-count-raw))


(defun chained-class-sequence-rule-set-chained-class-seq-rule-count-raw
       (font-data offset)
  (font-data-read-u16 font-data offset))


(defun chained-class-sequence-rule-set-chained-class-seq-rule-offsets-count
       (table)
  "Array of offsets to ChainedClassSequenceRule tables, from beginning of ChainedClassSequenceRuleSet"
  (chained-class-sequence-rule-set-chained-class-seq-rule-count table))


(declaim
 (inline chained-class-sequence-rule-set-chained-class-seq-rule-count
  chained-class-sequence-rule-set-chained-class-seq-rule-offsets
  chained-class-sequence-rule-set-chained-class-seq-rule-offsets-count))


(defun chained-class-sequence-rule-set-chained-class-seq-rule-offsets-ref
       (table index)
  "Array of offsets to ChainedClassSequenceRule tables, from beginning of ChainedClassSequenceRuleSet"
  (declare (type chained-class-sequence-rule-set table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 2) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u16 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-chained-class-sequence-rule (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-chained-class-sequence-rule-set (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  (let ((cnt
         (chained-class-sequence-rule-set-chained-class-seq-rule-count-raw
          font-data offset)))
    (unless
        (and (<= (+ 2 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 2 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 2 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-chained-class-sequence-rule-set
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-chained-class-sequence-rule-set font-data offset length)
  (%make-chained-class-sequence-rule-set font-data offset length))


(defstruct
    (chained-class-sequence-rule (:include table-ref)
     (:constructor %make-chained-class-sequence-rule
      (%table-font-data %table-offset %table-length))))


(defun chained-class-sequence-rule-backtrack-glyph-count (table)
  "Number of glyphs in the backtrack sequence"
  (declare (type chained-class-sequence-rule table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline chained-class-sequence-rule-backtrack-glyph-count-raw))


(defun chained-class-sequence-rule-backtrack-glyph-count-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun chained-class-sequence-rule-backtrack-sequence-count (table)
  "Array of backtrack-sequence classes"
  (chained-class-sequence-rule-backtrack-glyph-count table))


(defun chained-class-sequence-rule-backtrack-sequence-ref (table index)
  "Array of backtrack-sequence classes"
  (declare (type chained-class-sequence-rule table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 2) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun chained-class-sequence-rule-input-glyph-count (table)
  "Total number of glyphs in the input sequence"
  (declare (type chained-class-sequence-rule table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2
                         (*
                          (chained-class-sequence-rule-backtrack-sequence-count
                           table)
                          2))))


(defun chained-class-sequence-rule-input-sequence-count (table)
  "Array of input sequence classes, beginning with the second glyph position"
  (max 0 (- (chained-class-sequence-rule-input-glyph-count table) 1)))


(defun chained-class-sequence-rule-input-sequence-ref (table index)
  "Array of input sequence classes, beginning with the second glyph position"
  (declare (type chained-class-sequence-rule table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 4
             (* (chained-class-sequence-rule-backtrack-sequence-count table)
                2))
          (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun chained-class-sequence-rule-lookahead-glyph-count (table)
  "Number of glyphs in the lookahead sequence"
  (declare (type chained-class-sequence-rule table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4
                         (*
                          (chained-class-sequence-rule-input-sequence-count
                           table)
                          2)
                         (*
                          (chained-class-sequence-rule-backtrack-sequence-count
                           table)
                          2))))


(defun chained-class-sequence-rule-lookahead-sequence-count (table)
  "Array of lookahead-sequence classes"
  (chained-class-sequence-rule-lookahead-glyph-count table))


(defun chained-class-sequence-rule-lookahead-sequence-ref (table index)
  "Array of lookahead-sequence classes"
  (declare (type chained-class-sequence-rule table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 6
             (* (chained-class-sequence-rule-input-sequence-count table) 2)
             (* (chained-class-sequence-rule-backtrack-sequence-count table)
                2))
          (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun chained-class-sequence-rule-seq-lookup-count (table)
  "Number of SequenceLookupRecords"
  (declare (type chained-class-sequence-rule table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6
                         (*
                          (chained-class-sequence-rule-lookahead-sequence-count
                           table)
                          2)
                         (*
                          (chained-class-sequence-rule-input-sequence-count
                           table)
                          2)
                         (*
                          (chained-class-sequence-rule-backtrack-sequence-count
                           table)
                          2))))


(defun chained-class-sequence-rule-seq-lookup-records-count (table)
  "Array of SequenceLookupRecords"
  (chained-class-sequence-rule-seq-lookup-count table))


(declaim
 (inline chained-class-sequence-rule-backtrack-glyph-count
  chained-class-sequence-rule-backtrack-sequence
  chained-class-sequence-rule-backtrack-sequence-count
  chained-class-sequence-rule-input-glyph-count
  chained-class-sequence-rule-input-sequence
  chained-class-sequence-rule-input-sequence-count
  chained-class-sequence-rule-lookahead-glyph-count
  chained-class-sequence-rule-lookahead-sequence
  chained-class-sequence-rule-lookahead-sequence-count
  chained-class-sequence-rule-seq-lookup-count
  chained-class-sequence-rule-seq-lookup-records
  chained-class-sequence-rule-seq-lookup-records-count))


(defun chained-class-sequence-rule-seq-lookup-records-ref (table index)
  "Array of SequenceLookupRecords"
  (declare (type chained-class-sequence-rule table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 8
             (* (chained-class-sequence-rule-lookahead-sequence-count table) 2)
             (* (chained-class-sequence-rule-input-sequence-count table) 2)
             (* (chained-class-sequence-rule-backtrack-sequence-count table)
                2))
          (* index 4))))
    (unless
        (<= (+ pos 4) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 4 :length
             (table-ref-length table)))
    (%make-sequence-lookup-record (table-ref-font-data table) pos)))


(defun sanitize-chained-class-sequence-rule (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  (let ((cnt
         (chained-class-sequence-rule-backtrack-glyph-count-raw font-data
          offset)))
    (unless
        (and (<= (+ 2 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 2 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 2 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-chained-class-sequence-rule
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-chained-class-sequence-rule font-data offset length)
  (%make-chained-class-sequence-rule font-data offset length))


(defstruct
    (chained-sequence-context-format3 (:include table-ref)
     (:constructor %make-chained-sequence-context-format3
      (%table-font-data %table-offset %table-length))))


(defun chained-sequence-context-format3-format-table (table)
  "Format identifier: format = 3"
  (declare (type chained-sequence-context-format3 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline chained-sequence-context-format3-format-table-raw))


(defun chained-sequence-context-format3-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun chained-sequence-context-format3-backtrack-glyph-count (table)
  "Number of glyphs in the backtrack sequence"
  (declare (type chained-sequence-context-format3 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline chained-sequence-context-format3-backtrack-glyph-count-raw))


(defun chained-sequence-context-format3-backtrack-glyph-count-raw
       (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun chained-sequence-context-format3-backtrack-coverage-offsets-count
       (table)
  "Array of offsets to coverage tables for the backtrack sequence"
  (chained-sequence-context-format3-backtrack-glyph-count table))


(defun chained-sequence-context-format3-backtrack-coverage-offsets-ref
       (table index)
  "Array of offsets to coverage tables for the backtrack sequence"
  (declare (type chained-sequence-context-format3 table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 4) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u16 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-coverage-table (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun chained-sequence-context-format3-input-glyph-count (table)
  "Number of glyphs in the input sequence"
  (declare (type chained-sequence-context-format3 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4
                         (*
                          (chained-sequence-context-format3-backtrack-coverage-offsets-count
                           table)
                          2))))


(defun chained-sequence-context-format3-input-coverage-offsets-count (table)
  "Array of offsets to coverage tables for the input sequence"
  (chained-sequence-context-format3-input-glyph-count table))


(defun chained-sequence-context-format3-input-coverage-offsets-ref
       (table index)
  "Array of offsets to coverage tables for the input sequence"
  (declare (type chained-sequence-context-format3 table)
           (type (unsigned-byte 32) index))
  (let* ((pos
          (+
           (+ (table-ref-offset table) 6
              (*
               (chained-sequence-context-format3-backtrack-coverage-offsets-count
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


(defun chained-sequence-context-format3-lookahead-glyph-count (table)
  "Number of glyphs in the lookahead sequence"
  (declare (type chained-sequence-context-format3 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6
                         (*
                          (chained-sequence-context-format3-input-coverage-offsets-count
                           table)
                          2)
                         (*
                          (chained-sequence-context-format3-backtrack-coverage-offsets-count
                           table)
                          2))))


(defun chained-sequence-context-format3-lookahead-coverage-offsets-count
       (table)
  "Array of offsets to coverage tables for the lookahead sequence"
  (chained-sequence-context-format3-lookahead-glyph-count table))


(defun chained-sequence-context-format3-lookahead-coverage-offsets-ref
       (table index)
  "Array of offsets to coverage tables for the lookahead sequence"
  (declare (type chained-sequence-context-format3 table)
           (type (unsigned-byte 32) index))
  (let* ((pos
          (+
           (+ (table-ref-offset table) 8
              (*
               (chained-sequence-context-format3-input-coverage-offsets-count
                table)
               2)
              (*
               (chained-sequence-context-format3-backtrack-coverage-offsets-count
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


(defun chained-sequence-context-format3-seq-lookup-count (table)
  "Number of SequenceLookupRecords"
  (declare (type chained-sequence-context-format3 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 8
                         (*
                          (chained-sequence-context-format3-lookahead-coverage-offsets-count
                           table)
                          2)
                         (*
                          (chained-sequence-context-format3-input-coverage-offsets-count
                           table)
                          2)
                         (*
                          (chained-sequence-context-format3-backtrack-coverage-offsets-count
                           table)
                          2))))


(defun chained-sequence-context-format3-seq-lookup-records-count (table)
  "Array of SequenceLookupRecords"
  (chained-sequence-context-format3-seq-lookup-count table))


(declaim
 (inline chained-sequence-context-format3-format-table
  chained-sequence-context-format3-backtrack-glyph-count
  chained-sequence-context-format3-backtrack-coverage-offsets
  chained-sequence-context-format3-backtrack-coverage-offsets-count
  chained-sequence-context-format3-input-glyph-count
  chained-sequence-context-format3-input-coverage-offsets
  chained-sequence-context-format3-input-coverage-offsets-count
  chained-sequence-context-format3-lookahead-glyph-count
  chained-sequence-context-format3-lookahead-coverage-offsets
  chained-sequence-context-format3-lookahead-coverage-offsets-count
  chained-sequence-context-format3-seq-lookup-count
  chained-sequence-context-format3-seq-lookup-records
  chained-sequence-context-format3-seq-lookup-records-count))


(defun chained-sequence-context-format3-seq-lookup-records-ref (table index)
  "Array of SequenceLookupRecords"
  (declare (type chained-sequence-context-format3 table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 10
             (*
              (chained-sequence-context-format3-lookahead-coverage-offsets-count
               table)
              2)
             (*
              (chained-sequence-context-format3-input-coverage-offsets-count
               table)
              2)
             (*
              (chained-sequence-context-format3-backtrack-coverage-offsets-count
               table)
              2))
          (* index 4))))
    (unless
        (<= (+ pos 4) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 4 :length
             (table-ref-length table)))
    (%make-sequence-lookup-record (table-ref-font-data table) pos)))


(defun sanitize-chained-sequence-context-format3 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 4 length) (font-data-valid-range-p font-data offset 4))
    (error 'font-out-of-bounds-error :pos offset :size 4 :length
           (font-data-length font-data)))
  (let ((cnt
         (chained-sequence-context-format3-backtrack-glyph-count-raw font-data
          offset)))
    (unless
        (and (<= (+ 4 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 4 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 4 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-chained-sequence-context-format3
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-chained-sequence-context-format3 font-data offset length)
  (%make-chained-sequence-context-format3 font-data offset length))


(defun read-chained-sequence-context
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (declare (ignorable length))
  (let ((fmt (font-data-read-u16 font-data (+ offset 0))))
    (case fmt
      (1 (read-chained-sequence-context-format1 font-data offset length))
      (2 (read-chained-sequence-context-format2 font-data offset length))
      (3 (read-chained-sequence-context-format3 font-data offset length))
      (4 (read-chained-sequence-context-format4 font-data offset length))
      (5 (read-chained-sequence-context-format5 font-data offset length))
      (otherwise
       (error 'unsupported-format-error :format fmt :table
              'chained-sequence-context)))))


(defstruct
    (device (:include table-ref)
     (:constructor %make-device
      (%table-font-data %table-offset %table-length))))


(defun device-start-size (table)
  "Smallest size to correct, in ppem"
  (declare (type device table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline device-start-size-raw))


(defun device-start-size-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun device-end-size (table)
  "Largest size to correct, in ppem"
  (declare (type device table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline device-end-size-raw))


(defun device-end-size-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun device-delta-format (table)
  "Format of deltaValue array data: 0x0001, 0x0002, or 0x0003"
  (declare (type device table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline device-delta-format-raw))


(defun device-delta-format-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun device-delta-value-count (table &optional count)
  "Array of compressed data"
  (or count
      (max 0
           (floor (- (table-ref-length table) (+ (table-ref-offset table) 6))
                  2))))


(declaim
 (inline device-start-size device-end-size device-delta-format
  device-delta-value device-delta-value-count))


(defun device-delta-value-ref (table index)
  "Array of compressed data"
  (declare (type device table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 6) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun sanitize-device (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 6 length) (font-data-valid-range-p font-data offset 6))
    (error 'font-out-of-bounds-error :pos offset :size 6 :length
           (font-data-length font-data)))
  t)


(defun read-device
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-device font-data offset length)
  (%make-device font-data offset length))


(defstruct
    (variation-index (:include table-ref)
     (:constructor %make-variation-index
      (%table-font-data %table-offset %table-length))))


(defun variation-index-delta-set-outer-index (table)
  "A delta-set outer index — used to select an item variation data subtable within the item variation store."
  (declare (type variation-index table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline variation-index-delta-set-outer-index-raw))


(defun variation-index-delta-set-outer-index-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun variation-index-delta-set-inner-index (table)
  "A delta-set inner index — used to select a delta-set row within an item variation data subtable."
  (declare (type variation-index table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline variation-index-delta-set-inner-index-raw))


(defun variation-index-delta-set-inner-index-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun variation-index-delta-format (table)
  "Format, = 0x8000"
  (declare (type variation-index table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline variation-index-delta-format-raw))


(declaim
 (inline variation-index-delta-set-outer-index
  variation-index-delta-set-inner-index variation-index-delta-format))


(defun variation-index-delta-format-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun sanitize-variation-index (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 6 length) (font-data-valid-range-p font-data offset 6))
    (error 'font-out-of-bounds-error :pos offset :size 6 :length
           (font-data-length font-data)))
  t)


(defun read-variation-index
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-variation-index font-data offset length)
  (%make-variation-index font-data offset length))


(defstruct
    (pending-variation-index (:include table-ref)
     (:constructor %make-pending-variation-index
      (%table-font-data %table-offset %table-length))))


(defun pending-variation-index-delta-set-id (table)
  "A unique identifier for a given set of deltas."
  (declare (type pending-variation-index table))
  (font-data-read-u32 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline pending-variation-index-delta-set-id-raw))


(declaim (inline pending-variation-index-delta-set-id))


(defun pending-variation-index-delta-set-id-raw (font-data offset)
  (font-data-read-u32 font-data offset))


(defun sanitize-pending-variation-index (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 4 length) (font-data-valid-range-p font-data offset 4))
    (error 'font-out-of-bounds-error :pos offset :size 4 :length
           (font-data-length font-data)))
  t)


(defun read-pending-variation-index
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-pending-variation-index font-data offset length)
  (%make-pending-variation-index font-data offset length))


(defun read-device-or-variation-index
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (declare (ignorable length))
  (let ((fmt (font-data-read-u16 font-data (+ offset 0))))
    (if (= fmt 32768)
        (read-variation-index font-data offset length)
        (read-device font-data offset length))))


(defstruct
    (feature-variations (:include table-ref)
     (:constructor %make-feature-variations
      (%table-font-data %table-offset %table-length))))


(defun feature-variations-version (table)
  (declare (type feature-variations table))
  (font-data-read-u32 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline feature-variations-version-raw))


(defun feature-variations-version-raw (font-data offset)
  (font-data-read-u32 font-data offset))


(defun feature-variations-feature-variation-record-count (table)
  "Number of feature variation records."
  (declare (type feature-variations table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline feature-variations-feature-variation-record-count-raw))


(defun feature-variations-feature-variation-record-count-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 4)))


(defun feature-variations-feature-variation-records-count (table)
  "Array of feature variation records."
  (feature-variations-feature-variation-record-count table))


(defun feature-variations-feature-variation-records-ref (table index)
  "Array of feature variation records."
  (declare (type feature-variations table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 8) (* index 8))))
    (unless
        (<= (+ pos 8) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 8 :length
             (table-ref-length table)))
    (%make-feature-variation-record (table-ref-font-data table) pos)))


(defun feature-variations-lookup-variation-record-count (table)
  "Number of lookup variation records."
  (declare (type feature-variations table))
  (when (>= (table-ref-length table) 12)
    (font-data-read-u32 (table-ref-font-data table)
                        (+ (table-ref-offset table) 8
                           (*
                            (feature-variations-feature-variation-records-count
                             table)
                            8)))))


(defun feature-variations-lookup-variation-records-count (table)
  "Lookup variations, sorted by feature index."
  (feature-variations-lookup-variation-record-count table))


(declaim
 (inline feature-variations-version
  feature-variations-feature-variation-record-count
  feature-variations-feature-variation-records
  feature-variations-feature-variation-records-count
  feature-variations-lookup-variation-record-count
  feature-variations-lookup-variation-records
  feature-variations-lookup-variation-records-count))


(defun feature-variations-lookup-variation-records-ref (table index)
  "Lookup variations, sorted by feature index."
  (declare (type feature-variations table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 12
             (* (feature-variations-feature-variation-records-count table) 8))
          (* index 6))))
    (unless
        (<= (+ pos 6) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 6 :length
             (table-ref-length table)))
    (%make-lookup-variation-record (table-ref-font-data table) pos)))


(defun sanitize-feature-variations (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 8 length) (font-data-valid-range-p font-data offset 8))
    (error 'font-out-of-bounds-error :pos offset :size 8 :length
           (font-data-length font-data)))
  (let ((cnt
         (feature-variations-feature-variation-record-count-raw font-data
          offset)))
    (unless
        (and (<= (+ 8 (* cnt 8)) length)
             (font-data-valid-range-p font-data offset (+ 8 (* cnt 8))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 8 (* cnt 8))
             :length (font-data-length font-data))))
  t)


(defun read-feature-variations
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-feature-variations font-data offset length)
  (%make-feature-variations font-data offset length))


(defstruct
    (feature-lookups (:include table-ref)
     (:constructor %make-feature-lookups
      (%table-font-data %table-offset %table-length))))


(defun feature-lookups-version (table)
  (declare (type feature-lookups table))
  (font-data-read-u32 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline feature-lookups-version-raw))


(defun feature-lookups-version-raw (font-data offset)
  (font-data-read-u32 font-data offset))


(defun feature-lookups-flags (table)
  (declare (type feature-lookups table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline feature-lookups-flags-raw))


(defun feature-lookups-flags-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun feature-lookups-lookup-condition-count (table)
  (declare (type feature-lookups table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6)))


(declaim (inline feature-lookups-lookup-condition-count-raw))


(defun feature-lookups-lookup-condition-count-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 6)))


(defun feature-lookups-lookup-condition-records-count (table)
  (feature-lookups-lookup-condition-count table))


(declaim
 (inline feature-lookups-version feature-lookups-flags
  feature-lookups-lookup-condition-count
  feature-lookups-lookup-condition-records
  feature-lookups-lookup-condition-records-count))


(defun feature-lookups-lookup-condition-records-ref (table index)
  (declare (type feature-lookups table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 10) (* index 8))))
    (unless
        (<= (+ pos 8) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 8 :length
             (table-ref-length table)))
    (%make-lookup-condition-record (table-ref-font-data table) pos)))


(defun sanitize-feature-lookups (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 10 length) (font-data-valid-range-p font-data offset 10))
    (error 'font-out-of-bounds-error :pos offset :size 10 :length
           (font-data-length font-data)))
  (let ((cnt (feature-lookups-lookup-condition-count-raw font-data offset)))
    (unless
        (and (<= (+ 10 (* cnt 8)) length)
             (font-data-valid-range-p font-data offset (+ 10 (* cnt 8))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 10 (* cnt 8))
             :length (font-data-length font-data))))
  t)


(defun read-feature-lookups
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-feature-lookups font-data offset length)
  (%make-feature-lookups font-data offset length))


(defstruct
    (lookup-index-list (:include table-ref)
     (:constructor %make-lookup-index-list
      (%table-font-data %table-offset %table-length))))


(defun lookup-index-list-lookup-index-count (table)
  (declare (type lookup-index-list table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline lookup-index-list-lookup-index-count-raw))


(defun lookup-index-list-lookup-index-count-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun lookup-index-list-lookup-indices-count (table)
  (lookup-index-list-lookup-index-count table))


(declaim
 (inline lookup-index-list-lookup-index-count lookup-index-list-lookup-indices
  lookup-index-list-lookup-indices-count))


(defun lookup-index-list-lookup-indices-ref (table index)
  (declare (type lookup-index-list table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 2) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun sanitize-lookup-index-list (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  (let ((cnt (lookup-index-list-lookup-index-count-raw font-data offset)))
    (unless
        (and (<= (+ 2 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 2 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 2 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-lookup-index-list
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-lookup-index-list font-data offset length)
  (%make-lookup-index-list font-data offset length))


(defstruct
    (condition-set (:include table-ref)
     (:constructor %make-condition-set
      (%table-font-data %table-offset %table-length))))


(defun condition-set-condition-count (table)
  "Number of conditions for this condition set."
  (declare (type condition-set table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline condition-set-condition-count-raw))


(defun condition-set-condition-count-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun condition-set-condition-offsets-count (table)
  "Array of offsets to condition tables, from beginning of the ConditionSet table."
  (condition-set-condition-count table))


(declaim
 (inline condition-set-condition-count condition-set-condition-offsets
  condition-set-condition-offsets-count))


(defun condition-set-condition-offsets-ref (table index)
  "Array of offsets to condition tables, from beginning of the ConditionSet table."
  (declare (type condition-set table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 2) (* index 4))))
    (unless
        (<= (+ pos 4) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 4 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u32 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-condition (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-condition-set (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  (let ((cnt (condition-set-condition-count-raw font-data offset)))
    (unless
        (and (<= (+ 2 (* cnt 4)) length)
             (font-data-valid-range-p font-data offset (+ 2 (* cnt 4))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 2 (* cnt 4))
             :length (font-data-length font-data))))
  t)


(defun read-condition-set
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-condition-set font-data offset length)
  (%make-condition-set font-data offset length))


(defun read-condition
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (declare (ignorable length))
  (let ((fmt (font-data-read-u16 font-data (+ offset 0))))
    (case fmt
      (1 (read-condition-format1 font-data offset length))
      (2 (read-condition-format2 font-data offset length))
      (3 (read-condition-format3 font-data offset length))
      (4 (read-condition-format4 font-data offset length))
      (5 (read-condition-format5 font-data offset length))
      (otherwise
       (error 'unsupported-format-error :format fmt :table 'condition)))))


(defstruct
    (condition-format1 (:include table-ref)
     (:constructor %make-condition-format1
      (%table-font-data %table-offset %table-length))))


(defun condition-format1-format-table (table)
  "Format, = 1"
  (declare (type condition-format1 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline condition-format1-format-table-raw))


(defun condition-format1-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun condition-format1-axis-index (table)
  "Index (zero-based) for the variation axis within the 'fvar' table."
  (declare (type condition-format1 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline condition-format1-axis-index-raw))


(defun condition-format1-axis-index-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun condition-format1-filter-range-min-value (table)
  "Minimum value of the font variation instances that satisfy this condition."
  (declare (type condition-format1 table))
  (font-data-read-f2dot14 (table-ref-font-data table)
                          (+ (table-ref-offset table) 4)))


(declaim (inline condition-format1-filter-range-min-value-raw))


(defun condition-format1-filter-range-min-value-raw (font-data offset)
  (font-data-read-f2dot14 font-data (+ offset 4)))


(defun condition-format1-filter-range-max-value (table)
  "Maximum value of the font variation instances that satisfy this condition."
  (declare (type condition-format1 table))
  (font-data-read-f2dot14 (table-ref-font-data table)
                          (+ (table-ref-offset table) 6)))


(declaim (inline condition-format1-filter-range-max-value-raw))


(declaim
 (inline condition-format1-format-table condition-format1-axis-index
  condition-format1-filter-range-min-value
  condition-format1-filter-range-max-value))


(defun condition-format1-filter-range-max-value-raw (font-data offset)
  (font-data-read-f2dot14 font-data (+ offset 6)))


(defun sanitize-condition-format1 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 8 length) (font-data-valid-range-p font-data offset 8))
    (error 'font-out-of-bounds-error :pos offset :size 8 :length
           (font-data-length font-data)))
  t)


(defun read-condition-format1
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-condition-format1 font-data offset length)
  (%make-condition-format1 font-data offset length))


(defstruct
    (condition-format2 (:include table-ref)
     (:constructor %make-condition-format2
      (%table-font-data %table-offset %table-length))))


(defun condition-format2-format-table (table)
  "Format, = 2"
  (declare (type condition-format2 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline condition-format2-format-table-raw))


(defun condition-format2-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun condition-format2-default-value (table)
  "Value at default instance."
  (declare (type condition-format2 table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline condition-format2-default-value-raw))


(defun condition-format2-default-value-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 2)))


(defun condition-format2-var-index (table)
  "Variation index to vary the value based on current designspace location."
  (declare (type condition-format2 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline condition-format2-var-index-raw))


(declaim
 (inline condition-format2-format-table condition-format2-default-value
  condition-format2-var-index))


(defun condition-format2-var-index-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 4)))


(defun sanitize-condition-format2 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 8 length) (font-data-valid-range-p font-data offset 8))
    (error 'font-out-of-bounds-error :pos offset :size 8 :length
           (font-data-length font-data)))
  t)


(defun read-condition-format2
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-condition-format2 font-data offset length)
  (%make-condition-format2 font-data offset length))


(defstruct
    (condition-format3 (:include table-ref)
     (:constructor %make-condition-format3
      (%table-font-data %table-offset %table-length))))


(defun condition-format3-format-table (table)
  "Format, = 3"
  (declare (type condition-format3 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline condition-format3-format-table-raw))


(defun condition-format3-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun condition-format3-condition-count (table)
  "Number of conditions."
  (declare (type condition-format3 table))
  (font-data-read-u8 (table-ref-font-data table)
                     (+ (table-ref-offset table) 2)))


(declaim (inline condition-format3-condition-count-raw))


(defun condition-format3-condition-count-raw (font-data offset)
  (font-data-read-u8 font-data (+ offset 2)))


(defun condition-format3-condition-offsets-count (table)
  "Array of condition tables for this conjunction (AND) expression."
  (condition-format3-condition-count table))


(declaim
 (inline condition-format3-format-table condition-format3-condition-count
  condition-format3-condition-offsets
  condition-format3-condition-offsets-count))


(defun condition-format3-condition-offsets-ref (table index)
  "Array of condition tables for this conjunction (AND) expression."
  (declare (type condition-format3 table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 3) (* index 3))))
    (unless
        (<= (+ pos 3) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 3 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u24 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-condition (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-condition-format3 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 3 length) (font-data-valid-range-p font-data offset 3))
    (error 'font-out-of-bounds-error :pos offset :size 3 :length
           (font-data-length font-data)))
  (let ((cnt (condition-format3-condition-count-raw font-data offset)))
    (unless
        (and (<= (+ 3 (* cnt 3)) length)
             (font-data-valid-range-p font-data offset (+ 3 (* cnt 3))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 3 (* cnt 3))
             :length (font-data-length font-data))))
  t)


(defun read-condition-format3
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-condition-format3 font-data offset length)
  (%make-condition-format3 font-data offset length))


(defstruct
    (condition-format4 (:include table-ref)
     (:constructor %make-condition-format4
      (%table-font-data %table-offset %table-length))))


(defun condition-format4-format-table (table)
  "Format, = 4"
  (declare (type condition-format4 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline condition-format4-format-table-raw))


(defun condition-format4-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun condition-format4-condition-count (table)
  "Number of conditions."
  (declare (type condition-format4 table))
  (font-data-read-u8 (table-ref-font-data table)
                     (+ (table-ref-offset table) 2)))


(declaim (inline condition-format4-condition-count-raw))


(defun condition-format4-condition-count-raw (font-data offset)
  (font-data-read-u8 font-data (+ offset 2)))


(defun condition-format4-condition-offsets-count (table)
  "Array of condition tables for this disjunction (OR) expression."
  (condition-format4-condition-count table))


(declaim
 (inline condition-format4-format-table condition-format4-condition-count
  condition-format4-condition-offsets
  condition-format4-condition-offsets-count))


(defun condition-format4-condition-offsets-ref (table index)
  "Array of condition tables for this disjunction (OR) expression."
  (declare (type condition-format4 table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 3) (* index 3))))
    (unless
        (<= (+ pos 3) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 3 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u24 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-condition (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-condition-format4 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 3 length) (font-data-valid-range-p font-data offset 3))
    (error 'font-out-of-bounds-error :pos offset :size 3 :length
           (font-data-length font-data)))
  (let ((cnt (condition-format4-condition-count-raw font-data offset)))
    (unless
        (and (<= (+ 3 (* cnt 3)) length)
             (font-data-valid-range-p font-data offset (+ 3 (* cnt 3))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 3 (* cnt 3))
             :length (font-data-length font-data))))
  t)


(defun read-condition-format4
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-condition-format4 font-data offset length)
  (%make-condition-format4 font-data offset length))


(defstruct
    (condition-format5 (:include table-ref)
     (:constructor %make-condition-format5
      (%table-font-data %table-offset %table-length))))


(defun condition-format5-format-table (table)
  "Format, = 5"
  (declare (type condition-format5 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline condition-format5-format-table-raw))


(defun condition-format5-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun condition-format5-condition-offset-offset (table)
  "Condition to negate."
  (declare (type condition-format5 table))
  (font-data-read-u24 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim
 (inline condition-format5-format-table condition-format5-condition-offset
  condition-format5-condition-offset-offset))


(defun condition-format5-condition-offset (table)
  "Condition to negate."
  (declare (type condition-format5 table))
  (let ((off (condition-format5-condition-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-condition (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun sanitize-condition-format5 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 5 length) (font-data-valid-range-p font-data offset 5))
    (error 'font-out-of-bounds-error :pos offset :size 5 :length
           (font-data-length font-data)))
  t)


(defun read-condition-format5
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-condition-format5 font-data offset length)
  (%make-condition-format5 font-data offset length))


(defstruct
    (feature-table-substitution (:include table-ref)
     (:constructor %make-feature-table-substitution
      (%table-font-data %table-offset %table-length))))


(defun feature-table-substitution-version (table)
  "Major & minor version of the table: (1, 0)"
  (declare (type feature-table-substitution table))
  (font-data-read-u32 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline feature-table-substitution-version-raw))


(defun feature-table-substitution-version-raw (font-data offset)
  (font-data-read-u32 font-data offset))


(defun feature-table-substitution-substitution-count (table)
  "Number of feature table substitution records."
  (declare (type feature-table-substitution table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline feature-table-substitution-substitution-count-raw))


(defun feature-table-substitution-substitution-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun feature-table-substitution-substitutions-count (table)
  "Array of feature table substitution records."
  (feature-table-substitution-substitution-count table))


(declaim
 (inline feature-table-substitution-version
  feature-table-substitution-substitution-count
  feature-table-substitution-substitutions
  feature-table-substitution-substitutions-count))


(defun feature-table-substitution-substitutions-ref (table index)
  "Array of feature table substitution records."
  (declare (type feature-table-substitution table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 6) (* index 6))))
    (unless
        (<= (+ pos 6) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 6 :length
             (table-ref-length table)))
    (%make-feature-table-substitution-record (table-ref-font-data table) pos)))


(defun sanitize-feature-table-substitution (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 6 length) (font-data-valid-range-p font-data offset 6))
    (error 'font-out-of-bounds-error :pos offset :size 6 :length
           (font-data-length font-data)))
  (let ((cnt
         (feature-table-substitution-substitution-count-raw font-data offset)))
    (unless
        (and (<= (+ 6 (* cnt 6)) length)
             (font-data-valid-range-p font-data offset (+ 6 (* cnt 6))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 6 (* cnt 6))
             :length (font-data-length font-data))))
  t)


(defun read-feature-table-substitution
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-feature-table-substitution font-data offset length)
  (%make-feature-table-substitution font-data offset length))


(defstruct
    (size-params (:include table-ref)
     (:constructor %make-size-params
      (%table-font-data %table-offset %table-length))))


(defun size-params-design-size (table)
  "The first value represents the design size in 720/inch units (decipoints).  The design size entry must be non-zero. When there is a design size but no recommended size range, the rest of the array will consist of zeros."
  (declare (type size-params table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline size-params-design-size-raw))


(defun size-params-design-size-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun size-params-identifier (table)
  "The second value has no independent meaning, but serves as an identifier that associates fonts in a subfamily.  All fonts which share a Typographic or Font Family name and which differ only by size range shall have the same subfamily value, and no fonts which differ in weight or style shall have the same subfamily value. If this value is zero, the remaining fields in the array will be ignored."
  (declare (type size-params table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline size-params-identifier-raw))


(defun size-params-identifier-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun size-params-name-entry (table)
  "The third value enables applications to use a single name for the subfamily identified by the second value.  If the preceding value is non-zero, this value must be set in the range 256 – 32767 (inclusive). It records the value of a field in the 'name' table, which must contain English-language strings encoded in Windows Unicode and Macintosh Roman, and may contain additional strings localized to other scripts and languages. Each of these strings is the name an application should use, in combination with the family name, to represent the subfamily in a menu. Applications will choose the appropriate version based on their selection criteria."
  (declare (type size-params table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline size-params-name-entry-raw))


(defun size-params-name-entry-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun size-params-range-start (table)
  "The fourth and fifth values represent the small end of the recommended usage range (exclusive) and the large end of the recommended usage range (inclusive), stored in 720/inch units (decipoints).  Ranges must not overlap, and should generally be contiguous."
  (declare (type size-params table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6)))


(declaim (inline size-params-range-start-raw))


(defun size-params-range-start-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 6)))


(defun size-params-range-end (table)
  (declare (type size-params table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 8)))


(declaim (inline size-params-range-end-raw))


(declaim
 (inline size-params-design-size size-params-identifier size-params-name-entry
  size-params-range-start size-params-range-end))


(defun size-params-range-end-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 8)))


(defun sanitize-size-params (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 10 length) (font-data-valid-range-p font-data offset 10))
    (error 'font-out-of-bounds-error :pos offset :size 10 :length
           (font-data-length font-data)))
  t)


(defun read-size-params
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-size-params font-data offset length)
  (%make-size-params font-data offset length))


(defstruct
    (stylistic-set-params (:include table-ref)
     (:constructor %make-stylistic-set-params
      (%table-font-data %table-offset %table-length))))


(defun stylistic-set-params-version (table)
  (declare (type stylistic-set-params table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline stylistic-set-params-version-raw))


(defun stylistic-set-params-version-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun stylistic-set-params-ui-name-id (table)
  "The 'name' table name ID that specifies a string (or strings, for multiple languages) for a user-interface label for this feature.  The value of uiLabelNameId is expected to be in the font-specific name ID range (256-32767), though that is not a requirement in this Feature Parameters specification. The user-interface label for the feature can be provided in multiple languages. An English string should be included as a fallback. The string should be kept to a minimal length to fit comfortably with different application interfaces."
  (declare (type stylistic-set-params table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline stylistic-set-params-ui-name-id-raw))


(declaim (inline stylistic-set-params-version stylistic-set-params-ui-name-id))


(defun stylistic-set-params-ui-name-id-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun sanitize-stylistic-set-params (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 4 length) (font-data-valid-range-p font-data offset 4))
    (error 'font-out-of-bounds-error :pos offset :size 4 :length
           (font-data-length font-data)))
  t)


(defun read-stylistic-set-params
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-stylistic-set-params font-data offset length)
  (%make-stylistic-set-params font-data offset length))


(defstruct
    (character-variant-params (:include table-ref)
     (:constructor %make-character-variant-params
      (%table-font-data %table-offset %table-length))))


(defun character-variant-params-format-table (table)
  "Format number is set to 0."
  (declare (type character-variant-params table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline character-variant-params-format-table-raw))


(defun character-variant-params-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun character-variant-params-feat-ui-label-name-id (table)
  "The 'name' table name ID that specifies a string (or strings, for multiple languages) for a user-interface label for this feature. (May be NULL.)"
  (declare (type character-variant-params table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline character-variant-params-feat-ui-label-name-id-raw))


(defun character-variant-params-feat-ui-label-name-id-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun character-variant-params-feat-ui-tooltip-text-name-id (table)
  "The 'name' table name ID that specifies a string (or strings, for multiple languages) that an application can use for tooltip text for this feature. (May be NULL.)"
  (declare (type character-variant-params table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline character-variant-params-feat-ui-tooltip-text-name-id-raw))


(defun character-variant-params-feat-ui-tooltip-text-name-id-raw
       (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun character-variant-params-sample-text-name-id (table)
  "The 'name' table name ID that specifies sample text that illustrates the effect of this feature. (May be NULL.)"
  (declare (type character-variant-params table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6)))


(declaim (inline character-variant-params-sample-text-name-id-raw))


(defun character-variant-params-sample-text-name-id-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 6)))


(defun character-variant-params-num-named-parameters (table)
  "Number of named parameters. (May be zero.)"
  (declare (type character-variant-params table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 8)))


(declaim (inline character-variant-params-num-named-parameters-raw))


(defun character-variant-params-num-named-parameters-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 8)))


(defun character-variant-params-first-param-ui-label-name-id (table)
  "The first 'name' table name ID used to specify strings for user-interface labels for the feature parameters. (Must be zero if numParameters is zero.)"
  (declare (type character-variant-params table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 10)))


(declaim (inline character-variant-params-first-param-ui-label-name-id-raw))


(defun character-variant-params-first-param-ui-label-name-id-raw
       (font-data offset)
  (font-data-read-u16 font-data (+ offset 10)))


(defun character-variant-params-char-count (table)
  "The count of characters for which this feature provides glyph variants. (May be zero.)"
  (declare (type character-variant-params table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 12)))


(declaim (inline character-variant-params-char-count-raw))


(defun character-variant-params-char-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 12)))


(declaim
 (inline character-variant-params-format-table
  character-variant-params-feat-ui-label-name-id
  character-variant-params-feat-ui-tooltip-text-name-id
  character-variant-params-sample-text-name-id
  character-variant-params-num-named-parameters
  character-variant-params-first-param-ui-label-name-id
  character-variant-params-char-count character-variant-params-character-table
  character-variant-params-character-table-count))


(defun character-variant-params-character-table-count (table)
  "The Unicode Scalar Value of the characters for which this feature provides glyph variants."
  (character-variant-params-char-count table))


(defun sanitize-character-variant-params (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 14 length) (font-data-valid-range-p font-data offset 14))
    (error 'font-out-of-bounds-error :pos offset :size 14 :length
           (font-data-length font-data)))
  t)


(defun read-character-variant-params
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-character-variant-params font-data offset length)
  (%make-character-variant-params font-data offset length))


(defstruct
    (coverage-format3 (:include table-ref)
     (:constructor %make-coverage-format3
      (%table-font-data %table-offset %table-length))))


(defun coverage-format3-coverage-format (table)
  "Format identifier — format = 3"
  (declare (type coverage-format3 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline coverage-format3-coverage-format-raw))


(defun coverage-format3-coverage-format-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun coverage-format3-glyph-array-count (table)
  "Array of glyph IDs — in numerical order"
  (coverage-format3-glyph-count table))


(declaim
 (inline coverage-format3-coverage-format coverage-format3-glyph-count
  coverage-format3-glyph-array coverage-format3-glyph-array-count))


(defun coverage-format3-glyph-array-ref (table index)
  "Array of glyph IDs — in numerical order"
  (declare (type coverage-format3 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 2) (* index 3))))
    (unless
        (<= (+ pos 3) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 3 :length
             (table-ref-length table)))
    (font-data-read-u24 (table-ref-font-data table) pos)))


(defun sanitize-coverage-format3 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  (let ((cnt (coverage-format3-glyph-count-raw font-data offset)))
    (unless
        (and (<= (+ 2 (* cnt 3)) length)
             (font-data-valid-range-p font-data offset (+ 2 (* cnt 3))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 2 (* cnt 3))
             :length (font-data-length font-data))))
  t)


(defun read-coverage-format3
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-coverage-format3 font-data offset length)
  (%make-coverage-format3 font-data offset length))


(defstruct
    (coverage-format4 (:include table-ref)
     (:constructor %make-coverage-format4
      (%table-font-data %table-offset %table-length))))


(defun coverage-format4-coverage-format (table)
  "Format identifier — format = 4"
  (declare (type coverage-format4 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline coverage-format4-coverage-format-raw))


(defun coverage-format4-coverage-format-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(declaim
 (inline coverage-format4-coverage-format coverage-format4-range-count
  coverage-format4-range-records coverage-format4-range-records-count))


(defun coverage-format4-range-records-count (table)
  "Array of glyph ranges — ordered by startGlyphID."
  (coverage-format4-range-count table))


(defun sanitize-coverage-format4 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  t)


(defun read-coverage-format4
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-coverage-format4 font-data offset length)
  (%make-coverage-format4 font-data offset length))


(defstruct
    (class-def-format3 (:include table-ref)
     (:constructor %make-class-def-format3
      (%table-font-data %table-offset %table-length))))


(defun class-def-format3-class-format (table)
  "Format identifier — format = 3"
  (declare (type class-def-format3 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline class-def-format3-class-format-raw))


(defun class-def-format3-class-format-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun class-def-format3-start-glyph-id (table)
  "First glyph ID of the classValueArray"
  (declare (type class-def-format3 table))
  (font-data-read-u24 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline class-def-format3-start-glyph-id-raw))


(defun class-def-format3-start-glyph-id-raw (font-data offset)
  (font-data-read-u24 font-data (+ offset 2)))


(declaim
 (inline class-def-format3-class-format class-def-format3-start-glyph-id
  class-def-format3-glyph-count class-def-format3-class-value-array
  class-def-format3-class-value-array-count))


(defun class-def-format3-class-value-array-count (table)
  "Array of Class Values — one per glyph ID"
  (class-def-format3-glyph-count table))


(defun sanitize-class-def-format3 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 5 length) (font-data-valid-range-p font-data offset 5))
    (error 'font-out-of-bounds-error :pos offset :size 5 :length
           (font-data-length font-data)))
  t)


(defun read-class-def-format3
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-class-def-format3 font-data offset length)
  (%make-class-def-format3 font-data offset length))


(defstruct
    (class-def-format4 (:include table-ref)
     (:constructor %make-class-def-format4
      (%table-font-data %table-offset %table-length))))


(defun class-def-format4-class-format (table)
  "Format identifier — format = 4"
  (declare (type class-def-format4 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline class-def-format4-class-format-raw))


(defun class-def-format4-class-format-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun class-def-format4-class-range-records-count (table)
  "Array of ClassRangeRecords — ordered by startGlyphID"
  (class-def-format4-class-range-count table))


(declaim
 (inline class-def-format4-class-format class-def-format4-class-range-count
  class-def-format4-class-range-records
  class-def-format4-class-range-records-count))


(defun class-def-format4-class-range-records-ref (table index)
  "Array of ClassRangeRecords — ordered by startGlyphID"
  (declare (type class-def-format4 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 2) (* index 8))))
    (unless
        (<= (+ pos 8) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 8 :length
             (table-ref-length table)))
    (%make-class-range-record2 (table-ref-font-data table) pos)))


(defun sanitize-class-def-format4 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  (let ((cnt (class-def-format4-class-range-count-raw font-data offset)))
    (unless
        (and (<= (+ 2 (* cnt 8)) length)
             (font-data-valid-range-p font-data offset (+ 2 (* cnt 8))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 2 (* cnt 8))
             :length (font-data-length font-data))))
  t)


(defun read-class-def-format4
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-class-def-format4 font-data offset length)
  (%make-class-def-format4 font-data offset length))


(defstruct
    (sequence-context-format4 (:include table-ref)
     (:constructor %make-sequence-context-format4
      (%table-font-data %table-offset %table-length))))


(defun sequence-context-format4-format-table (table)
  "Format identifier: format = 4"
  (declare (type sequence-context-format4 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline sequence-context-format4-format-table-raw))


(defun sequence-context-format4-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun sequence-context-format4-coverage-offset-offset (table)
  "Offset to Coverage table, from beginning of SequenceContextFormat4 table"
  (declare (type sequence-context-format4 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun sequence-context-format4-coverage-offset (table)
  "Offset to Coverage table, from beginning of SequenceContextFormat4 table"
  (declare (type sequence-context-format4 table))
  (let ((off (sequence-context-format4-coverage-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-coverage-table (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun sequence-context-format4-seq-rule-set-offsets-count (table)
  "Array of offsets to SequenceRuleSet tables, from beginning of SequenceContextFormat4 table (offsets may be NULL)"
  (sequence-context-format4-seq-rule-set-count table))


(declaim
 (inline sequence-context-format4-format-table
  sequence-context-format4-coverage-offset
  sequence-context-format4-coverage-offset-offset
  sequence-context-format4-seq-rule-set-count
  sequence-context-format4-seq-rule-set-offsets
  sequence-context-format4-seq-rule-set-offsets-count))


(defun sequence-context-format4-seq-rule-set-offsets-ref (table index)
  "Array of offsets to SequenceRuleSet tables, from beginning of SequenceContextFormat4 table (offsets may be NULL)"
  (declare (type sequence-context-format4 table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 6) (* index 3))))
    (unless
        (<= (+ pos 3) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 3 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u24 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-sequence-rule-set2 (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-sequence-context-format4 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 6 length) (font-data-valid-range-p font-data offset 6))
    (error 'font-out-of-bounds-error :pos offset :size 6 :length
           (font-data-length font-data)))
  (let ((cnt
         (sequence-context-format4-seq-rule-set-count-raw font-data offset)))
    (unless
        (and (<= (+ 6 (* cnt 3)) length)
             (font-data-valid-range-p font-data offset (+ 6 (* cnt 3))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 6 (* cnt 3))
             :length (font-data-length font-data))))
  t)


(defun read-sequence-context-format4
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-sequence-context-format4 font-data offset length)
  (%make-sequence-context-format4 font-data offset length))


(defstruct
    (sequence-rule-set2 (:include table-ref)
     (:constructor %make-sequence-rule-set2
      (%table-font-data %table-offset %table-length))))


(defun sequence-rule-set2-seq-rule-count (table)
  "Number of SequenceRule tables"
  (declare (type sequence-rule-set2 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline sequence-rule-set2-seq-rule-count-raw))


(defun sequence-rule-set2-seq-rule-count-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun sequence-rule-set2-seq-rule-offsets-count (table)
  "Array of offsets to SequenceRule tables, from beginning of the SequenceRuleSet2 table"
  (sequence-rule-set2-seq-rule-count table))


(declaim
 (inline sequence-rule-set2-seq-rule-count sequence-rule-set2-seq-rule-offsets
  sequence-rule-set2-seq-rule-offsets-count))


(defun sequence-rule-set2-seq-rule-offsets-ref (table index)
  "Array of offsets to SequenceRule tables, from beginning of the SequenceRuleSet2 table"
  (declare (type sequence-rule-set2 table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 2) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u16 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-sequence-rule2 (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-sequence-rule-set2 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  (let ((cnt (sequence-rule-set2-seq-rule-count-raw font-data offset)))
    (unless
        (and (<= (+ 2 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 2 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 2 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-sequence-rule-set2
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-sequence-rule-set2 font-data offset length)
  (%make-sequence-rule-set2 font-data offset length))


(defstruct
    (sequence-rule2 (:include table-ref)
     (:constructor %make-sequence-rule2
      (%table-font-data %table-offset %table-length))))


(defun sequence-rule2-glyph-count (table)
  "Number of glyphs in the input glyph sequence"
  (declare (type sequence-rule2 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline sequence-rule2-glyph-count-raw))


(defun sequence-rule2-glyph-count-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun sequence-rule2-seq-lookup-count (table)
  "Number of SequenceLookupRecords"
  (declare (type sequence-rule2 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline sequence-rule2-seq-lookup-count-raw))


(defun sequence-rule2-seq-lookup-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun sequence-rule2-input-sequence-count (table)
  "Array of input glyph IDs—starting with the second glyph"
  (max 0 (- (sequence-rule2-glyph-count table) 1)))


(defun sequence-rule2-input-sequence-ref (table index)
  "Array of input glyph IDs—starting with the second glyph"
  (declare (type sequence-rule2 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 4) (* index 3))))
    (unless
        (<= (+ pos 3) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 3 :length
             (table-ref-length table)))
    (font-data-read-u24 (table-ref-font-data table) pos)))


(defun sequence-rule2-seq-lookup-records-count (table)
  "Array of Sequence lookup records"
  (sequence-rule2-seq-lookup-count table))


(declaim
 (inline sequence-rule2-glyph-count sequence-rule2-seq-lookup-count
  sequence-rule2-input-sequence sequence-rule2-input-sequence-count
  sequence-rule2-seq-lookup-records sequence-rule2-seq-lookup-records-count))


(defun sequence-rule2-seq-lookup-records-ref (table index)
  "Array of Sequence lookup records"
  (declare (type sequence-rule2 table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 4
             (* (sequence-rule2-input-sequence-count table) 3))
          (* index 4))))
    (unless
        (<= (+ pos 4) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 4 :length
             (table-ref-length table)))
    (%make-sequence-lookup-record (table-ref-font-data table) pos)))


(defun sanitize-sequence-rule2 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 4 length) (font-data-valid-range-p font-data offset 4))
    (error 'font-out-of-bounds-error :pos offset :size 4 :length
           (font-data-length font-data)))
  t)


(defun read-sequence-rule2
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-sequence-rule2 font-data offset length)
  (%make-sequence-rule2 font-data offset length))


(defstruct
    (sequence-context-format5 (:include table-ref)
     (:constructor %make-sequence-context-format5
      (%table-font-data %table-offset %table-length))))


(defun sequence-context-format5-format-table (table)
  "Format identifier: format = 5"
  (declare (type sequence-context-format5 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline sequence-context-format5-format-table-raw))


(defun sequence-context-format5-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun sequence-context-format5-coverage-offset-offset (table)
  "Offset to Coverage table, from beginning of SequenceContextFormat5 table"
  (declare (type sequence-context-format5 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun sequence-context-format5-coverage-offset (table)
  "Offset to Coverage table, from beginning of SequenceContextFormat5 table"
  (declare (type sequence-context-format5 table))
  (let ((off (sequence-context-format5-coverage-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-coverage-table (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun sequence-context-format5-class-def-offset-offset (table)
  "Offset to ClassDef table, from beginning of SequenceContextFormat5 table"
  (declare (type sequence-context-format5 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6)))


(defun sequence-context-format5-class-def-offset (table)
  "Offset to ClassDef table, from beginning of SequenceContextFormat5 table"
  (declare (type sequence-context-format5 table))
  (let ((off (sequence-context-format5-class-def-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-class-def (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun sequence-context-format5-class-seq-rule-set-offsets-count (table)
  "Array of offsets to ClassSequenceRuleSet tables, from beginning of SequenceContextFormat5 table (may be NULL)"
  (sequence-context-format5-class-seq-rule-set-count table))


(declaim
 (inline sequence-context-format5-format-table
  sequence-context-format5-coverage-offset
  sequence-context-format5-coverage-offset-offset
  sequence-context-format5-class-def-offset
  sequence-context-format5-class-def-offset-offset
  sequence-context-format5-class-seq-rule-set-count
  sequence-context-format5-class-seq-rule-set-offsets
  sequence-context-format5-class-seq-rule-set-offsets-count))


(defun sequence-context-format5-class-seq-rule-set-offsets-ref (table index)
  "Array of offsets to ClassSequenceRuleSet tables, from beginning of SequenceContextFormat5 table (may be NULL)"
  (declare (type sequence-context-format5 table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 10) (* index 3))))
    (unless
        (<= (+ pos 3) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 3 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u24 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-class-sequence-rule-set2 (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-sequence-context-format5 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 10 length) (font-data-valid-range-p font-data offset 10))
    (error 'font-out-of-bounds-error :pos offset :size 10 :length
           (font-data-length font-data)))
  (let ((cnt
         (sequence-context-format5-class-seq-rule-set-count-raw font-data
          offset)))
    (unless
        (and (<= (+ 10 (* cnt 3)) length)
             (font-data-valid-range-p font-data offset (+ 10 (* cnt 3))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 10 (* cnt 3))
             :length (font-data-length font-data))))
  t)


(defun read-sequence-context-format5
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-sequence-context-format5 font-data offset length)
  (%make-sequence-context-format5 font-data offset length))


(defstruct
    (class-sequence-rule-set2 (:include table-ref)
     (:constructor %make-class-sequence-rule-set2
      (%table-font-data %table-offset %table-length))))


(defun class-sequence-rule-set2-class-seq-rule-count (table)
  "Number of ClassSequenceRule tables"
  (declare (type class-sequence-rule-set2 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline class-sequence-rule-set2-class-seq-rule-count-raw))


(defun class-sequence-rule-set2-class-seq-rule-count-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun class-sequence-rule-set2-class-seq-rule-offsets-count (table)
  "Array of offsets to ClassSequenceRule tables, from beginning of ClassSequenceRuleSet2 table"
  (class-sequence-rule-set2-class-seq-rule-count table))


(declaim
 (inline class-sequence-rule-set2-class-seq-rule-count
  class-sequence-rule-set2-class-seq-rule-offsets
  class-sequence-rule-set2-class-seq-rule-offsets-count))


(defun class-sequence-rule-set2-class-seq-rule-offsets-ref (table index)
  "Array of offsets to ClassSequenceRule tables, from beginning of ClassSequenceRuleSet2 table"
  (declare (type class-sequence-rule-set2 table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 2) (* index 3))))
    (unless
        (<= (+ pos 3) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 3 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u24 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-class-sequence-rule (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-class-sequence-rule-set2 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  (let ((cnt
         (class-sequence-rule-set2-class-seq-rule-count-raw font-data offset)))
    (unless
        (and (<= (+ 2 (* cnt 3)) length)
             (font-data-valid-range-p font-data offset (+ 2 (* cnt 3))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 2 (* cnt 3))
             :length (font-data-length font-data))))
  t)


(defun read-class-sequence-rule-set2
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-class-sequence-rule-set2 font-data offset length)
  (%make-class-sequence-rule-set2 font-data offset length))


(defstruct
    (sequence-context-format6 (:include table-ref)
     (:constructor %make-sequence-context-format6
      (%table-font-data %table-offset %table-length))))


(defun sequence-context-format6-format-table (table)
  "Format identifier: format = 6"
  (declare (type sequence-context-format6 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline sequence-context-format6-format-table-raw))


(defun sequence-context-format6-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun sequence-context-format6-glyph-count (table)
  "Number of glyphs in the input sequence"
  (declare (type sequence-context-format6 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline sequence-context-format6-glyph-count-raw))


(defun sequence-context-format6-glyph-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun sequence-context-format6-seq-lookup-count (table)
  "Number of SequenceLookupRecords"
  (declare (type sequence-context-format6 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline sequence-context-format6-seq-lookup-count-raw))


(defun sequence-context-format6-seq-lookup-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun sequence-context-format6-coverage-offsets-count (table)
  "Array of offsets to Coverage tables, from beginning of SequenceContextFormat6 subtable"
  (sequence-context-format6-glyph-count table))


(defun sequence-context-format6-coverage-offsets-ref (table index)
  "Array of offsets to Coverage tables, from beginning of SequenceContextFormat6 subtable"
  (declare (type sequence-context-format6 table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 6) (* index 3))))
    (unless
        (<= (+ pos 3) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 3 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u24 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-coverage-table (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sequence-context-format6-seq-lookup-records-count (table)
  "Array of SequenceLookupRecords"
  (sequence-context-format6-seq-lookup-count table))


(declaim
 (inline sequence-context-format6-format-table
  sequence-context-format6-glyph-count
  sequence-context-format6-seq-lookup-count
  sequence-context-format6-coverage-offsets
  sequence-context-format6-coverage-offsets-count
  sequence-context-format6-seq-lookup-records
  sequence-context-format6-seq-lookup-records-count))


(defun sequence-context-format6-seq-lookup-records-ref (table index)
  "Array of SequenceLookupRecords"
  (declare (type sequence-context-format6 table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 6
             (* (sequence-context-format6-coverage-offsets-count table) 3))
          (* index 4))))
    (unless
        (<= (+ pos 4) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 4 :length
             (table-ref-length table)))
    (%make-sequence-lookup-record (table-ref-font-data table) pos)))


(defun sanitize-sequence-context-format6 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 6 length) (font-data-valid-range-p font-data offset 6))
    (error 'font-out-of-bounds-error :pos offset :size 6 :length
           (font-data-length font-data)))
  (let ((cnt (sequence-context-format6-glyph-count-raw font-data offset)))
    (unless
        (and (<= (+ 6 (* cnt 3)) length)
             (font-data-valid-range-p font-data offset (+ 6 (* cnt 3))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 6 (* cnt 3))
             :length (font-data-length font-data))))
  t)


(defun read-sequence-context-format6
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-sequence-context-format6 font-data offset length)
  (%make-sequence-context-format6 font-data offset length))


(defstruct
    (chained-sequence-context-format4 (:include table-ref)
     (:constructor %make-chained-sequence-context-format4
      (%table-font-data %table-offset %table-length))))


(defun chained-sequence-context-format4-format-table (table)
  "Format identifier: format = 4"
  (declare (type chained-sequence-context-format4 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline chained-sequence-context-format4-format-table-raw))


(defun chained-sequence-context-format4-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun chained-sequence-context-format4-coverage-offset-offset (table)
  "Offset to Coverage table, from beginning of ChainedSequenceContextFormat4 table"
  (declare (type chained-sequence-context-format4 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun chained-sequence-context-format4-coverage-offset (table)
  "Offset to Coverage table, from beginning of ChainedSequenceContextFormat4 table"
  (declare (type chained-sequence-context-format4 table))
  (let ((off (chained-sequence-context-format4-coverage-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-coverage-table (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun chained-sequence-context-format4-chained-seq-rule-set-offsets-count
       (table)
  "Array of offsets to ChainedSeqRuleSet tables, from beginning of ChainedSequenceContextFormat4 table (may be NULL)"
  (chained-sequence-context-format4-chained-seq-rule-set-count table))


(declaim
 (inline chained-sequence-context-format4-format-table
  chained-sequence-context-format4-coverage-offset
  chained-sequence-context-format4-coverage-offset-offset
  chained-sequence-context-format4-chained-seq-rule-set-count
  chained-sequence-context-format4-chained-seq-rule-set-offsets
  chained-sequence-context-format4-chained-seq-rule-set-offsets-count))


(defun chained-sequence-context-format4-chained-seq-rule-set-offsets-ref
       (table index)
  "Array of offsets to ChainedSeqRuleSet tables, from beginning of ChainedSequenceContextFormat4 table (may be NULL)"
  (declare (type chained-sequence-context-format4 table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 6) (* index 3))))
    (unless
        (<= (+ pos 3) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 3 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u24 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-chained-sequence-rule-set2 (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-chained-sequence-context-format4 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 6 length) (font-data-valid-range-p font-data offset 6))
    (error 'font-out-of-bounds-error :pos offset :size 6 :length
           (font-data-length font-data)))
  (let ((cnt
         (chained-sequence-context-format4-chained-seq-rule-set-count-raw
          font-data offset)))
    (unless
        (and (<= (+ 6 (* cnt 3)) length)
             (font-data-valid-range-p font-data offset (+ 6 (* cnt 3))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 6 (* cnt 3))
             :length (font-data-length font-data))))
  t)


(defun read-chained-sequence-context-format4
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-chained-sequence-context-format4 font-data offset length)
  (%make-chained-sequence-context-format4 font-data offset length))


(defstruct
    (chained-sequence-rule-set2 (:include table-ref)
     (:constructor %make-chained-sequence-rule-set2
      (%table-font-data %table-offset %table-length))))


(defun chained-sequence-rule-set2-chained-seq-rule-count (table)
  "Number of ChainedSequenceRule tables"
  (declare (type chained-sequence-rule-set2 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline chained-sequence-rule-set2-chained-seq-rule-count-raw))


(defun chained-sequence-rule-set2-chained-seq-rule-count-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun chained-sequence-rule-set2-chained-seq-rule-offsets-count (table)
  "Array of offsets to ChainedSequenceRule tables, from beginning of ChainedSequenceRuleSet2 table"
  (chained-sequence-rule-set2-chained-seq-rule-count table))


(declaim
 (inline chained-sequence-rule-set2-chained-seq-rule-count
  chained-sequence-rule-set2-chained-seq-rule-offsets
  chained-sequence-rule-set2-chained-seq-rule-offsets-count))


(defun chained-sequence-rule-set2-chained-seq-rule-offsets-ref (table index)
  "Array of offsets to ChainedSequenceRule tables, from beginning of ChainedSequenceRuleSet2 table"
  (declare (type chained-sequence-rule-set2 table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 2) (* index 3))))
    (unless
        (<= (+ pos 3) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 3 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u24 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-chained-sequence-rule2 (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-chained-sequence-rule-set2 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  (let ((cnt
         (chained-sequence-rule-set2-chained-seq-rule-count-raw font-data
          offset)))
    (unless
        (and (<= (+ 2 (* cnt 3)) length)
             (font-data-valid-range-p font-data offset (+ 2 (* cnt 3))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 2 (* cnt 3))
             :length (font-data-length font-data))))
  t)


(defun read-chained-sequence-rule-set2
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-chained-sequence-rule-set2 font-data offset length)
  (%make-chained-sequence-rule-set2 font-data offset length))


(defstruct
    (chained-sequence-rule2 (:include table-ref)
     (:constructor %make-chained-sequence-rule2
      (%table-font-data %table-offset %table-length))))


(defun chained-sequence-rule2-backtrack-glyph-count (table)
  "Number of glyphs in the backtrack sequence"
  (declare (type chained-sequence-rule2 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline chained-sequence-rule2-backtrack-glyph-count-raw))


(defun chained-sequence-rule2-backtrack-glyph-count-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun chained-sequence-rule2-backtrack-sequence-count (table)
  "Array of backtrack glyph IDs"
  (chained-sequence-rule2-backtrack-glyph-count table))


(defun chained-sequence-rule2-backtrack-sequence-ref (table index)
  "Array of backtrack glyph IDs"
  (declare (type chained-sequence-rule2 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 2) (* index 3))))
    (unless
        (<= (+ pos 3) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 3 :length
             (table-ref-length table)))
    (font-data-read-u24 (table-ref-font-data table) pos)))


(defun chained-sequence-rule2-input-glyph-count (table)
  "Number of glyphs in the input sequence"
  (declare (type chained-sequence-rule2 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2
                         (*
                          (chained-sequence-rule2-backtrack-sequence-count
                           table)
                          3))))


(defun chained-sequence-rule2-input-sequence-count (table)
  "Array of input glyph IDs—start with second glyph"
  (max 0 (- (chained-sequence-rule2-input-glyph-count table) 1)))


(defun chained-sequence-rule2-input-sequence-ref (table index)
  "Array of input glyph IDs—start with second glyph"
  (declare (type chained-sequence-rule2 table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 4
             (* (chained-sequence-rule2-backtrack-sequence-count table) 3))
          (* index 3))))
    (unless
        (<= (+ pos 3) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 3 :length
             (table-ref-length table)))
    (font-data-read-u24 (table-ref-font-data table) pos)))


(defun chained-sequence-rule2-lookahead-glyph-count (table)
  "Number of glyphs in the lookahead sequence"
  (declare (type chained-sequence-rule2 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4
                         (* (chained-sequence-rule2-input-sequence-count table)
                            3)
                         (*
                          (chained-sequence-rule2-backtrack-sequence-count
                           table)
                          3))))


(defun chained-sequence-rule2-lookahead-sequence-count (table)
  "Array of lookahead glyph IDs"
  (chained-sequence-rule2-lookahead-glyph-count table))


(defun chained-sequence-rule2-lookahead-sequence-ref (table index)
  "Array of lookahead glyph IDs"
  (declare (type chained-sequence-rule2 table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 6
             (* (chained-sequence-rule2-input-sequence-count table) 3)
             (* (chained-sequence-rule2-backtrack-sequence-count table) 3))
          (* index 3))))
    (unless
        (<= (+ pos 3) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 3 :length
             (table-ref-length table)))
    (font-data-read-u24 (table-ref-font-data table) pos)))


(defun chained-sequence-rule2-seq-lookup-count (table)
  "Number of SequenceLookupRecords"
  (declare (type chained-sequence-rule2 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6
                         (*
                          (chained-sequence-rule2-lookahead-sequence-count
                           table)
                          3)
                         (* (chained-sequence-rule2-input-sequence-count table)
                            3)
                         (*
                          (chained-sequence-rule2-backtrack-sequence-count
                           table)
                          3))))


(defun chained-sequence-rule2-seq-lookup-records-count (table)
  "Array of SequenceLookupRecords"
  (chained-sequence-rule2-seq-lookup-count table))


(declaim
 (inline chained-sequence-rule2-backtrack-glyph-count
  chained-sequence-rule2-backtrack-sequence
  chained-sequence-rule2-backtrack-sequence-count
  chained-sequence-rule2-input-glyph-count
  chained-sequence-rule2-input-sequence
  chained-sequence-rule2-input-sequence-count
  chained-sequence-rule2-lookahead-glyph-count
  chained-sequence-rule2-lookahead-sequence
  chained-sequence-rule2-lookahead-sequence-count
  chained-sequence-rule2-seq-lookup-count
  chained-sequence-rule2-seq-lookup-records
  chained-sequence-rule2-seq-lookup-records-count))


(defun chained-sequence-rule2-seq-lookup-records-ref (table index)
  "Array of SequenceLookupRecords"
  (declare (type chained-sequence-rule2 table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 8
             (* (chained-sequence-rule2-lookahead-sequence-count table) 3)
             (* (chained-sequence-rule2-input-sequence-count table) 3)
             (* (chained-sequence-rule2-backtrack-sequence-count table) 3))
          (* index 4))))
    (unless
        (<= (+ pos 4) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 4 :length
             (table-ref-length table)))
    (%make-sequence-lookup-record (table-ref-font-data table) pos)))


(defun sanitize-chained-sequence-rule2 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  (let ((cnt
         (chained-sequence-rule2-backtrack-glyph-count-raw font-data offset)))
    (unless
        (and (<= (+ 2 (* cnt 3)) length)
             (font-data-valid-range-p font-data offset (+ 2 (* cnt 3))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 2 (* cnt 3))
             :length (font-data-length font-data))))
  t)


(defun read-chained-sequence-rule2
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-chained-sequence-rule2 font-data offset length)
  (%make-chained-sequence-rule2 font-data offset length))


(defstruct
    (chained-sequence-context-format5 (:include table-ref)
     (:constructor %make-chained-sequence-context-format5
      (%table-font-data %table-offset %table-length))))


(defun chained-sequence-context-format5-format-table (table)
  "Format identifier: format = 5"
  (declare (type chained-sequence-context-format5 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline chained-sequence-context-format5-format-table-raw))


(defun chained-sequence-context-format5-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun chained-sequence-context-format5-coverage-offset-offset (table)
  "Offset to Coverage table, from beginning of ChainedSequenceContextFormat5 table"
  (declare (type chained-sequence-context-format5 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun chained-sequence-context-format5-coverage-offset (table)
  "Offset to Coverage table, from beginning of ChainedSequenceContextFormat5 table"
  (declare (type chained-sequence-context-format5 table))
  (let ((off (chained-sequence-context-format5-coverage-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-coverage-table (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun chained-sequence-context-format5-backtrack-class-def-offset-offset
       (table)
  "Offset to ClassDef table containing backtrack sequence context, from beginning of ChainedSequenceContextFormat5 table"
  (declare (type chained-sequence-context-format5 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6)))


(defun chained-sequence-context-format5-backtrack-class-def-offset (table)
  "Offset to ClassDef table containing backtrack sequence context, from beginning of ChainedSequenceContextFormat5 table"
  (declare (type chained-sequence-context-format5 table))
  (let ((off
         (chained-sequence-context-format5-backtrack-class-def-offset-offset
          table)))
    (when (and off (not (zerop off)))
      (read-class-def (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun chained-sequence-context-format5-input-class-def-offset-offset (table)
  "Offset to ClassDef table containing input sequence context, from beginning of ChainedSequenceContextFormat5 table"
  (declare (type chained-sequence-context-format5 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 10)))


(defun chained-sequence-context-format5-input-class-def-offset (table)
  "Offset to ClassDef table containing input sequence context, from beginning of ChainedSequenceContextFormat5 table"
  (declare (type chained-sequence-context-format5 table))
  (let ((off
         (chained-sequence-context-format5-input-class-def-offset-offset
          table)))
    (when (and off (not (zerop off)))
      (read-class-def (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun chained-sequence-context-format5-lookahead-class-def-offset-offset
       (table)
  "Offset to ClassDef table containing lookahead sequence context, from beginning of ChainedSequenceContextFormat5 table"
  (declare (type chained-sequence-context-format5 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 14)))


(defun chained-sequence-context-format5-lookahead-class-def-offset (table)
  "Offset to ClassDef table containing lookahead sequence context, from beginning of ChainedSequenceContextFormat5 table"
  (declare (type chained-sequence-context-format5 table))
  (let ((off
         (chained-sequence-context-format5-lookahead-class-def-offset-offset
          table)))
    (when (and off (not (zerop off)))
      (read-class-def (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun chained-sequence-context-format5-chained-class-seq-rule-set-count
       (table)
  "Number of ChainedClassSequenceRuleSet tables"
  (declare (type chained-sequence-context-format5 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 18)))


(declaim
 (inline chained-sequence-context-format5-chained-class-seq-rule-set-count-raw))


(defun chained-sequence-context-format5-chained-class-seq-rule-set-count-raw
       (font-data offset)
  (font-data-read-u16 font-data (+ offset 18)))


(defun chained-sequence-context-format5-chained-class-seq-rule-set-offsets-count
       (table)
  "Array of offsets to ChainedClassSequenceRuleSet tables, from beginning of ChainedSequenceContextFormat5 table (may be NULL)"
  (chained-sequence-context-format5-chained-class-seq-rule-set-count table))


(declaim
 (inline chained-sequence-context-format5-format-table
  chained-sequence-context-format5-coverage-offset
  chained-sequence-context-format5-coverage-offset-offset
  chained-sequence-context-format5-backtrack-class-def-offset
  chained-sequence-context-format5-backtrack-class-def-offset-offset
  chained-sequence-context-format5-input-class-def-offset
  chained-sequence-context-format5-input-class-def-offset-offset
  chained-sequence-context-format5-lookahead-class-def-offset
  chained-sequence-context-format5-lookahead-class-def-offset-offset
  chained-sequence-context-format5-chained-class-seq-rule-set-count
  chained-sequence-context-format5-chained-class-seq-rule-set-offsets
  chained-sequence-context-format5-chained-class-seq-rule-set-offsets-count))


(defun chained-sequence-context-format5-chained-class-seq-rule-set-offsets-ref
       (table index)
  "Array of offsets to ChainedClassSequenceRuleSet tables, from beginning of ChainedSequenceContextFormat5 table (may be NULL)"
  (declare (type chained-sequence-context-format5 table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 20) (* index 3))))
    (unless
        (<= (+ pos 3) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 3 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u24 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-chained-class-sequence-rule-set2 (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-chained-sequence-context-format5 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 20 length) (font-data-valid-range-p font-data offset 20))
    (error 'font-out-of-bounds-error :pos offset :size 20 :length
           (font-data-length font-data)))
  (let ((cnt
         (chained-sequence-context-format5-chained-class-seq-rule-set-count-raw
          font-data offset)))
    (unless
        (and (<= (+ 20 (* cnt 3)) length)
             (font-data-valid-range-p font-data offset (+ 20 (* cnt 3))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 20 (* cnt 3))
             :length (font-data-length font-data))))
  t)


(defun read-chained-sequence-context-format5
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-chained-sequence-context-format5 font-data offset length)
  (%make-chained-sequence-context-format5 font-data offset length))


(defstruct
    (chained-class-sequence-rule-set2 (:include table-ref)
     (:constructor %make-chained-class-sequence-rule-set2
      (%table-font-data %table-offset %table-length))))


(defun chained-class-sequence-rule-set2-chained-class-seq-rule-count (table)
  "Number of ChainedClassSequenceRule tables"
  (declare (type chained-class-sequence-rule-set2 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim
 (inline chained-class-sequence-rule-set2-chained-class-seq-rule-count-raw))


(defun chained-class-sequence-rule-set2-chained-class-seq-rule-count-raw
       (font-data offset)
  (font-data-read-u16 font-data offset))


(defun chained-class-sequence-rule-set2-chained-class-seq-rule-offsets-count
       (table)
  "Array of offsets to ChainedClassSequenceRule tables, from beginning of ChainedClassSequenceRuleSet2"
  (chained-class-sequence-rule-set2-chained-class-seq-rule-count table))


(declaim
 (inline chained-class-sequence-rule-set2-chained-class-seq-rule-count
  chained-class-sequence-rule-set2-chained-class-seq-rule-offsets
  chained-class-sequence-rule-set2-chained-class-seq-rule-offsets-count))


(defun chained-class-sequence-rule-set2-chained-class-seq-rule-offsets-ref
       (table index)
  "Array of offsets to ChainedClassSequenceRule tables, from beginning of ChainedClassSequenceRuleSet2"
  (declare (type chained-class-sequence-rule-set2 table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 2) (* index 3))))
    (unless
        (<= (+ pos 3) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 3 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u24 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (read-chained-class-sequence-rule (table-ref-font-data table)
         (+ (table-ref-offset table) off))))))


(defun sanitize-chained-class-sequence-rule-set2 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  (let ((cnt
         (chained-class-sequence-rule-set2-chained-class-seq-rule-count-raw
          font-data offset)))
    (unless
        (and (<= (+ 2 (* cnt 3)) length)
             (font-data-valid-range-p font-data offset (+ 2 (* cnt 3))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 2 (* cnt 3))
             :length (font-data-length font-data))))
  t)


(defun read-chained-class-sequence-rule-set2
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-chained-class-sequence-rule-set2 font-data offset length)
  (%make-chained-class-sequence-rule-set2 font-data offset length))


(defstruct
    (lookup-list2 (:include table-ref)
     (:constructor %make-lookup-list2
      (%table-font-data %table-offset %table-length))))


(defun lookup-list2-lookup-count (table)
  "Number of lookups in this table"
  (declare (type lookup-list2 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline lookup-list2-lookup-count-raw))


(defun lookup-list2-lookup-count-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun lookup-list2-lookup-offsets-count (table)
  "Array of offsets to Lookup tables, from beginning of LookupList2 — zero based (first lookup is Lookup index = 0)"
  (lookup-list2-lookup-count table))


(declaim
 (inline lookup-list2-lookup-count lookup-list2-lookup-offsets
  lookup-list2-lookup-offsets-count))


(defun lookup-list2-lookup-offsets-ref (table index)
  "Array of offsets to Lookup tables, from beginning of LookupList2 — zero based (first lookup is Lookup index = 0)"
  (declare (type lookup-list2 table)
           (type (unsigned-byte 32) index))
  (let* ((pos (+ (+ (table-ref-offset table) 2) (* index 4))))
    (unless
        (<= (+ pos 4) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 4 :length
             (table-ref-length table)))
    (let ((off (font-data-read-u32 (table-ref-font-data table) pos)))
      (unless (zerop off)
        (font-data-slice (table-ref-font-data table)
                         (+ (table-ref-offset table) off))))))


(defun sanitize-lookup-list2 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 2 length) (font-data-valid-range-p font-data offset 2))
    (error 'font-out-of-bounds-error :pos offset :size 2 :length
           (font-data-length font-data)))
  (let ((cnt (lookup-list2-lookup-count-raw font-data offset)))
    (unless
        (and (<= (+ 2 (* cnt 4)) length)
             (font-data-valid-range-p font-data offset (+ 2 (* cnt 4))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 2 (* cnt 4))
             :length (font-data-length font-data))))
  t)


(defun read-lookup-list2
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-lookup-list2 font-data offset length)
  (%make-lookup-list2 font-data offset length))

