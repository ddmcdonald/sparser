;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "loader"
;;;            objects/situation/
;;;  version:  May 2014

;; Initiated 10/9/13. Moved variables and state in from grammar/rules/
;; situation/ 3/26/14 because of dependencies. 5/8/14 added [latent-predicates]

(in-package :sparser)

(lload "situation-objs;latent-predicates")
(gload "situation-objs;variables")
(gload "situation-objs;state")
(lload "situation-objs;pegs")
