;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;; $Id: loader.lisp 359 2010-08-13 20:13:38Z dmcdonal $
;;; 
;;;     File:  "loader"
;;;   Module:  "objects;doc:"
;;;  Version:  0.5 July 2010

;; initiated 10/91
;; 0.1  (10/21 v2.0) Bumped [section] to "1".  Added [SGML tags]
;;      (6/18/92 v2.2) added [context]
;; 0.2  (12/7/93 v2.3) added [header label], moved [article] to grammar 12/15
;;      (5/20/94) added [marker pairs].  5/21 added [invisible markup] and
;;       [tag interiors].  6/6 added [annotation].
;; 0.3 (8/17) renamed [sections1] as [section markers], added [sections]
;; 0.4 (1/9/95) bumped [section markers].  9/19 added [html]
;; 0.5 (7/27/10) Added [article1]. The file article has been in the system
;;      forever (1993), but grep doesn't find anything that lloads it. 

(in-package :sparser)

(lload "doc;article1")
(lload "doc;sections")
(lload "doc;section markers1")
(lload "doc;SGML tags")
(lload "doc;html")
(lload "doc;marker pairs")
(lload "doc;invisible markup")
(lload "doc;tag interiors")
(lload "doc;annotation")
(lload "doc;header label")
(lload "doc;style")
(lload "doc;doc stream")
(lload "doc;context")

