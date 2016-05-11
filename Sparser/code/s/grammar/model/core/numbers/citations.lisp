;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "citations"
;;;   Module:  "model;core:numbers:"
;;;  Version:  May 2016

;; Initially populated from tests/citations/cases/systematicaly-organized.lisp

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

