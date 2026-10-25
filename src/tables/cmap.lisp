;;;; cmap.lisp — Generated OpenType tables
;;;; Generated automatically from OpenType sexp schema
;;;; DO NOT EDIT DIRECTLY
;;;; Copyright (C) 2026 Arthur Miller and contributors
;;;; SPDX-License-Identifier: MIT


(in-package #:zpb-otf)


(export
 '(+constant-map-group-size+ +encoding-record-size+ +platform-id-custom+
   +platform-id-iso+ +platform-id-macintosh+ +platform-id-unicode+
   +platform-id-windows+ +sequential-map-group-size+ +sub-header-size+
   +unicode-range-size+ +uvs-mapping-size+ +uvs-mapping24-size+
   +variation-selector-size+ +variation-selector15-size+ cmap
   cmap-encoding-records cmap-encoding-records-count cmap-encoding-records-ref
   cmap-num-tables cmap-p cmap-version cmap0 cmap0-format-table
   cmap0-glyph-id-array cmap0-glyph-id-array-bytes cmap0-glyph-id-array-count
   cmap0-glyph-id-array-ref cmap0-language cmap0-length cmap0-p cmap10
   cmap10-format-table cmap10-glyph-id-array cmap10-glyph-id-array-count
   cmap10-glyph-id-array-ref cmap10-language cmap10-length cmap10-num-chars
   cmap10-p cmap10-reserved cmap10-start-char-code cmap12 cmap12-format-table
   cmap12-groups cmap12-groups-count cmap12-groups-ref cmap12-language
   cmap12-length cmap12-num-groups cmap12-p cmap12-reserved cmap13
   cmap13-format-table cmap13-groups cmap13-groups-count cmap13-groups-ref
   cmap13-language cmap13-length cmap13-num-groups cmap13-p cmap13-reserved
   cmap14 cmap14-format-table cmap14-length cmap14-num-var-selector-records
   cmap14-p cmap14-var-selector cmap14-var-selector-count
   cmap14-var-selector-ref cmap15 cmap15-format-table cmap15-length
   cmap15-num-var-selector-records cmap15-p cmap15-var-selector
   cmap15-var-selector-count cmap15-var-selector-ref cmap2 cmap2-format-table
   cmap2-language cmap2-length cmap2-p cmap2-sub-header-keys
   cmap2-sub-header-keys-count cmap2-sub-header-keys-ref cmap4 cmap4-end-code
   cmap4-end-code-count cmap4-end-code-ref cmap4-entry-selector
   cmap4-format-table cmap4-glyph-id-array cmap4-glyph-id-array-count
   cmap4-glyph-id-array-ref cmap4-id-delta cmap4-id-delta-count
   cmap4-id-delta-ref cmap4-id-range-offsets cmap4-id-range-offsets-count
   cmap4-id-range-offsets-ref cmap4-language cmap4-length cmap4-p
   cmap4-range-shift cmap4-reserved-pad cmap4-search-range cmap4-seg-count-x2
   cmap4-start-code cmap4-start-code-count cmap4-start-code-ref cmap6
   cmap6-entry-count cmap6-first-code cmap6-format-table cmap6-glyph-id-array
   cmap6-glyph-id-array-count cmap6-glyph-id-array-ref cmap6-language
   cmap6-length cmap6-p cmap8 cmap8-format-table cmap8-groups
   cmap8-groups-count cmap8-groups-ref cmap8-is32 cmap8-is32-bytes
   cmap8-is32-count cmap8-is32-ref cmap8-language cmap8-length cmap8-num-groups
   cmap8-p cmap8-reserved constant-map-group constant-map-group-end-char-code
   constant-map-group-glyph-id constant-map-group-p
   constant-map-group-start-char-code default-uvs
   default-uvs-num-unicode-value-ranges default-uvs-p default-uvs-ranges
   default-uvs-ranges-count default-uvs-ranges-ref dmap dmap-encoding-records
   dmap-encoding-records-count dmap-encoding-records-ref dmap-num-tables dmap-p
   dmap-version encoding-record encoding-record-encoding-id encoding-record-p
   encoding-record-platform-id encoding-record-subtable-offset non-default-uvs
   non-default-uvs-num-uvs-mappings non-default-uvs-p
   non-default-uvs-uvs-mapping non-default-uvs-uvs-mapping-count
   non-default-uvs-uvs-mapping-ref non-default-uvs24
   non-default-uvs24-num-uvs-mappings non-default-uvs24-p
   non-default-uvs24-uvs-mapping non-default-uvs24-uvs-mapping-count
   non-default-uvs24-uvs-mapping-ref read-cmap read-cmap-subtable read-cmap0
   read-cmap10 read-cmap12 read-cmap13 read-cmap14 read-cmap15 read-cmap2
   read-cmap4 read-cmap6 read-cmap8 read-default-uvs read-dmap
   read-non-default-uvs read-non-default-uvs24 sanitize-cmap sanitize-cmap0
   sanitize-cmap10 sanitize-cmap12 sanitize-cmap13 sanitize-cmap14
   sanitize-cmap15 sanitize-cmap2 sanitize-cmap4 sanitize-cmap6 sanitize-cmap8
   sanitize-default-uvs sanitize-dmap sanitize-non-default-uvs
   sanitize-non-default-uvs24 sequential-map-group
   sequential-map-group-end-char-code sequential-map-group-p
   sequential-map-group-start-char-code sequential-map-group-start-glyph-id
   sub-header sub-header-entry-count sub-header-first-code sub-header-id-delta
   sub-header-id-range-offset sub-header-p unicode-range
   unicode-range-additional-count unicode-range-p
   unicode-range-start-unicode-value uvs-mapping uvs-mapping-glyph-id
   uvs-mapping-p uvs-mapping-unicode-value uvs-mapping24 uvs-mapping24-glyph-id
   uvs-mapping24-p uvs-mapping24-unicode-value variation-selector
   variation-selector-default-uvs-offset
   variation-selector-non-default-uvs-offset variation-selector-p
   variation-selector-var-selector variation-selector15
   variation-selector15-default-uvs-offset
   variation-selector15-non-default-uvs-offset variation-selector15-p
   variation-selector15-var-selector))


