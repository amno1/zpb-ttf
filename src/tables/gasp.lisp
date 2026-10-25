;;;; gasp.lisp — Generated OpenType tables
;;;; Generated automatically from OpenType sexp schema
;;;; DO NOT EDIT DIRECTLY


(in-package #:zpb-otf)


(export
 '(+gasp-range-behavior-gasp-dogray+ +gasp-range-behavior-gasp-gridfit+
   +gasp-range-behavior-gasp-symmetric-gridfit+
   +gasp-range-behavior-gasp-symmetric-smoothing+ +gasp-range-size+ gasp
   gasp-gasp-ranges gasp-gasp-ranges-count gasp-gasp-ranges-ref gasp-num-ranges
   gasp-p gasp-range gasp-range-p gasp-range-range-gasp-behavior
   gasp-range-range-max-ppem gasp-version read-gasp sanitize-gasp))


(define-constant +gasp-range-behavior-gasp-gridfit+ 1)


(define-constant +gasp-range-behavior-gasp-dogray+ 2)


(define-constant +gasp-range-behavior-gasp-symmetric-gridfit+ 4)


(define-constant +gasp-range-behavior-gasp-symmetric-smoothing+ 8)


(defstruct
    (gasp-range (:include record-ref)
     (:constructor %make-gasp-range (%record-font-data %record-offset))))


(defun gasp-range-range-max-ppem (rec)
  "Upper limit of range, in PPEM"
  (declare (type gasp-range rec))
  (font-data-read-u16 (record-ref-font-data rec) (record-ref-offset rec)))


(defun gasp-range-range-gasp-behavior (rec)
  "Flags describing desired rasterizer behavior."
  (declare (type gasp-range rec))
  (font-data-read-u16 (record-ref-font-data rec) (+ (record-ref-offset rec) 2)))


(declaim (inline gasp-range-range-max-ppem gasp-range-range-gasp-behavior))


(define-constant +gasp-range-size+ 4)


(defstruct
    (gasp (:include table-ref)
     (:constructor %make-gasp (%table-font-data %table-offset %table-length))))


(defun gasp-version (table)
  "Version number (set to 1)"
  (declare (type gasp table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline gasp-version-raw))


(defun gasp-version-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun gasp-num-ranges (table)
  "Number of records to follow"
  (declare (type gasp table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline gasp-num-ranges-raw))


(defun gasp-num-ranges-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun gasp-gasp-ranges-count (table) "Sorted by ppem" (gasp-num-ranges table))


(declaim
 (inline gasp-version gasp-num-ranges gasp-gasp-ranges gasp-gasp-ranges-count))


(defun gasp-gasp-ranges-ref (table index)
  "Sorted by ppem"
  (declare (type gasp table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 4) (* index 4))))
    (unless
        (<= (+ pos 4) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 4 :length
             (table-ref-length table)))
    (%make-gasp-range (table-ref-font-data table) pos)))


(defun sanitize-gasp (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 4 length) (font-data-valid-range-p font-data offset 4))
    (error 'font-out-of-bounds-error :pos offset :size 4 :length
           (font-data-length font-data)))
  (let ((cnt (gasp-num-ranges-raw font-data offset)))
    (unless
        (and (<= (+ 4 (* cnt 4)) length)
             (font-data-valid-range-p font-data offset (+ 4 (* cnt 4))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 4 (* cnt 4))
             :length (font-data-length font-data))))
  t)


(defun read-gasp
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-gasp font-data offset length)
  (%make-gasp font-data offset length))

