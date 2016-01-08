;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-2005  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "model;sl:ERN:"
;;;  Version:  1.1 April 2005

;; initiated 12/20/95. Added to through 1/13/96.
;; 1.0 (7/12/98) Started to rework the files into the new era of lattice-points.
;; 1.1 (9/5/00) Bumping files to get new model in place via psi.
;;  (4/1/05) Vetted ['total' verbs2]

(in-package :sparser)

(gload "ern;financial data")
(gload "ern;earnings report")
(gload "ern;'total' verbs")

;(gload "ern;value of fin-dat") ;; must follow [time..]
; /// spread its rules into [earnings report]




;;---------------- not yet reworked -------------
#|
(gload "ern;time of fin-dat")
(gload "ern;company of fin-dat")
(gload "ern;change in fin-dat value")
(gload "ern;'post' verbs")
(gload "ern;'earn' verbs")

(gload "ern;comparative phrases")

(gload "ern;cs rules")
(gload "ern;type raisings")

(gload "ern;discourse heuristics")
(gload "ern;printers")
(gload "ern;reporter")

(gload "ern;citations")
(gload "ern;just ern citations")

(gload "ern;stream-through driver")

|#

(gload "ern;workspace")
