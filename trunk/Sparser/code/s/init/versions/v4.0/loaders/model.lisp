;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:(SPARSER LISP)
;;; copyright (c) 1991,1992  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "model"
;;;   module:  "init;versions:v2.3:loaders"
;;;  Version:  0.0 December 1992

;; broken out from master-loader 12/7/92 v2.3

(in-package :sparser)

(when *include-model-facilities*
  (lload "objects;model:loader1")
  (lload "model forms;loader"))