(define-constant +platform-id-unicode+ 0)


(define-constant +platform-id-macintosh+ 1)


(define-constant +platform-id-iso+ 2)


(define-constant +platform-id-windows+ 3)


(define-constant +platform-id-custom+ 4)


(defstruct
    (encoding-record (:include record-ref)
     (:constructor %make-encoding-record (%record-font-data %record-offset))))


(define-constant +encoding-record-size+ 8)


(declaim
 (inline encoding-record-platform-id encoding-record-encoding-id
  encoding-record-subtable-offset))


(defun encoding-record-platform-id (rec)
  "Platform ID."
  (declare (type encoding-record rec))
  (font-data-read-u16 (record-ref-font-data rec) (record-ref-offset rec)))


(defun encoding-record-encoding-id (rec)
  "Platform-specific encoding ID."
  (declare (type encoding-record rec))
  (font-data-read-u16 (record-ref-font-data rec) (+ (record-ref-offset rec) 2)))


(defun encoding-record-subtable-offset (rec)
  "Byte offset from beginning of the [`Cmap`] or [`Dmap`] table to the subtable for this encoding."
  (declare (type encoding-record rec))
  (font-data-read-u32 (record-ref-font-data rec) (+ (record-ref-offset rec) 4)))


(defstruct
    (sub-header (:include record-ref)
     (:constructor %make-sub-header (%record-font-data %record-offset))))


(define-constant +sub-header-size+ 8)


(declaim
 (inline sub-header-first-code sub-header-entry-count sub-header-id-delta
  sub-header-id-range-offset))


(defun sub-header-first-code (rec)
  "First valid low byte for this SubHeader."
  (declare (type sub-header rec))
  (font-data-read-u16 (record-ref-font-data rec) (record-ref-offset rec)))


(defun sub-header-entry-count (rec)
  "Number of valid low bytes for this SubHeader."
  (declare (type sub-header rec))
  (font-data-read-u16 (record-ref-font-data rec) (+ (record-ref-offset rec) 2)))


(defun sub-header-id-delta (rec)
  "See text below."
  (declare (type sub-header rec))
  (font-data-read-i16 (record-ref-font-data rec) (+ (record-ref-offset rec) 4)))


(defun sub-header-id-range-offset (rec)
  "See text below."
  (declare (type sub-header rec))
  (font-data-read-u16 (record-ref-font-data rec) (+ (record-ref-offset rec) 6)))


(defstruct
    (sequential-map-group (:include record-ref)
     (:constructor %make-sequential-map-group
      (%record-font-data %record-offset))))


(define-constant +sequential-map-group-size+ 12)


(declaim
 (inline sequential-map-group-start-char-code
  sequential-map-group-end-char-code sequential-map-group-start-glyph-id))


(defun sequential-map-group-start-char-code (rec)
  "First character code in this group; note that if this group is for one or more 16-bit character codes (which is determined from the is32 array), this 32-bit value will have the high 16-bits set to zero"
  (declare (type sequential-map-group rec))
  (font-data-read-u32 (record-ref-font-data rec) (record-ref-offset rec)))


(defun sequential-map-group-end-char-code (rec)
  "Last character code in this group; same condition as listed above for the startCharCode"
  (declare (type sequential-map-group rec))
  (font-data-read-u32 (record-ref-font-data rec) (+ (record-ref-offset rec) 4)))


(defun sequential-map-group-start-glyph-id (rec)
  "Glyph index corresponding to the starting character code"
  (declare (type sequential-map-group rec))
  (font-data-read-u32 (record-ref-font-data rec) (+ (record-ref-offset rec) 8)))


(defstruct
    (constant-map-group (:include record-ref)
     (:constructor %make-constant-map-group
      (%record-font-data %record-offset))))


(define-constant +constant-map-group-size+ 12)


(declaim
 (inline constant-map-group-start-char-code constant-map-group-end-char-code
  constant-map-group-glyph-id))


(defun constant-map-group-start-char-code (rec)
  "First character code in this group"
  (declare (type constant-map-group rec))
  (font-data-read-u32 (record-ref-font-data rec) (record-ref-offset rec)))


(defun constant-map-group-end-char-code (rec)
  "Last character code in this group"
  (declare (type constant-map-group rec))
  (font-data-read-u32 (record-ref-font-data rec) (+ (record-ref-offset rec) 4)))


(defun constant-map-group-glyph-id (rec)
  "Glyph index to be used for all the characters in the group’s range."
  (declare (type constant-map-group rec))
  (font-data-read-u32 (record-ref-font-data rec) (+ (record-ref-offset rec) 8)))


(defstruct
    (variation-selector15 (:include record-ref)
     (:constructor %make-variation-selector15
      (%record-font-data %record-offset))))


(define-constant +variation-selector15-size+ 11)


(declaim
 (inline variation-selector15-var-selector
  variation-selector15-default-uvs-offset
  variation-selector15-non-default-uvs-offset))


(defun variation-selector15-var-selector (rec)
  (declare (type variation-selector15 rec))
  (font-data-read-u24 (record-ref-font-data rec) (record-ref-offset rec)))


(defun variation-selector15-default-uvs-offset (rec)
  (declare (type variation-selector15 rec))
  (font-data-read-u32 (record-ref-font-data rec) (+ (record-ref-offset rec) 3)))


(defun variation-selector15-non-default-uvs-offset (rec)
  (declare (type variation-selector15 rec))
  (font-data-read-u32 (record-ref-font-data rec) (+ (record-ref-offset rec) 7)))


