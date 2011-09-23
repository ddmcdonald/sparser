;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "drivers;sources:"
;;;  Version:  1.2 August 1994

;; 1.1 (9/24/93 v2.3) broke out articles as their own directory
;;     (12/13) added [doc stream]
;; 1.2 (3/28/94) gated it.  8/10 added [articles]

(in-package :sparser)

(lload "source-drivers;state")
(lload "source-drivers;core1")
(lload "source-drivers;string")
(lload "source-drivers;file1")
(lload "source-drivers;open file")

(when *orthographic-structure*
  (lload "source-drivers;doc stream")
  (lload "source-drivers;articles"))

