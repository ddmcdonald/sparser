;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "grammar;rules:FSAs:"
;;;  Version:   November 1991

;; (11/1 v2.0.1) bumped [newline] to 3

(in-package :CTI-source)

(lload "fsa;morphology")
(lload "fsa;capitalization")
(lload "fsa;newline")  ;; goes to 3 for paragraphs as real objects

(lload "fsa;polywords")
(lload "fsa;abbreviations")
(lload "fsa;initials")
(lload "fsa;single quote")

