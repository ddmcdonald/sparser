;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "analyzers;sectionizing:"
;;;  Version:  May 1994

;; revised 10/92. 5/20/94 added [marker pairs]. 5/21 added [invisible
;; markup].  6/2 added [next-terminal/invisible]
;; 2.1 (6/9) bumped it to 1

(in-package :sparser)

(lload "sect;globals")
(lload "sect;action")
(lload "sect;marker pairs")
(lload "sect;invisible markup")
(lload "sect;next-terminal-invisible1")

