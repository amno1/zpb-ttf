;;;; emitter.lisp — S-Expression to Common Lisp table compiler
;;;; Copyright (C) 2026 Arthur Miller and contributors
;;;; SPDX-License-Identifier: MIT

(in-package #:zpb-otf/codegen)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (unless (find-package :zpb-otf/schema)
    (make-package :zpb-otf/schema :use '(:cl)))
  (export (mapcar (lambda (s) (intern s :zpb-otf/schema))
                  '("TABLE" "RECORD" "FORMAT" "FLAGS" "ENUM" "FIELD" "VARIANT" "ARRAY"))
          :zpb-otf/schema))

(defvar *known-tables* (make-hash-table :test 'equal))
(defvar *known-records* (make-hash-table :test 'equal))
(defvar *known-formats* (make-hash-table :test 'equal))
(defvar *known-enums* (make-hash-table :test 'equal))
(defvar *known-flags* (make-hash-table :test 'equal))
(defvar *record-size-cache* (make-hash-table :test 'equal))
(defvar *exports* '())
(defvar *module-name* nil)
(defvar *visiting-records* '())

(defun reset-registries ()
  (clrhash *known-tables*)
  (clrhash *known-records*)
  (clrhash *known-formats*)
  (clrhash *known-enums*)
  (clrhash *known-flags*)
  (clrhash *record-size-cache*))

(defun to-kebab-name (thing)
  "Convert symbols, strings, camelCase, snake_case, and kebab-case identifiers to uppercase kebab-case."
  (when thing
    (let ((str (string thing)))
      (with-output-to-string (s)
        (loop for prev = nil then c
              for i from 0
              for c across str
              do
                 (cond
                   ((char= c #\_) (write-char #\- s))
                   ((and prev
                         (or (and (lower-case-p prev) (upper-case-p c))
                             (and (upper-case-p prev) (upper-case-p c)
                                  (< (1+ i) (length str))
                                  (lower-case-p (char str (1+ i))))))
                    (write-char #\- s)
                    (write-char (char-upcase c) s))
                   (t
                    (write-char (char-upcase c) s))))))))

(defun zsym (name)
  (intern (to-kebab-name name) :zpb-otf))

(defparameter *primitive-types*
  '((:u8              :size 1 :reader font-data-read-u8)
    (:i8              :size 1 :reader font-data-read-i8)
    (:u16             :size 2 :reader font-data-read-u16)
    (:i16             :size 2 :reader font-data-read-i16)
    (:u24             :size 3 :reader font-data-read-u24)
    (:i24             :size 3 :reader font-data-read-i24)
    (:glyph-id24      :size 3 :reader font-data-read-u24)
    (:u32             :size 4 :reader font-data-read-u32)
    (:i32             :size 4 :reader font-data-read-i32)
    (:fixed           :size 4 :reader font-data-read-fixed)
    (:version16-dot16 :size 4 :reader font-data-read-fixed)
    (:f2-dot14        :size 2 :reader font-data-read-f2dot14)
    (:f-word          :size 2 :reader font-data-read-fword)
    (:uf-word         :size 2 :reader font-data-read-ufword)
    (:glyph-id16      :size 2 :reader font-data-read-u16)
    (:name-id         :size 2 :reader font-data-read-u16)
    (:tag             :size 4 :reader font-data-read-tag-string)
    (:major-minor     :size 4 :reader font-data-read-u32)
    (:long-date-time  :size 8 :reader font-data-read-u64)))

(defparameter *type-aliases*
  '(("UINT8" . :u8) ("UINT16" . :u16) ("UINT24" . :u24) ("UINT32" . :u32)
    ("INT8" . :i8) ("INT16" . :i16) ("INT32" . :i32)
    ("OFFSET16" . :u16) ("OFFSET24" . :u24) ("OFFSET32" . :u32)
    ("INT24" . :i24)
    ("VERSION16DOT16" . :fixed) ("LONGDATETIME" . :long-date-time)
    ;; Named types that are plain integers on disk.
    ("LOOKUP-FLAG" . :u16) ("TUPLE-VARIATION-COUNT" . :u16) ("TUPLE-INDEX" . :u16)
    ("MATCH-MODE-AND-COUNT" . :u8))
  "Spec spellings of primitive types, mapped onto *PRIMITIVE-TYPES* keys.")

(defun resolve-type-info (type-sym)
  (when (and type-sym (symbolp type-sym))
    (let* ((name (to-kebab-name type-sym))
           (key (or (cdr (assoc name *type-aliases* :test #'string=))
                    (intern name :keyword)))
           (prim (cdr (assoc key *primitive-types*))))
      (if prim
          prim
          (let ((underlying (or (gethash name *known-enums*)
                                (gethash name *known-flags*))))
            (when underlying
              (resolve-type-info underlying)))))))

(defun offset-type-info (offset-sym)
  (let ((name (to-kebab-name offset-sym)))
    (cond
      ((search "32" name) (values 4 'font-data-read-u32))
      ((search "24" name) (values 3 'font-data-read-u24))
      (t (values 2 'font-data-read-u16)))))

(defun compute-record-size (rec-sym)
  (when (symbolp rec-sym)
    (let* ((rec-key (to-kebab-name rec-sym))
           (rec (gethash rec-key *known-records*)))
      (if (null rec)
          nil
          (if (member rec-key *visiting-records* :test #'string=)
              (error "Cyclic record dependency detected in record ~A: ~{~A~^ -> ~}"
                     rec-key (reverse (cons rec-key *visiting-records*)))
              (let ((*visiting-records* (cons rec-key *visiting-records*))
                    (total 0))
                (dolist (f (cddr rec) total)
                  (when (and (consp f) (string-equal (car f) "field"))
                    (let* ((ftype (third f))
                           (sz (cond
                                 ((consp ftype)
                                  (let ((ftype-head (to-kebab-name (car ftype))))
                                    (cond
                                      ((string-equal ftype-head "ARRAY")
                                       (let ((cnt (get-prop :count (cdddr f)))
                                             (el (second ftype)))
                                         (if (numberp cnt)
                                             (let ((esz (or (getf (resolve-type-info el) :size)
                                                            (resolve-record-size el))))
                                               (if esz (* cnt esz) nil))
                                             nil)))
                                      ((search "OFFSET" ftype-head) (nth-value 0 (offset-type-info (car ftype))))
                                      (t nil))))
                                 (t
                                  (let ((pinfo (resolve-type-info ftype)))
                                    (if pinfo
                                        (getf pinfo :size)
                                        (resolve-record-size ftype)))))))
                      (if sz
                          (incf total sz)
                          (return-from compute-record-size nil)))))))))))

(defun resolve-record-size (rec-sym)
  (when (symbolp rec-sym)
    (let ((key (to-kebab-name rec-sym)))
      (or (gethash key *record-size-cache*)
          ;; Only cache successes: a NIL may be due to a record that is
          ;; registered later, or to an in-progress cycle.
          (let ((size (compute-record-size rec-sym)))
            (when size
              (setf (gethash key *record-size-cache*) size)))))))

(defun array-type-p (ftype)
  "True for list array specs: (ARRAY elem), (ARRAY-OF elem), (SEQUENCE elem), (REPEATED elem)."
  (and (consp ftype)
       (member (to-kebab-name (car ftype)) '("ARRAY" "ARRAY-OF" "SEQUENCE" "REPEATED")
               :test #'string=)))

(defun computed-array-element (ftype)
  "For COMPUTED-ARRAY<ELEM<A>> and VAR-LEN-ARRAY<ELEM<A>> symbols, return ELEM as a symbol."
  (when (and ftype (symbolp ftype))
    (let* ((s (symbol-name ftype))
           (lt (position #\< s)))
      (when (and lt (member (subseq s 0 lt) '("COMPUTED-ARRAY" "VAR-LEN-ARRAY")
                            :test #'string-equal))
        (let* ((inner (string-right-trim ">" (subseq s (1+ lt))))
               (lt2 (position #\< inner)))
          (intern (if lt2 (subseq inner 0 lt2) inner) (symbol-package ftype)))))))

(defun static-element-size (elem-type)
  (or (getf (resolve-type-info elem-type) :size)
      (resolve-record-size elem-type)))

(defun normalize-field-type (ftype)
  "Rewrite array spellings to (ARRAY elem). Computed arrays of statically
sized elements become plain arrays; others are returned as (:COMPUTED elem)."
  (cond
    ((array-type-p ftype) `(array ,@(cdr ftype)))
    ((computed-array-element ftype)
     (let ((elem (computed-array-element ftype)))
       (if (static-element-size elem)
           `(array ,elem)
           `(:computed ,elem))))
    (t ftype)))

(defun computed-type-p (ftype)
  (and (consp ftype) (eq (car ftype) :computed)))

(defun defined-names (forms)
  (loop for f in forms
        when (and (consp f) (eq (car f) 'defun)) collect (second f)))

(defun filter-declaims (declaims accessor-forms)
  (let ((defined (defined-names accessor-forms)))
    (remove-if-not (lambda (n) (member n defined)) declaims)))

(defun format-variant-value (target)
  "Discriminator value from the :FORMAT attribute of TARGET's fields, if any."
  (let ((tbl (gethash (to-kebab-name target) *known-tables*)))
    (when tbl
      (loop for f in (cddr tbl)
            for v = (and (consp f) (string-equal (car f) "field")
                         (get-prop :format (cdddr f)))
            when (numberp v) return v))))

(defun register-sexp-item (form)
  (when (consp form)
    (let ((kind (string-upcase (string (car form)))))
      (cond
        ((string-equal kind "TABLE")
         (setf (gethash (to-kebab-name (second form)) *known-tables*) form))
        ((string-equal kind "RECORD")
         (setf (gethash (to-kebab-name (second form)) *known-records*) form))
        ((or (string-equal kind "FORMAT") (string-equal kind "FORMAT-TABLE"))
         (setf (gethash (to-kebab-name (third form)) *known-formats*) form))
        ((string-equal kind "ENUM")
         (setf (gethash (to-kebab-name (third form)) *known-enums*) (second form)))
        ((string-equal kind "FLAGS")
         (setf (gethash (to-kebab-name (third form)) *known-flags*) (second form)))))))

(defun find-field (fname table-form)
  (find (to-kebab-name fname) (cddr table-form)
        :key (lambda (f) (and (consp f) (to-kebab-name (second f))))
        :test #'string=))

(defun get-prop (key plist &optional default)
  (let ((pos (position key plist)))
    (if pos (nth (1+ pos) plist) default)))

(defun make-offset-form (base-offset fixed dynamic-terms)
  (cond
    ((null dynamic-terms)
     (if (zerop fixed) base-offset `(+ ,base-offset ,fixed)))
    ((zerop fixed)
     `(+ ,base-offset ,@dynamic-terms))
    (t
     `(+ ,base-offset ,fixed ,@dynamic-terms))))

(defun count-to-lisp-form (count-expr struct-name table-form var-sym)
  (cond
    ((null count-expr) nil)
    ((numberp count-expr) count-expr)
    ((eq count-expr :remainder) nil)
    ((symbolp count-expr)
     (let ((fld (find-field count-expr table-form)))
       (when fld
         `(,(zsym (format nil "~A-~A" struct-name count-expr)) ,var-sym))))
    ((consp count-expr)
     (let* ((op (intern (to-kebab-name (car count-expr)) :keyword))
            (args (mapcar (lambda (a) (count-to-lisp-form a struct-name table-form var-sym))
                          (cdr count-expr))))
       (when (every #'identity args)
         (case op
           (:add `(+ ,@args))
           (:subtract `(max 0 (- ,@args)))
           (:half `(floor ,(car args) 2))
           (:add-multiply `(* (+ ,(first args) ,(second args)) ,(third args)))
           (:multiply-add `(+ (* ,(first args) ,(second args)) ,(third args)))
           (:subtract-add-two `(+ (max 0 (- ,(first args) ,(second args))) 2))
           (:bitmap-len `(ceiling ,(car args) 8))
           (otherwise nil)))))))

;;; --- Emitters as Pure Lisp Forms ---

(defun emit-enum (form)
  (let* ((name (third form))
         (doc (get-prop :doc (cdddr form)))
         (variants (remove-if (lambda (x) (or (not (consp x)) (keywordp (car x)))) (cdddr form)))
         (forms '()))
    (dolist (v variants)
      (let ((cname (zsym (format nil "+~A-~A+" name (car v)))))
        (pushnew (symbol-name cname) *exports* :test #'string=)
        (push `(define-constant ,cname ,(cadr v) ,@(when doc (list doc))) forms)))
    (nreverse forms)))

(defun emit-flags (form)
  (let* ((name (third form))
         (doc (get-prop :doc (cdddr form)))
         (flags (remove-if (lambda (x) (or (not (consp x)) (keywordp (car x)))) (cdddr form)))
         (var-flags (zsym "FLAGS"))
         (forms '()))
    (dolist (fl flags)
      (let* ((cname (zsym (format nil "+~A-~A+" name (car fl))))
             (pred-name (zsym (format nil "~A-~A-P" name (car fl)))))
        (pushnew (symbol-name cname) *exports* :test #'string=)
        (pushnew (symbol-name pred-name) *exports* :test #'string=)
        (push `(define-constant ,cname ,(cadr fl) ,@(when doc (list doc))) forms)
        (push `(declaim (inline ,pred-name)) forms)
        (push `(defun ,pred-name (,var-flags)
                 (logtest ,var-flags ,cname))
              forms)))
    (nreverse forms)))

(defun emit-record (form)
  (let* ((name (second form))
         (struct-name (zsym name))
         (ctor-name (zsym (format nil "%MAKE-~A" name)))
         (pred-name (zsym (format nil "~A-P" name)))
         (doc (get-prop :doc (cddr form)))
         (fields (remove-if-not (lambda (x) (and (consp x) (string-equal (car x) "field"))) (cddr form)))
         (offset 0)
         (dynamic-terms '())
         ;; Name of a preceding field whose size cannot be expressed; no field may follow it.
         (unplaceable-after nil)
         (declaims '())
         (struct-forms '())
         (accessor-forms '())
         (var-rec (zsym "REC"))
         (var-index (zsym "INDEX"))
         (var-pos (zsym "POS")))

    (pushnew (symbol-name struct-name) *exports* :test #'string=)
    (pushnew (symbol-name pred-name) *exports* :test #'string=)
    (push `(defstruct (,struct-name (:include record-ref)
                                   (:constructor ,ctor-name (%record-font-data %record-offset)))
             ,@(when doc (list doc)))
          struct-forms)

    (dolist (f fields)
      (let* ((fname (second f))
             (ftype (normalize-field-type (third f)))
             (fdoc (get-prop :doc (cdddr f)))
             (acc-name (zsym (format nil "~A-~A" struct-name fname)))
             (tinfo (resolve-type-info ftype))
             (off-expr (make-offset-form `(record-ref-offset ,var-rec) offset (reverse dynamic-terms))))
        (when unplaceable-after
          (error "Field ~A of record ~A follows variable-length field ~A whose size is unknown"
                 fname name unplaceable-after))
        (pushnew (symbol-name acc-name) *exports* :test #'string=)
        (push acc-name declaims)
        (cond
          ;; 1. Primitive scalar field
          (tinfo
           (push `(defun ,acc-name (,var-rec)
                    ,@(when fdoc (list fdoc))
                    (declare (type ,struct-name ,var-rec))
                    (,(getf tinfo :reader) (record-ref-font-data ,var-rec) ,off-expr))
                 accessor-forms)
           (incf offset (getf tinfo :size)))

          ;; 2. Offset field: (offset16 target), (offset24 target), (offset32 target)
          ((and (consp ftype) (search "OFFSET" (to-kebab-name (car ftype))))
           (multiple-value-bind (off-size off-reader) (offset-type-info (car ftype))
             (push `(defun ,acc-name (,var-rec)
                      ,@(when fdoc (list fdoc))
                      (declare (type ,struct-name ,var-rec))
                      (,off-reader (record-ref-font-data ,var-rec) ,off-expr))
                   accessor-forms)
             (incf offset off-size)))

          ;; 3. Array field: (array elem-type)
          ((array-type-p ftype)
           (let ((elem-type (second ftype)))
             (when (array-type-p elem-type)
               (error "Nested array fields not supported: ~S in record ~A" ftype struct-name))

             (let* ((count-attr (get-prop :count (cdddr f)))
                    (count-acc (zsym (format nil "~A-COUNT" acc-name)))
                    (ref-acc (zsym (format nil "~A-REF" acc-name)))
                    (elem-tinfo (resolve-type-info elem-type))
                    (elem-offset-p (and (consp elem-type) (search "OFFSET" (to-kebab-name (car elem-type)))))
                    (elem-bytes (cond
                                  (elem-tinfo (getf elem-tinfo :size))
                                  (elem-offset-p (nth-value 0 (offset-type-info (car elem-type))))
                                  (t (resolve-record-size elem-type))))
                    (elem-reader (cond
                                   (elem-tinfo (getf elem-tinfo :reader))
                                   (elem-offset-p (nth-value 1 (offset-type-info (car elem-type))))
                                   (t nil)))
                    (elem-ctor (when (null elem-reader) (zsym (format nil "%MAKE-~A" elem-type))))
                    (internal-fld (and count-attr (symbolp count-attr) (find-field count-attr form))))
               (unless elem-bytes
                 (error "Array field ~A of record ~A has element type ~S of unknown size"
                        fname name elem-type))
               (pushnew (symbol-name count-acc) *exports* :test #'string=)
               (pushnew (symbol-name ref-acc) *exports* :test #'string=)
               ;; Count getter
               (cond
                 (internal-fld
                  (push `(defun ,count-acc (,var-rec)
                           ,@(when fdoc (list fdoc))
                           (declare (type ,struct-name ,var-rec))
                           (,(zsym (format nil "~A-~A" struct-name count-attr)) ,var-rec))
                        accessor-forms))
                 ((numberp count-attr)
                  (push `(defun ,count-acc (,var-rec)
                           ,@(when fdoc (list fdoc))
                           (declare (type ,struct-name ,var-rec) (ignore ,var-rec))
                           ,count-attr)
                        accessor-forms))
                 (t
                  (let ((arg-name (zsym (if (and count-attr (symbolp count-attr)) count-attr "COUNT"))))
                    (push `(defun ,count-acc (,var-rec &optional ,arg-name)
                             ,@(when fdoc (list fdoc))
                             (declare (type ,struct-name ,var-rec) (ignore ,var-rec))
                             ,arg-name)
                          accessor-forms))))
               ;; Ref getter
               (push `(defun ,ref-acc (,var-rec ,var-index)
                        ,@(when fdoc (list fdoc))
                        (declare (type ,struct-name ,var-rec) (type (unsigned-byte 32) ,var-index))
                        (let ((,var-pos (+ ,off-expr (* ,var-index ,elem-bytes))))
                          ,(if elem-reader
                               `(,elem-reader (record-ref-font-data ,var-rec) ,var-pos)
                               `(,elem-ctor (record-ref-font-data ,var-rec) ,var-pos))))
                     accessor-forms)
               (cond
                 ((numberp count-attr)
                  (incf offset (* count-attr elem-bytes)))
                 (internal-fld
                  (push `(* (,count-acc ,var-rec) ,elem-bytes) dynamic-terms))
                 (t
                  (setf unplaceable-after fname))))))

          ;; 4. Computed array of variable-size elements: expose where it starts.
          ((computed-type-p ftype)
           (let ((start-acc (zsym (format nil "~A-START" acc-name))))
             (pushnew (symbol-name start-acc) *exports* :test #'string=)
             (push `(defun ,start-acc (,var-rec)
                      ,(format nil "Byte position of the first ~A element; elements are variable-length."
                               (to-kebab-name (second ftype)))
                      (declare (type ,struct-name ,var-rec))
                      ,off-expr)
                   accessor-forms)
             (setf unplaceable-after fname)))

          ;; 5. Nested record
          (t
           (let ((rsize (resolve-record-size ftype)))
             (cond
               (rsize
                (push `(defun ,acc-name (,var-rec)
                         ,@(when fdoc (list fdoc))
                         (declare (type ,struct-name ,var-rec))
                         (,(zsym (format nil "%MAKE-~A" ftype)) (record-ref-font-data ,var-rec) ,off-expr))
                      accessor-forms)
                (incf offset rsize))
               ((and (symbolp ftype) (gethash (to-kebab-name ftype) *known-records*))
                ;; Variable-size nested record: accessible, but ends the static layout.
                (push `(defun ,acc-name (,var-rec)
                         ,@(when fdoc (list fdoc))
                         (declare (type ,struct-name ,var-rec))
                         (,(zsym (format nil "%MAKE-~A" ftype)) (record-ref-font-data ,var-rec) ,off-expr))
                      accessor-forms)
                (setf unplaceable-after fname))
               (t
                (error "Unrecognized type ~S for field ~A of record ~A" (third f) fname name))))))))

    (if (or dynamic-terms unplaceable-after)
        (warn "Record ~A has dynamic array field and cannot compute static size (+~A-SIZE+)" name name)
        (let ((size-const (zsym (format nil "+~A-SIZE+" name))))
          (pushnew (symbol-name size-const) *exports* :test #'string=)
          (push `(define-constant ,size-const ,offset) struct-forms)))

    (let ((declaims (filter-declaims declaims accessor-forms)))
      (append (reverse struct-forms)
              (when declaims `((declaim (inline ,@(reverse declaims)))))
              (reverse accessor-forms)))))

(defun emit-format (form)
  (let* ((disc-type (second form))
         (name (third form))
         (lisp-name (zsym name))
         (read-fn-name (zsym (format nil "READ-~A" name)))
         (disc-offset (or (get-prop :offset (cdddr form)) 0))
         (doc (get-prop :doc (cdddr form)))
         (reader (getf (resolve-type-info disc-type) :reader 'font-data-read-u16))
         (variants (remove-if-not (lambda (x) (and (consp x) (string-equal (car x) "variant"))) (cdddr form)))
         (var-fd (zsym "FONT-DATA"))
         (var-offset (zsym "OFFSET"))
         (var-len (zsym "LENGTH"))
         (var-fmt (zsym "FMT")))
    (pushnew (symbol-name read-fn-name) *exports* :test #'string=)
    (cond
      ((string-equal (to-kebab-name name) "GLYPH")
       (list `(defun ,read-fn-name (,var-fd ,var-offset &optional (,var-len (- (font-data-length ,var-fd) ,var-offset)))
                ,@(when doc (list doc))
                (declare (ignorable ,var-len))
                (let ((,var-fmt (,reader ,var-fd (+ ,var-offset ,disc-offset))))
                  (cond
                    ((>= ,var-fmt 0) (,(zsym "READ-SIMPLE-GLYPH") ,var-fd ,var-offset ,var-len))
                    ((< ,var-fmt 0) (,(zsym "READ-COMPOSITE-GLYPH") ,var-fd ,var-offset ,var-len))
                    (t (error 'unsupported-format-error :format ,var-fmt :table ',lisp-name)))))))

      ((string-equal (to-kebab-name name) "DEVICE-OR-VARIATION-INDEX")
       (list `(defun ,read-fn-name (,var-fd ,var-offset &optional (,var-len (- (font-data-length ,var-fd) ,var-offset)))
                ,@(when doc (list doc))
                (declare (ignorable ,var-len))
                (let ((,var-fmt (,reader ,var-fd (+ ,var-offset ,disc-offset))))
                  (if (= ,var-fmt #x8000)
                      (,(zsym "READ-VARIATION-INDEX") ,var-fd ,var-offset ,var-len)
                      (,(zsym "READ-DEVICE") ,var-fd ,var-offset ,var-len))))))

      ((string-equal (to-kebab-name name) "PAINT")
       ;; COLRv1 Paint tables formats 1..33
       (let ((cases '()))
         (dolist (v variants)
           (let* ((target (third v))
                  (fmt-val (format-variant-value target)))
             (unless fmt-val
               (error "Paint variant ~A has no :format discriminator in table ~A" (second v) target))
             (push `(,fmt-val (,(zsym (format nil "READ-~A" target)) ,var-fd ,var-offset ,var-len)) cases)))
         (list `(defun ,read-fn-name (,var-fd ,var-offset &optional (,var-len (- (font-data-length ,var-fd) ,var-offset)))
                  ,@(when doc (list doc))
                  (declare (ignorable ,var-len))
                  (let ((,var-fmt (,reader ,var-fd (+ ,var-offset ,disc-offset))))
                    (case ,var-fmt
                      ,@(reverse cases)
                      (otherwise (error 'unsupported-format-error :format ,var-fmt :table ',lisp-name))))))))

      (t
       (let ((cases '()))
         (dolist (v variants)
           (let* ((vname (symbol-name (second v)))
                  (target (third v))
                  (digits (remove-if-not #'digit-char-p vname))
                  (fmt-val (if (plusp (length digits))
                               (parse-integer digits)
                               (format-variant-value target))))
             (unless fmt-val
               (error "Format variant ~A in format ~A has no numeric discriminator" vname name))
             (push `(,fmt-val (,(zsym (format nil "READ-~A" target)) ,var-fd ,var-offset ,var-len)) cases)))
         (list `(defun ,read-fn-name (,var-fd ,var-offset &optional (,var-len (- (font-data-length ,var-fd) ,var-offset)))
                  ,@(when doc (list doc))
                  (declare (ignorable ,var-len))
                  (let ((,var-fmt (,reader ,var-fd (+ ,var-offset ,disc-offset))))
                    (case ,var-fmt
                      ,@(reverse cases)
                      (otherwise (error 'unsupported-format-error :format ,var-fmt :table ',lisp-name)))))))))))

(defun emit-table (form)
  (let* ((name (second form))
         (struct-name (zsym name))
         (ctor-name (zsym (format nil "%MAKE-~A" name)))
         (pred-name (zsym (format nil "~A-P" name)))
         (read-fn-name (zsym (format nil "READ-~A" name)))
         (san-name (zsym (format nil "SANITIZE-~A" name)))
         (tag (get-prop :tag (cddr form)))
         (doc (get-prop :doc (cddr form)))
         (fields (remove-if-not (lambda (x) (and (consp x) (string-equal (car x) "field"))) (cddr form)))
         (min-size 0)
         (fixed-offset 0)
         (dynamic-terms '())
         ;; Name of a preceding field whose size cannot be expressed; no field may follow it.
         (unplaceable-after nil)
         (array-bounds-checks '())
         (declaims '())
         (struct-forms '())
         (accessor-forms '())
         (san-forms '())
         (read-forms '())
         (var-table (zsym "TABLE"))
         (var-fd (zsym "FONT-DATA"))
         (var-offset (zsym "OFFSET"))
         (var-len (zsym "LENGTH"))
         (var-index (zsym "INDEX"))
         (var-pos (zsym "POS"))
         (var-off (zsym "OFF"))
         (var-cnt (zsym "CNT")))

    (pushnew (symbol-name struct-name) *exports* :test #'string=)
    (pushnew (symbol-name pred-name) *exports* :test #'string=)
    (pushnew (symbol-name read-fn-name) *exports* :test #'string=)
    (pushnew (symbol-name san-name) *exports* :test #'string=)

    (push `(defstruct (,struct-name (:include table-ref)
                                   (:constructor ,ctor-name (%table-font-data %table-offset %table-length)))
             ,@(when doc (list doc)))
          struct-forms)

    (when tag
      (let ((tag-const (zsym (format nil "+~A-TAG+" struct-name))))
        (pushnew (symbol-name tag-const) *exports* :test #'string=)
        (push `(define-constant ,tag-const ,tag) struct-forms)))

    ;; Pre-collect exports & declaims
    (dolist (f fields)
      (let* ((fname (second f))
             (acc-name (zsym (format nil "~A-~A" struct-name fname)))
             (ftype (normalize-field-type (third f)))
             (is-array (array-type-p ftype))
             (is-offset (and (consp ftype) (search "OFFSET" (to-kebab-name (car ftype))))))
        (pushnew (symbol-name acc-name) *exports* :test #'string=)
        (push acc-name declaims)
        (when is-array
          (let* ((count-acc (zsym (format nil "~A-COUNT" acc-name)))
                 (colliding (find-field (format nil "~A-COUNT" fname) form)))
            (if colliding
                (push (zsym (format nil "~A-ARRAY-COUNT" acc-name)) declaims)
                (push count-acc declaims))))
        (when is-offset
          (push (zsym (format nil "~A-OFFSET" acc-name)) declaims))))

    (dolist (f fields)
      (let* ((fname (second f))
             (ftype (normalize-field-type (third f)))
             (fdoc (get-prop :doc (cdddr f)))
             (since-ver (get-prop :since-version (cdddr f)))
             (acc-name (zsym (format nil "~A-~A" struct-name fname)))
             (is-array (array-type-p ftype))
             (off-expr (make-offset-form `(table-ref-offset ,var-table) fixed-offset dynamic-terms))
             (raw-off-expr (make-offset-form var-offset fixed-offset dynamic-terms)))
        (when unplaceable-after
          (error "Field ~A of table ~A follows variable-length field ~A whose size is unknown"
                 fname name unplaceable-after))
        (cond
          ;; 1. Array Field
          (is-array
           (let ((inner-type (second ftype)))
             ;; Check for nested arrays (Item 7)
             (when (array-type-p inner-type)
               (error "Nested array fields not supported: ~S in table ~A" ftype struct-name))

             (let* ((is-offset-elem (and (consp inner-type) (search "OFFSET" (to-kebab-name (car inner-type)))))
                    (elem-type (if is-offset-elem (second inner-type) inner-type))
                    (elem-info (resolve-type-info elem-type))
                    (elem-size (cond
                                 (is-offset-elem (nth-value 0 (offset-type-info (car inner-type))))
                                 (elem-info (getf elem-info :size))
                                 (t (resolve-record-size elem-type))))
                    (elem-bytes (or elem-size 1))
                    (count-attr (get-prop :count (cdddr f)))
                    (lisp-count-expr (count-to-lisp-form count-attr struct-name form var-table))
                    (count-acc (zsym (format nil "~A-COUNT" acc-name)))
                    (ref-acc (zsym (format nil "~A-REF" acc-name)))
                    (colliding-field (find-field (format nil "~A-COUNT" fname) form))
                    (actual-count-call nil))

               ;; Count getter
               (cond
                 ((numberp count-attr)
                  (pushnew (symbol-name count-acc) *exports* :test #'string=)
                  (let ((array-bytes (* count-attr elem-bytes)))
                    (push `(defun ,count-acc (,var-table)
                             ,@(when fdoc (list fdoc))
                             (declare (ignore ,var-table))
                             ,count-attr)
                          accessor-forms)
                    (incf fixed-offset array-bytes)
                    (when (and (null dynamic-terms) (null since-ver))
                      (incf min-size array-bytes))
                    (setf actual-count-call count-attr)))

                 (colliding-field
                  (let ((colliding-acc (zsym (format nil "~A-~A" struct-name (second colliding-field)))))
                    (if (and lisp-count-expr (equal lisp-count-expr `(,colliding-acc ,var-table)))
                        (setf actual-count-call `(,colliding-acc ,var-table))
                        (let ((array-count-acc (zsym (format nil "~A-ARRAY-COUNT" acc-name))))
                          (pushnew (symbol-name array-count-acc) *exports* :test #'string=)
                          (push `(defun ,array-count-acc (,var-table)
                                   ,@(when fdoc (list fdoc))
                                   ,lisp-count-expr)
                                accessor-forms)
                          (setf actual-count-call `(,array-count-acc ,var-table)))))
                  (push `(* ,actual-count-call ,elem-bytes) dynamic-terms))

                 (t
                  (pushnew (symbol-name count-acc) *exports* :test #'string=)
                  (cond
                    (lisp-count-expr
                     (push `(defun ,count-acc (,var-table)
                              ,@(when fdoc (list fdoc))
                              ,lisp-count-expr)
                           accessor-forms))
                    ((and count-attr (not (eq count-attr :remainder)))
                     (let ((arg-name (zsym (if (symbolp count-attr) count-attr "COUNT"))))
                       (push `(defun ,count-acc (,var-table &optional ,arg-name)
                                ,@(when fdoc (list fdoc))
                                (or ,arg-name (max 0 (floor (- (+ (table-ref-offset ,var-table) (table-ref-length ,var-table)) ,off-expr) ,elem-bytes))))
                             accessor-forms)))
                    (t
                     (push `(defun ,count-acc (,var-table)
                              ,@(when fdoc (list fdoc))
                              (max 0 (floor (- (+ (table-ref-offset ,var-table) (table-ref-length ,var-table)) ,off-expr) ,elem-bytes)))
                           accessor-forms)))
                  (setf actual-count-call `(,count-acc ,var-table))
                  (push `(* ,actual-count-call ,elem-bytes) dynamic-terms)))

               (pushnew (symbol-name ref-acc) *exports* :test #'string=)

               ;; Bounds check in sanitize
               (when (and (null (cdr dynamic-terms)) elem-size (> elem-size 0))
                 (when (symbolp count-attr)
                   (let ((internal-fld (find-field count-attr form)))
                     (when internal-fld
                       (let ((raw-fn (zsym (format nil "~A-~A-RAW" struct-name count-attr)))
                             (int-since (get-prop :since-version (cdddr internal-fld))))
                         ;; The -RAW reader exists only for counts at a static offset.
                         (cond
                           ((not (member raw-fn (defined-names accessor-forms))))
                           (int-since
                             (push `(when (>= ,var-len ,fixed-offset)
                                      (let ((,var-cnt (,raw-fn ,var-fd ,var-offset)))
                                        (unless (and (<= (+ ,fixed-offset (* ,var-cnt ,elem-size)) ,var-len)
                                                     (font-data-valid-range-p ,var-fd ,var-offset (+ ,fixed-offset (* ,var-cnt ,elem-size))))
                                          (error 'font-out-of-bounds-error :pos ,var-offset :size (+ ,fixed-offset (* ,var-cnt ,elem-size)) :length (font-data-length ,var-fd)))))
                                   array-bounds-checks))
                           (t
                            (push `(let ((,var-cnt (,raw-fn ,var-fd ,var-offset)))
                                      (unless (and (<= (+ ,fixed-offset (* ,var-cnt ,elem-size)) ,var-len)
                                                   (font-data-valid-range-p ,var-fd ,var-offset (+ ,fixed-offset (* ,var-cnt ,elem-size))))
                                        (error 'font-out-of-bounds-error :pos ,var-offset :size (+ ,fixed-offset (* ,var-cnt ,elem-size)) :length (font-data-length ,var-fd))))
                                   array-bounds-checks))))))))

               ;; Element getter (Item 4: three-way lookup)
               (cond
                 (is-offset-elem
                  (let* ((off-reader (nth-value 1 (offset-type-info (car inner-type))))
                         (target elem-type)
                         (target-key (to-kebab-name target))
                         (target-table (gethash target-key *known-tables*))
                         (target-format (gethash target-key *known-formats*))
                         (target-record (gethash target-key *known-records*)))
                    (cond
                      ((or target-table target-format)
                       (push `(defun ,ref-acc (,var-table ,var-index)
                                ,@(when fdoc (list fdoc))
                                (declare (type ,struct-name ,var-table) (type (unsigned-byte 32) ,var-index))
                                (let* ((,var-pos (+ ,off-expr (* ,var-index ,elem-bytes))))
                                  (unless (<= (+ ,var-pos ,elem-bytes) (+ (table-ref-offset ,var-table) (table-ref-length ,var-table)))
                                    (error 'font-out-of-bounds-error :pos ,var-pos :size ,elem-bytes :length (table-ref-length ,var-table)))
                                  (let ((,var-off (,off-reader (table-ref-font-data ,var-table) ,var-pos)))
                                    (unless (zerop ,var-off)
                                      (,(zsym (format nil "READ-~A" target))
                                       (table-ref-font-data ,var-table)
                                       (+ (table-ref-offset ,var-table) ,var-off))))))
                             accessor-forms))
                      (target-record
                       (push `(defun ,ref-acc (,var-table ,var-index)
                                ,@(when fdoc (list fdoc))
                                (declare (type ,struct-name ,var-table) (type (unsigned-byte 32) ,var-index))
                                (let* ((,var-pos (+ ,off-expr (* ,var-index ,elem-bytes))))
                                  (unless (<= (+ ,var-pos ,elem-bytes) (+ (table-ref-offset ,var-table) (table-ref-length ,var-table)))
                                    (error 'font-out-of-bounds-error :pos ,var-pos :size ,elem-bytes :length (table-ref-length ,var-table)))
                                  (let ((,var-off (,off-reader (table-ref-font-data ,var-table) ,var-pos)))
                                    (unless (zerop ,var-off)
                                      (,(zsym (format nil "%MAKE-~A" target))
                                       (table-ref-font-data ,var-table)
                                       (+ (table-ref-offset ,var-table) ,var-off))))))
                             accessor-forms))
                      (t
                       (push `(defun ,ref-acc (,var-table ,var-index)
                                ,@(when fdoc (list fdoc))
                                (declare (type ,struct-name ,var-table) (type (unsigned-byte 32) ,var-index))
                                (let* ((,var-pos (+ ,off-expr (* ,var-index ,elem-bytes))))
                                  (unless (<= (+ ,var-pos ,elem-bytes) (+ (table-ref-offset ,var-table) (table-ref-length ,var-table)))
                                    (error 'font-out-of-bounds-error :pos ,var-pos :size ,elem-bytes :length (table-ref-length ,var-table)))
                                  (let ((,var-off (,off-reader (table-ref-font-data ,var-table) ,var-pos)))
                                    (unless (zerop ,var-off)
                                      (font-data-slice (table-ref-font-data ,var-table) (+ (table-ref-offset ,var-table) ,var-off))))))
                             accessor-forms)))))

                 (elem-info
                  (let ((reader (getf elem-info :reader)))
                    (push `(defun ,ref-acc (,var-table ,var-index)
                             ,@(when fdoc (list fdoc))
                             (declare (type ,struct-name ,var-table) (type (unsigned-byte 32) ,var-index))
                             (let ((,var-pos (+ ,off-expr (* ,var-index ,elem-bytes))))
                               (unless (<= (+ ,var-pos ,elem-bytes) (+ (table-ref-offset ,var-table) (table-ref-length ,var-table)))
                                 (error 'font-out-of-bounds-error :pos ,var-pos :size ,elem-bytes :length (table-ref-length ,var-table)))
                               (,reader (table-ref-font-data ,var-table) ,var-pos)))
                          accessor-forms)))

                 (elem-size
                  (let ((rec-ctor (zsym (format nil "%MAKE-~A" elem-type))))
                    (push `(defun ,ref-acc (,var-table ,var-index)
                             ,@(when fdoc (list fdoc))
                             (declare (type ,struct-name ,var-table) (type (unsigned-byte 32) ,var-index))
                             (let ((,var-pos (+ ,off-expr (* ,var-index ,elem-bytes))))
                               (unless (<= (+ ,var-pos ,elem-bytes) (+ (table-ref-offset ,var-table) (table-ref-length ,var-table)))
                                 (error 'font-out-of-bounds-error :pos ,var-pos :size ,elem-bytes :length (table-ref-length ,var-table)))
                               (,rec-ctor (table-ref-font-data ,var-table) ,var-pos)))
                          accessor-forms))))

               ;; For u8 arrays, emit bytes slice
               (when (string-equal (to-kebab-name elem-type) "U8")
                 (let ((bytes-acc (zsym (format nil "~A-BYTES" acc-name))))
                   (pushnew (symbol-name bytes-acc) *exports* :test #'string=)
                   (push `(defun ,bytes-acc (,var-table)
                            ,@(when fdoc (list fdoc))
                            (font-data-slice (table-ref-font-data ,var-table) ,off-expr ,actual-count-call))
                         accessor-forms))))))

          ;; 2. Offset field (Item 4: three-way lookup)
          ((and (consp ftype) (search "OFFSET" (to-kebab-name (car ftype))))
           (multiple-value-bind (off-size off-reader) (offset-type-info (car ftype))
             (let* ((target (second ftype))
                    (target-key (and target (to-kebab-name target)))
                    (target-table (and target-key (gethash target-key *known-tables*)))
                    (target-format (and target-key (gethash target-key *known-formats*)))
                    (target-record (and target-key (gethash target-key *known-records*)))
                    (raw-acc (zsym (format nil "~A-OFFSET" acc-name))))
               (pushnew (symbol-name raw-acc) *exports* :test #'string=)
               (if since-ver
                   (push `(defun ,raw-acc (,var-table)
                            ,@(when fdoc (list fdoc))
                            (declare (type ,struct-name ,var-table))
                            (when (>= (table-ref-length ,var-table) ,(+ fixed-offset off-size))
                              (,off-reader (table-ref-font-data ,var-table) ,off-expr)))
                         accessor-forms)
                   (push `(defun ,raw-acc (,var-table)
                            ,@(when fdoc (list fdoc))
                            (declare (type ,struct-name ,var-table))
                            (,off-reader (table-ref-font-data ,var-table) ,off-expr))
                         accessor-forms))
               (cond
                 ((or target-table target-format)
                  (push `(defun ,acc-name (,var-table)
                           ,@(when fdoc (list fdoc))
                           (declare (type ,struct-name ,var-table))
                           (let ((,var-off (,raw-acc ,var-table)))
                             (when (and ,var-off (not (zerop ,var-off)))
                               (,(zsym (format nil "READ-~A" target))
                                (table-ref-font-data ,var-table)
                                (+ (table-ref-offset ,var-table) ,var-off)))))
                        accessor-forms))
                 (target-record
                  (push `(defun ,acc-name (,var-table)
                           ,@(when fdoc (list fdoc))
                           (declare (type ,struct-name ,var-table))
                           (let ((,var-off (,raw-acc ,var-table)))
                             (when (and ,var-off (not (zerop ,var-off)))
                               (,(zsym (format nil "%MAKE-~A" target))
                                (table-ref-font-data ,var-table)
                                (+ (table-ref-offset ,var-table) ,var-off)))))
                        accessor-forms))
                 (t
                  (push `(defun ,acc-name (,var-table)
                           ,@(when fdoc (list fdoc))
                           (declare (type ,struct-name ,var-table))
                           (let ((,var-off (,raw-acc ,var-table)))
                             (when (and ,var-off (not (zerop ,var-off)))
                               (font-data-slice (table-ref-font-data ,var-table) (+ (table-ref-offset ,var-table) ,var-off)))))
                        accessor-forms)))
               (incf fixed-offset off-size)
               (when (and (null dynamic-terms) (null since-ver))
                 (incf min-size off-size)))))

          ;; 3. Scalar field
          ((resolve-type-info ftype)
           (let* ((tinfo (resolve-type-info ftype))
                  (size (getf tinfo :size))
                  (reader (getf tinfo :reader))
                  ;; :when-flag (flag-field mask): field is present only when MASK is set.
                  (when-flag (get-prop :when-flag (cdddr f))))
             (cond
               (when-flag
                (push `(defun ,acc-name (,var-table)
                         ,@(when fdoc (list fdoc))
                         (declare (type ,struct-name ,var-table))
                         (when (logtest ,(second when-flag)
                                        (,(zsym (format nil "~A-~A" struct-name (first when-flag))) ,var-table))
                           (,reader (table-ref-font-data ,var-table) ,off-expr)))
                      accessor-forms))
               (since-ver
                 (push `(defun ,acc-name (,var-table)
                          ,@(when fdoc (list fdoc))
                          (declare (type ,struct-name ,var-table))
                          (when (>= (table-ref-length ,var-table) ,(+ fixed-offset size))
                            (,reader (table-ref-font-data ,var-table) ,off-expr)))
                       accessor-forms))
               (t
                 (push `(defun ,acc-name (,var-table)
                          ,@(when fdoc (list fdoc))
                          (declare (type ,struct-name ,var-table))
                          (,reader (table-ref-font-data ,var-table) ,off-expr))
                       accessor-forms)))
             (when (null dynamic-terms)
               (let ((raw-acc (zsym (format nil "~A-~A-RAW" struct-name fname))))
                 (push raw-acc declaims)
                 (push `(defun ,raw-acc (,var-fd ,var-offset)
                          (,reader ,var-fd ,raw-off-expr))
                       accessor-forms)))
             (incf fixed-offset size)
             (when (and (null dynamic-terms) (null since-ver) (null when-flag))
               (incf min-size size))))

          ;; 4. Computed array of variable-size elements: expose where it starts.
          ((computed-type-p ftype)
           (let ((start-acc (zsym (format nil "~A-START" acc-name))))
             (pushnew (symbol-name start-acc) *exports* :test #'string=)
             (push `(defun ,start-acc (,var-table)
                      ,(format nil "Byte position of the first ~A element; elements are variable-length."
                               (to-kebab-name (second ftype)))
                      (declare (type ,struct-name ,var-table))
                      ,off-expr)
                   accessor-forms)
             (setf unplaceable-after fname)))

          ;; 5. Inline record
          (t
           (let ((rsize (resolve-record-size ftype))
                 (rec-ctor (and (symbolp ftype) (zsym (format nil "%MAKE-~A" ftype)))))
             (unless (or rsize (and (symbolp ftype) (gethash (to-kebab-name ftype) *known-records*)))
               (error "Unrecognized type ~S for field ~A of table ~A" (third f) fname name))
             (push `(defun ,acc-name (,var-table)
                      ,@(when fdoc (list fdoc))
                      (declare (type ,struct-name ,var-table))
                      (,rec-ctor (table-ref-font-data ,var-table) ,off-expr))
                   accessor-forms)
             (cond
               (rsize
                (incf fixed-offset rsize)
                (when (and (null dynamic-terms) (null since-ver))
                  (incf min-size rsize)))
               (t
                ;; Variable-size record: accessible, but ends the static layout.
                (setf unplaceable-after fname))))))))

    ;; Sanitize and Read functions
    (push `(defun ,san-name (,var-fd ,var-offset ,var-len)
             (declare (ignorable ,var-len) (type font-data ,var-fd) (type (unsigned-byte 32) ,var-offset ,var-len))
             (unless (and (<= ,min-size ,var-len) (font-data-valid-range-p ,var-fd ,var-offset ,min-size))
               (error 'font-out-of-bounds-error :pos ,var-offset :size ,min-size :length (font-data-length ,var-fd)))
             ,@(reverse array-bounds-checks)
             t)
          san-forms)

    (push `(defun ,read-fn-name (,var-fd ,var-offset &optional (,var-len (- (font-data-length ,var-fd) ,var-offset)))
             (,san-name ,var-fd ,var-offset ,var-len)
             (,ctor-name ,var-fd ,var-offset ,var-len))
          read-forms)

    (let ((declaims (filter-declaims declaims accessor-forms)))
      (append (reverse struct-forms)
              (when declaims `((declaim (inline ,@(reverse declaims)))))
              (reverse accessor-forms)
              (reverse san-forms)
              (reverse read-forms)))))
(defun emit-file-forms (items stream filename)
  (let ((*exports* '())
        (*print-case* :downcase)
        (*package* (find-package :zpb-otf))
        (all-forms '()))
    ;; 1. Enums & Flags
    (dolist (item items)
      (let ((kind (string-upcase (string (car item)))))
        (cond
          ((string-equal kind "ENUM")  (setf all-forms (append all-forms (emit-enum item))))
          ((string-equal kind "FLAGS") (setf all-forms (append all-forms (emit-flags item)))))))
    ;; 2. Records
    (dolist (item items)
      (when (string-equal (string (car item)) "RECORD")
        (setf all-forms (append all-forms (emit-record item)))))
    ;; 3. Tables & Formats
    (dolist (item items)
      (let ((kind (string-upcase (string (car item)))))
        (cond
          ((string-equal kind "TABLE")  (setf all-forms (append all-forms (emit-table item))))
          ((or (string-equal kind "FORMAT") (string-equal kind "FORMAT-TABLE"))
           (setf all-forms (append all-forms (emit-format item)))))))

    ;; Write file header
    (format stream ";;;; ~A — Generated OpenType tables~%" filename)
    (format stream ";;;; Generated automatically from OpenType sexp schema~%")
    (format stream ";;;; DO NOT EDIT DIRECTLY~%~%")
    (pprint '(in-package #:zpb-otf) stream)
    (terpri stream)
    (terpri stream)
    (when *exports*
      (pprint `(export '(,@(sort (mapcar #'zsym (copy-list *exports*)) #'string< :key #'symbol-name))) stream)
      (terpri stream)
      (terpri stream))

    ;; Pretty-print every generated form
    (dolist (f all-forms)
      (pprint f stream)
      (terpri stream)
      (terpri stream))
    *exports*))
