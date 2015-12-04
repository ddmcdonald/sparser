;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2015 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "loader"
;;;    Module:  grammar/model/sl/blocks
;;;   version:  December 2015

;; Initiated 10/6/15. Added vocabulary 12/3/15.

(in-package :sparser)

(when (find-package :mumble)
  (gload "blocks;experiments")
  (gload "blocks;vocabulary"))
; (gload "blocks;xx")

