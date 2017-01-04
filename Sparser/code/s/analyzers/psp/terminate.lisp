;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1992,2017 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "terminate"
;;;   Module:  "analyzers;psp:"
;;;  Version:  January 2017

;; original version lost. Initiating this file 10/5/92

(in-package :sparser)

(defun terminate-chart-level-process ()
  "Called when there is absolutely nothing left for the
   parser to do and we just want to exit. Any cleanup
   or finishing off of incomplete analyses or display
   must be done by the caller before they invoke this.
   The thow is caught in chart-based-analysis which
   then returns to its caller, analysis-core, which
   will do any needed after-analysis-actions and
   then invoke analysis-core-return-value to actually
   exit back to the invoking process."
  (tr :terminate-chart-process)
  (throw 'terminating-chart-processing nil))

