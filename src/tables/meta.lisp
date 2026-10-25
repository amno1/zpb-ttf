;;;; meta.lisp — Generated OpenType tables
;;;; Generated automatically from OpenType sexp schema
;;;; DO NOT EDIT DIRECTLY


(in-package #:zpb-otf)


(export
 '(+data-map-record-size+ data-map-record data-map-record-data-length
   data-map-record-data-offset data-map-record-p data-map-record-tag meta
   meta-data-maps meta-data-maps-count meta-data-maps-ref meta-flags meta-p
   meta-reserved meta-version read-meta sanitize-meta))


(defstruct
    (data-map-record (:include record-ref)
     (:constructor %make-data-map-record (%record-font-data %record-offset))))


(defun data-map-record-tag (rec)
  "A tag indicating the type of metadata."
  (declare (type data-map-record rec))
  (font-data-read-tag-string (record-ref-font-data rec)
                             (record-ref-offset rec)))


(defun data-map-record-data-offset (rec)
  "Offset in bytes from the beginning of the metadata table to the data for this tag."
  (declare (type data-map-record rec))
  (font-data-read-u32 (record-ref-font-data rec) (+ (record-ref-offset rec) 4)))


(defun data-map-record-data-length (rec)
  "Length of the data, in bytes. The data is not required to be padded to any byte boundary."
  (declare (type data-map-record rec))
  (font-data-read-u32 (record-ref-font-data rec) (+ (record-ref-offset rec) 8)))


(declaim
 (inline data-map-record-tag data-map-record-data-offset
  data-map-record-data-length))


(define-constant +data-map-record-size+ 12)


(defstruct
    (meta (:include table-ref)
     (:constructor %make-meta (%table-font-data %table-offset %table-length))))


(defun meta-version (table)
  "Version number of the metadata table — set to 1."
  (declare (type meta table))
  (font-data-read-u32 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline meta-version-raw))


(defun meta-version-raw (font-data offset)
  (font-data-read-u32 font-data offset))


(defun meta-flags (table)
  "Flags — currently unused; set to 0."
  (declare (type meta table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline meta-flags-raw))


(defun meta-flags-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 4)))


(defun meta-reserved (table)
  "Not used; set to 0."
  (declare (type meta table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 8)))


(declaim (inline meta-reserved-raw))


(defun meta-reserved-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 8)))


(defun meta-data-maps-count (table)
  "The number of data maps in the table."
  (declare (type meta table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 12)))


(declaim (inline meta-data-maps-count-raw))


(defun meta-data-maps-count-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 12)))


(declaim
 (inline meta-version meta-flags meta-reserved meta-data-maps-count
  meta-data-maps meta-data-maps-array-count))


(defun meta-data-maps-ref (table index)
  "Array of data map records."
  (declare (type meta table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 16) (* index 12))))
    (unless
        (<= (+ pos 12) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 12 :length
             (table-ref-length table)))
    (%make-data-map-record (table-ref-font-data table) pos)))


(defun sanitize-meta (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 16 length) (font-data-valid-range-p font-data offset 16))
    (error 'font-out-of-bounds-error :pos offset :size 16 :length
           (font-data-length font-data)))
  (let ((cnt (meta-data-maps-count-raw font-data offset)))
    (unless
        (and (<= (+ 16 (* cnt 12)) length)
             (font-data-valid-range-p font-data offset (+ 16 (* cnt 12))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 16 (* cnt 12))
             :length (font-data-length font-data))))
  t)


(defun read-meta
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-meta font-data offset length)
  (%make-meta font-data offset length))

