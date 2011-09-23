;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994,1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   Module:  "objects;model:tree-families:"
;;;  version:  June 1995   

;; initiated 8/4/92. Bumped [subrs] 10/14/94 to save the original treatment.
;; 2/22/95 added [postprocessing].  6/22/95 bumped [subrs] again

(in-package :sparser)

(lload "tf;object")
(lload "tf;form")
(lload "tf;def form")
(lload "tf;driver")
(lload "tf;subrs2")
(lload "tf;rdata")

