;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1995,2014 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "printers"
;;;   Module:  "objects;chart:brackets:"
;;;  Version:   1.4 January 2014

;; 1.1 (4/26/91 v1.8.4)  Reworked to use bracket symbols
;; 1.2 (11/24/92 v2.3) Added a routine for printing segments on successive lines
;; 1.3 (4/27/93) adjusting segment printer to new word-level protocol
;; 1.4 (12/15) extended Display-bracked-segments to hack a wrapped chart and
;;      stoped it from looping when the analysis wasn't finished
;;     (1/4/95) extended distance Display-chart-brackets printed by one
;;     (1/27/14) Updated call on paragraph in display-segments-in-paragraph

(in-package :sparser)


;;;---------------
;;; the defstruct
;;;---------------

(defun print-bracket-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<" stream)
  (if (b-symbol obj)
    (then (write-string "bracket " stream)
          (princ (b-symbol obj) stream))
    (if (eq :before (b-placement obj))
      (then (princ (b-direction obj) stream)
            (princ-bracket-word-or-type obj stream))
      (else (princ-bracket-word-or-type obj stream)
            (princ (b-direction obj) stream))))
  (write-string " >" stream))


(defun princ-bracket-word-or-type (b stream)
  (if (b-word b)
    (display-word (b-word b) stream)
    (princ-category (b-category b) stream)))


;;;-----------------------
;;; brackets in the chart
;;;-----------------------

(defun print-bracket/starting-at (pos
                                  &optional (stream *standard-output*))
  (let ((bracket
         (ev-boundary (pos-starts-here pos))))
    (when bracket
      (princ (b-direction bracket) stream))))

(defun print-bracket/ending-at (pos
                                  &optional (stream *standard-output*))
  (let ((bracket
         (ev-boundary (pos-ends-here pos))))
    (when bracket
      (princ (b-direction bracket) stream))))



(defun display-chart-brackets (&optional (stream
                                          *standard-output*)
                               &aux pos )

  ;; This is a variation on Display-chart that includes bracket
  ;; characters on the position indexes. It is hard to read in
  ;; a long text because there's no provision for wrapping.

  (declare (special *position-array-is-wrapped*
                    *next-array-position-to-fill*
                    *number-of-positions-in-the-chart*
                    *number-of-next-position*))

  (if *position-array-is-wrapped*
    (then
      (do ((cell-index (1+ *next-array-position-to-fill*)
                       (1+ cell-index)))
          ((= cell-index *number-of-positions-in-the-chart*))
        (setq pos (chart-array-cell cell-index))
        (write-string " " stream)
        (print-bracket/ending-at pos stream)
        (format stream "~A" (pos-token-index pos))
        (print-bracket/starting-at pos stream)
        (write-string " " stream)
        (print-position/terminal pos)
        )

      (do ((cell-index 0 (1+ cell-index)))
          ((= cell-index *next-array-position-to-fill*))
        (setq pos (chart-array-cell cell-index))
        (write-string " " stream)
        (print-bracket/ending-at pos stream)
        (format stream "~A" (pos-token-index pos))
        (print-bracket/starting-at pos stream)
        (write-string " " stream)
        (print-position/terminal pos)))

    (else
      (dotimes (n (1+ *number-of-next-position*))
        (setq pos (chart-array-cell n))
        (write-string " " stream)
        (print-bracket/ending-at pos stream)
        (format stream "~A" (pos-token-index pos))
        (print-bracket/starting-at pos stream)
        (write-string " " stream)
        (print-position/terminal pos stream)))))



(defun display-segments-in-paragraph (p
                                      &optional (stream *standard-output*))
  (let ((start-pos (starts-at-pos p))
        (end-pos (ends-at-pos p)))
    (display-bracketed-segments
     :stream stream  :from start-pos  :to end-pos)
    (format stream "~%~%")))

(defun display-current-segment ()
  (declare (special *left-segment-boundary* *right-segment-boundary*))
  (display-bracketed-segments
   :from *left-segment-boundary*
   :to *right-segment-boundary*))
   


(defvar *where-to-stop-bracket-segment-display* nil)

(defun display-bracketed-segments (&key
                                   from to
                                   (stream *standard-output*))
  ;; this is analogous to TT. It prints the text with each segment
  ;; on its own line.
  (declare (special *where-to-stop-bracket-segment-display* *the-chart*
                    *first-chart-position* *position-array-is-wrapped*))
  (when to
    (setq *where-to-stop-bracket-segment-display* to))

  (catch 'eos
    (if *position-array-is-wrapped*
      (let* ((index-of-1st-good-pos (+ 2 *first-chart-position*))
             (1st-good-pos (aref *the-chart* index-of-1st-good-pos)))
        (format stream "~&[The chart has wrapped]~
                        ~%   ...~%")
        (dbs-no-segment (or from 1st-good-pos) stream))
      (else
        (terpri stream)
        (dbs-no-segment (or from (p# 0)) stream))))
  (setq *where-to-stop-bracket-segment-display* nil))


(defun dbs-no-segment (position stream)
  ;; before this position we're not inside a segment.
  ;; So if a segment starts here we print and shift accordingly,
  ;; otherwise we print the word on its own line and loop.
  (declare (special *where-to-stop-bracket-segment-display* *end-of-source*))
  (let* ((starts-here (pos-starts-here position))
         (boundary (ev-boundary starts-here)))
    (when (eq (pos-terminal position) *end-of-source*)
      (throw 'eos :done))
    (when *where-to-stop-bracket-segment-display*
      (when (eq position *where-to-stop-bracket-segment-display*)
        (throw 'eos :done)))
    (unless (pos-terminal position)
      (format stream "~&... chart is in progress~%")
      (throw 'eos :done))
    (if boundary
      (then
        (format stream "~&[ ~S"
                (word-string (pos-terminal position)))
        (dbs-segment-pending (chart-position-after position) stream))
      (else
        (format stream "~&~S~%"
                (word-string (pos-terminal position)))
        (dbs-no-segment (chart-position-after position) stream)))))


(defun dbs-segment-pending (position stream)
  (declare (special *where-to-stop-bracket-segment-display* *end-of-source*))
  (let* ((ends-here (pos-ends-here position))
         (boundary (ev-boundary ends-here)))
    (when *where-to-stop-bracket-segment-display*
      (when (eq position *where-to-stop-bracket-segment-display*)
        (throw 'eos :done)))
    (if boundary
      (then
        (format stream " ]~%")
        (when (eq (pos-terminal position) *end-of-source*)
          (throw 'eos :done))
        (dbs-no-segment position stream))
      (else
        (unless (pos-terminal position)
          (format stream "~&... chart is in progress~%")
          (throw 'eos :done))
        (format stream " ~S" (word-string (pos-terminal position)))
        (dbs-segment-pending (chart-position-after position) stream)))))
