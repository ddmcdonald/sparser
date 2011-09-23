;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1993-1996  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id: loader.lisp 270 2009-08-25 21:28:39Z dmcdonal $
;;;
;;;     File:  "loader"
;;;   module:  "interface;workbench:"
;;;  Version:  0.8 January 2007

;; initiated (MCL2.0 version) 11/11/93 v2.3. (1/4) added [workbench]
;; (1/16) added [globals] and moved the Mac-specific gate down here
;; and moved [edges] here out of grammar.  (1/17) started [autodef]
;; (2/28) added [swapping modes], [buttons] and [initializations]
;; (3/3) added [preferences].  3/22 added [API] and [contents]
;; 0.1 (3/30) renamed [window] to "text view"
;; 0.2 (5/2) added [adjust] so that the facility would still be available
;;      even if not running on a mac.  6/10 added [pause]  7/1 added [inspector]
;;      7/20 added [item walk]
;; 0.3 (1/5/95) broke [text view] into two parts creating [text view scrolling]
;;     (1/17) added [define rule]
;; 0.4 (1/25) bumped [item walk] to 1.  (2/3) added [independent contents]
;; 0.4 (2/27) bumped [define rule] to 1.  (2/28) broke [edges] into pieces
;;      to make the open/close stuff independent.
;; 0.5 (4/27) broke out the [def rule] files
;; 0.6 (6/14) bumped [case setup] and [field filling] to 1
;;     (8/28) added [dossiers]
;; 0.7 (8/30) bumped edge-view:[populate] and [view] to 1 for '...' change
;; 0.8 (12/20) bumped def rule [field-filling] and [case setup] to 2.
;;     (6/18/96) moved in [definition widgets] and added subdir [def verb:] for it.
;;     (1/7/07) Exposed autodef-data should it could be referenced in the grammar
;;      files even when the workbench isn't going to be used. 
;; 0.9 (7/24/09) Fan out to save from new psi design requires conditionalized
;;      bump to save1.

(in-package :sparser)

(lload "workbench;globals")
(lload "workbench;adjust")

(unless *nothing-Mac-specific*
  (lload "workbench;buttons")
  (lload "workbench;swapping modes")
  (lload "workbench;text view")
  (lload "workbench;text view scrolling")

  ;(lload "workbench;edges")
  (lload "workbench;edge-view:view1")
  (lload "workbench;edge-view:select")
  (lload "workbench;edge-view:find")
  (lload "workbench;edge-view:populate1")
  (lload "workbench;edge-view:open close")

  (lload "workbench;walk")
  (lload "workbench;pause"))

(lload "workbench;autodef data")

(unless *nothing-Mac-specific*
  (lload "workbench;autodef window")
  (lload "workbench;autodefining")

  (lload "workbench;def rule:globals")
  (lload "workbench;def rule:schema selection")
  (lload "workbench;def rule:widgits")
  (lload "workbench;def rule:rule population window")
  (lload "workbench;def rule:case setup2")
  (lload "workbench;def rule:field filling2")
  (lload "workbench;def rule:reference category")
  (lload "workbench;def rule:construct mapping")
  (lload "workbench;def rule:write cfr"))

(if cl-user::*psi-2009*
  (lload "workbench;def rule:save1") ;; for Define-realization
  (lload "workbench;def rule:save"))

(unless *nothing-Mac-specific*
  (lload "workbench;def rule:control thread")
  (lload "workbench;def rule:new category?")
  (lload "workbench;def rule:dossiers")

  (lload "workbench;def verb:definition widgets")

  (lload "workbench;item walk1")
  (lload "workbench;API")
  (lload "workbench;contents")
  (lload "workbench;independent contents")
  (lload "workbench;preferences")
  (lload "workbench;workbench")
  (lload "workbench;inspector")
  (lload "workbench;initializations"))

