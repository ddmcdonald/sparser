;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "grammar;rules:sectionizing:"
;;;  Version:  1.1 October 1990

;; 1.1 (10/27 v2.0)  Bumped the files while gutting them in anticipation
;;     of switching to style objects

(in-package :CTI-source)

(lload "sect-rules;initial region1")
(lload "sect-rules;header1")
(lload "sect-rules;body1")
(lload "sect-rules;dateline")

