;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "loader"
;;;   Module:  "analyzers;psp:check:"
;;;  Version:  1.2 August 2007

;; 0.0 (9/4/92 v2.3) initiated.
;; 0.1 (5/14/93) bumped all the organizers to take out their right-
;;      boundary checks
;; 0.2 (6/4) bumped multiply because its cascade of tests looks off
;; 0.3 (3/17/94) bumped [one-one] to 2
;; 0.4 (7/12) bumped [multiply] to 2   9/28 bumped it to 3
;; 1.0 (4/29/00) bumped multiply to 4 and one-one to 3.
;; 1.1 (2/9/05) bumped multiply to 5.
;; 1.2 (8/17/07) bumped multiply to 6.

(in-package :sparser)

(lload "check;multiply6")
(lload "check;boundaries")
(lload "check;one-one3")
(lload "check;many-one1")
(lload "check;one-many1")
(lload "check;many-many1")
