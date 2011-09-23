;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "complete"
;;;   Module:  "objects;traces:"
;;;  Version:  February 1991        v1.8.1

(in-package :sparser)


(defparameter *trace-completion-hook* nil
  "This flag is checked within the various completion routines
   and controls announcements of whether there is an edge or referent
   action.")

(defparameter *trace-completion* nil
  "This flag is checked within the various completion routines
   and controls the announcement when there is an action.")

