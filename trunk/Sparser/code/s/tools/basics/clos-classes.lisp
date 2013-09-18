;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;    File:  "clos-classes"
;;;   Module:  tools/basics/
;;;  Version:  September 2013

;; initiated 3/29/13 to hold general clos classes that will be used as
;; mix-ins and such. 9/16/13 added ordered. 9/17/13 added indexed.

(in-package :sparser)

;;--- has a simple name to identify it

(defclass named-object ()
  ((name :type symbol :accessor name :initarg :name 
         :initform 'unknown))
  (:documentation "Base class so we trivially get a print method for
      classes that naturally include symbols that name them."))

(defmethod print-object ((i named-object) stream)
  (print-unreadable-object (i stream :type t)
    (format stream "~s" (name i))))


;;--- has a unique number for each of its instances

(defclass indexed ()
  ((index :type integer :initarg :index :accessor index
    :documentation ""))
   (:documentation ""))


;;--- partonomy: parent and children

(defclass has-parent ()
  ((parent :accessor parent
    :documentation "Point up to the larger stucture that contains
      this one."))
  (:documentation "The leaf structure will only have a parent"))

(defclass has-children ()
  ((children :accessor children
    :documentation "Point to one or more structures that are 
      in some sense contained by this object."))
  (:documentation "The topmost structure in a partonomy will
    only have children."))


;;---- double linked list

(defclass ordered ()
  ((previous :accessor previous
    :documentation "Points to the previous adjacent ordered item or nil")
   (next :accessor next
    :documentation "Points to the next adjacent ordered item or nil"))
  (:documentation "Provides links to follow through a sequence
    of anything that has a sense of direction (creation order, scanning
    order, ...) where the notion of 'the next one' and 'the last (previous, 
    prior) one' makes sense."))