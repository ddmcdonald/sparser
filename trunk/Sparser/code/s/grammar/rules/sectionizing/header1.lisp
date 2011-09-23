;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;; 
;;;     File:  "header"
;;;   Module:  "grammar;rules:sectionizing:"
;;;  Version:   1.3 October 1991

;; initiated in August 1990
;; 1.1  (2/15 v1.8.1)  Modified to bring up to date with WN format.
;; 1.2  (4/11 v1.8.2)  Set up really different parsing during the
;;      header sections.  Tweeked 4/12
;; 1.3  (10/27 v2.0) Gutted it.

(in-package :sparser)


(def-category header :lattice-position :non-terminal)
;; 10/27 no content, but it is referred to in old code like First-
;; item-in-the-article, and it is a good notion.

;;;---------------------------------
;;; switching to the special parser
;;;---------------------------------

(defun establish-header-analysis-properties ()
  ;; runs when the "header" section marker completes during the
  ;; course of the parse.  When the marker is introduced explicitly
  ;; (see Setup... routine) the chart will contain the "AN" tag
  ;; of the WSJ header but nothing beyond that.
  ;;    At the point of the call we are within the Completion code
  ;; for a word, which is called from the Assess routine of the
  ;; active parsing protocol.
  ;;
  (switch-to-embedded-parsing-protocol :wsj-headers))


;;;-------------------------------------------------------------
;;; preparing the chart for the header being the initial region
;;;-------------------------------------------------------------

(defun setup-header-as-initial-region ()
  ;; called from Establish-properties-for-initial-region.
  ;; This does not move us into the region, it just arranges
  ;; that we will get there once the parsing starts.
  ;;    The mechanism is the completion of the section marker
  ;; w::header-start.  This lets us treat this section just
  ;; like any other.  Originally the idea was to have rules that
  ;; recognized the context that implied being in a header, but
  ;; the burying of the wsj "AN" tag by the determiner "an" has
  ;; complicated things to the point where the tactic of 
  ;; introducing the marker explicitly seems most expeditious 4/11/91
  ;;
  (setq *newline-is-a-word* t)
  (setq *word-buffered* word::header-start))

