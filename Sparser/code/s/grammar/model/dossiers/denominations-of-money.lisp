;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1996,2019  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "denominations of money"
;;;   Module:  "grammar;model:dossiers:"
;;;  version:  December 2019

;; initiated 10/22/93 v2.3 from treatment of 11/91.
;; 0.1 (1/16/96) redid "cents" and "pence"

(in-package :sparser)

;; N.b. define-denomination-of-money is a function.
;; Its arguments will be evaluated

(define-denomination-of-money "dollar" :symbol #\$)

(define-denomination-of-money "euro" :symbol 'euro_sign)

(define-denomination-of-money "pound" :symbol 'british-pound-sign)

(define-denomination-of-money "yen" :symbol 'yen-sign)

(define-denomination-of-money "cent"
    :reference "dollar" :fraction .01)

(define-denomination-of-money "pence"
  :reference "pound" :fraction .01 )

