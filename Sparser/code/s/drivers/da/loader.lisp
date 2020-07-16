;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1995,2020  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "drivers;DA:"
;;;  Version:  July 2020

;; initiated 10/26/94 v2.3.  Gave it substantial content 5/5/95
;; added [middle out] 5/18. 5/19 bumped [driver] and [dispatch] to 1.

(in-package :sparser)

(gate-grammar *da*
  (lload "do DA;driver")
  (lload "do DA;dispatch")
  (lload "do DA;fsa globals")
  (lload "do DA;fsa")
  (lload "do DA;middle out")

  (lload "do DA;action globals")
  (lload "do DA;setup action")

  (lload "do DA;rule-inference-scan")

  (lload "do DA;pattern item"))
