;;;; package.lisp — OpenType spec code generator for Common Lisp
;;;; Copyright (C) 2026 Arthur Miller and contributors
;;;; SPDX-License-Identifier: MIT

(defpackage #:zpb-otf/codegen
  (:nicknames #:otf-codegen)
  (:use #:cl #:zpb-otf)
  (:export
   #:read-sexp-file
   #:emit-file-forms
   #:generate-table-file
   #:generate-all-tables))
