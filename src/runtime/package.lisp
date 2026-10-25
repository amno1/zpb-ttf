;;;; package.lisp — OpenType runtime package for zpb-otf
;;;; Copyright (C) 2026 Arthur Miller and contributors
;;;; SPDX-License-Identifier: MIT

(defpackage #:zpb-otf
  (:nicknames #:otf)
  (:use #:cl)
  (:export
   ;; Conditions
   #:define-constant
   #:font-error
   #:font-out-of-bounds-error
   #:font-format-error
   #:font-version-error
   #:unsupported-format-error

   ;; Font data & slices
   #:font-data
   #:font-data-p
   #:make-font-data
   #:font-data-bytes
   #:font-data-offset
   #:font-data-length
   #:font-data-slice
   #:font-data-valid-range-p
   #:ensure-font-data

   ;; Big-endian primitive readers
   #:font-data-read-u8
   #:font-data-read-i8
   #:font-data-read-u16
   #:font-data-read-i16
   #:font-data-read-u24
   #:font-data-read-u32
   #:font-data-read-i32
   #:font-data-read-fixed
   #:font-data-read-f2dot14
   #:font-data-read-fword
   #:font-data-read-ufword
   #:font-data-read-tag
   #:font-data-read-tag-string
   #:font-data-read-long-date-time
   #:font-data-read-u64

   ;; Table & Record references
   #:table-ref
   #:table-ref-p
   #:table-ref-font-data
   #:table-ref-offset
   #:table-ref-length
   #:record-ref
   #:record-ref-p
   #:record-ref-font-data
   #:record-ref-offset
   #:resolve-offset16
   #:resolve-offset32
   #:resolve-nullable-offset16
   #:resolve-nullable-offset32))
