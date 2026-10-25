;;;; glyf.lisp — Generated OpenType tables
;;;; Generated automatically from OpenType sexp schema
;;;; DO NOT EDIT DIRECTLY


(in-package #:zpb-otf)


(export
 '(+composite-glyph-flags-arg-1-and-2-are-words+
   +composite-glyph-flags-args-are-xy-values+
   +composite-glyph-flags-gid-is-24-bit+
   +composite-glyph-flags-more-components+
   +composite-glyph-flags-overlap-compound+
   +composite-glyph-flags-round-xy-to-grid+
   +composite-glyph-flags-scaled-component-offset+
   +composite-glyph-flags-unscaled-component-offset+
   +composite-glyph-flags-use-my-metrics+
   +composite-glyph-flags-we-have-a-scale+
   +composite-glyph-flags-we-have-a-two-by-two+
   +composite-glyph-flags-we-have-an-x-and-y-scale+
   +composite-glyph-flags-we-have-instructions+ +simple-glyph-flags-cubic+
   +simple-glyph-flags-on-curve-point+ +simple-glyph-flags-overlap-simple+
   +simple-glyph-flags-repeat-flag+
   +simple-glyph-flags-x-is-same-or-positive-x-short-vector+
   +simple-glyph-flags-x-short-vector+
   +simple-glyph-flags-y-is-same-or-positive-y-short-vector+
   +simple-glyph-flags-y-short-vector+ composite-glyph
   composite-glyph-component-data composite-glyph-component-data-bytes
   composite-glyph-component-data-count composite-glyph-component-data-ref
   composite-glyph-number-of-contours composite-glyph-p composite-glyph-x-max
   composite-glyph-x-min composite-glyph-y-max composite-glyph-y-min glyf
   glyf-p read-composite-glyph read-glyf read-glyph read-simple-glyph
   sanitize-composite-glyph sanitize-glyf sanitize-simple-glyph simple-glyph
   simple-glyph-end-pts-of-contours simple-glyph-end-pts-of-contours-count
   simple-glyph-end-pts-of-contours-ref simple-glyph-glyph-data
   simple-glyph-glyph-data-bytes simple-glyph-glyph-data-count
   simple-glyph-glyph-data-ref simple-glyph-instruction-length
   simple-glyph-instructions simple-glyph-instructions-bytes
   simple-glyph-instructions-count simple-glyph-instructions-ref
   simple-glyph-number-of-contours simple-glyph-p simple-glyph-x-max
   simple-glyph-x-min simple-glyph-y-max simple-glyph-y-min))


(define-constant +simple-glyph-flags-on-curve-point+ 1)


(define-constant +simple-glyph-flags-x-short-vector+ 2)


(define-constant +simple-glyph-flags-y-short-vector+ 4)


(define-constant +simple-glyph-flags-repeat-flag+ 8)


(define-constant +simple-glyph-flags-x-is-same-or-positive-x-short-vector+ 16)


(define-constant +simple-glyph-flags-y-is-same-or-positive-y-short-vector+ 32)


(define-constant +simple-glyph-flags-overlap-simple+ 64)


(define-constant +simple-glyph-flags-cubic+ 128)


(define-constant +composite-glyph-flags-arg-1-and-2-are-words+ 1)


(define-constant +composite-glyph-flags-args-are-xy-values+ 2)


(define-constant +composite-glyph-flags-round-xy-to-grid+ 4)


(define-constant +composite-glyph-flags-we-have-a-scale+ 8)


(define-constant +composite-glyph-flags-more-components+ 32)


(define-constant +composite-glyph-flags-we-have-an-x-and-y-scale+ 64)


(define-constant +composite-glyph-flags-we-have-a-two-by-two+ 128)


(define-constant +composite-glyph-flags-we-have-instructions+ 256)


(define-constant +composite-glyph-flags-use-my-metrics+ 512)


(define-constant +composite-glyph-flags-overlap-compound+ 1024)


(define-constant +composite-glyph-flags-scaled-component-offset+ 2048)


(define-constant +composite-glyph-flags-unscaled-component-offset+ 4096)


(define-constant +composite-glyph-flags-gid-is-24-bit+ 8192)


(defstruct
    (glyf (:include table-ref)
     (:constructor %make-glyf (%table-font-data %table-offset %table-length))))


(defun sanitize-glyf (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 0 length) (font-data-valid-range-p font-data offset 0))
    (error 'font-out-of-bounds-error :pos offset :size 0 :length
           (font-data-length font-data)))
  t)


(defun read-glyf
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-glyf font-data offset length)
  (%make-glyf font-data offset length))


