;;;; eblc.lisp — Generated OpenType tables
;;;; Generated automatically from OpenType sexp schema
;;;; DO NOT EDIT DIRECTLY


(in-package #:zpb-otf)


(export
 '(eblc eblc-bitmap-sizes eblc-bitmap-sizes-count eblc-bitmap-sizes-ref
   eblc-major-version eblc-minor-version eblc-num-sizes eblc-p read-eblc
   sanitize-eblc))


(defstruct
    (eblc (:include table-ref)
     (:constructor %make-eblc (%table-font-data %table-offset %table-length))))


(declaim
 (inline eblc-major-version eblc-minor-version eblc-num-sizes eblc-bitmap-sizes
  eblc-bitmap-sizes-count eblc-major-version-raw eblc-minor-version-raw
  eblc-num-sizes-raw))


(defun eblc-major-version (table)
  "Major version of the EBLC table, = 2."
  (declare (type eblc table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(defun eblc-major-version-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun eblc-minor-version (table)
  "Minor version of EBLC table, = 0."
  (declare (type eblc table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun eblc-minor-version-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun eblc-num-sizes (table)
  "Number of BitmapSize records."
  (declare (type eblc table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(defun eblc-num-sizes-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 4)))


(defun eblc-bitmap-sizes-count (table)
  "BitmapSize records array."
  (eblc-num-sizes table))


(defun eblc-bitmap-sizes-ref (table index)
  "BitmapSize records array."
  (declare (type eblc table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 8) (* index 48))))
    (unless
        (<= (+ pos 48) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 48 :length
             (table-ref-length table)))
    (%make-bitmap-size (table-ref-font-data table) pos)))


(defun sanitize-eblc (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 8 length) (font-data-valid-range-p font-data offset 8))
    (error 'font-out-of-bounds-error :pos offset :size 8 :length
           (font-data-length font-data)))
  (let ((cnt (eblc-num-sizes-raw font-data offset)))
    (unless
        (and (<= (+ 8 (* cnt 48)) length)
             (font-data-valid-range-p font-data offset (+ 8 (* cnt 48))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 8 (* cnt 48))
             :length (font-data-length font-data))))
  t)


(defun read-eblc
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-eblc font-data offset length)
  (%make-eblc font-data offset length))

