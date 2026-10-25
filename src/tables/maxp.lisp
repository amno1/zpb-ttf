;;;; maxp.lisp — Generated OpenType tables
;;;; Generated automatically from OpenType sexp schema
;;;; DO NOT EDIT DIRECTLY
;;;; Copyright (C) 2026 Arthur Miller and contributors
;;;; SPDX-License-Identifier: MIT


(in-package #:zpb-otf)


(export
 '(maxp maxp-extended maxp-extended-max-component-depth
   maxp-extended-max-component-elements maxp-extended-max-composite-contours
   maxp-extended-max-composite-points maxp-extended-max-contours
   maxp-extended-max-function-defs maxp-extended-max-instruction-defs
   maxp-extended-max-points maxp-extended-max-size-of-instructions
   maxp-extended-max-stack-elements maxp-extended-max-storage
   maxp-extended-max-twilight-points maxp-extended-max-zones
   maxp-extended-num-glyphs maxp-extended-p maxp-extended-version
   maxp-max-component-depth maxp-max-component-elements
   maxp-max-composite-contours maxp-max-composite-points maxp-max-contours
   maxp-max-function-defs maxp-max-instruction-defs maxp-max-points
   maxp-max-size-of-instructions maxp-max-stack-elements maxp-max-storage
   maxp-max-twilight-points maxp-max-zones maxp-num-glyphs maxp-p maxp-version
   read-maxp read-maxp-extended sanitize-maxp sanitize-maxp-extended))


(defstruct
    (maxp (:include table-ref)
     (:constructor %make-maxp (%table-font-data %table-offset %table-length))))


(declaim
 (inline maxp-version maxp-num-glyphs maxp-max-points maxp-max-contours
  maxp-max-composite-points maxp-max-composite-contours maxp-max-zones
  maxp-max-twilight-points maxp-max-storage maxp-max-function-defs
  maxp-max-instruction-defs maxp-max-stack-elements
  maxp-max-size-of-instructions maxp-max-component-elements
  maxp-max-component-depth maxp-version-raw maxp-num-glyphs-raw
  maxp-max-points-raw maxp-max-contours-raw maxp-max-composite-points-raw
  maxp-max-composite-contours-raw maxp-max-zones-raw
  maxp-max-twilight-points-raw maxp-max-storage-raw maxp-max-function-defs-raw
  maxp-max-instruction-defs-raw maxp-max-stack-elements-raw
  maxp-max-size-of-instructions-raw maxp-max-component-elements-raw
  maxp-max-component-depth-raw))


(defun maxp-version (table)
  "The version: 0x00005000 for version 0.5, 0x00010000 for version 1.0."
  (declare (type maxp table))
  (font-data-read-u32 (table-ref-font-data table) (table-ref-offset table)))


(defun maxp-version-raw (font-data offset)
  (font-data-read-u32 font-data offset))


(defun maxp-num-glyphs (table)
  "The number of glyphs in the font."
  (declare (type maxp table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(defun maxp-num-glyphs-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun maxp-max-points (table)
  "Maximum points in a non-composite glyph."
  (declare (type maxp table))
  (when (>= (table-ref-length table) 8)
    (font-data-read-u16 (table-ref-font-data table)
                        (+ (table-ref-offset table) 6))))


(defun maxp-max-points-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 6)))


(defun maxp-max-contours (table)
  "Maximum contours in a non-composite glyph."
  (declare (type maxp table))
  (when (>= (table-ref-length table) 10)
    (font-data-read-u16 (table-ref-font-data table)
                        (+ (table-ref-offset table) 8))))


(defun maxp-max-contours-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 8)))


(defun maxp-max-composite-points (table)
  "Maximum points in a composite glyph."
  (declare (type maxp table))
  (when (>= (table-ref-length table) 12)
    (font-data-read-u16 (table-ref-font-data table)
                        (+ (table-ref-offset table) 10))))


(defun maxp-max-composite-points-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 10)))


(defun maxp-max-composite-contours (table)
  "Maximum contours in a composite glyph."
  (declare (type maxp table))
  (when (>= (table-ref-length table) 14)
    (font-data-read-u16 (table-ref-font-data table)
                        (+ (table-ref-offset table) 12))))


(defun maxp-max-composite-contours-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 12)))


(defun maxp-max-zones (table)
  "1 if instructions do not use the twilight zone (Z0), or 2 if instructions do use Z0; should be set to 2 in most cases."
  (declare (type maxp table))
  (when (>= (table-ref-length table) 16)
    (font-data-read-u16 (table-ref-font-data table)
                        (+ (table-ref-offset table) 14))))


(defun maxp-max-zones-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 14)))


