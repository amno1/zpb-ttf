;;;; mvar.lisp — Generated OpenType tables
;;;; Generated automatically from OpenType sexp schema
;;;; DO NOT EDIT DIRECTLY
;;;; Copyright (C) 2026 Arthur Miller and contributors
;;;; SPDX-License-Identifier: MIT


(in-package #:zpb-otf)


(export
 '(+value-record-size+ mvar mvar--reserved mvar-item-variation-store-offset
   mvar-item-variation-store-offset-offset mvar-p mvar-value-record-count
   mvar-value-record-size mvar-value-records mvar-value-records-count
   mvar-value-records-ref mvar-version read-mvar sanitize-mvar value-record
   value-record-delta-set-inner-index value-record-delta-set-outer-index
   value-record-p value-record-value-tag))


(defstruct
    (value-record (:include record-ref)
     (:constructor %make-value-record (%record-font-data %record-offset))))


(define-constant +value-record-size+ 8)


(declaim
 (inline value-record-value-tag value-record-delta-set-outer-index
  value-record-delta-set-inner-index))


(defun value-record-value-tag (rec)
  "Four-byte tag identifying a font-wide measure."
  (declare (type value-record rec))
  (font-data-read-tag-string (record-ref-font-data rec)
                             (record-ref-offset rec)))


(defun value-record-delta-set-outer-index (rec)
  "A delta-set outer index — used to select an item variation data subtable within the item variation store."
  (declare (type value-record rec))
  (font-data-read-u16 (record-ref-font-data rec) (+ (record-ref-offset rec) 4)))


(defun value-record-delta-set-inner-index (rec)
  "A delta-set inner index — used to select a delta-set row within an item variation data subtable."
  (declare (type value-record rec))
  (font-data-read-u16 (record-ref-font-data rec) (+ (record-ref-offset rec) 6)))


(defstruct
    (mvar (:include table-ref)
     (:constructor %make-mvar (%table-font-data %table-offset %table-length))))


(declaim
 (inline mvar-version mvar--reserved mvar-value-record-size
  mvar-value-record-count mvar-item-variation-store-offset
  mvar-item-variation-store-offset-offset mvar-value-records-count
  mvar-version-raw mvar--reserved-raw mvar-value-record-size-raw
  mvar-value-record-count-raw))


(defun mvar-version (table)
  "Major version number of the horizontal metrics variations table — set to 1. Minor version number of the horizontal metrics variations table — set to 0."
  (declare (type mvar table))
  (font-data-read-u32 (table-ref-font-data table) (table-ref-offset table)))


(defun mvar-version-raw (font-data offset)
  (font-data-read-u32 font-data offset))


(defun mvar--reserved (table)
  "Not used; set to 0."
  (declare (type mvar table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(defun mvar--reserved-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 4)))


(defun mvar-value-record-size (table)
  "The size in bytes of each value record — must be greater than zero."
  (declare (type mvar table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6)))


(defun mvar-value-record-size-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 6)))


(defun mvar-value-record-count (table)
  "The number of value records — may be zero."
  (declare (type mvar table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 8)))


(defun mvar-value-record-count-raw (font-data offset)
  (font-data-read-u16 font-data (+ offset 8)))


(defun mvar-item-variation-store-offset-offset (table)
  "Offset in bytes from the start of this table to the item variation store table. If valueRecordCount is zero, set to zero; if valueRecordCount is greater than zero, must be greater than zero."
  (declare (type mvar table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 10)))


(defun mvar-item-variation-store-offset (table)
  "Offset in bytes from the start of this table to the item variation store table. If valueRecordCount is zero, set to zero; if valueRecordCount is greater than zero, must be greater than zero."
  (declare (type mvar table))
  (let ((off (mvar-item-variation-store-offset-offset table)))
    (when (and off (not (zerop off)))
      (read-item-variation-store (table-ref-font-data table)
       (+ (table-ref-offset table) off)))))


(defun mvar-value-records-count (table)
  "Array of value records that identify target items and the associated delta-set index for each. The valueTag records must be in binary order of their valueTag field."
  (mvar-value-record-count table))


(defun mvar-value-records-ref (table index)
  "Array of value records that identify target items and the associated delta-set index for each. The valueTag records must be in binary order of their valueTag field."
  (declare (type mvar table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 12) (* index 8))))
    (unless
        (<= (+ pos 8) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 8 :length
             (table-ref-length table)))
    (%make-value-record (table-ref-font-data table) pos)))


(defun sanitize-mvar (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 12 length) (font-data-valid-range-p font-data offset 12))
    (error 'font-out-of-bounds-error :pos offset :size 12 :length
           (font-data-length font-data)))
  (let ((cnt (mvar-value-record-count-raw font-data offset)))
    (unless
        (and (<= (+ 12 (* cnt 8)) length)
             (font-data-valid-range-p font-data offset (+ 12 (* cnt 8))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 12 (* cnt 8))
             :length (font-data-length font-data))))
  t)


(defun read-mvar
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-mvar font-data offset length)
  (%make-mvar font-data offset length))