(defstruct
    (variation-selector (:include record-ref)
     (:constructor %make-variation-selector
      (%record-font-data %record-offset))))


(define-constant +variation-selector-size+ 11)


(declaim
 (inline variation-selector-var-selector variation-selector-default-uvs-offset
  variation-selector-non-default-uvs-offset))


(defun variation-selector-var-selector (rec)
  "Variation selector"
  (declare (type variation-selector rec))
  (font-data-read-u24 (record-ref-font-data rec) (record-ref-offset rec)))


(defun variation-selector-default-uvs-offset (rec)
  "Offset from the start of the [`Cmap14`] subtable to Default UVS Table. May be NULL."
  (declare (type variation-selector rec))
  (font-data-read-u32 (record-ref-font-data rec) (+ (record-ref-offset rec) 3)))


(defun variation-selector-non-default-uvs-offset (rec)
  "Offset from the start of the [`Cmap14`] subtable to Non-Default UVS Table. May be NULL."
  (declare (type variation-selector rec))
  (font-data-read-u32 (record-ref-font-data rec) (+ (record-ref-offset rec) 7)))


(defstruct
    (uvs-mapping24 (:include record-ref)
     (:constructor %make-uvs-mapping24 (%record-font-data %record-offset))))


(define-constant +uvs-mapping24-size+ 6)


(declaim (inline uvs-mapping24-unicode-value uvs-mapping24-glyph-id))


(defun uvs-mapping24-unicode-value (rec)
  (declare (type uvs-mapping24 rec))
  (font-data-read-u24 (record-ref-font-data rec) (record-ref-offset rec)))


(defun uvs-mapping24-glyph-id (rec)
  (declare (type uvs-mapping24 rec))
  (font-data-read-u24 (record-ref-font-data rec) (+ (record-ref-offset rec) 3)))


(defstruct
    (uvs-mapping (:include record-ref)
     (:constructor %make-uvs-mapping (%record-font-data %record-offset))))


(define-constant +uvs-mapping-size+ 5)


(declaim (inline uvs-mapping-unicode-value uvs-mapping-glyph-id))


(defun uvs-mapping-unicode-value (rec)
  "Base Unicode value of the UVS"
  (declare (type uvs-mapping rec))
  (font-data-read-u24 (record-ref-font-data rec) (record-ref-offset rec)))


(defun uvs-mapping-glyph-id (rec)
  "Glyph ID of the UVS"
  (declare (type uvs-mapping rec))
  (font-data-read-u16 (record-ref-font-data rec) (+ (record-ref-offset rec) 3)))


(defstruct
    (unicode-range (:include record-ref)
     (:constructor %make-unicode-range (%record-font-data %record-offset))))


(define-constant +unicode-range-size+ 4)


(declaim
 (inline unicode-range-start-unicode-value unicode-range-additional-count))


(defun unicode-range-start-unicode-value (rec)
  "First value in this range"
  (declare (type unicode-range rec))
  (font-data-read-u24 (record-ref-font-data rec) (record-ref-offset rec)))


(defun unicode-range-additional-count (rec)
  "Number of additional values in this range"
  (declare (type unicode-range rec))
  (font-data-read-u8 (record-ref-font-data rec) (+ (record-ref-offset rec) 3)))


(defstruct
    (cmap (:include table-ref)
     (:constructor %make-cmap (%table-font-data %table-offset %table-length))))


(declaim
 (inline cmap-version cmap-num-tables cmap-encoding-records-count
  cmap-version-raw cmap-num-tables-raw))


(defun cmap-version (table)
  "Table version number (0)."
  (declare (type cmap table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(defun cmap-version-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun cmap-num-tables (table)
  "Number of encoding tables that follow."
  (declare (type cmap table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun cmap-num-tables-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun cmap-encoding-records-count (table) (cmap-num-tables table))


(defun cmap-encoding-records-ref (table index)
  (declare (type cmap table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 4) (* index 8))))
    (unless
        (<= (+ pos 8) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 8 :length
             (table-ref-length table)))
    (%make-encoding-record (table-ref-font-data table) pos)))


(defun sanitize-cmap (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 4 length) (font-data-valid-range-p font-data offset 4))
    (error 'font-out-of-bounds-error :pos offset :size 4 :length
           (font-data-length font-data)))
  (let ((cnt (cmap-num-tables-raw font-data offset)))
    (unless
        (and (<= (+ 4 (* cnt 8)) length)
             (font-data-valid-range-p font-data offset (+ 4 (* cnt 8))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 4 (* cnt 8))
             :length (font-data-length font-data))))
  t)


(defun read-cmap
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-cmap font-data offset length)
  (%make-cmap font-data offset length))


(defstruct
    (dmap (:include table-ref)
     (:constructor %make-dmap (%table-font-data %table-offset %table-length))))


(declaim
 (inline dmap-version dmap-num-tables dmap-encoding-records-count
  dmap-version-raw dmap-num-tables-raw))


(defun dmap-version (table)
  "Table version number (0)."
  (declare (type dmap table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(defun dmap-version-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun dmap-num-tables (table)
  "Number of encoding tables that follow."
  (declare (type dmap table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun dmap-num-tables-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun dmap-encoding-records-count (table) (dmap-num-tables table))


(defun dmap-encoding-records-ref (table index)
  (declare (type dmap table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 4) (* index 8))))
    (unless
        (<= (+ pos 8) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 8 :length
             (table-ref-length table)))
    (%make-encoding-record (table-ref-font-data table) pos)))


(defun sanitize-dmap (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 4 length) (font-data-valid-range-p font-data offset 4))
    (error 'font-out-of-bounds-error :pos offset :size 4 :length
           (font-data-length font-data)))
  (let ((cnt (dmap-num-tables-raw font-data offset)))
    (unless
        (and (<= (+ 4 (* cnt 8)) length)
             (font-data-valid-range-p font-data offset (+ 4 (* cnt 8))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 4 (* cnt 8))
             :length (font-data-length font-data))))
  t)


