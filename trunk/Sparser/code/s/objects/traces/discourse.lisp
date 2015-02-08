;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1994,2015 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "discourse"
;;;   Module:  "objects;traces:"
;;;  Version:  February 2015

;; initiated 7/92.  5/5/94 started removing flags to real files of TR traces.
;; 2/3/15 adding tr traces. 

(in-package :sparser)

;;;---------------------
;;; discourse-structure
;;;---------------------

(defparameter *trace-discourse-structure* nil)

(defun trace-discourse-structure ()
  (setq *trace-discourse-structure* t))

(defun untrace-discourse-structure ()
  (setq *trace-discourse-structure* nil))

(deftrace :set-sentence-subject (edge sentence)
  ;; called from identify-salient-text-structure
  (when *trace-discourse-structure*
    (trace-msg "Setting e~a as the subject of ~a"
               (edge-position-in-resource-array edge)
               sentence)))


;;;-------------------
;;; flags set by hand
;;;-------------------

(defparameter *trace-discourse-heuristics* nil
  "Miscelaneous lag read in several spots within the grammar.")


(defparameter *trace-conjunction* nil
  "Flag read in the CA search routines for conjunctions")


(defparameter *trace-discourse-history* nil
  "Flag read as objects are entered into or accessed from the
   discourse history.")

(defparameter *trace-pronominalization* nil
  "Flag read in pronominalization routines")

(defparameter *trace-individuals* nil
  "Flag read in subsequent and initial reference routines.")



(defparameter *trace-parentheses* nil
  "Flag read in the parentheses traversal routines")

(defparameter *trace-paragraphs* nil
  "Flag read in the section-marker code that handles the
   basic definition of paragraphs.")

