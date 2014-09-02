;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1993-1995,2014  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "completion"
;;;   Module:  "objects;traces:"
;;;  Version:  August 2014

;; original flags defined 9/90. Started adding on/off routines 7/12/95
;; 8/31/14 Moving in some traces that got into psp1 instead of here

(in-package :sparser)

;;;-------
;;; flags
;;;-------

(defparameter *trace-completion* nil
  "This flag is checked within the various completion routines
   and controls the announcement when there is an action.")

(defparameter *trace-completion-hook* nil
  "This flag is checked within the various completion routines
   and controls announcements of whether there is an edge or referent
   action.")

(defparameter *trace-actions* nil
  "This flag is checked within Carry-out-action and controls the
   anouncement of what/when an action is being taken")

(defparameter *trace-check-for-actions* nil
  "This flag is checked within Check-for-triggered-action and its
   subroutines.  If on, it will result in a message for every
   completed linguistic object.")


(defun trace-completion ()
  (setq *trace-completion* t))

(defun untrace-completion ()
  (setq *trace-completion* nil))

(defun trace-completion-hook ()
  (setq *trace-completion-hook* t))

(defun untrace-completion-hook ()
  (setq *trace-completion-hook* nil))



;;;--------
;;; traces
;;;--------

(deftrace :completing (obj pos)
  ;; called from complete/hugin
  (when (or *trace-network* *trace-completion*)
    (if pos
      (trace-msg "Completing ~A at ~A" obj (pos-token-index pos))
      (trace-msg "Completing ~A" obj))))

(deftrace :carrying-out (tag function)
  ;; called from carry-out-actions
  (when (or *trace-network* *trace-completion*)
    (trace-msg "Carrying out a ~A action~%  with ~A"
               tag function)))

