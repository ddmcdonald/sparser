;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "1st-loader"
;;;   Module:  "model;core:kinds:"
;;;  version:  March 2014

;; Initiated 3/28/14 to allow the upper-model file to be decomposed
;; into more managable pieces.

(in-package :sparser)

(gload "kinds;upper-model")
(gload "kinds;processes")
(gload "kinds;things")
