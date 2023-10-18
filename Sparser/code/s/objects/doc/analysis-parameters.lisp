;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2023 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "analysis-parameters"
;;;   Module:  "objects;doc;"
;;;  Version:  October 2023

;; Created 8/24/23 to provide a place to systematically organize
;; all of the gating parameters in how we analyze parsed content
;; or display results. Larger-scale parameters for the parsing engine
;; and collectors are in drivers/inits/sessions/globals.lisp

(in-package :sparser)

(defparameter *minimal-reporting* t
  "If this is up turn off all the reporting that's not needed
   to populate the data in the article.")

(defparameter *print-bio-terms* nil
  "Rebind to nil to block including the bio-terms in the
   summary-document-stats")

(defparameter *show-runtime-stats* nil
  "Gates calls to report-to-to-read-article")

(defparameter *show-motif-terms* nil
  "Used in 'when' forms to gate calls to show-motif-term-context")

(defparameter *show-noted-categories* nil
  "Used in 'when' forms to gate calls to show-noted-categories")

(defparameter *show-parser-performance* nil
  "Gates *show-noted-categories* applied to articles")

