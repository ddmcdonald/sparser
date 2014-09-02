;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1995,2013-2014  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "globals"
;;;   Module:  "objects;traces:"
;;;  Version:  August 2014

;; initiated 8/18/93 v2.3, added found when loading 8/24.
;; 3/28/94 added *trace-DM&P*.  5/5 added *trace-network-flow.
;; 5/12 added *trace-brackets*  7/13 added *trace-forest-level*
;; 7/21 added *step-DM&P*  8/11 added *trace-term-introduction*
;; 9/26 moved in globals for treetops  2/13/95 added *trace-realization-patterns*
;; 10/6 added *trace-scan-patterns*  2/29/08 added *trace-the-trace-calls*
;; 2/10/13 added *trace-status-history*  8/12/14 Added *trace-morphology*
;; 8/31/14 added *trace-treetops-sweep* and *trace-island-driving* t))


(in-package :sparser)


;;;-------
;;; flags
;;;-------

(defparameter *trace-the-trace-calls* nil
  "Checked in Tr/expr and prints out the keyword that names the trace")

(defparameter *trace-psp-threading* nil
  "Checked in higher portions of the alg. //// should be replaced
   by trace-network.")

(defparameter *trace-edge-creation* nil
  "Looked for by every routine that extracts edges from the resource
   and populates them.")

(defparameter *trace-do-edge* nil
  "Tracks multiplication attempts and the threading")

(defparameter *trace-do-edge/forest* nil
  "As above, but only at the forest level")

(defparameter *trace-edge-completion* nil
  "Checked in Complete")

(defparameter *trace-segment-summary* nil
  "may be obsolete -- checked in :segment-delimited")


(defparameter *trace-morphology* nil
  "For any lowlevel actions driven by a word's morphology or Comlex")

(defparameter *trace-network-flow* nil
  "Very lowlevel trace naming the functions in the file psp;scan that
   control the introduction of words, checking of brackets, and
   coordinating of word-level actions")

(defparameter *trace-set-status* nil
  "Part of the lowlevel trace that can be useful just by itself")

(defparameter *trace-network* nil
  "Announces the start of every interesting routine in the control flow.")

(defparameter *trace-scan-patterns* nil)

(defparameter *trace-status-history* nil
  "Placed in the adjudicator routines. Displays the sequence of status values
   on the position up to that point")

(defparameter *trace-brackets* nil
  "Checked when laying them down.")

(defparameter *trace-segments* nil
  "Checked in pts and the routines it calls")

(defparameter *trace-DM&P* nil
  "checked in analyzers;/grammar;rules:/DM&P routines")

(defparameter *trace-term-introduction* nil
  "checked in DM&P mining and relation-generating routines")

(defparameter *trace-realization-patterns* nil
  "checked in the set of routines called from Record-realization-patterns.")

(defparameter *trace-scan* nil
  "checked in scan-and-assess")

(defparameter *trace-extension-decision* nil
  "checked in Segment-can-extend")

(defparameter *trace-forest-level* nil
  "checked in Move-to-forest-level and beyond")

(defparameter *trace-treetops* nil
  "Flag read in Do-treetop-triggers.")

(defparameter *trace-treetop-hits* nil
  "Signals there being a treetop routine, as opposed to just
   the treetop being checked.")

(defparameter *trace-forest-marching-flow* nil)

(defparameter *trace-treetops-sweep* nil
  "For the 'new' forest protocol tracks the treetops that are
   swept up and how they are characterized.")

(defparameter *trace-island-driving* nil
  "For the 'new' forest protocol tracks what checks are made in
   the jumping around compositions from island of certainty to
   next island.")

(def-trace-parameter *trace-check-edges*   "edges check"
  "traces the process of checking whether edges can combine")


;;--- 'step' flags

(defparameter *step-DM&P* nil)

