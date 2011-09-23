;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "analyzers;psp:check:"
;;;  Version:  0.4 July 1994

;; 0.0 (9/4/92 v2.3) initiated.
;; 0.1 (5/14/93) bumped all the organizers to take out their right-
;;      boundary checks
;; 0.2 (6/4) bumped multiply because its cascade of tests looks off
;; 0.3 (3/17/94) bumped [one-one] to 2
;; 0.4 (7/12) bumped [multiply] to 2   9/28 bumped it to 3

(in-package :sparser)

(lload "check;multiply3")
(lload "check;boundaries")
(lload "check;one-one2")
(lload "check;many-one1")
(lload "check;one-many1")
(lload "check;many-many1")

