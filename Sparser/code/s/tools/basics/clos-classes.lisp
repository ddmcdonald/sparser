;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2013-2020  David D. McDonald  -- all rights reserved
;;;
;;;    File:  "clos-classes"
;;;   Module:  tools/basics/
;;;  Version:  May 2020

;; initiated 3/29/13 to hold general clos classes that will be used as
;; mix-ins and such. 9/16/13 added ordered. 9/17/13 added indexed.
;; 7/2/15 provides nil initforms so don't have to check for slot bound

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
  ((index :initform nil :initarg :index :accessor doc-index
    :documentation "Holds a number or a letter")
   (toc-index :initform nil :accessor toc-index
    :documentation "Holds a sequence of indexes, e.g. '2.b.3'"))
  (:documentation "Provides a sequential index for individual
    document elements and for an element as a position within
    the hierarchy of document structure as in a table of contents."))


;;--- partonomy: parent and children

(defclass has-parent ()
  ((parent :initform nil :accessor parent
    :documentation "Point up to the larger stucture that contains
      this one."))
  (:documentation "The leaf structure will only have a parent"))

(defclass has-children ()
  ((children :accessor children :initform nil
    :documentation "Point to one or more structures that are
      in some sense contained by this object."))
  (:documentation "The topmost structure in a partonomy will
    only have children."))

(defgeneric nth-child (n item)
  (:documentation "The item is assumed to have a list of children
    (i.e. any document element above paragraph). It n is longer
    than the number of children return nil and the actual length")
  (:method ((n integer) (item has-children))
    (let* ((children (children item))
           (count (length children)))
      (if (> n count)
        (values nil count)
        (nth (1- n)
             ;; Argument is 1-based, so needs conversion to zero-based
             children)))))
      

;;---- double linked list

(defclass ordered ()
  ((previous :initform nil :initarg :previous :accessor previous
    :documentation "Points to the previous adjacent ordered item or nil")
   (next :initform nil :initarg :next :accessor next
    :documentation "Points to the next adjacent ordered item or nil"))
  (:documentation "Provides links to follow through a sequence
    of anything that has a sense of direction (creation order, scanning
    order, ...) where the notion of 'the next one' and 'the last (previous,
    prior) one' makes sense."))

(defgeneric nth-next (base n)
  (:documentation "Traverse 'n' next pointers out from the base and
     return that element.
     If n is one return the base. If we run out of pointers before
     traversing n of them (either the slot is not bound or it is nil)
     return nil and the actual number traversed.")
  (:method ((base ordered) (n integer))
    (if (= n 1)
      base
      (let ((item base)) 
        (dotimes (i (1- n) item)
          (if (not (slot-boundp item 'next))
            (values nil i)
            (setq item (next item)))
          (when (null item)
            (return (values nil i))))))))
