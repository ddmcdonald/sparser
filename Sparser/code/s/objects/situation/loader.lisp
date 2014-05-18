;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "loader"
;;;            objects/situation/
;;;  version:  May 2014

;; Initiated 10/9/13. Moved variables and state in from grammar/rules/
;; situation/ 3/26/14 because of dependencies. 5/8/14 added [latent-predicates]
;; and moved in [situation] from docs. %/15/14 added [definitions}

(in-package :sparser)

(lload "situation-objs;latent-predicates")
(lload "situation-objs;variables")
(lload "situation-objs;state")
(lload "situation-objs;pegs")
(lload "situation-objs;situation")

(lload "situation-objs;definitions")
