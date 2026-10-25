;;;; extensions.lisp — Hand-written accessors for data-dependent table layouts
;;;; Copyright (C) 2026 Arthur Miller and contributors
;;;; SPDX-License-Identifier: MIT

;;; The generated tables cannot express arrays whose element size or
;;; count depends on packed flag fields. These helpers decode them.

(in-package #:zpb-otf)

(export '(+tuple-index-embedded-peak-tuple+ +tuple-index-intermediate-region+
          +tuple-index-private-point-numbers+ +tuple-index-tuple-index-mask+
          +tuple-variation-count-shared-point-numbers+ +tuple-variation-count-count-mask+
          tuple-variation-header-size map-tuple-variation-headers
          cvar-tuple-count cvar-tuple-variation-headers
          gvar-glyph-variation-data-offset-ref gvar-glyph-variation-data-header
          glyph-variation-data-header-tuple-count
          glyph-variation-data-header-tuple-variation-headers
          strike-glyph-data
          item-variation-data-long-words-p item-variation-data-word-count
          item-variation-data-row-size item-variation-data-delta-set-ref))

;;; Tuple variation headers ('cvar', 'gvar')

(define-constant +tuple-index-embedded-peak-tuple+ #x8000)
(define-constant +tuple-index-intermediate-region+ #x4000)
(define-constant +tuple-index-private-point-numbers+ #x2000)
(define-constant +tuple-index-tuple-index-mask+ #x0FFF)
(define-constant +tuple-variation-count-shared-point-numbers+ #x8000)
(define-constant +tuple-variation-count-count-mask+ #x0FFF)

(defun tuple-variation-header-size (font-data pos axis-count)
  "Size in bytes of the TupleVariationHeader at POS."
  (let ((tuple-index (font-data-read-u16 font-data (+ pos 2))))
    (+ 4
       (if (logtest tuple-index +tuple-index-embedded-peak-tuple+) (* 2 axis-count) 0)
       (if (logtest tuple-index +tuple-index-intermediate-region+) (* 4 axis-count) 0))))

(defun map-tuple-variation-headers (fn font-data start count axis-count)
  "Call FN with each of the COUNT TupleVariationHeader tables starting at
POS START, in order. Return the position just past the last header."
  (let ((pos start))
    (dotimes (i count pos)
      (let ((size (tuple-variation-header-size font-data pos axis-count)))
        (funcall fn (read-tuple-variation-header font-data pos size))
        (incf pos size)))))

(defun cvar-tuple-count (cvar)
  (logand (cvar-tuple-variation-count cvar) +tuple-variation-count-count-mask+))

(defun cvar-tuple-variation-headers (cvar axis-count)
  "List of the cvar table's TupleVariationHeader tables. AXIS-COUNT comes from 'fvar'."
  (let ((headers '()))
    (map-tuple-variation-headers (lambda (h) (push h headers))
                                 (table-ref-font-data cvar)
                                 (cvar-tuple-variation-headers-start cvar)
                                 (cvar-tuple-count cvar)
                                 axis-count)
    (nreverse headers)))

;;; 'gvar'

(defun gvar-glyph-variation-data-offset-ref (gvar index)
  "Offset INDEX (0 to glyphCount inclusive) of glyphVariationDataOffsets,
decoded per the long-offsets flag: short offsets are stored halved."
  (let ((fd (table-ref-font-data gvar))
        (start (gvar-glyph-variation-data-offsets-start gvar)))
    (unless (<= index (gvar-glyph-count gvar))
      (error 'font-out-of-bounds-error :pos index :size 1 :length (1+ (gvar-glyph-count gvar))))
    (if (gvar-flags-long-offsets-p (gvar-flags gvar))
        (font-data-read-u32 fd (+ start (* index 4)))
        (* 2 (font-data-read-u16 fd (+ start (* index 2)))))))

(defun gvar-glyph-variation-data-header (gvar glyph-id)
  "The GlyphVariationData header for GLYPH-ID, or NIL if the glyph has no variation data."
  (let* ((start (gvar-glyph-variation-data-offset-ref gvar glyph-id))
         (end (gvar-glyph-variation-data-offset-ref gvar (1+ glyph-id)))
         (base (+ (table-ref-offset gvar) (gvar-glyph-variation-data-array-offset gvar))))
    (when (< start end)
      (read-glyph-variation-data-header (table-ref-font-data gvar) (+ base start) (- end start)))))

(defun glyph-variation-data-header-tuple-count (header)
  (logand (glyph-variation-data-header-tuple-variation-count header)
          +tuple-variation-count-count-mask+))

(defun glyph-variation-data-header-tuple-variation-headers (header axis-count)
  "List of HEADER's TupleVariationHeader tables. AXIS-COUNT comes from 'gvar' or 'fvar'."
  (let ((headers '()))
    (map-tuple-variation-headers (lambda (h) (push h headers))
                                 (table-ref-font-data header)
                                 (glyph-variation-data-header-tuple-variation-headers-start header)
                                 (glyph-variation-data-header-tuple-count header)
                                 axis-count)
    (nreverse headers)))

;;; 'sbix'

(defun strike-glyph-data (strike glyph-id)
  "The glyph-data table for GLYPH-ID in STRIKE, or NIL if the glyph has no bitmap."
  (let ((start (strike-glyph-data-offsets-ref strike glyph-id))
        (end (strike-glyph-data-offsets-ref strike (1+ glyph-id))))
    (when (< start end)
      (read-glyph-data (table-ref-font-data strike)
                       (+ (table-ref-offset strike) start)
                       (- end start)))))

;;; ItemVariationData

(defun item-variation-data-long-words-p (ivd)
  "True if the word deltas are 32-bit and the remaining deltas 16-bit (the LONG_WORDS flag)."
  (logbitp 15 (item-variation-data-word-delta-count ivd)))

(defun item-variation-data-word-count (ivd)
  "Number of deltas per row stored in the wider (word) size."
  (logand #x7FFF (item-variation-data-word-delta-count ivd)))

(defun item-variation-data-row-size (ivd)
  "Size in bytes of one delta-set row."
  (let ((words (item-variation-data-word-count ivd))
        (regions (item-variation-data-region-index-count ivd)))
    (if (item-variation-data-long-words-p ivd)
        (+ (* 4 words) (* 2 (- regions words)))
        (+ (* 2 words) (- regions words)))))

(defun item-variation-data-delta-set-ref (ivd item region)
  "Delta for ITEM (row) and REGION (column index into regionIndexes)."
  (let* ((words (item-variation-data-word-count ivd))
         (long-p (item-variation-data-long-words-p ivd))
         (wide (if long-p 4 2))
         (narrow (if long-p 2 1))
         (fd (table-ref-font-data ivd)))
    (unless (and (< item (item-variation-data-item-count ivd))
                 (< region (item-variation-data-region-index-count ivd)))
      (error 'font-out-of-bounds-error :pos item :size 1 :length (item-variation-data-item-count ivd)))
    (let* ((rows-start (+ (table-ref-offset ivd) 6 (* 2 (item-variation-data-region-index-count ivd))))
           (pos (+ rows-start
                   (* item (item-variation-data-row-size ivd))
                   (if (< region words)
                       (* region wide)
                       (+ (* words wide) (* (- region words) narrow))))))
      (if (< region words)
          (if long-p (font-data-read-i32 fd pos) (font-data-read-i16 fd pos))
          (if long-p (font-data-read-i16 fd pos) (font-data-read-i8 fd pos))))))