(defun read-dmap
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-dmap font-data offset length)
  (%make-dmap font-data offset length))


(defun read-cmap-subtable
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (declare (ignorable length))
  (let ((fmt (font-data-read-u16 font-data (+ offset 0))))
    (case fmt
      (0 (read-cmap0 font-data offset length))
      (2 (read-cmap2 font-data offset length))
      (4 (read-cmap4 font-data offset length))
      (6 (read-cmap6 font-data offset length))
      (8 (read-cmap8 font-data offset length))
      (10 (read-cmap10 font-data offset length))
      (12 (read-cmap12 font-data offset length))
      (13 (read-cmap13 font-data offset length))
      (14 (read-cmap14 font-data offset length))
      (15 (read-cmap15 font-data offset length))
      (otherwise
       (error 'unsupported-format-error :format fmt :table 'cmap-subtable)))))


(defstruct
    (cmap0 (:include table-ref)
     (:constructor %make-cmap0 (%table-font-data %table-offset %table-length))))


(declaim
 (inline cmap0-format-table cmap0-length cmap0-language
  cmap0-glyph-id-array-count cmap0-format-table-raw cmap0-length-raw
  cmap0-language-raw))


(defun cmap0-format-table (table)
  "Format number is set to 0."
  (declare (type cmap0 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(defun cmap0-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun cmap0-length (table)
  "This is the length in bytes of the subtable."
  (declare (type cmap0 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun cmap0-length-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun cmap0-language (table)
  "For requirements on use of the language field, see “Use of the language field in 'cmap' subtables” in this document."
  (declare (type cmap0 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(defun cmap0-language-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun cmap0-glyph-id-array-count (table)
  "An array that maps character codes to glyph index values."
  (declare (ignore table))
  256)


(defun cmap0-glyph-id-array-ref (table index)
  "An array that maps character codes to glyph index values."
  (declare (type cmap0 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 6) (* index 1))))
    (unless
        (<= (+ pos 1) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 1 :length
             (table-ref-length table)))
    (font-data-read-u8 (table-ref-font-data table) pos)))


(defun cmap0-glyph-id-array-bytes (table)
  "An array that maps character codes to glyph index values."
  (font-data-slice (table-ref-font-data table) (+ (table-ref-offset table) 6)
                   256))


(defun sanitize-cmap0 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 262 length) (font-data-valid-range-p font-data offset 262))
    (error 'font-out-of-bounds-error :pos offset :size 262 :length
           (font-data-length font-data)))
  t)


(defun read-cmap0
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-cmap0 font-data offset length)
  (%make-cmap0 font-data offset length))


(defstruct
    (cmap2 (:include table-ref)
     (:constructor %make-cmap2 (%table-font-data %table-offset %table-length))))


(declaim
 (inline cmap2-format-table cmap2-length cmap2-language
  cmap2-sub-header-keys-count cmap2-format-table-raw cmap2-length-raw
  cmap2-language-raw))


(defun cmap2-format-table (table)
  "Format number is set to 2."
  (declare (type cmap2 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(defun cmap2-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun cmap2-length (table)
  "This is the length in bytes of the subtable."
  (declare (type cmap2 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun cmap2-length-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun cmap2-language (table)
  "For requirements on use of the language field, see “Use of the language field in 'cmap' subtables” in this document."
  (declare (type cmap2 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(defun cmap2-language-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun cmap2-sub-header-keys-count (table)
  "Array that maps high bytes to subHeaders: value is subHeader index × 8."
  (declare (ignore table))
  256)


(defun cmap2-sub-header-keys-ref (table index)
  "Array that maps high bytes to subHeaders: value is subHeader index × 8."
  (declare (type cmap2 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 6) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun sanitize-cmap2 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 518 length) (font-data-valid-range-p font-data offset 518))
    (error 'font-out-of-bounds-error :pos offset :size 518 :length
           (font-data-length font-data)))
  t)


(defun read-cmap2
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-cmap2 font-data offset length)
  (%make-cmap2 font-data offset length))


(defstruct
    (cmap4 (:include table-ref)
     (:constructor %make-cmap4 (%table-font-data %table-offset %table-length))))


(declaim
 (inline cmap4-format-table cmap4-length cmap4-language cmap4-seg-count-x2
  cmap4-search-range cmap4-entry-selector cmap4-range-shift
  cmap4-end-code-count cmap4-reserved-pad cmap4-start-code-count
  cmap4-id-delta-count cmap4-id-range-offsets-count cmap4-glyph-id-array-count
  cmap4-format-table-raw cmap4-length-raw cmap4-language-raw
  cmap4-seg-count-x2-raw cmap4-search-range-raw cmap4-entry-selector-raw
  cmap4-range-shift-raw))


(defun cmap4-format-table (table)
  "Format number is set to 4."
  (declare (type cmap4 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(defun cmap4-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun cmap4-length (table)
  "This is the length in bytes of the subtable."
  (declare (type cmap4 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun cmap4-length-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun cmap4-language (table)
  "For requirements on use of the language field, see “Use of the language field in 'cmap' subtables” in this document."
  (declare (type cmap4 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(defun cmap4-language-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun cmap4-seg-count-x2 (table)
  "2 × segCount."
  (declare (type cmap4 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6)))


(defun cmap4-seg-count-x2-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 6)))


(defun cmap4-search-range (table)
  "Maximum power of 2 less than or equal to segCount, times 2 ((2**floor(log2(segCount))) * 2, where “**” is an exponentiation operator)"
  (declare (type cmap4 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 8)))


(defun cmap4-search-range-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 8)))


(defun cmap4-entry-selector (table)
  "Log2 of the maximum power of 2 less than or equal to numTables (log2(searchRange/2), which is equal to floor(log2(segCount)))"
  (declare (type cmap4 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 10)))


(defun cmap4-entry-selector-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 10)))


(defun cmap4-range-shift (table)
  "segCount times 2, minus searchRange ((segCount * 2) - searchRange)"
  (declare (type cmap4 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 12)))


(defun cmap4-range-shift-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 12)))


(defun cmap4-end-code-count (table)
  "End characterCode for each segment, last=0xFFFF."
  (floor (cmap4-seg-count-x2 table) 2))


(defun cmap4-end-code-ref (table index)
  "End characterCode for each segment, last=0xFFFF."
  (declare (type cmap4 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 14) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun cmap4-reserved-pad (table)
  "Set to 0."
  (declare (type cmap4 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 14
                         (* (cmap4-end-code-count table) 2))))


(defun cmap4-start-code-count (table)
  "Start character code for each segment."
  (floor (cmap4-seg-count-x2 table) 2))


(defun cmap4-start-code-ref (table index)
  "Start character code for each segment."
  (declare (type cmap4 table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+ (+ (table-ref-offset table) 16 (* (cmap4-end-code-count table) 2))
            (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun cmap4-id-delta-count (table)
  "Delta for all character codes in segment."
  (floor (cmap4-seg-count-x2 table) 2))


(defun cmap4-id-delta-ref (table index)
  "Delta for all character codes in segment."
  (declare (type cmap4 table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 16 (* (cmap4-start-code-count table) 2)
             (* (cmap4-end-code-count table) 2))
          (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-i16 (table-ref-font-data table) pos)))


(defun cmap4-id-range-offsets-count (table)
  "Offsets into glyphIdArray or 0"
  (floor (cmap4-seg-count-x2 table) 2))


(defun cmap4-id-range-offsets-ref (table index)
  "Offsets into glyphIdArray or 0"
  (declare (type cmap4 table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 16 (* (cmap4-id-delta-count table) 2)
             (* (cmap4-start-code-count table) 2)
             (* (cmap4-end-code-count table) 2))
          (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun cmap4-glyph-id-array-count (table)
  "Glyph index array (arbitrary length)"
  (max 0
       (floor
        (- (+ (table-ref-offset table) (table-ref-length table))
           (+ (table-ref-offset table) 16
              (* (cmap4-id-range-offsets-count table) 2)
              (* (cmap4-id-delta-count table) 2)
              (* (cmap4-start-code-count table) 2)
              (* (cmap4-end-code-count table) 2)))
        2)))


(defun cmap4-glyph-id-array-ref (table index)
  "Glyph index array (arbitrary length)"
  (declare (type cmap4 table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 16
             (* (cmap4-id-range-offsets-count table) 2)
             (* (cmap4-id-delta-count table) 2)
             (* (cmap4-start-code-count table) 2)
             (* (cmap4-end-code-count table) 2))
          (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun sanitize-cmap4 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 14 length) (font-data-valid-range-p font-data offset 14))
    (error 'font-out-of-bounds-error :pos offset :size 14 :length
           (font-data-length font-data)))
  t)


(defun read-cmap4
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-cmap4 font-data offset length)
  (%make-cmap4 font-data offset length))


(defstruct
    (cmap6 (:include table-ref)
     (:constructor %make-cmap6 (%table-font-data %table-offset %table-length))))


(declaim
 (inline cmap6-format-table cmap6-length cmap6-language cmap6-first-code
  cmap6-entry-count cmap6-glyph-id-array-count cmap6-format-table-raw
  cmap6-length-raw cmap6-language-raw cmap6-first-code-raw
  cmap6-entry-count-raw))


(defun cmap6-format-table (table)
  "Format number is set to 6."
  (declare (type cmap6 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(defun cmap6-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun cmap6-length (table)
  "This is the length in bytes of the subtable."
  (declare (type cmap6 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun cmap6-length-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun cmap6-language (table)
  "For requirements on use of the language field, see “Use of the language field in 'cmap' subtables” in this document."
  (declare (type cmap6 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(defun cmap6-language-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun cmap6-first-code (table)
  "First character code of subrange."
  (declare (type cmap6 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6)))


(defun cmap6-first-code-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 6)))


(defun cmap6-entry-count (table)
  "Number of character codes in subrange."
  (declare (type cmap6 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 8)))


(defun cmap6-entry-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 8)))


(defun cmap6-glyph-id-array-count (table)
  "Array of glyph index values for character codes in the range."
  (cmap6-entry-count table))


(defun cmap6-glyph-id-array-ref (table index)
  "Array of glyph index values for character codes in the range."
  (declare (type cmap6 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 10) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun sanitize-cmap6 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 10 length) (font-data-valid-range-p font-data offset 10))
    (error 'font-out-of-bounds-error :pos offset :size 10 :length
           (font-data-length font-data)))
  (let ((cnt (cmap6-entry-count-raw font-data offset)))
    (unless
        (and (<= (+ 10 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 10 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 10 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-cmap6
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-cmap6 font-data offset length)
  (%make-cmap6 font-data offset length))


(defstruct
    (cmap8 (:include table-ref)
     (:constructor %make-cmap8 (%table-font-data %table-offset %table-length))))


(declaim
 (inline cmap8-format-table cmap8-reserved cmap8-length cmap8-language
  cmap8-is32-count cmap8-num-groups cmap8-groups-count cmap8-format-table-raw
  cmap8-reserved-raw cmap8-length-raw cmap8-language-raw cmap8-num-groups-raw))


(defun cmap8-format-table (table)
  "Subtable format; set to 8."
  (declare (type cmap8 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(defun cmap8-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun cmap8-reserved (table)
  "Reserved; set to 0"
  (declare (type cmap8 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun cmap8-reserved-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun cmap8-length (table)
  "Byte length of this subtable (including the header)"
  (declare (type cmap8 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(defun cmap8-length-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 4)))


(defun cmap8-language (table)
  "For requirements on use of the language field, see “Use of the language field in 'cmap' subtables” in this document."
  (declare (type cmap8 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 8)))


(defun cmap8-language-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 8)))


(defun cmap8-is32-count (table)
  "Tightly packed array of bits (8K bytes total) indicating whether the particular 16-bit (index) value is the start of a 32-bit character code"
  (declare (ignore table))
  8192)


(defun cmap8-is32-ref (table index)
  "Tightly packed array of bits (8K bytes total) indicating whether the particular 16-bit (index) value is the start of a 32-bit character code"
  (declare (type cmap8 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 12) (* index 1))))
    (unless
        (<= (+ pos 1) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 1 :length
             (table-ref-length table)))
    (font-data-read-u8 (table-ref-font-data table) pos)))


(defun cmap8-is32-bytes (table)
  "Tightly packed array of bits (8K bytes total) indicating whether the particular 16-bit (index) value is the start of a 32-bit character code"
  (font-data-slice (table-ref-font-data table) (+ (table-ref-offset table) 12)
                   8192))


(defun cmap8-num-groups (table)
  "Number of groupings which follow"
  (declare (type cmap8 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 8204)))


(defun cmap8-num-groups-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 8204)))


(defun cmap8-groups-count (table)
  "Array of SequentialMapGroup records."
  (cmap8-num-groups table))


(defun cmap8-groups-ref (table index)
  "Array of SequentialMapGroup records."
  (declare (type cmap8 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 8208) (* index 12))))
    (unless
        (<= (+ pos 12) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 12 :length
             (table-ref-length table)))
    (%make-sequential-map-group (table-ref-font-data table) pos)))


(defun sanitize-cmap8 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless
      (and (<= 8208 length) (font-data-valid-range-p font-data offset 8208))
    (error 'font-out-of-bounds-error :pos offset :size 8208 :length
           (font-data-length font-data)))
  (let ((cnt (cmap8-num-groups-raw font-data offset)))
    (unless
        (and (<= (+ 8208 (* cnt 12)) length)
             (font-data-valid-range-p font-data offset (+ 8208 (* cnt 12))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 8208 (* cnt 12))
             :length (font-data-length font-data))))
  t)


(defun read-cmap8
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-cmap8 font-data offset length)
  (%make-cmap8 font-data offset length))


(defstruct
    (cmap10 (:include table-ref)
     (:constructor %make-cmap10
      (%table-font-data %table-offset %table-length))))


(declaim
 (inline cmap10-format-table cmap10-reserved cmap10-length cmap10-language
  cmap10-start-char-code cmap10-num-chars cmap10-glyph-id-array-count
  cmap10-format-table-raw cmap10-reserved-raw cmap10-length-raw
  cmap10-language-raw cmap10-start-char-code-raw cmap10-num-chars-raw))


(defun cmap10-format-table (table)
  "Subtable format; set to 10."
  (declare (type cmap10 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(defun cmap10-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun cmap10-reserved (table)
  "Reserved; set to 0"
  (declare (type cmap10 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun cmap10-reserved-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun cmap10-length (table)
  "Byte length of this subtable (including the header)"
  (declare (type cmap10 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(defun cmap10-length-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 4)))


(defun cmap10-language (table)
  "For requirements on use of the language field, see “Use of the language field in 'cmap' subtables” in this document."
  (declare (type cmap10 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 8)))


(defun cmap10-language-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 8)))


(defun cmap10-start-char-code (table)
  "First character code covered"
  (declare (type cmap10 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 12)))


(defun cmap10-start-char-code-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 12)))


(defun cmap10-num-chars (table)
  "Number of character codes covered"
  (declare (type cmap10 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 16)))


(defun cmap10-num-chars-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 16)))


(defun cmap10-glyph-id-array-count (table)
  "Array of glyph indices for the character codes covered"
  (cmap10-num-chars table))


(defun cmap10-glyph-id-array-ref (table index)
  "Array of glyph indices for the character codes covered"
  (declare (type cmap10 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 20) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun sanitize-cmap10 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 20 length) (font-data-valid-range-p font-data offset 20))
    (error 'font-out-of-bounds-error :pos offset :size 20 :length
           (font-data-length font-data)))
  (let ((cnt (cmap10-num-chars-raw font-data offset)))
    (unless
        (and (<= (+ 20 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 20 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 20 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-cmap10
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-cmap10 font-data offset length)
  (%make-cmap10 font-data offset length))


(defstruct
    (cmap12 (:include table-ref)
     (:constructor %make-cmap12
      (%table-font-data %table-offset %table-length))))


(declaim
 (inline cmap12-format-table cmap12-reserved cmap12-length cmap12-language
  cmap12-num-groups cmap12-groups-count cmap12-format-table-raw
  cmap12-reserved-raw cmap12-length-raw cmap12-language-raw
  cmap12-num-groups-raw))


(defun cmap12-format-table (table)
  "Subtable format; set to 12."
  (declare (type cmap12 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(defun cmap12-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun cmap12-reserved (table)
  "Reserved; set to 0"
  (declare (type cmap12 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun cmap12-reserved-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun cmap12-length (table)
  "Byte length of this subtable (including the header)"
  (declare (type cmap12 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(defun cmap12-length-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 4)))


(defun cmap12-language (table)
  "For requirements on use of the language field, see “Use of the language field in 'cmap' subtables” in this document."
  (declare (type cmap12 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 8)))


(defun cmap12-language-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 8)))


(defun cmap12-num-groups (table)
  "Number of groupings which follow"
  (declare (type cmap12 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 12)))


(defun cmap12-num-groups-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 12)))


(defun cmap12-groups-count (table)
  "Array of SequentialMapGroup records."
  (cmap12-num-groups table))


(defun cmap12-groups-ref (table index)
  "Array of SequentialMapGroup records."
  (declare (type cmap12 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 16) (* index 12))))
    (unless
        (<= (+ pos 12) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 12 :length
             (table-ref-length table)))
    (%make-sequential-map-group (table-ref-font-data table) pos)))


(defun sanitize-cmap12 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 16 length) (font-data-valid-range-p font-data offset 16))
    (error 'font-out-of-bounds-error :pos offset :size 16 :length
           (font-data-length font-data)))
  (let ((cnt (cmap12-num-groups-raw font-data offset)))
    (unless
        (and (<= (+ 16 (* cnt 12)) length)
             (font-data-valid-range-p font-data offset (+ 16 (* cnt 12))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 16 (* cnt 12))
             :length (font-data-length font-data))))
  t)


(defun read-cmap12
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-cmap12 font-data offset length)
  (%make-cmap12 font-data offset length))


(defstruct
    (cmap13 (:include table-ref)
     (:constructor %make-cmap13
      (%table-font-data %table-offset %table-length))))


(declaim
 (inline cmap13-format-table cmap13-reserved cmap13-length cmap13-language
  cmap13-num-groups cmap13-groups-count cmap13-format-table-raw
  cmap13-reserved-raw cmap13-length-raw cmap13-language-raw
  cmap13-num-groups-raw))


(defun cmap13-format-table (table)
  "Subtable format; set to 13."
  (declare (type cmap13 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(defun cmap13-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun cmap13-reserved (table)
  "Reserved; set to 0"
  (declare (type cmap13 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun cmap13-reserved-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun cmap13-length (table)
  "Byte length of this subtable (including the header)"
  (declare (type cmap13 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(defun cmap13-length-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 4)))


(defun cmap13-language (table)
  "For requirements on use of the language field, see “Use of the language field in 'cmap' subtables” in this document."
  (declare (type cmap13 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 8)))


(defun cmap13-language-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 8)))


(defun cmap13-num-groups (table)
  "Number of groupings which follow"
  (declare (type cmap13 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 12)))


(defun cmap13-num-groups-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 12)))


(defun cmap13-groups-count (table)
  "Array of ConstantMapGroup records."
  (cmap13-num-groups table))


(defun cmap13-groups-ref (table index)
  "Array of ConstantMapGroup records."
  (declare (type cmap13 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 16) (* index 12))))
    (unless
        (<= (+ pos 12) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 12 :length
             (table-ref-length table)))
    (%make-constant-map-group (table-ref-font-data table) pos)))


(defun sanitize-cmap13 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 16 length) (font-data-valid-range-p font-data offset 16))
    (error 'font-out-of-bounds-error :pos offset :size 16 :length
           (font-data-length font-data)))
  (let ((cnt (cmap13-num-groups-raw font-data offset)))
    (unless
        (and (<= (+ 16 (* cnt 12)) length)
             (font-data-valid-range-p font-data offset (+ 16 (* cnt 12))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 16 (* cnt 12))
             :length (font-data-length font-data))))
  t)


(defun read-cmap13
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-cmap13 font-data offset length)
  (%make-cmap13 font-data offset length))


(defstruct
    (cmap14 (:include table-ref)
     (:constructor %make-cmap14
      (%table-font-data %table-offset %table-length))))


(declaim
 (inline cmap14-format-table cmap14-length cmap14-num-var-selector-records
  cmap14-var-selector-count cmap14-format-table-raw cmap14-length-raw
  cmap14-num-var-selector-records-raw))


(defun cmap14-format-table (table)
  "Subtable format. Set to 14."
  (declare (type cmap14 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(defun cmap14-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun cmap14-length (table)
  "Byte length of this subtable (including this header)"
  (declare (type cmap14 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun cmap14-length-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 2)))


(defun cmap14-num-var-selector-records (table)
  "Number of variation Selector Records"
  (declare (type cmap14 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6)))


(defun cmap14-num-var-selector-records-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 6)))


(defun cmap14-var-selector-count (table)
  "Array of VariationSelector records."
  (cmap14-num-var-selector-records table))


(defun cmap14-var-selector-ref (table index)
  "Array of VariationSelector records."
  (declare (type cmap14 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 10) (* index 11))))
    (unless
        (<= (+ pos 11) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 11 :length
             (table-ref-length table)))
    (%make-variation-selector (table-ref-font-data table) pos)))


