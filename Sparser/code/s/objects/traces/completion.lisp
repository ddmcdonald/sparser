;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "completion"
;;;   Module:  "objects;traces:"
;;;  Version:  July 1995

;; original flags defined 9/90. Started adding on/off routines 7/12/95

(in-package :sparser)


(defparameter *trace-actions* nil
  "This flag is checked within Carry-out-action and controls the
   anouncement of what/when an action is being taken")

(defparameter *trace-check-for-actions* nil
  "This flag is checked within Check-for-triggered-action and its
   subroutines.  If on, it will result in a message for every
   completed linguistic object.")


;;;------------
;;; completion
;;;------------

(defparameter *trace-completion-hook* nil
  "This flag is checked within the various completion routines
   and controls announcements of whether there is an edge or referent
   action.")

(defparameter *trace-completion* nil
  "This flag is checked within the various completion routines
   and controls the announcement when there is an action.")


(defun trace-completion-hook ()
  (setq *trace-completion-hook* t))

(defun untrace-completion-hook ()
  (setq *trace-completion-hook* nil))

(defun trace-completion-hits ()
  (setq *trace-completion* t))

(defun untrace-completion-hits ()
  (setq *trace-completion* nil))

