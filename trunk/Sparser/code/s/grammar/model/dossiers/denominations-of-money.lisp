;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1996  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "denominations of money"
;;;   Module:  "grammar;model:dossiers:"
;;;  version:  0.1 January 1996

;; initiated 10/22/93 v2.3 from treatment of 11/91.
;; 0.1 (1/16/96) redid "cents" and "pence"

(in-package :sparser)


(define-individual 'denomination/money  :name "$")
(define-individual 'denomination/money  :name "dollar")

(define-fractional-denomination-of-money "cent"
  :reference-denomination "dollar"
  :fraction .01 )


(define-individual 'denomination/money  :name "pound")
(define-fractional-denomination-of-money "pence"
  :reference-denomination "pound"
  :fraction .01 )