(defun sanitize-cmap14 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 10 length) (font-data-valid-range-p font-data offset 10))
    (error 'font-out-of-bounds-error :pos offset :size 10 :length
           (font-data-length font-data)))
  (let ((cnt (cmap14-num-var-selector-records-raw font-data offset)))
    (unless
        (and (<= (+ 10 (* cnt 11)) length)
             (font-data-valid-range-p font-data offset (+ 10 (* cnt 11))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 10 (* cnt 11))
             :length (font-data-length font-data))))
  t)


(defun read-cmap14
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-cmap14 font-data offset length)
  (%make-cmap14 font-data offset length))


(defstruct
    (cmap15 (:include table-ref)
     (:constructor %make-cmap15
      (%table-font-data %table-offset %table-length))))


(declaim
 (inline cmap15-format-table cmap15-length cmap15-num-var-selector-records
  cmap15-var-selector-count cmap15-format-table-raw cmap15-length-raw
  cmap15-num-var-selector-records-raw))


(defun cmap15-format-table (table)
  "Subtable format. Set to 15."
  (declare (type cmap15 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(defun cmap15-format-table-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun cmap15-length (table)
  "Byte length of this subtable (including this header)."
  (declare (type cmap15 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun cmap15-length-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 2)))


(defun cmap15-num-var-selector-records (table)
  "Number of variation selector records."
  (declare (type cmap15 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6)))


(defun cmap15-num-var-selector-records-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 6)))


(defun cmap15-var-selector-count (table)
  (cmap15-num-var-selector-records table))


(defun cmap15-var-selector-ref (table index)
  (declare (type cmap15 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 10) (* index 11))))
    (unless
        (<= (+ pos 11) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 11 :length
             (table-ref-length table)))
    (%make-variation-selector15 (table-ref-font-data table) pos)))


