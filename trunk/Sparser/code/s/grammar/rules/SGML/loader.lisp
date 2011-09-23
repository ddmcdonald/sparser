;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1997  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "loader"
;;;   Module:  "grammar;rules:SGML:"
;;;  Version:  March 2007

;; file created 7/91, first populated 10/19/91, order tweeked 10/23
;; and again 12/9/93.  1/13/94 added [Apple cases]. 6/13 moved them to
;; [interface;Apple:].  Moved in [defining html] 10/5/95.  Added [sentence]
;; 6/18/96. Moved [form] in 6/25. Slash => hyphen 1/7/07. 3/6 added gates
;; to the grammars.

(in-package :sparser)

(gload "SGML;form")
(gload "SGML;rules")
(gload "SGML;action")
(gload "SGML;html actions")

(unless *nothing-Mac-specific* 
  (gload "SGML;defining html")) ;; autodef data

(when *whos-news*
  (gload "SGML;DJNS-WSJ cases"))
(when *load-Tipster-grammar-into-image*
  (gload "SGML;Tipster cases"))
(when *reports* ;; not quite the right thing
  (gload "SGML;DCI cases")
  (gload "SGML;sentence"))


