;;;; cvar.lisp — Generated OpenType tables
;;;; Generated automatically from OpenType sexp schema
;;;; DO NOT EDIT DIRECTLY


(in-package #:zpb-otf)


(export
 '(cvar cvar-data-offset cvar-data-offset-offset cvar-p
   cvar-tuple-variation-count cvar-tuple-variation-headers cvar-version
   read-cvar sanitize-cvar))


(defstruct
    (cvar (:include table-ref)
     (:constructor %make-cvar (%table-font-data %table-offset %table-length))))


(declaim
 (inline cvar-version cvar-tuple-variation-count cvar-data-offset
  cvar-data-offset-offset cvar-tuple-variation-headers cvar-version-raw))


(defun cvar-version (table)
  "Major/minor version number of the CVT variations table — set to (1,0)."
  (declare (type cvar table))
  (font-data-read-u32 (table-ref-font-data table) (table-ref-offset table)))


(defun cvar-version-raw (font-data offset)
  (font-data-read-u32 font-data offset))


(defun cvar-data-offset-offset (table)
  "Offset from the start of the 'cvar' table to the serialized data."
  (declare (type cvar table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(defun cvar-data-offset (table)
  "Offset from the start of the 'cvar' table to the serialized data."
  (declare (type cvar table))
  (let ((off (cvar-data-offset-offset table)))
    (when (and off (not (zerop off)))
      (font-data-slice (table-ref-font-data table)
                       (+ (table-ref-offset table) off)))))


(defun sanitize-cvar (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 6 length) (font-data-valid-range-p font-data offset 6))
    (error 'font-out-of-bounds-error :pos offset :size 6 :length
           (font-data-length font-data)))
  t)


(defun read-cvar
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-cvar font-data offset length)
  (%make-cvar font-data offset length))

