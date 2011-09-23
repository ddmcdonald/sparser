;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2000, 2011 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "numbers"
;;;   Module:  "model:dossiers:"
;;;  Version:  August 2000

;; Moved out of [numbers;] 1/7/94 v2.3
;; 7/19/94 added zero.  5/13/95 added 'permanent' wrapper
;; 6/22/99 Added multipliers for fraction and one.
;; 0.1 (8/5/00) Reordered the multipliers and multiplicand numbers first
;;      because they're referenced by the other numbers. See Define-number
;;     (8/24) reordered again so that the number one could be defined first
;;      and referenced in the construction of the multipliers.
;;     (2/5/11) Added "dozen" as multiplicand argument on 12.

(in-package :sparser)

(define-with-all-instances-permanent 
  (define-number "1"  :ones "one")

  (define-individual 'multiplier :name "fraction")
  (define-individual 'multiplier :name "one")
  
  (define-number "100" :multiplicand "hundred")
  (define-number "1000" :multiplicand "thousand")
  (define-number "1000000" :multiplicand "million")
  (define-number "1000000000" :multiplicand "billion")
  (define-number "1000000000000" :multiplicand "trillion")

  (define-number "0"  :ones "zero")
  
  (define-number "2"  :ones "two")
  (define-number "3"  :ones "three")
  (define-number "4"  :ones "four")
  (define-number "5"  :ones "five")
  (define-number "6"  :ones "six")
  (define-number "7"  :ones "seven")
  (define-number "8"  :ones "eight")
  (define-number "9"  :ones "nine")
  
  (define-number "11" :teens "eleven")
  (define-number "12" :teens "twelve" :multiplicand "dozen")
  (define-number "13" :teens "thirteen")
  (define-number "14" :teens "fourteen")
  (define-number "15" :teens "fifteen")
  (define-number "16" :teens "sixteen")
  (define-number "17" :teens "seventeen")
  (define-number "18" :teens "eighteen")
  (define-number "19" :teens "nineteen")
  
  (define-number "10" :tens "ten")
  (define-number "20" :tens "twenty")
  (define-number "30" :tens "thirty")
  (define-number "40" :tens "forty")
  (define-number "50" :tens "fifty")
  (define-number "60" :tens "sixty")
  (define-number "70" :tens "seventy")
  (define-number "80" :tens "eighty")
  (define-number "90" :tens "ninety")  )

