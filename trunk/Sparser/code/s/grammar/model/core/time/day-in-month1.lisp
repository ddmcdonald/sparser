;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992,1993 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "day-in-month"
;;;   Module:  "model;core:time:"
;;;  version:  1.1 September 1993

;; initiated 7/31 v1.8.6
;; 1.0 (12/15/92 v2.3) setting up for new semantics
;; 1.1 (9/18/93) actually doing it

(in-package :sparser)

;;;------------
;;; the object
;;;------------

(define-category day-of-the-month
  :specializes time
  :instantiates time
  :binds ((month . month)
          (number . number)
          (day-of-the-week . weekday))
  :index (:temporary :sequential-keys month number))


;;;-------
;;; rules
;;;-------

(def-cfr day-of-the-month (month number)
  :form np
  :referent (:instantiate-individual day-of-the-month
                :with (month left-edge
                       number right-edge)))

