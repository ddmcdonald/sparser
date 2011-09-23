;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990,1991,1992,1993.1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "digits"
;;;   Module:  "analyzers;psp:edges:"
;;;  Version:  2.0 August 1995

;;1.1  (1/3/91 v1.6) Moved to this file the routine that's called from
;;     assessing unknown digit sequences.
;;1.2  (5/6 v1.8.4)  Added form for number sequence
;;1.3  (7/18 v1.8.6) Added referent value to number-word routine
;;1.4  (7/20/92 v2.3) Changed the call that makes the number
;;1.5  (9/17/93) promulgated change in args in ..over-unknown because aren't 
;;      memoizing the new cases any more
;;1.6  (3/30/94) adding used-in data and real daughters.
;;1.7  (4/27) reordered the knitting in after that used-in calc. to fix a bug where
;;      the edge appeared to be used in itself
;;2.0  (8/30/95) moved the used-in after complete

(in-package :sparser)


(defun make-edge-over-digit-sequence (starting-position
                                      ending-position)
  ;; called from Span-digits-number after the digits FSA has run.
  ;; The edge will often cover more than one digit sequence,
  ;; e.g. "1,234.5".  It's referent and rule fields are put on
  ;; by the caller.
  ;;
  (let ((edge (next-edge-from-resource))
        (starting-vector (pos-starts-here starting-position))
        (ending-vector   (pos-ends-here   ending-position))
        (leftmost-daughter (highest-preterminal-at starting-position)))

    (setf (edge-starts-at edge) starting-vector)
    (setf (edge-ends-at   edge) ending-vector)

    (setf (edge-left-daughter  edge) leftmost-daughter)
    (setf (edge-right-daughter edge) :digit-based-number)

    (setf (edge-category edge) category::number)
    (setf (edge-form edge) nil)

    (knit-edge-into-positions edge starting-vector ending-vector)

    (when *trace-edge-creation*
      (format t "~&~%creating ~A for a known or constructed number"
              edge))

    (if (eq ending-position (chart-position-after starting-position))
      ;; then there's just the one daughter that we've already found
      (set-used-by leftmost-daughter edge)
      (set-used-by/anonymous-daughters
       starting-position ending-position edge))

    (assess-edge-label category::number edge)

    edge ))



(defun make-edge-over-number-word-sequence (starting-position
                                            ending-position
                                            number)
  ;; presently (5/6) does no work beyond recategorizing the span as
  ;; a number
  (let ((edge (next-edge-from-resource))
        (starting-vector (pos-starts-here starting-position))
        (ending-vector   (pos-ends-here   ending-position))
        (leftmost-daughter (highest-preterminal-at starting-position)))

    (setf (edge-starts-at edge) starting-vector)
    (setf (edge-ends-at   edge) ending-vector)
    (knit-edge-into-positions edge starting-vector ending-vector)

    (setf (edge-left-daughter  edge) leftmost-daughter)
    (setf (edge-right-daughter edge) :word-based-number)

    (setf (edge-category edge) category::number)
    (setf (edge-form     edge) nil)
    (setf (edge-referent edge) number)

    (when *trace-edge-creation*
      (format t "~&~%creating ~A for a known or constructed number"
              edge))

    (if (eq ending-position (chart-position-after starting-position))
      ;; then there's just the one daughter that we've already found
      (set-used-by leftmost-daughter edge)
      (set-used-by/anonymous-daughters
       starting-position ending-position edge))

    (assess-edge-label category::number edge)

    edge ))



(defun make-edge-over-unknown-digit-sequence (word position)
  ;; placed over individual digit sequences that were not predefined
  ;; in the grammar.  Called from Specific-assessed-actions.
  ;;
  (let ((digit-string (word-pname word))
        (next-position (chart-position-after position)))

    (let ((edge (next-edge-from-resource))
          (starting-vector (pos-starts-here position))
          (ending-vector   (pos-ends-here   next-position))
          (number (construct-temporary-number digit-string ;; word
                                              )))

      (setf (edge-starts-at edge) starting-vector)
      (setf (edge-ends-at   edge) ending-vector)
      (knit-edge-into-positions edge starting-vector ending-vector)
      
      (setf (edge-left-daughter  edge) word)
      (setf (edge-right-daughter edge) :single-digit-sequence)

      (setf (edge-category edge) category::digit-sequence)
      (setf (edge-form edge) nil)
      (setf (edge-referent edge) number)

      ;; we don't activate these edges because they are processed by
      ;; the digits FSA, and it will span them with a Number edge that
      ;; will be activated.

      (when *trace-edge-creation*
        (format t "~&~%creating ~A for the unknown digit sequence ~A"
                edge word))
      edge )))

