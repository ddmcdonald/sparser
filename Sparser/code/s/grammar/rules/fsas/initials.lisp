;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "initials"
;;;   Module:  "grammar;rules:FSAs:"
;;;  Version:  2.2 May 1994

;; 2.0 (11/9 v2.3) Threw out the old version as capitalization trigger changed
;; 2.1 (12/29/93) Added a check against polywords that start with the letter.
;; 2.2 (1/7/94) adding Look-ahead-for-initial. 6/13 fleshed it out.
;;     (5/3/95) added traces

(in-package :sparser)


(defun check-for-initial-before-position (position)

  ;; Called from Checkout-period-for-capseq which is part of the 
  ;; proper name fsa.  It functions there as a predicate.
  ;; The current position (the argument) has a period in it.
  ;; We determines whether the word at the prior position is a single
  ;; letter and if so we span it with an edge.
  (tr :Check-for-initial-before-position position)

  (let ((prior-position (chart-position-before position)))
    (when (eq :single-capitalized-letter
              (pos-capitalization prior-position))
      (tr :initial-found prior-position position)

      ;; It's an initial, but does it start a polyword?
      ;;    e.g. "U.S.A."  "G.m.b.H."
      (let* ((letter (pos-terminal prior-position))
             (new-position (do-word-level-fsas
                            letter (chart-position-before position))))
        (if new-position
          (then
            (tr :initial-fired-fsa new-position)
            new-position)

          (let ((initial (find-individual 'initial :word letter)))
            (unless initial
              (break "Should be an initial for the letter: ~A"
                     (pos-terminal prior-position)))

            (let ((edge
                   (make-chart-edge
                    :starting-position prior-position
                    :ending-position (chart-position-after position)
                    :left-daughter letter
                    :right-daughter (pos-terminal position)
                    :category (category-named 'initial)
                    :form     (category-named 'proper-noun)
                    :rule-name  :initials-fsa
                    :referent   initial )))

              (tr :initial-made-edge edge)
              edge )))))))




(defun look-ahead-for-initial (position-before)
  ;; called from Checkout-continuation-for-non-punctuation when
  ;; it sees a ] introduced. There's the special case (?) of "A.",
  ;; where the ambiguity of the word with the determiner of the
  ;; same spelling has to be sorted out.
  ;;   The word introducing the bracket is between the 'position-before'
  ;; that's been passed in and the 'position-after' we get here.
  ;; It would be cleaner perhaps to have the single edge introduced
  ;; but the point of the call is the scan, and I don't feel like
  ;; tinkering with the threading things by introducing its edges now,
  ;; though in principle that should be checked for and not lead to
  ;; them being introduced twice.  Instead we'll look at the length
  ;; of the word by hand. 
  (tr :Look-ahead-for-initial position-before)

  (let* ((position-after (chart-position-after position-before))
         (status (pos-assessed? position-after)))
    (unless status
      (scan-next-position))

    (let ((next-word (pos-terminal position-before)))

      (and (= 1 (length (word-pname next-word)))
           (eq (pos-terminal position-after)
               word::period)))))

