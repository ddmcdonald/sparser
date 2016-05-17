;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "citations-for-amounts"
;;;   module:  "model;core:amounts:"
;;;  Version:  May 2016

;; Copying in from other files 5/17/16.

(in-package :sparser)


(define-citation "17 tons"
  (1 MEASUREMENT 3))

#|  Example with proportional-measurement, which is know
    to be bad.
? (p "2 inches a year")
[2 inches ][a year]
e3    MEASUREMENT   1 "2 inches " 3
e7    TIME-UNIT     3 "a year" 5

;; unit-of-rate-of-change -- N-per-unit ETF
? (p "10 miles per hour")
[10 miles ]per [hour]
e3    MEASUREMENT   1 "10 miles " 3
e7    TIME-UNIT     3 "per hour" 5



|#

(define-citation "10 fold"
  (1 MEASUREMENT 3))

(define-citation "10-fold"
  (1 MEASUREMENT 4))
