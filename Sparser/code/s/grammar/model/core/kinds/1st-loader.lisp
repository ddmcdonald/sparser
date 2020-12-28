;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2020 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "1st-loader"
;;;   Module:  "model;core:kinds:"
;;;  version:  December 2020

;; Initiated 3/28/14 to allow the upper-model file to be decomposed
;; into more managable pieces.
;; 4/14/14 moved in files from ISR.
;; Added time 2/1/16.

(in-package :sparser)

(gload "kinds;processes")
(gload "kinds;things")
(gload "kinds;predicate")
(gload "kinds;attribution")
(gload "kinds;space")
(gload "kinds;time")
(gload "kinds;movement")

(gload "kinds;general-rules")
