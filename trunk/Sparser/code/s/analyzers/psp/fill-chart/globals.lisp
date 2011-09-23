;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "globals"
;;;   Module:  "analyzers;psp:fill chart:"
;;;  Version:  August 1994

;; 8/30/94 added *first-token-index-still-in-chart*

(in-package :sparser)


;;;----------------------
;;; reference variables
;;;----------------------

(or (boundp '*the-chart*)
    (defvar *the-chart* nil
      "Initialized to (make-a-chart) by Setup-session-globals"))


;;;------------------
;;; state variables
;;;------------------

(defparameter *chart-not-yet-initialized* t
  "Set at the end of a run.  Reset to nit by Initialize-chart-state")

(defparameter *chart-empty* t
  "Set to Nil by Add-alloquat-of-terminals-to-chart, and to T by
   any chart scanner.")

(defparameter *position-array-is-wrapped* nil
  "When the position-array is shorter than the maximum length of an
   article, it is used to implement a circular array.  This flag
   is set once we have run off the end of the array at least once
   and the position where the next terminal is going to be put is
   lower than the next position to be scanned from.")



(defparameter *first-chart-position* 0
  "When we use the position-array as a circular buffer,
   this is the starting position that we bump up against and have
   to increment along with the Next-chart-position.
   Set by Initialize-chart-state.")

(defparameter *first-chart-position-object* nil
  "The object at the above index.")  ;;///rationalize these names



(defparameter *first-token-index-still-in-chart* 0
  "After the chart is wrapped, this increases with each new token")

(defparameter *next-array-position-to-fill* 0
  "The position in the array at which the next terminal is added.
   Bumped by Add-terminal-to-chart.  Initialized by Initialize-
   chart-state and again whenever the position-array wraps.")

(defparameter *number-of-next-position* 0
  "Defines the terminal index from the parser's point of view.
   Continually increases as we scan the word-stream into the chart.")



(defparameter *next-chart-position-to-scan* 0
  "The array position from which the parser gets its next terminal
   to scan.  Typically runs slightly behind *Next-chart-position-
   for-terminal*when the chart is being filled by a different process
   than the one that scans it.
   Continually increases with sucessive calls to Scan-terminal")

