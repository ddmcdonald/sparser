;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1997  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "loader"
;;;   Module:  "grammar;rules:sources:"
;;;  Version:  January 2007

;; initiated 12/27/93 v2.3. 5/4/94 added [DCI/wsj].  6/6 added [Apple]
;; 6/26/95 added [CBD] and [Congress].  9/15 added [html]   12/28 added
;; [Knowledge Factory]. Slash => hyphen 1/7/07

(in-package :sparser)

(gload "sources;DJNS")
(gload "sources;typed-no-headers")
(gload "sources;DCI wsj")
(gload "sources;Apple")
(gload "sources;CBD")
(gload "sources;Congress")
(gload "sources;html")
(gload "sources;Knowledge Factory")

