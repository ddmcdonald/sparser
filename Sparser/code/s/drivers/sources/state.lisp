;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "state"
;;;   Module:  "drivers;sources:"
;;;  Version:  0.1 August 1994

;; initiated 6/90, added *current-file* & *current-style* 12/15/93 v2.3
;; 0.1 (12/27) changed the default values to nil. 1/7/94 added *files-remaining*
;;      1/11 added *current-superstream*. 1/26 added *document-stream-to-use*
;;      3/4 added *pause-between-articles*
;;      8/17 added *current-text-under-analysis*

(in-package :sparser)


;;;------------------
;;; state variables
;;;------------------

(defparameter *source-exhausted* t
  "Set by the routines that establish sources, reset by the chart
   operation Add-terminal-to-chart when it sees the word w::end-of-source
   passed to it by next-terminal.")


(defparameter *current-file* nil
  "Bound by document-stream drivers. Accessed in compiling a description
   of an article, and for Repeat-last-file.")

(defvar *files-remaining* nil
  "Managed by ds/Do-explicit-file-list. Used by Continue-with-rest-of-files.")

(defvar *current-text-under-analysis* nil)

(defparameter *current-article* nil
  "Bound by any of the drivers that analyze whole articles.  The
   value is an article object.")

(defparameter *current-style* nil
  "Bound by document-stream drivers. Access at various points.")

(defparameter *current-document-stream* nil
  "Bound by any of the drivers that do runs over document sources.
   The value is a document-stream object.")

(defparameter *current-superstream* nil
  "Bound by ds/Do-substreams.")

(defparameter *document-stream-to-use* nil
  "Bound from the corpus menu by select-ds")


(defparameter *pause-between-articles* t
  "Set in the preferences menu.")

