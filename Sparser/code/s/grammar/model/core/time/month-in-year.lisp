;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992-1993,2021 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "month-in-year"
;;;   Module:  "model;core:time:"
;;;  version:  October 2021

;; initiated 7/31 v1.8.6
;; 1.0 (12/15/92 v2.3) setting up for new semantics
;; 1.1 (9/18/93) actually doing it

(in-package :sparser)

;;;------------
;;; the object
;;;------------

(define-category month-of-the-year
  :specializes time
  :instantiates time
  :binds ((month . month)
          (year . year))
  :index (:temporary :sequential-keys year month))


;;;-------
;;; rules
;;;-------

(def-cfr month-of-the-year (month year)
  :form np
  :referent (:instantiate-individual month-of-the-year
                :with (month left-edge
                       year right-edge)))

(def-cfr month-of-the-year (month comma-year)
  :form np
  :referent (:instantiate-individual month-of-the-year
                :with (month left-edge
                       year right-edge)))
;; Would alternatively use the CA-action for comma-year
;; in years.lisp except that nothing presently invokes it.

