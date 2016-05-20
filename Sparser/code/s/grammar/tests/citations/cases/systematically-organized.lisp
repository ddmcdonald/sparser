;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "systematically organized"
;;;   Module:  "grammar;tests:citations:cases:"
;;;  version:  April 1994

;; initiated 11/4/93 v2.3.
;; populated from [new ones]: 4/24/94

(in-package :sparser)

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
;;;-----------------------
;;; measurement & amounts
;;;-----------------------

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

