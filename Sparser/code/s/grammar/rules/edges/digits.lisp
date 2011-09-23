;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990-1999  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "digits"
;;;   Module:  "grammar;rules:edges:"
;;;  Version:  1.11 July 1999

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
;;     (9/23/97) Tweaked Make-edge-over-unknown-digit-sequence to gate its use
;;      of model-based operations.
;; 1.8 (10/13) adjusted it again to provide an integer referent when the
;;      model isn't loaded, and to get its edge label through a global
;; 1.9 (7/5/98) Changed the category to be referential if the model is loaded.
;; 1.10 (6/8/99) modified Make-edge-over-digit-sequence to return the edges
;;       that it spanned as well as the new edge. 6/22, modified it to make
;;       a call to annotate-number.
;; 1.11 (7/18/99) Changed the arguments that Make-edge-over-unknown-digit-sequence
;;       passes to construct-temporary-number so we won't have forgotten the
;;       word that we created -- modivated by nlg.

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
        (leftmost-daughter (highest-preterminal-at starting-position))
        daughter-edges  )

    (setf (edge-starts-at edge) starting-vector)
    (setf (edge-ends-at   edge) ending-vector)

    (setf (edge-left-daughter  edge) leftmost-daughter)
    (setf (edge-right-daughter edge) :digit-based-number)

    (setf (edge-category edge) 
          (if *include-model-facilities*
            (find-or-make-category-object 'number :referential)
            category::number))

    (setf (edge-form edge) nil)

    (setq daughter-edges
          (if (eq ending-position 
                  (chart-position-after starting-position))
            ;; then there's just the one daughter that we've already found
            (set-used-by leftmost-daughter edge)
            (set-used-by/anonymous-daughters
             starting-position ending-position edge)))

    (knit-edge-into-positions edge starting-vector ending-vector)

    (assess-edge-label category::number edge)

    (when *trace-edge-creation*
      (format t "~&~%creating ~A for a known or constructed number"
              edge))
    (values edge daughter-edges)))


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

    (setf (edge-category edge) 
          (if *include-model-facilities*
            (find-or-make-category-object 'number :referential)
            category::number))
    (setf (edge-form     edge) nil)
    (setf (edge-referent edge) number)

    (if (eq ending-position (chart-position-after starting-position))
      ;; then there's just the one daughter that we've already found
      (set-used-by leftmost-daughter edge)
      (set-used-by/anonymous-daughters
       starting-position ending-position edge))

    (assess-edge-label category::number edge)

    (when *trace-edge-creation*
      (format t "~&~%creating ~A for a known or constructed number"
              edge))
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
          (number 
           (if *include-model-facilities*
             (construct-temporary-number word digit-string nil)
             (parse-integer digit-string))))

      (setf (edge-starts-at edge) starting-vector)
      (setf (edge-ends-at   edge) ending-vector)
      (knit-edge-into-positions edge starting-vector ending-vector)
      
      (setf (edge-left-daughter  edge) word)
      (setf (edge-right-daughter edge) :single-digit-sequence)

      (setf (edge-category edge) *the-category-of-digit-sequences*)
      (setf (edge-form edge) nil)
      (setf (edge-referent edge) number)

      ;; we don't activate these edges because they are processed by
      ;; the digits FSA, and it will span them with a Number edge that
      ;; will be activated.

      (when *trace-edge-creation*
        (format t "~&~%creating ~A for the unknown digit sequence ~A"
                edge word))

      (when *include-model-facilities*
        (setq *parent-edge-getting-reference* edge)
        (annotate-number number :unknown-digit-sequence nil))

      edge )))

