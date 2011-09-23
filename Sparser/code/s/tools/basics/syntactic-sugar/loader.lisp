;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990-1992  Content Technologies Inc.
;;; copyright (c) 1992-1993,2011  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "loader"
;;;    Module:   "tools:basics:syntactic sugar"
;;;   Version:   March 2011

;; Initiated 7/1991. (12/30/93 v2.3) added [list hacking]
;; 3/9/11 Experimented with conditionalizing load on :ddm-utils feature,=

(in-package :sparser)

(lload "sugar;then-and-else")
(lload "sugar;strings")
(lload "sugar;alists")
(lload "sugar;predicates")
(lload "sugar;printing")
(lload "sugar;sorting")
(lload "sugar;list hacking")