(defun maxp-max-twilight-points (table)
  "Maximum points used in Z0."
  (declare (type maxp table))
  (when (>= (table-ref-length table) 18)
    (font-data-read-u16 (table-ref-font-data table)
                        (+ (table-ref-offset table) 16))))


(defun maxp-max-twilight-points-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 16)))


(defun maxp-max-storage (table)
  "Number of Storage Area locations."
  (declare (type maxp table))
  (when (>= (table-ref-length table) 20)
    (font-data-read-u16 (table-ref-font-data table)
                        (+ (table-ref-offset table) 18))))


(defun maxp-max-storage-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 18)))


(defun maxp-max-function-defs (table)
  "Number of FDEFs, equal to the highest function number + 1."
  (declare (type maxp table))
  (when (>= (table-ref-length table) 22)
    (font-data-read-u16 (table-ref-font-data table)
                        (+ (table-ref-offset table) 20))))


(defun maxp-max-function-defs-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 20)))


(defun maxp-max-instruction-defs (table)
  "Number of IDEFs."
  (declare (type maxp table))
  (when (>= (table-ref-length table) 24)
    (font-data-read-u16 (table-ref-font-data table)
                        (+ (table-ref-offset table) 22))))


(defun maxp-max-instruction-defs-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 22)))


(defun maxp-max-stack-elements (table)
  "Maximum stack depth across Font Program ('fpgm' table), CVT Program ('prep' table) and all glyph instructions (in the 'glyf' table)."
  (declare (type maxp table))
  (when (>= (table-ref-length table) 26)
    (font-data-read-u16 (table-ref-font-data table)
                        (+ (table-ref-offset table) 24))))


(defun maxp-max-stack-elements-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 24)))


(defun maxp-max-size-of-instructions (table)
  "Maximum byte count for glyph instructions."
  (declare (type maxp table))
  (when (>= (table-ref-length table) 28)
    (font-data-read-u16 (table-ref-font-data table)
                        (+ (table-ref-offset table) 26))))


(defun maxp-max-size-of-instructions-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 26)))


(defun maxp-max-component-elements (table)
  "Maximum number of components referenced at “top level” for any composite glyph."
  (declare (type maxp table))
  (when (>= (table-ref-length table) 30)
    (font-data-read-u16 (table-ref-font-data table)
                        (+ (table-ref-offset table) 28))))


(defun maxp-max-component-elements-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 28)))


(defun maxp-max-component-depth (table)
  "Maximum levels of recursion; 1 for simple components."
  (declare (type maxp table))
  (when (>= (table-ref-length table) 32)
    (font-data-read-u16 (table-ref-font-data table)
                        (+ (table-ref-offset table) 30))))


(defun maxp-max-component-depth-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 30)))


(defun sanitize-maxp (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 6 length) (font-data-valid-range-p font-data offset 6))
    (error 'font-out-of-bounds-error :pos offset :size 6 :length
           (font-data-length font-data)))
  t)


(defun read-maxp
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-maxp font-data offset length)
  (%make-maxp font-data offset length))


(defstruct
    (maxp-extended (:include table-ref)
     (:constructor %make-maxp-extended
      (%table-font-data %table-offset %table-length))))


(declaim
 (inline maxp-extended-version maxp-extended-num-glyphs
  maxp-extended-max-points maxp-extended-max-contours
  maxp-extended-max-composite-points maxp-extended-max-composite-contours
  maxp-extended-max-zones maxp-extended-max-twilight-points
  maxp-extended-max-storage maxp-extended-max-function-defs
  maxp-extended-max-instruction-defs maxp-extended-max-stack-elements
  maxp-extended-max-size-of-instructions maxp-extended-max-component-elements
  maxp-extended-max-component-depth maxp-extended-version-raw
  maxp-extended-num-glyphs-raw maxp-extended-max-points-raw
  maxp-extended-max-contours-raw maxp-extended-max-composite-points-raw
  maxp-extended-max-composite-contours-raw maxp-extended-max-zones-raw
  maxp-extended-max-twilight-points-raw maxp-extended-max-storage-raw
  maxp-extended-max-function-defs-raw maxp-extended-max-instruction-defs-raw
  maxp-extended-max-stack-elements-raw
  maxp-extended-max-size-of-instructions-raw
  maxp-extended-max-component-elements-raw
  maxp-extended-max-component-depth-raw))


(defun maxp-extended-version (table)
  (declare (type maxp-extended table))
  (font-data-read-u32 (table-ref-font-data table) (table-ref-offset table)))


(defun maxp-extended-version-raw (font-data offset)
  (font-data-read-u32 font-data offset))


