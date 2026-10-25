;;;; dsig.lisp — Generated OpenType tables
;;;; Generated automatically from OpenType sexp schema
;;;; DO NOT EDIT DIRECTLY


(in-package #:zpb-otf)


(export
 '(+permission-flags-cannot-be-resigned+ +signature-record-size+ dsig
   dsig-flags dsig-num-signatures dsig-p dsig-signature-records
   dsig-signature-records-count dsig-signature-records-ref dsig-version
   read-dsig read-signature-block-format1 sanitize-dsig
   sanitize-signature-block-format1 signature-block-format1
   signature-block-format1--reserved1 signature-block-format1--reserved2
   signature-block-format1-p signature-block-format1-signature
   signature-block-format1-signature-bytes
   signature-block-format1-signature-count
   signature-block-format1-signature-length
   signature-block-format1-signature-ref signature-record
   signature-record-format-table signature-record-length signature-record-p
   signature-record-signature-block-offset))


(define-constant +permission-flags-cannot-be-resigned+ 1)


(defstruct
    (signature-record (:include record-ref)
     (:constructor %make-signature-record (%record-font-data %record-offset))))


(defun signature-record-format-table (rec)
  "Format of the signature"
  (declare (type signature-record rec))
  (font-data-read-u32 (record-ref-font-data rec) (record-ref-offset rec)))


(defun signature-record-length (rec)
  "Length of signature in bytes"
  (declare (type signature-record rec))
  (font-data-read-u32 (record-ref-font-data rec) (+ (record-ref-offset rec) 4)))


(defun signature-record-signature-block-offset (rec)
  "Offset to the signature block from the beginning of the table"
  (declare (type signature-record rec))
  (font-data-read-u32 (record-ref-font-data rec) (+ (record-ref-offset rec) 8)))


(declaim
 (inline signature-record-format-table signature-record-length
  signature-record-signature-block-offset))


(define-constant +signature-record-size+ 12)


(defstruct
    (dsig (:include table-ref)
     (:constructor %make-dsig (%table-font-data %table-offset %table-length))))


(defun dsig-version (table)
  "Version number of the DSIG table (0x00000001)"
  (declare (type dsig table))
  (font-data-read-u32 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline dsig-version-raw))


(defun dsig-version-raw (font-data offset)
  (font-data-read-u32 font-data offset))


(defun dsig-num-signatures (table)
  "Number of signatures in the table"
  (declare (type dsig table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline dsig-num-signatures-raw))


(defun dsig-num-signatures-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun dsig-flags (table)
  "Permission flags"
  (declare (type dsig table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6)))


(declaim (inline dsig-flags-raw))


(defun dsig-flags-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 6)))


(defun dsig-signature-records-count (table)
  "Array of signature records"
  (dsig-num-signatures table))


(declaim
 (inline dsig-version dsig-num-signatures dsig-flags dsig-signature-records
  dsig-signature-records-count))


(defun dsig-signature-records-ref (table index)
  "Array of signature records"
  (declare (type dsig table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 8) (* index 12))))
    (unless
        (<= (+ pos 12) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 12 :length
             (table-ref-length table)))
    (%make-signature-record (table-ref-font-data table) pos)))


(defun sanitize-dsig (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 8 length) (font-data-valid-range-p font-data offset 8))
    (error 'font-out-of-bounds-error :pos offset :size 8 :length
           (font-data-length font-data)))
  (let ((cnt (dsig-num-signatures-raw font-data offset)))
    (unless
        (and (<= (+ 8 (* cnt 12)) length)
             (font-data-valid-range-p font-data offset (+ 8 (* cnt 12))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 8 (* cnt 12))
             :length (font-data-length font-data))))
  t)


(defun read-dsig
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-dsig font-data offset length)
  (%make-dsig font-data offset length))


(defstruct
    (signature-block-format1 (:include table-ref)
     (:constructor %make-signature-block-format1
      (%table-font-data %table-offset %table-length))))


(defun signature-block-format1--reserved1 (table)
  "Reserved for future use; set to zero."
  (declare (type signature-block-format1 table))
  (font-data-read-u16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline signature-block-format1--reserved1-raw))


(defun signature-block-format1--reserved1-raw (font-data offset)
  (font-data-read-u16 font-data offset))


(defun signature-block-format1--reserved2 (table)
  "Reserved for future use; set to zero."
  (declare (type signature-block-format1 table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline signature-block-format1--reserved2-raw))


(defun signature-block-format1--reserved2-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 2)))


(defun signature-block-format1-signature-length (table)
  "Length (in bytes) of the PKCS#7 packet in the signature field."
  (declare (type signature-block-format1 table))
  (font-data-read-u32 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline signature-block-format1-signature-length-raw))


(defun signature-block-format1-signature-length-raw (font-data offset)
  (font-data-read-u32 font-data (+ offset 4)))


(defun signature-block-format1-signature-count (table)
  "PKCS#7 packet"
  (signature-block-format1-signature-length table))


(defun signature-block-format1-signature-ref (table index)
  "PKCS#7 packet"
  (declare (type signature-block-format1 table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 8) (* index 1))))
    (unless
        (<= (+ pos 1) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 1 :length
             (table-ref-length table)))
    (font-data-read-u8 (table-ref-font-data table) pos)))


(declaim
 (inline signature-block-format1--reserved1 signature-block-format1--reserved2
  signature-block-format1-signature-length signature-block-format1-signature
  signature-block-format1-signature-count))


(defun signature-block-format1-signature-bytes (table)
  "PKCS#7 packet"
  (font-data-slice (table-ref-font-data table) (+ (table-ref-offset table) 8)
                   (signature-block-format1-signature-count table)))


(defun sanitize-signature-block-format1 (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 8 length) (font-data-valid-range-p font-data offset 8))
    (error 'font-out-of-bounds-error :pos offset :size 8 :length
           (font-data-length font-data)))
  (let ((cnt (signature-block-format1-signature-length-raw font-data offset)))
    (unless
        (and (<= (+ 8 (* cnt 1)) length)
             (font-data-valid-range-p font-data offset (+ 8 (* cnt 1))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 8 (* cnt 1))
             :length (font-data-length font-data))))
  t)


(defun read-signature-block-format1
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-signature-block-format1 font-data offset length)
  (%make-signature-block-format1 font-data offset length))

