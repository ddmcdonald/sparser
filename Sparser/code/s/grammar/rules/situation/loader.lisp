;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2016 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "loader"
;;;            grammar/rules/situation/
;;;  version:  January 2015

;; Initiated 10/9/13. Added rules 3/20/14. Moved variables and
;; state to objects/situation/ 3/26/14. Moved compose to master 
;; loader 6/4/14. Added text-structure 1/29/15. Want to run
;; a c3-style protocol in a domain other than ISR so removing
;; gate from rules. This entailed adding new, gated file for
;; all the ISR-specific methods: ISR-methods (11/30/15). 
;; 1/25/16 changed flag to C3.

(in-package :sparser)

(gload "sit-rules;rules")
(when *C3*
  (gload "sit-rules;ISR-methods"))
(gload "sit-rules;text-structure")