(defun maxp-extended-num-glyphs (table)
  "The number of glyphs in the font."
  (declare (type maxp-extended table))
  (font-data-read-u24 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(defun maxp-extended-num-glyphs-raw (font-data offset)
  (font-data-read-u24 font-data (+ offset 4)))


(defun maxp-extended-max-points (table)
  "Maximum points in a non-composite glyph."
  (declare (type maxp-extended table))
  (when (>= (table-ref-length table) 9)
    (font-data-read-u16 (table-ref-font-data table)
                        (+ (table-ref-offset table) 7))))


(defun maxp-extended-max-points-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 7)))


(defun maxp-extended-max-contours (table)
  "Maximum contours in a non-composite glyph."
  (declare (type maxp-extended table))
  (when (>= (table-ref-length table) 11)
    (font-data-read-u16 (table-ref-font-data table)
                        (+ (table-ref-offset table) 9))))


(defun maxp-extended-max-contours-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 9)))


(defun maxp-extended-max-composite-points (table)
  "Maximum points in a composite glyph."
  (declare (type maxp-extended table))
  (when (>= (table-ref-length table) 13)
    (font-data-read-u16 (table-ref-font-data table)
                        (+ (table-ref-offset table) 11))))


(defun maxp-extended-max-composite-points-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 11)))


(defun maxp-extended-max-composite-contours (table)
  "Maximum contours in a composite glyph."
  (declare (type maxp-extended table))
  (when (>= (table-ref-length table) 15)
    (font-data-read-u16 (table-ref-font-data table)
                        (+ (table-ref-offset table) 13))))


(defun maxp-extended-max-composite-contours-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 13)))


(defun maxp-extended-max-zones (table)
  "Number of zones used by instructions."
  (declare (type maxp-extended table))
  (when (>= (table-ref-length table) 17)
    (font-data-read-u16 (table-ref-font-data table)
                        (+ (table-ref-offset table) 15))))


(defun maxp-extended-max-zones-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 15)))


(defun maxp-extended-max-twilight-points (table)
  "Maximum points in the twilight zone."
  (declare (type maxp-extended table))
  (when (>= (table-ref-length table) 19)
    (font-data-read-u16 (table-ref-font-data table)
                        (+ (table-ref-offset table) 17))))


(defun maxp-extended-max-twilight-points-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 17)))


(defun maxp-extended-max-storage (table)
  "Number of storage locations."
  (declare (type maxp-extended table))
  (when (>= (table-ref-length table) 21)
    (font-data-read-u16 (table-ref-font-data table)
                        (+ (table-ref-offset table) 19))))


(defun maxp-extended-max-storage-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 19)))


(defun maxp-extended-max-function-defs (table)
  "Number of function definitions."
  (declare (type maxp-extended table))
  (when (>= (table-ref-length table) 23)
    (font-data-read-u16 (table-ref-font-data table)
                        (+ (table-ref-offset table) 21))))


(defun maxp-extended-max-function-defs-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 21)))


(defun maxp-extended-max-instruction-defs (table)
  "Number of instruction definitions."
  (declare (type maxp-extended table))
  (when (>= (table-ref-length table) 25)
    (font-data-read-u16 (table-ref-font-data table)
                        (+ (table-ref-offset table) 23))))


(defun maxp-extended-max-instruction-defs-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 23)))


(defun maxp-extended-max-stack-elements (table)
  "Maximum interpreter stack depth."
  (declare (type maxp-extended table))
  (when (>= (table-ref-length table) 27)
    (font-data-read-u16 (table-ref-font-data table)
                        (+ (table-ref-offset table) 25))))


(defun maxp-extended-max-stack-elements-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 25)))


(defun maxp-extended-max-size-of-instructions (table)
  "Maximum glyph instruction byte count."
  (declare (type maxp-extended table))
  (when (>= (table-ref-length table) 29)
    (font-data-read-u16 (table-ref-font-data table)
                        (+ (table-ref-offset table) 27))))


(defun maxp-extended-max-size-of-instructions-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 27)))


(defun maxp-extended-max-component-elements (table)
  "Maximum top-level component count."
  (declare (type maxp-extended table))
  (when (>= (table-ref-length table) 31)
    (font-data-read-u16 (table-ref-font-data table)
                        (+ (table-ref-offset table) 29))))


(defun maxp-extended-max-component-elements-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 29)))


(defun maxp-extended-max-component-depth (table)
  "Maximum component recursion depth."
  (declare (type maxp-extended table))
  (when (>= (table-ref-length table) 33)
    (font-data-read-u16 (table-ref-font-data table)
                        (+ (table-ref-offset table) 31))))


(defun maxp-extended-max-component-depth-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 31)))


(defun sanitize-maxp-extended (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 7 length) (font-data-valid-range-p font-data offset 7))
    (error 'font-out-of-bounds-error :pos offset :size 7 :length
           (font-data-length font-data)))
  t)


(defun read-maxp-extended
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-maxp-extended font-data offset length)
  (%make-maxp-extended font-data offset length))

