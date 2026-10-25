;;;; cblc.lisp — Generated OpenType tables
;;;; Generated automatically from OpenType sexp schema
;;;; DO NOT EDIT DIRECTLY


(in-package #:zpb-otf)


(export
 '(cblc cblc-bitmap-sizes cblc-bitmap-sizes-count cblc-bitmap-sizes-ref
   cblc-major-version cblc-minor-version cblc-num-sizes cblc-p read-cblc
   sanitize-cblc))


(defstruct
    (cblc (:include table-ref)
     (:constructor %make-cblc (%table-font-data %table-offset %table-length))))


(defun cblc-major-version (table)
  "Major version of the CBLC table, = 3."
  (declare (type cblc table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline cblc-major-version-raw))


(defun cblc-major-version-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun cblc-minor-version (table)
  "Minor version of CBLC table, = 0."
  (declare (type cblc table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline cblc-minor-version-raw))


(defun cblc-minor-version-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun cblc-num-sizes (table)
  "Number of BitmapSize records."
  (declare (type cblc table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline cblc-num-sizes-raw))


(defun cblc-num-sizes-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 4)))


(defun cblc-bitmap-sizes-count (table)
  "BitmapSize records array."
  (cblc-num-sizes table))


(declaim
 (inline cblc-major-version cblc-minor-version cblc-num-sizes cblc-bitmap-sizes
  cblc-bitmap-sizes-count))


(defun cblc-bitmap-sizes-ref (table index)
  "BitmapSize records array."
  (declare (type cblc table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 8) (* index 48))))
    (unless
        (<= (+ pos 48) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 48 :length
             (table-ref-length table)))
    (%make-bitmap-size (table-ref-font-data table) pos)))


(defun sanitize-cblc (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 8 length) (font-data-valid-range-p font-data offset 8))
    (error 'font-out-of-bounds-error :pos offset :size 8 :length
           (font-data-length font-data)))
  (let ((cnt (cblc-num-sizes-raw font-data offset)))
    (unless
        (and (<= (+ 8 (* cnt 48)) length)
             (font-data-valid-range-p font-data offset (+ 8 (* cnt 48))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 8 (* cnt 48))
             :length (font-data-length font-data))))
  t)


(defun read-cblc
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-cblc font-data offset length)
  (%make-cblc font-data offset length))

