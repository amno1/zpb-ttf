;;;; ebdt.lisp — Generated OpenType tables
;;;; Generated automatically from OpenType sexp schema
;;;; DO NOT EDIT DIRECTLY


(in-package #:zpb-otf)


(export
 '(ebdt ebdt-major-version ebdt-minor-version ebdt-p read-ebdt sanitize-ebdt))


(defstruct
    (ebdt (:include table-ref)
     (:constructor %make-ebdt (%table-font-data %table-offset %table-length))))


(defun ebdt-major-version (table)
  "Major version of the EBDT table, = 2."
  (declare (type ebdt table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline ebdt-major-version-raw))


(defun ebdt-major-version-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun ebdt-minor-version (table)
  "Minor version of EBDT table, = 0."
  (declare (type ebdt table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline ebdt-minor-version-raw))


(declaim (inline ebdt-major-version ebdt-minor-version))


(defun ebdt-minor-version-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun sanitize-ebdt (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 4 length) (font-data-valid-range-p font-data offset 4))
    (error 'font-out-of-bounds-error :pos offset :size 4 :length
           (font-data-length font-data)))
  t)


(defun read-ebdt
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-ebdt font-data offset length)
  (%make-ebdt font-data offset length))