(defun sanitize-cmap15 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 10 length) (font-data-valid-range-p font-data offset 10))
    (error 'font-out-of-bounds-error :pos offset :size 10 :length
           (font-data-length font-data)))
  (let ((cnt (cmap15-num-var-selector-records-raw font-data offset)))
    (unless
        (and (<= (+ 10 (* cnt 11)) length)
             (font-data-valid-range-p font-data offset (+ 10 (* cnt 11))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 10 (* cnt 11))
             :length (font-data-length font-data))))
  t)


(defun read-cmap15
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-cmap15 font-data offset length)
  (%make-cmap15 font-data offset length))


(defstruct
    (default-uvs (:include table-ref)
     (:constructor %make-default-uvs
      (%table-font-data %table-offset %table-length))))


(declaim
 (inline default-uvs-num-unicode-value-ranges default-uvs-ranges-count
  default-uvs-num-unicode-value-ranges-raw))


(defun default-uvs-num-unicode-value-ranges (table)
  "Number of Unicode character ranges."
  (declare (type default-uvs table))
  (font-data-read-u32 (table-ref-font-data table) (table-ref-offset table)))


(defun default-uvs-num-unicode-value-ranges-raw (font-data offset)
  (font-data-read-u32 font-data offset))


(defun default-uvs-ranges-count (table)
  "Array of UnicodeRange records."
  (default-uvs-num-unicode-value-ranges table))


