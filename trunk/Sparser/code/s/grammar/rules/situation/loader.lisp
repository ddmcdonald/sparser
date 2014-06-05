;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "loader"
;;;            grammar/rules/situation/
;;;  version:  June 2014

;; Initiated 10/9/13. Added rules 3/20/14. Moved variables and
;; state to objects/situation/ 3/26/14. Moved compose to master 
;; loader 6/4/14

(in-package :sparser)

(gload "sit-rules;rules")