;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "incr-state"
;;;            objects/situation/
;;;  version:  April 2016

;; Initiated 4/11/16

(in-package :sparser)


(defvar *current-incremental-state* nil
  "Holds the state object that governs the interpretation at
   this point.")

(defun current-incremental-state ()
  *current-incremental-state*)


(defclass incremental-state ()
  ((dot :initarg :initial-pos :accessor dot
    :documentation "The chart position just before the next
     item to scan.")
   (state :initform :initial :accessor state-of-interpretation
    :documentation "Where are we in this analysis")


   (parent :initform nil :accessor parent-state
    :documentation "Points to the dominating state (if any)
     that we return to when this level completes")
   (daughter :initform nil :accessor daughter-state
    :documentation "If we've recursed from this state to 
     interpret a conponent constituent, this points to its state.")
))

(defmethod print-object ((ic incremental-state) stream)
  (print-unreadable-object (ic stream) ;; :type t
    (cond
     ((dot ic)
      (format stream "state: p~a"
              (pos-token-index (dot ic))))
     (t (format stream "state: not initialized")))))

(defun initialize-incremental-state (pos)
  (let ((ic (make-instance 'incremental-state :initial-pos pos)))
    (setf *current-incremental-state* ic)))