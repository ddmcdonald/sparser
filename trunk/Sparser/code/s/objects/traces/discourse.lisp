;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "discourse"
;;;   Module:  "objects;traces:"
;;;  Version:  May 1994

;; initiated 7/92.  5/5/94 started removing flags to real files of TR traces.

(in-package :sparser)


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

