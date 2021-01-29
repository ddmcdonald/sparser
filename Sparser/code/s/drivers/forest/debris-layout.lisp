;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "debris-layout"
;;;   Module:  "drivers;forest:"
;;;  Version:  January 2021

;; Initiated 1/28/21 to hold discourse-level variables and layout information
;; for the benefit of anaphora decisions and applying general composition patterns

(in-package :sparser)

;;--- initalizing and accessing

(defvar *current-debris-layout* nil)

(defun debris-layout ()
  *current-debris-layout*)

(defun initialize-debris-layout (paragraph)
  (let ((i (make-instance 'debris-layout :in paragraph)))
    (setq *current-debris-layout* i)
    i))

(defclass debris-layout ()
  ((backpointer :initarg :in :accessor in-paragraph)
   )
  (:documentation ""))
#|
The are per-paragraph presently, so that's the backpointer

sentence-count (index -- can identify special sentences, like paragraph-initial)
layouts: (<sentence> <layout-instance> index)
  -- a push list of tuples, with one more field they're structs

debris layout of the current-sentence
  Can organize as push list of labels for the phenomena
   with edges as their values (vs. a class where the phenomena are
   slot, but overall the instances are very sparse

Slots for the indexical functional variables
|#

(defmethod print-object ((l debris-layout) stream)
  (print-unreadable-object (l stream :type t)
    (format stream "~a" (name (paragraph l)))))
