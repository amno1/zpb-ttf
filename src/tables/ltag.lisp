;;;; ltag.lisp — Generated OpenType tables
;;;; Generated automatically from OpenType sexp schema
;;;; DO NOT EDIT DIRECTLY


(in-package #:zpb-otf)


(export
 '(+ft-string-range-size+ ft-string-range ft-string-range-length
   ft-string-range-offset ft-string-range-p ltag ltag-flags ltag-num-tags
   ltag-p ltag-tag-ranges ltag-tag-ranges-count ltag-tag-ranges-ref
   ltag-version read-ltag sanitize-ltag))


(defstruct
    (ft-string-range (:include record-ref)
     (:constructor %make-ft-string-range (%record-font-data %record-offset))))


(defun ft-string-range-offset (rec)
  "Offset from the start of the table to the beginning of the string."
  (declare (type ft-string-range rec))
  (font-data-read-u16 (record-ref-font-data rec) (record-ref-offset rec)))


(defun ft-string-range-length (rec)
  "String length (in bytes)."
  (declare (type ft-string-range rec))
  (font-data-read-u16 (record-ref-font-data rec) (+ (record-ref-offset rec) 2)))


(declaim (inline ft-string-range-offset ft-string-range-length))


(define-constant +ft-string-range-size+ 4)


(defstruct
    (ltag (:include table-ref)
     (:constructor %make-ltag (%table-font-data %table-offset %table-length))))


(defun ltag-version (table)
  "Table version; currently 1."
  (declare (type ltag table))
  (font-data-read-u32 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline ltag-version-raw))


(defun ltag-version-raw (font-data offset)
  (font-data-read-u32 font-data offset))


(defun ltag-flags (table)
  "Table flags; currently none defined."
  (declare (type ltag table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline ltag-flags-raw))


(defun ltag-flags-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 4)))


(defun ltag-num-tags (table)
  "Number of language tags which follow."
  (declare (type ltag table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 8)))


(declaim (inline ltag-num-tags-raw))


(defun ltag-num-tags-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 8)))


(defun ltag-tag-ranges-count (table)
  "Range of each tag's string."
  (ltag-num-tags table))


(declaim
 (inline ltag-version ltag-flags ltag-num-tags ltag-tag-ranges
  ltag-tag-ranges-count))


(defun ltag-tag-ranges-ref (table index)
  "Range of each tag's string."
  (declare (type ltag table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 12) (* index 4))))
    (unless
        (<= (+ pos 4) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 4 :length
             (table-ref-length table)))
    (%make-ft-string-range (table-ref-font-data table) pos)))


(defun sanitize-ltag (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 12 length) (font-data-valid-range-p font-data offset 12))
    (error 'font-out-of-bounds-error :pos offset :size 12 :length
           (font-data-length font-data)))
  (let ((cnt (ltag-num-tags-raw font-data offset)))
    (unless
        (and (<= (+ 12 (* cnt 4)) length)
             (font-data-valid-range-p font-data offset (+ 12 (* cnt 4))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 12 (* cnt 4))
             :length (font-data-length font-data))))
  t)


(defun read-ltag
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-ltag font-data offset length)
  (%make-ltag font-data offset length))