(defstruct
    (simple-glyph (:include table-ref)
     (:constructor %make-simple-glyph
      (%table-font-data %table-offset %table-length))))


(defun simple-glyph-number-of-contours (table)
  "If the number of contours is greater than or equal to zero, this is a simple glyph. If negative, this is a composite glyph — the value -1 should be used for composite glyphs."
  (declare (type simple-glyph table))
  (font-data-read-i16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline simple-glyph-number-of-contours-raw))


(defun simple-glyph-number-of-contours-raw (font-data offset)
  (font-data-read-i16 font-data offset))


(defun simple-glyph-x-min (table)
  "Minimum x for coordinate data."
  (declare (type simple-glyph table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline simple-glyph-x-min-raw))


(defun simple-glyph-x-min-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 2)))


(defun simple-glyph-y-min (table)
  "Minimum y for coordinate data."
  (declare (type simple-glyph table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline simple-glyph-y-min-raw))


(defun simple-glyph-y-min-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 4)))


(defun simple-glyph-x-max (table)
  "Maximum x for coordinate data."
  (declare (type simple-glyph table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6)))


(declaim (inline simple-glyph-x-max-raw))


(defun simple-glyph-x-max-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 6)))


(defun simple-glyph-y-max (table)
  "Maximum y for coordinate data."
  (declare (type simple-glyph table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 8)))


(declaim (inline simple-glyph-y-max-raw))


(defun simple-glyph-y-max-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 8)))


(defun simple-glyph-end-pts-of-contours-count (table)
  "Array of point indices for the last point of each contour, in increasing numeric order"
  (simple-glyph-number-of-contours table))


(defun simple-glyph-end-pts-of-contours-ref (table index)
  "Array of point indices for the last point of each contour, in increasing numeric order"
  (declare (type simple-glyph table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 10) (* index 2))))
    (unless
        (<= (+ pos 2) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 2 :length
             (table-ref-length table)))
    (font-data-read-u16 (table-ref-font-data table) pos)))


(defun simple-glyph-instruction-length (table)
  "Total number of bytes for instructions. If instructionLength is zero, no instructions are present for this glyph, and this field is followed directly by the flags field."
  (declare (type simple-glyph table))
  (font-data-read-u16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 10
                         (* (simple-glyph-end-pts-of-contours-count table) 2))))


(defun simple-glyph-instructions-count (table)
  "Array of instruction byte code for the glyph."
  (simple-glyph-instruction-length table))


(defun simple-glyph-instructions-ref (table index)
  "Array of instruction byte code for the glyph."
  (declare (type simple-glyph table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 12
             (* (simple-glyph-end-pts-of-contours-count table) 2))
          (* index 1))))
    (unless
        (<= (+ pos 1) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 1 :length
             (table-ref-length table)))
    (font-data-read-u8 (table-ref-font-data table) pos)))


(defun simple-glyph-instructions-bytes (table)
  "Array of instruction byte code for the glyph."
  (font-data-slice (table-ref-font-data table)
                   (+ (table-ref-offset table) 12
                      (* (simple-glyph-end-pts-of-contours-count table) 2))
                   (simple-glyph-instructions-count table)))


(defun simple-glyph-glyph-data-count (table)
  "the raw data for flags & x/y coordinates"
  (max 0
       (floor
        (- (table-ref-length table)
           (+ (table-ref-offset table) 12
              (* (simple-glyph-instructions-count table) 1)
              (* (simple-glyph-end-pts-of-contours-count table) 2)))
        1)))


(defun simple-glyph-glyph-data-ref (table index)
  "the raw data for flags & x/y coordinates"
  (declare (type simple-glyph table)
           (type (unsigned-byte 32) index))
  (let ((pos
         (+
          (+ (table-ref-offset table) 12
             (* (simple-glyph-instructions-count table) 1)
             (* (simple-glyph-end-pts-of-contours-count table) 2))
          (* index 1))))
    (unless
        (<= (+ pos 1) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 1 :length
             (table-ref-length table)))
    (font-data-read-u8 (table-ref-font-data table) pos)))


(declaim
 (inline simple-glyph-number-of-contours simple-glyph-x-min simple-glyph-y-min
  simple-glyph-x-max simple-glyph-y-max simple-glyph-end-pts-of-contours
  simple-glyph-end-pts-of-contours-count simple-glyph-instruction-length
  simple-glyph-instructions simple-glyph-instructions-count
  simple-glyph-glyph-data simple-glyph-glyph-data-count))


(defun simple-glyph-glyph-data-bytes (table)
  "the raw data for flags & x/y coordinates"
  (font-data-slice (table-ref-font-data table)
                   (+ (table-ref-offset table) 12
                      (* (simple-glyph-instructions-count table) 1)
                      (* (simple-glyph-end-pts-of-contours-count table) 2))
                   (simple-glyph-glyph-data-count table)))


