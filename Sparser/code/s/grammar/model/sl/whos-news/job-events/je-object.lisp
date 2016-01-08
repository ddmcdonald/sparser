;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "je object"
;;;   Module:  "model;sl:whos news:job events:"
;;;  version:  March 1995

;; initiated 6/15/93 v2.3.  Made them referential categories 7/22.
;; Made them inherit 3/3/95.  Started moving the standard variables
;; here 3/14.

(in-package :sparser)


;;;-----------------------------------------
;;; root -- the category that gets reported
;;;-----------------------------------------

(define-category job-event
  :instantiates nil
  :specializes  event )


;;;----------------
;;; first division
;;;----------------

(define-category get-position
  :instantiates nil
  :specializes  job-event
  :binds ((person . person)
          (position . position)
          (title . title)
          (company . company)))

(define-category leave-position
  :instantiates nil
  :specializes  job-event
  :binds ((person . person)
          (position . position)
          (title . title)
          (company . company)))

