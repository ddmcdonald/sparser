;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;    File:  "clos-classes"
;;;   Module:  tools/basics/
;;;  Version:  March 2013

;; initiated 3/29/13 to hold general clos classes that will be used as
;; mix-ins and  such 

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


;;--- partonomy: parent and children

(defclass has-parent ()
  ((parent :accessor parent
    :documentation "Point up to the larger stucture that contains
      this one."))
  (:documentation "The leaf structure will only have a parent"))

(defclass has-children ()
  ((children
    :documentation "Point to one or more structures that are 
      in some sense contained by this object."))
  (:documentation "The topmost structure in a partonomy will
    only have children."))