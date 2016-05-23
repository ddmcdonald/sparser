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

   (path :initform nil :accessor predicted-path
    :documentation "The position-path of the predicted phrase,
      with its initial elements popped off given how far into it
      we've gotten with the scan. If we've completed it the
      value will be nil.")
   (bindings :initform nil :accessor predicted-parameter-bindings
    :documentation "An alist of parameter and value that goes
      with the predicted path. Lexicalized parameters go to
      mumble::word. Open parameters to go variables.")

   (i :initform nil :accessor individual
    :documentation "The individual that this constituent
      denotes.")
   (next-slot :initform nil :accessor pending-slot
    :documentation "As we walk down the position path, this
      is the slot-label of the next constituent. It can identify
      plausible adjunctions")
   (next-type :initform nil :accessor pending-type-requirement
    :documentation "As we walk down a position-path, this is
      the type that the next constituent must satisfy")
   (next-variable :initform nil :accessor pending-variable
    :documentation "As we walk down a position-path, this is
      the variable we'll bind if the type is satisfied.")


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

(defun pending-prediction ()
  (predicted-path (current-incremental-state)))

(defun set-dot-state (keyword)
  (tr :setting-dot-state-to keyword)
  (setf (state-of-interpretation (current-incremental-state)) keyword))

(defun dot-state ()
  (state-of-interpretation (current-incremental-state)))

(defgeneric move-dot (position)
  (:documentation "Move the dot up to this position,
     indicating that everything to the left has been done.")
  (:method ((pos position))
    (tr :moving-dot pos)
    (setf (dot (current-incremental-state)) pos)))