(defun default-uvs-ranges-ref (table index)
  "Array of UnicodeRange records."
  (declare (type default-uvs table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 4) (* index 4))))
    (unless
        (<= (+ pos 4) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 4 :length
             (table-ref-length table)))
    (%make-unicode-range (table-ref-font-data table) pos)))


(defun sanitize-default-uvs (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 4 length) (font-data-valid-range-p font-data offset 4))
    (error 'font-out-of-bounds-error :pos offset :size 4 :length
           (font-data-length font-data)))
  (let ((cnt (default-uvs-num-unicode-value-ranges-raw font-data offset)))
    (unless
        (and (<= (+ 4 (* cnt 4)) length)
             (font-data-valid-range-p font-data offset (+ 4 (* cnt 4))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 4 (* cnt 4))
             :length (font-data-length font-data))))
  t)


(defun read-default-uvs
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-default-uvs font-data offset length)
  (%make-default-uvs font-data offset length))


(defstruct
    (non-default-uvs (:include table-ref)
     (:constructor %make-non-default-uvs
      (%table-font-data %table-offset %table-length))))


(declaim
 (inline non-default-uvs-num-uvs-mappings non-default-uvs-uvs-mapping-count
  non-default-uvs-num-uvs-mappings-raw))


(defun non-default-uvs-num-uvs-mappings (table)
  (declare (type non-default-uvs table))
  (font-data-read-u32 (table-ref-font-data table) (table-ref-offset table)))


