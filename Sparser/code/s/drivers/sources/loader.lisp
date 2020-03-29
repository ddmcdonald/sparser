;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1994,2015-2020  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   Module:  "drivers;sources:"
;;;  Version:  March 2020

;; 1.1 (9/24/93 v2.3) broke out articles as their own directory
;;     (12/13) added [doc stream]
;; 1.2 (3/28/94) gated it.  8/10 added [articles]
;;     (4/15/15) added document.

(in-package :sparser)

(lload "source-drivers;state")
(lload "source-drivers;core")
(lload "source-drivers;string")
(lload "source-drivers;file")
(lload "source-drivers;directory")
(lload "source-drivers;open file")

(when *orthographic-structure*
  (lload "source-drivers;doc-stream")
  (lload "source-drivers;articles")
  (lload "source-drivers;document")
  (lload "source-drivers;scan-parsed-document")
  (lload "source-drivers;json-corpus-registry")
  (lload "source-drivers;reading-json")
  (lload "source-drivers;driver"))
