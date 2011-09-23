;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "object"
;;;   Module:  "objects;chart:stack:"
;;;  Version:  May 1992

;; initiated 6/9/92 v2.2

(in-package :sparser)


;;;-----------------------------------
;;; the stack: "pending left openers"
;;;-----------------------------------

(unless (boundp '*maximum-number-of-pending-left-openers*)
  (defparameter *maximum-number-of-pending-left-openers* 20
    "This fixes the length of a stack used for pending sgml tags and
     similar scoping elements that span indefinite lengths that are
     not well described by context free rules."))


(defvar *stack-of-pending-left-openers*
        (make-array *maximum-number-of-pending-left-openers*))


;;;-----------------
;;; state variables
;;;-----------------

(defvar *top-of-pending-left-openers-stack* nil
  "Points to the index of the cell most recently pushed onto the stack, 
   or to minus one if the stack is empty.")


;;;-----------------------------
;;; initializing and redefining
;;;-----------------------------

(defun populate-stack-of-pending-left-openers ()
  (dotimes (i *maximum-number-of-pending-left-openers*)
    (setf (aref *stack-of-pending-left-openers* i)
          (cons nil nil))))

(defun clear-stack-of-pending-left-openers ()
  (let ( cell )
    (dotimes (i *maximum-number-of-pending-left-openers*)
      (setq cell (aref *stack-of-pending-left-openers* i))
      (rplaca cell nil)
      (rplacd cell nil)))
  (setq *top-of-pending-left-openers-stack* -1))
      


(defun resize-stack-of-pending-left-openers (new-maximum)
  (setq *maximum-number-of-pending-left-openers* new-maximum)
  (setq *stack-of-pending-left-openers* (make-array new-maximum))
  (populate-stack-of-pending-left-openers))

