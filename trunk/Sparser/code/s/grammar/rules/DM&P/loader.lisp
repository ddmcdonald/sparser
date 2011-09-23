;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1997  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;; $Id$
;;;
;;;      File:  "loader"
;;;    Module:  "grammar;rules:DM&P:"
;;;   version:  0.4 May  2010

;; initiated 3/28/94 v2.3.  (7/11) added [standard operations]
;; 7/25 commented them out as redundant with routines in [display]
;; 7/27 added [tracking]
;; 0.1 (8/4) bumped files when changing from 'unknown-term' as the
;;      basis of the category over a word to a category for the word
;; 0.2 (8/5) broke out [pair terms]
;; 0.3 (8/23) broke out all the sibling cases. 8/25 added [infinitives]
;;     (9/28) added [capitalized sequences].  11/14 added [prefixes] and 
;;     [realizations].  11/15 added [you] and [can].  11/16 bumped [capitalized
;;     sequences], added [long compounds].  11/21 added [sort]
;;     12/1 added [adverbs]. 12/2 added [verb group patterns]
;;     (2/13) added [realization measurements].  Redid calls as logical 3/18/95
;; 0.4 (4/3) [sort] moved to [interface;grammar:]
;;     (5/26/10) Added period-hook

(in-package :sparser)

(gload "DM&P;new individuals1")
(gload "DM&P;pair terms")
(gload "DM&P;segments")


(lload "DM&P;period-hook")

(gload "DM&P;prefixes")
(gload "DM&P;access routines")
(gload "DM&P;of")
(gload "DM&P;subj+verb")
(gload "DM&P;verb+obj")
(gload "DM&P;adverbs")
(gload "DM&P;adjacencies")
(gload "DM&P;infinitives")
(gload "DM&P;capitalized sequences1")
(gload "DM&P;long compounds")

(gload "DM&P;you")
(gload "DM&P;can")

(gload "DM&P;verb group patterns")

(gload "DM&P;display")
(gload "DM&P;context")
(gload "DM&P;tracking")

(gload "DM&P;realizations")
(gload "DM&P;realization measurements")

