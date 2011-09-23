;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "tracking"
;;;    Module:  "grammar;rules:DM&P:"
;;;   version:  July 1994

;; initiated 7/27/94 v2.3

(in-package :sparser)

;;;-------------------------------------------------
;;; stubs just to get through things for now (7/27)
;;;-------------------------------------------------

(define-category  subsequent-reference
  :instantiates nil
  :specializes nil )


;; This is tricky since there will typically be several edges made for
;; a number.  "one", for instance is spanned initially as a 'ones-number'
;; and only then as a 'number', so this has to be coordinated with any
;; changes to the analysis/manipulation of numbers

(def-cfr numerated-anaphor ("the" number)
  :form np
  :referent subsequent-reference )

