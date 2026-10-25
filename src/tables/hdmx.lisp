;;;; hdmx.lisp — Generated OpenType tables
;;;; Generated automatically from OpenType sexp schema
;;;; DO NOT EDIT DIRECTLY


(in-package #:zpb-otf)


(export
 '(hdmx hdmx-num-records hdmx-p hdmx-records hdmx-size-device-record
   hdmx-version read-hdmx sanitize-hdmx))


(defstruct
    (hdmx (:include table-ref)
     (:constructor %make-hdmx (%table-font-data %table-offset %table-length))))


(declaim
 (inline hdmx-version hdmx-num-records hdmx-size-device-record hdmx-records
  hdmx-version-raw hdmx-num-records-raw hdmx-size-device-record-raw))


(defun hdmx-version (table)
  "Table version number (set to 0)."
  (declare (type hdmx table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(defun hdmx-version-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun hdmx-num-records (table)
  "Number of device records."
  (declare (type hdmx table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(defun hdmx-num-records-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun hdmx-size-device-record (table)
  "Size of device record, 32-bit aligned."
  (declare (type hdmx table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(defun hdmx-size-device-record-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 4)))


(defun sanitize-hdmx (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 8 length) (font-data-valid-range-p font-data offset 8))
    (error 'font-out-of-bounds-error :pos offset :size 8 :length
           (font-data-length font-data)))
  t)


(defun read-hdmx
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-hdmx font-data offset length)
  (%make-hdmx font-data offset length))

