;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-1997  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "grammar;rules:FSAs:newlines:"
;;;  Version:  June 1996

;; initiated 1/5/95. Redid calls as logicals 3/18/95.  Added [count lines] 6/6/96

(in-package :sparser)

(gload "newlines;blank lines")
(gload "newlines;count lines")
(gload "newlines;stack sensitive")
(gload "newlines;indentation")
(gload "newlines;linefeeds")
(gload "newlines;meaningless")
(gload "newlines;introduce boundary")

;;(gload "newlines;old unvetted")