(defun non-default-uvs-num-uvs-mappings-raw (font-data offset)
  (font-data-read-u32 font-data offset))


(defun non-default-uvs-uvs-mapping-count (table)
  (non-default-uvs-num-uvs-mappings table))


(defun non-default-uvs-uvs-mapping-ref (table index)
  (declare (type non-default-uvs table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 4) (* index 5))))
    (unless
        (<= (+ pos 5) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 5 :length
             (table-ref-length table)))
    (%make-uvs-mapping (table-ref-font-data table) pos)))


(defun sanitize-non-default-uvs (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 4 length) (font-data-valid-range-p font-data offset 4))
    (error 'font-out-of-bounds-error :pos offset :size 4 :length
           (font-data-length font-data)))
  (let ((cnt (non-default-uvs-num-uvs-mappings-raw font-data offset)))
    (unless
        (and (<= (+ 4 (* cnt 5)) length)
             (font-data-valid-range-p font-data offset (+ 4 (* cnt 5))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 4 (* cnt 5))
             :length (font-data-length font-data))))
  t)


(defun read-non-default-uvs
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-non-default-uvs font-data offset length)
  (%make-non-default-uvs font-data offset length))


(defstruct
    (non-default-uvs24 (:include table-ref)
     (:constructor %make-non-default-uvs24
      (%table-font-data %table-offset %table-length))))


(declaim
 (inline non-default-uvs24-num-uvs-mappings non-default-uvs24-uvs-mapping-count
  non-default-uvs24-num-uvs-mappings-raw))


(defun non-default-uvs24-num-uvs-mappings (table)
  (declare (type non-default-uvs24 table))
  (font-data-read-u32 (table-ref-font-data table) (table-ref-offset table)))


(defun non-default-uvs24-num-uvs-mappings-raw (font-data offset)
  (font-data-read-u32 font-data offset))


(defun non-default-uvs24-uvs-mapping-count (table)
  (non-default-uvs24-num-uvs-mappings table))


(defun non-default-uvs24-uvs-mapping-ref (table index)
  (declare (type non-default-uvs24 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 4) (* index 6))))
    (unless
        (<= (+ pos 6) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 6 :length
             (table-ref-length table)))
    (%make-uvs-mapping24 (table-ref-font-data table) pos)))


(defun sanitize-non-default-uvs24 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 4 length) (font-data-valid-range-p font-data offset 4))
    (error 'font-out-of-bounds-error :pos offset :size 4 :length
           (font-data-length font-data)))
  (let ((cnt (non-default-uvs24-num-uvs-mappings-raw font-data offset)))
    (unless
        (and (<= (+ 4 (* cnt 6)) length)
             (font-data-valid-range-p font-data offset (+ 4 (* cnt 6))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 4 (* cnt 6))
             :length (font-data-length font-data))))
  t)


(defun read-non-default-uvs24
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-non-default-uvs24 font-data offset length)
  (%make-non-default-uvs24 font-data offset length))

