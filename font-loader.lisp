;;;; font-loader.lisp — Font loader object and metadata accessors
;;;; Copyright (c) 2006 Zachary Beane, 2026 Arthur Miller and contributors
;;;; SPDX-License-Identifier: BSD-2-Clause

(in-package #:zpb-ttf)

(defclass font-loader ()
  ((tables :initform (make-hash-table :test 'equal) :reader tables)
   (font-data :initarg :font-data :accessor font-data)
   (input-stream :initarg :input-stream :initform nil :accessor input-stream)
   (table-count :initarg :table-count :initform 0 :reader table-count)
   ;; from 'head' table
   (units/em :accessor units/em :initform 2048)
   (bounding-box :accessor bounding-box :initform #(0 0 0 0))
   (loca-offset-format :accessor loca-offset-format :initform :short)
   ;; from 'loca' table
   (glyph-locations :accessor glyph-locations :initform nil)
   ;; from 'cmap' table
   (character-map :accessor character-map :initform nil)
   (inverse-character-map :accessor inverse-character-map :initform nil)
   (cmap-lookup-fn :accessor cmap-lookup-fn :initform nil)
   ;; from 'maxp' table
   (glyph-count :accessor glyph-count :initform 0)
   ;; from 'hhea' table
   (ascender :accessor ascender :initform 0)
   (descender :accessor descender :initform 0)
   (line-gap :accessor line-gap :initform 0)
   (max-width :accessor max-width :initform 0)
   ;; from 'hmtx' table
   (advance-widths :accessor advance-widths :initform #())
   (left-side-bearings :accessor left-side-bearings :initform #())
   ;; from 'vhea' table
   (vhea-missing-p :initform nil :accessor vhea-missing-p)
   (vascender :accessor vascender :initform 0)
   (vdescender :accessor vdescender :initform 0)
   ;; from 'vhea' and 'vmtx' tables
   (vmtx-missing-p :initform nil :accessor vmtx-missing-p)
   (advance-heights :accessor advance-heights :initform #())
   (top-side-bearings :accessor top-side-bearings :initform #())
   ;; from 'kern' table
   (kerning-table :initform (make-hash-table) :accessor kerning-table)
   ;; from 'name' table
   (name-entries :initform nil :accessor name-entries)
   ;; from 'post' table
   (italic-angle :accessor italic-angle :initform 0)
   (fixed-pitch-p :accessor fixed-pitch-p :initform nil)
   (underline-position :accessor underline-position :initform 0)
   (underline-thickness :accessor underline-thickness :initform 0)
   (postscript-glyph-names :accessor postscript-glyph-names :initform nil)
   ;; glyph cache
   (glyph-cache :accessor glyph-cache :initform nil)
   ;; TTC info
   (collection-font-count :reader collection-font-count :initform nil :initarg :collection-font-count)
   (collection-font-index :reader collection-font-index :initform nil :initarg :collection-font-index)))

(defclass table-info ()
  ((name :initarg :name :reader name)
   (offset :initarg :offset :reader offset)
   (size :initarg :size :reader size)))

(defmethod print-object ((object table-info) stream)
  (print-unreadable-object (object stream :type t)
    (format stream "~S" (name object))))

(defmethod table-info ((tag string) (font-loader font-loader))
  (gethash tag (tables font-loader)))

(defmethod table-info ((tag integer) (font-loader font-loader))
  (gethash (tag->number-string tag) (tables font-loader)))

(defun tag->number-string (num)
  (let ((s (make-string 4)))
    (setf (char s 0) (code-char (ldb (byte 8 24) num))
          (char s 1) (code-char (ldb (byte 8 16) num))
          (char s 2) (code-char (ldb (byte 8 8) num))
          (char s 3) (code-char (ldb (byte 8 0) num)))
    s))

(defmethod table-exists-p (tag font-loader)
  (nth-value 1 (table-info tag font-loader)))

(defmethod table-position ((tag string) (font-loader font-loader))
  (let ((info (table-info tag font-loader)))
    (if info
        (offset info)
        (error "No such table -- ~A" tag))))

(defmethod table-size ((tag string) (font-loader font-loader))
  (let ((info (table-info tag font-loader)))
    (if info
        (size info)
        (error "No such table -- ~A" tag))))

;;; Name table entries

(defclass name-entry ()
  ((font-loader :initarg :font-loader :reader font-loader)
   (platform-id :initarg :platform-id :reader platform-id)
   (encoding-id :initarg :encoding-id :reader encoding-id)
   (language-id :initarg :language-id :reader language-id)
   (name-id :initarg :name-id :reader name-id)
   (value :initarg :value :reader value)))

(defmethod print-object ((entry name-entry) stream)
  (print-unreadable-object (entry stream :type t)
    (format stream "name-id=~D: ~S" (name-id entry) (value entry))))

(defvar *name-identifiers*
  #(:copyright-notice
    :font-family
    :font-subfamily
    :unique-subfamily
    :full-name
    :name-table-version
    :postscript-name
    :trademark-notice
    :manufacturer-name
    :designer
    :description
    :vendor-url
    :designer-url
    :license-description
    :licence-info-url
    :reserved
    :preferred-family
    :preferred-subfamily
    :compatible-full
    :sample-text))

(defun name-identifier-id (symbol)
  (let ((id (position symbol *name-identifiers*)))
    (if id id (error "Unknown NAME identifier: ~S" symbol))))

(defmethod find-name-entry (platform-id encoding-id language-id name-id
                            (font-loader font-loader))
  (loop for name-entry across (name-entries font-loader)
        when (and (or (null platform-id) (= (platform-id name-entry) platform-id))
                  (or (null encoding-id) (= (encoding-id name-entry) encoding-id))
                  (or (null language-id) (= (language-id name-entry) language-id))
                  (or (null name-id) (= (name-id name-entry) name-id)))
        return name-entry))

(defmethod name-entry-value (name-designator (font-loader font-loader))
  (let* ((name-id (etypecase name-designator
                    (keyword (name-identifier-id name-designator))
                    (integer name-designator)))
         (entry (or (find-name-entry 3 1 #x0409 name-id font-loader) ; Windows US-English
                    (find-name-entry 3 10 #x0409 name-id font-loader)
                    (find-name-entry 3 nil nil name-id font-loader)
                    (find-name-entry 0 nil nil name-id font-loader) ; Unicode
                    (find-name-entry 1 0 0 name-id font-loader)    ; Mac Roman
                    (find-name-entry nil nil nil name-id font-loader))))
    (when entry
      (value entry))))

(defmethod postscript-name ((font-loader font-loader))
  (name-entry-value :postscript-name font-loader))

(defmethod family-name ((font-loader font-loader))
  (name-entry-value :font-family font-loader))

(defmethod subfamily-name ((font-loader font-loader))
  (name-entry-value :font-subfamily font-loader))

(defmethod full-name ((font-loader font-loader))
  (name-entry-value :full-name font-loader))

;;; Character mapping & glyph indexing

(defgeneric code-point-font-index (code-point font-loader)
  (:method (code-point (font-loader font-loader))
    (let ((fn (cmap-lookup-fn font-loader)))
      (if fn
          (funcall fn code-point)
          0))))

(defgeneric font-index-code-point (glyph-index font-loader)
  (:method (glyph-index (font-loader font-loader))
    (let ((inv (inverse-character-map font-loader)))
      (if (and inv (< glyph-index (length inv)))
          (let ((cp (aref inv glyph-index)))
            (if (plusp cp) cp 0))
          0))))

(defmethod glyph-exists-p (char-or-code (font-loader font-loader))
  (let ((cp (if (characterp char-or-code) (char-code char-or-code) char-or-code)))
    (not (zerop (code-point-font-index cp font-loader)))))

(defmethod index-glyph (index (font-loader font-loader))
  (let ((cache (glyph-cache font-loader)))
    (when (and cache (< index (length cache)))
      (let ((existing (aref cache index)))
        (if existing
            existing
            (let ((g (make-instance 'glyph
                                    :font-loader font-loader
                                    :font-index index
                                    :code-point (font-index-code-point index font-loader))))
              (setf (aref cache index) g)
              g))))))

(defmethod find-glyph (char-or-code (font-loader font-loader))
  (let* ((cp (if (characterp char-or-code) (char-code char-or-code) char-or-code))
         (index (code-point-font-index cp font-loader)))
    (index-glyph index font-loader)))

(defmethod all-kerning-pairs ((font-loader font-loader))
  (let ((pairs '()))
    (maphash (lambda (k v)
               (let ((g1-idx (ldb (byte 16 16) k))
                     (g2-idx (ldb (byte 16 0) k)))
                 (push (list (index-glyph g1-idx font-loader)
                             (index-glyph g2-idx font-loader)
                             v)
                       pairs)))
             (kerning-table font-loader))
    pairs))