;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "classifications"
;;;   Module:  "model;core:names:fsa:"
;;;  version:  March 1994

;; initiated (5/15/93) to fit PNF paper
;; ... added various cases, added person-prefixes 6/19, added generic-co-word
;; 10/29, incorporated escape 11/1.  12/29 added contains-country.
;; 1/11/94 added "the".  3/21 added "/"

(in-package :sparser)


;;;-----------------------------------------
;;; flags set within the PNF transition net
;;;-----------------------------------------

(defmacro define-pnf-flag (symbol)
  ;; a hook for more interesting things later
  `(defparameter ,symbol nil))


(define-pnf-flag  contains-single-letter/s)

(define-pnf-flag  contains-&)

(define-pnf-flag  contains-forward-slash)

(define-pnf-flag  contains-generic-co-word)        ;; "Holdings"

(define-pnf-flag  contains-country)

(define-pnf-flag  contains-Kind-of-Company-word)

(define-pnf-flag  contains-inc-term)

(define-pnf-flag  contains-initial)

(define-pnf-flag  contains-person-prefix)

(define-pnf-flag  contains-the)


(defun pNF-flag-based-categorization ()
  ;; The final state didn't have a classification, so we look for 
  ;; one based on the flags.
  ;;    These checks are ordered. They're not as definitive as getting
  ;; the classification off of the final-state since that would have
  ;; a picture of the composition of the name as a whole.
  (cond (contains-inc-term
         (values category::company :contains-inc-term))
        (contains-generic-co-word
         (values category::company :contains-generic-co-word))
        (contains-&
         (values category::company :contains-&))
        (contains-forward-slash
         (values category::company :contains-forward-slash))
        (contains-Kind-of-Company-word
         (values category::company :contains-Kind-of-Company-word))
        (contains-initial
         (values category::person :contains-initial))
        (contains-person-prefix
         (values category::person :contains-person-prefix))
        (contains-single-letter/s
         (values category::company :contains-single-letter/s))
        (contains-the
         (values category::company :contains-the-word-the))
        (contains-country
         (values category::company :contains-country))
        (t nil)))


;;;------------------------
;;; initialization routine
;;;------------------------

(defun initialize-PN-classification-engine ()
  (setq *items-in-PN-sequence* nil)
  ;;/// this could do it all at a remove by working through
  ;; a table created by define-pnf-flag
  (setq contains-single-letter/s  nil
        contains-&                nil
        contains-forward-slash    nil
        contains-generic-co-word  nil
        contains-country nil
        contains-Kind-of-Company-word  nil
        contains-inc-term nil
        contains-initial nil
        contains-person-prefix nil
        contains-the nil
        ))



;;;---------------------------------------------------------
;;; deciding on a category for the sequence given the flags
;;;                and the final state
;;;---------------------------------------------------------


(defun categorize-pn-results (final-state)

  ;; Called from C&R-multi-word-span
  ;;   Sometimes the name of the final state may encode enough
  ;; information to make a judgement, other times (/// ????) we'll
  ;; need to go through the flags (/// -> depends on tradeoff in
  ;; complexity of state names and use of flags)

  (if (eq :pattern-is-outside-coverage (label-symbol final-state))
    (values category::name
            :default-for-unknown-pattern)

    (let ((category
           (get (label-symbol final-state) :classification)))

      (if category
        (values category
                final-state)
        (pnf-flag-based-categorization)))))


;;;-------
;;; cases
;;;-------

(define-state-classification  :words+inc-term  'company)

(define-state-classification :name+letter&letter+koc  'company)
(define-state-classification :word+letter&letter+koc  'company)