(defun sanitize-simple-glyph (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 10 length) (font-data-valid-range-p font-data offset 10))
    (error 'font-out-of-bounds-error :pos offset :size 10 :length
           (font-data-length font-data)))
  (let ((cnt (simple-glyph-number-of-contours-raw font-data offset)))
    (unless
        (and (<= (+ 10 (* cnt 2)) length)
             (font-data-valid-range-p font-data offset (+ 10 (* cnt 2))))
      (error 'font-out-of-bounds-error :pos offset :size (+ 10 (* cnt 2))
             :length (font-data-length font-data))))
  t)


(defun read-simple-glyph
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-simple-glyph font-data offset length)
  (%make-simple-glyph font-data offset length))


(defstruct
    (composite-glyph (:include table-ref)
     (:constructor %make-composite-glyph
      (%table-font-data %table-offset %table-length))))


(defun composite-glyph-number-of-contours (table)
  "If the number of contours is greater than or equal to zero, this is a simple glyph. If negative, this is a composite glyph — the value -1 should be used for composite glyphs."
  (declare (type composite-glyph table))
  (font-data-read-i16 (table-ref-font-data table) (table-ref-offset table)))


(declaim (inline composite-glyph-number-of-contours-raw))


(defun composite-glyph-number-of-contours-raw (font-data offset)
  (font-data-read-i16 font-data offset))


(defun composite-glyph-x-min (table)
  "Minimum x for coordinate data."
  (declare (type composite-glyph table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 2)))


(declaim (inline composite-glyph-x-min-raw))


(defun composite-glyph-x-min-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 2)))


(defun composite-glyph-y-min (table)
  "Minimum y for coordinate data."
  (declare (type composite-glyph table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 4)))


(declaim (inline composite-glyph-y-min-raw))


(defun composite-glyph-y-min-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 4)))


(defun composite-glyph-x-max (table)
  "Maximum x for coordinate data."
  (declare (type composite-glyph table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 6)))


(declaim (inline composite-glyph-x-max-raw))


(defun composite-glyph-x-max-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 6)))


(defun composite-glyph-y-max (table)
  "Maximum y for coordinate data."
  (declare (type composite-glyph table))
  (font-data-read-i16 (table-ref-font-data table)
                      (+ (table-ref-offset table) 8)))


(declaim (inline composite-glyph-y-max-raw))


(defun composite-glyph-y-max-raw (font-data offset)
  (font-data-read-i16 font-data (+ offset 8)))


(defun composite-glyph-component-data-count (table)
  "component flag glyph index of component"
  (max 0
       (floor (- (table-ref-length table) (+ (table-ref-offset table) 10)) 1)))


(defun composite-glyph-component-data-ref (table index)
  "component flag glyph index of component"
  (declare (type composite-glyph table)
           (type (unsigned-byte 32) index))
  (let ((pos (+ (+ (table-ref-offset table) 10) (* index 1))))
    (unless
        (<= (+ pos 1) (+ (table-ref-offset table) (table-ref-length table)))
      (error 'font-out-of-bounds-error :pos pos :size 1 :length
             (table-ref-length table)))
    (font-data-read-u8 (table-ref-font-data table) pos)))


(declaim
 (inline composite-glyph-number-of-contours composite-glyph-x-min
  composite-glyph-y-min composite-glyph-x-max composite-glyph-y-max
  composite-glyph-component-data composite-glyph-component-data-count))


(defun composite-glyph-component-data-bytes (table)
  "component flag glyph index of component"
  (font-data-slice (table-ref-font-data table) (+ (table-ref-offset table) 10)
                   (composite-glyph-component-data-count table)))


(defun sanitize-composite-glyph (font-data offset length)
  (declare (ignorable length)
           (type font-data font-data)
           (type (unsigned-byte 32) offset length))
  (unless (and (<= 10 length) (font-data-valid-range-p font-data offset 10))
    (error 'font-out-of-bounds-error :pos offset :size 10 :length
           (font-data-length font-data)))
  t)


(defun read-composite-glyph
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (sanitize-composite-glyph font-data offset length)
  (%make-composite-glyph font-data offset length))


(defun read-glyph
       (font-data offset
        &optional (length (- (font-data-length font-data) offset)))
  (declare (ignorable length))
  (let ((fmt (font-data-read-i16 font-data (+ offset 0))))
    (cond ((>= fmt 0) (read-simple-glyph font-data offset length))
          ((< fmt 0) (read-composite-glyph font-data offset length))
          (t (error 'unsupported-format-error :format fmt :table 'glyph)))))

