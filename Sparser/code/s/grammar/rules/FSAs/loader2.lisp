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
(lload "fsa;newline2")  ;; goes to 3 for paragraphs as real objects

(lload "fsa;polywords2")
(lload "fsa;abbreviations1")
(lload "fsa;initials1")
(lload "fsa;single quote1")

