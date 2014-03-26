;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2013 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "loader"
;;;            objects/situation/
;;;  version:  March 2014

;; Initiated 10/9/13. Moved variables and state in from grammar/rules/
;; situation/ 3/26/14 becaues of dependencies.

(in-package :sparser)

(gload "situation-objs;variables")
(gload "situation-objs;state")
(lload "situation-objs;pegs")
