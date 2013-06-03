;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Written by Seth Dworman
;;;
;;;     File:  "new ones"
;;;   Module:  "grammar;tests:citations:cases:"
;;;  version:  May 2013

(in-package :sparser)

;;these citations work for (prep-)time

(define-citation "the first three months"
  (1 FRACTION-OF-AMOUNT-OF-TIME 5))

(define-citation "on Monday"
  (1 PREP-TIME 3))

(define-citation "by Monday"
  (1 PREP-TIME 3))

(define-citation "for Monday"
  (1 PREP-TIME 3))

(define-citation "in January"
  (1 PREP-TIME 3))


