;;;; zpb-otf.asd — OpenType font parsing system for Common Lisp
;;;; Copyright (C) 2026 Arthur Miller and contributors
;;;; SPDX-License-Identifier: MIT

(asdf:defsystem #:zpb-otf/runtime
  :version "0.1.0"
  :author "Arthur Miller and contributors"
  :description "Runtime structures, buffer reading, and base condition classes for zpb-otf"
  :license "MIT"
  :serial t
  :components ((:module "src"
                :serial t
                :components ((:module "runtime"
                              :serial t
                              :components ((:file "package")
                                           (:file "conditions")
                                           (:file "font-data")
                                           (:file "table-ref")))))))

(asdf:defsystem #:zpb-otf/codegen
  :version "0.1.0"
  :author "Arthur Miller and contributors"
  :description "OpenType table code generator from s-expression schema"
  :license "MIT"
  :depends-on (#:zpb-otf/runtime)
  :serial t
  :components ((:module "codegen"
                :serial t
                :components ((:file "package")
                             (:file "emitter")
                             (:file "generator")))))

(asdf:defsystem #:zpb-otf
  :version "0.1.0"
  :author "Arthur Miller and contributors"
  :description "Zero-copy, bounds-checked OpenType table parser generated from Microsoft OpenType spec"
  :license "MIT"
  :depends-on (#:zpb-otf/runtime)
  :serial t
  :components ((:module "src"
                :serial t
                :components ((:module "tables"
                              :serial nil
                              :components (
               (:file "aat")
               (:file "ankr")
               (:file "avar")
               (:file "base")
               (:file "bitmap")
               (:file "cbdt")
               (:file "cblc")
               (:file "cff")
               (:file "cff2")
               (:file "cmap")
               (:file "colr")
               (:file "cpal")
               (:file "cvar")
               (:file "dsig")
               (:file "ebdt")
               (:file "eblc")
               (:file "feat")
               (:file "font")
               (:file "fvar")
               (:file "gasp")
               (:file "gdef")
               (:file "glyf")
               (:file "gpos")
               (:file "gsub")
               (:file "gvar")
               (:file "hdmx")
               (:file "head")
               (:file "hhea")
               (:file "hmtx")
               (:file "hvar")
               (:file "ift")
               (:file "kerx")
               (:file "kern")
               (:file "layout")
               (:file "ltag")
               (:file "math")
               (:file "maxp")
               (:file "meta")
               (:file "mort")
               (:file "morx")
               (:file "mvar")
               (:file "name")
               (:file "os2")
               (:file "post")
               (:file "sbix")
               (:file "stat")
               (:file "svg")
               (:file "trak")
               (:file "varc")
               (:file "variations")
               (:file "vhea")
               (:file "vmtx")
               (:file "vorg")
               (:file "vvar")
                              ))))))
