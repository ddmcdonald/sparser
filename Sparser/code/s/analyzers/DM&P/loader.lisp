;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "loader"
;;;    Module:  "analyzers;DM&P:"
;;;   version:  0.6 February 1995

;; initiated 3/28/94 v2.3.  (7/21) revised order to subr->main and
;; split out [mine] and bumped [scan] to 1.   (7/28) added [measure]
;; 0.1 (8/3) split [mine] into [mine terms] and [mine segments], and
;;      split out [scan prefixed] and [scan no edges] from [scan1]
;; 0.2 (8/4) bumped files when changing from 'unknown-term' as the
;;      basis of the category over a word to a category for the word
;; 0.3 (9/18) moved [measure] to the end of the grammar load on the
;;      hope of avoiding the '#:segment' phenomena.
;;     (9/28) added [forest level]
;; 0.4 (11/14) bumped [scan prefix] and [mine sequences] to 1 to hold a major change
;; 0.5 (1/30/95) bumped [mine-sequences] to 2
;; 0.6 (2/1) bumped [single edge] to 1

(in-package :sparser)

;; gating is done in the master-loader

(lload "analyzers;DM&P:mine terms1")
(lload "analyzers;DM&P:mine sequences2")
(lload "analyzers;DM&P:scan1")
(lload "analyzers;DM&P:scan no edges")
(lload "analyzers;DM&P:scan prefixed1")
(lload "analyzers;DM&P:single edge1")
(lload "analyzers;DM&P:forest level")
(lload "analyzers;DM&P:hook")
  


