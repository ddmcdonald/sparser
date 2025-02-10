;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1998,2014-2023  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "percentages"
;;;   Module:  "grammar;model:core:numbers:"
;;;  Version:  November 2023

;; 1.1 (7/16/92 v2.3) pilot instances of the new representation regime
;; 1.2 (1/10/94) stubbed measurement to get around load-order paradox
;;     (1/9/96) added string printer
;; 1.3 (7/5/98) redone with a schematic realization.
;;     (9/9/14) added 'n-fold'
;;     (4/20/15) Something odd has happened and the #\% character is
;;      appearing in the chart as the polyword "percent-sign". Added it
;;      to the options for the np-head.

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category percent
  :instantiates :self
  :specializes  measurement
  :lemma (:common-noun "percent")
  :binds  ((number . number))
  :index (:temporary :list)
  :realization (:tree-family item+idiomatic-head
                :mapping ((np . :self)
                          (np-head . ("percent" "%" "percent-sign"))
                          (modifier . (number hyphenated-number))
                          (result-type . :self)
                          (item . number))))


(defun string/percent (p)
  (format nil "~A%" (string-for (value-of 'number p))))



;;;--------
;;; N-fold
;;;--------
;; These describe changes in amount.
;;/// we ought to reflect that is some relation that 
;; can be used to organize search if it's not in construction
;; with a term like 'increase' or 'rose'

(define-category n-fold
  :instantiates :self
  :specializes  multiplier
  :rule-label measurement
  :binds  ((number . number))
  :index (:temporary :list)
  :realization (:tree-family item+idiomatic-head
                :mapping ((np . :self)
                          (np-head . "fold") ;; literal
                          (modifier . number)
                          (result-type . :self)
                          (item . number)))
  :documentation "Says of some countable thing how many times
 how many times its amount should be multiplied. For example,
 if 'the number of new cases has increased fivefold', there are
 now five times as many cases as there were before.
 This formulation with the ETF is for cases where people use
 a number '22-fold' to indicate the multiplier. There isn't
 a meaning of the word 'fold' other than to indicate this
 multiplication.")

;; From bio;examples *italy-new-cases*
;;   "the number of new cases has increased fivefold"
;; The interpretation is very pedestrian -- goes through interpret-adverb+verb

(defun define-n-fold (string integer)
  "For defining the words that incorporate 'fold' in their spelling."
  ;;(check-type string (string)) ;/// fix the syntax
  ;;(check-type integer (integer))
  (let* ((word (resolve/make string))
         (number (find-number integer))
         (i (define-or-find-individual 'n-fold :number number)))
    (make-corresponding-mumble-resource word :adverb i)
    (let ((rule (define-cfr category::n-fold `(,word)
                  :form category::adverb
                  :referent i)))
      (values word rule))))

(define-n-fold "twofold" 2)
(define-n-fold "threefold" 3)
(define-n-fold "fourfold" 4)
(define-n-fold "fivefold" 5)
(define-n-fold "sixfold" 6)
(define-n-fold "sevenfold" 7)
(define-n-fold "eightfold" 8)
(define-n-fold "ninefold" 9)
(define-n-fold "tenfold" 10)
(define-n-fold "elevenfold" 11)
(define-n-fold "twelvefold" 12)
(define-n-fold "thirteenfold" 13)
(define-n-fold "fourteenfold" 14)

;;/// more?


;;;--------------------
;;; order of magnitude
;;;--------------------

(define-category order-of-magnitude
  :specializes multiplier ;; had been unit-of-measure
  :realization
    (:noun ("order of magnitude"
            :plural "orders of magnitude")))
