;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "numbers"
;;;   Module:  "model:dossiers:"
;;;  Version:  January 1994

;; initiated 10/90.  Moved out of [numbers;] 1/7/94 v2.3 

(in-package :sparser)


(define-number "1"  :ones "one")
(define-number "2"  :ones "two")
(define-number "3"  :ones "three")
(define-number "4"  :ones "four")
(define-number "5"  :ones "five")
(define-number "6"  :ones "six")
(define-number "7"  :ones "seven")
(define-number "8"  :ones "eight")
(define-number "9"  :ones "nine")

(define-number "11" :teens "eleven")
(define-number "12" :teens "twelve")
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
(define-number "90" :tens "ninety")

(define-number "100" :multiplicand "hundred")
(define-number "1000" :multiplicand "thousand")
(define-number "1000000" :multiplicand "million")
(define-number "1000000000" :multiplicand "billion")
(define-number "1000000000000" :multiplicand "trillion")

