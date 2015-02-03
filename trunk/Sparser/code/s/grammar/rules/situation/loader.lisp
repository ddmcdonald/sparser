;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2015 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "loader"
;;;            grammar/rules/situation/
;;;  version:  January 2015

;; Initiated 10/9/13. Added rules 3/20/14. Moved variables and
;; state to objects/situation/ 3/26/14. Moved compose to master 
;; loader 6/4/14. Added text-structure 1/29/15

(in-package :sparser)

(when *ISR*
  (gload "sit-rules;rules"))
(gload "sit-rules;text-structure")
