;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2018 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "0th-loader"
;;;   Module:  "model;core:kinds:"
;;;  version:  October 2018

;; Initiated 3/28/14 to allow the upper-model file to be decomposed
;; into more managable pieces.
;; 4/14/14 moved in files from ISR.
;; Added time 2/1/16.

(in-package :sparser)

(gload "kinds;upper-model")
(gload "kinds;tense-aspect")
(gload "kinds;roles") ;; before substantive categories

