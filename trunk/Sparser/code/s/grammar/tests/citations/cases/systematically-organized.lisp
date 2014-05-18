;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "systematically organized"
;;;   Module:  "grammar;tests:citations:cases:"
;;;  version:  April 1994

;; initiated 11/4/93 v2.3.
;; populated from [new ones]: 4/24/94

(in-package :sparser)

;;;---------
;;; numbers
;;;---------

(define-citation "1"    ;; predefined
  (1 NUMBER 2))

(define-citation "37"   ;; a new one
  (1 NUMBER 2))


(define-citation "76.1"   ;; exercise routes through the fsa
  (1 NUMBER 4))

(define-citation "47,742.6,"
  (1 NUMBER 6)
  (6 "," 7))



(define-citation "47, 26"  ;; check cases that shouldn't succeed
  (1 NUMBER 2)
  (2 "," 3)
  (3 NUMBER 4))

(define-citation "47. 26"
  (1 NUMBER 2)
  (2 "." 3)
  (3 NUMBER 4))


;;---- hyphenated numbers

(define-citation "194-42-4279"
  (1 HYPHENATED-NUMBER 6))

;;  The hyphen and period words blows up in
;;    SCAN-TREETOPS-AND-FORM-CITATION-EXPS on this one
;; fixed 4/27 ??
(define-citation "900712-0151."
  (1 HYPHENATED-NUMBER 4)
  (4 "." 5))

(define-citation "194-42-4279-"
  (1 HYPHENATED-NUMBER 6)
  (6 "-" 7))

;;;-----------------------------
;;; ordinals (requires numbers)
;;;-----------------------------

(define-citation "1st"
  (1 ORDINAL 3))

(define-citation "45th"
  (1 ORDINAL 3))


;;;-------------
;;; percentages
;;;-------------

(define-citation "10%"
  (1 PERCENT 3))

(define-citation "10 percent"
  (1 PERCENT 3))


;;;-----------------------
;;; measurement & amounts
;;;-----------------------

(define-citation "17 tons"
  (1 MEASUREMENT 3))


;;;-------
;;; money
;;;-------

(define-citation "$34"
  (1 MONEY 3))

(define-citation "48 dollars"
  (1 MONEY 3))


;;;-------------------------------------------------
;;; get the global back into the order defined here
;;;-------------------------------------------------

(setq *citations-defined* (nreverse *citations-defined*))

