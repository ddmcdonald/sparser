;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013 David D. McDonald all rights reserved
;;;
;;;      File: "text-relation-class"
;;;    Module: "analyzers;SDM&P:
;;;   Version: March 2013

;; Initiated 3/12/13

(in-package :sparser)

;;;--------
;;; object
;;;--------
#|
There are a relatively small number of text relation types,
so they are permanent like grammatical rules are. 
|#
(defclass text-relation ()
  ((name :type symbol :initarg :name :accessor name
    :documentation "Uid for the object.")
   (doc :type string :accessor tr-doc
    :documentation "Documentation for the text-relationship itself")
   (count :type integer :initform 0 :accessor instance-count
    :documentation "The number of instances of this relation noted
      over the life of our counts, as distinct for the number of
      times a particular instance has been seen.")
   (table :type hash-table :initform (make-hash-table :test #'eq)
    :accessor tr-table
    :documentation "Holds instances of the type as dictated by
     its indexing scheme.")
   (instances :type list :accessor tr-instances
    :documentation "A flat kons list of the instances.")
   (resource
    :documentation "A reusable pool of instances of the class")

   (class :type symbol :accessor tr-class
    :documentation "the name of class we instantiate for instances of
     this relationship")
   (super-classes :type list :initform () :accessor tr-super-classes
    :documentation "the names of the text-relations this one inherits")
   (slots :type list :accessor tr-class-slots
    :documentation "a list of standard slot definitions to incorporate
     into the class we make for this relation.")
   (slot-names :type list :accessor tr-slot-names
     :documentation "a list that mirrors the slots and provides init args
      suitable for make-instance.")
   (arguments :type list :accessor tr-arguments
    :documentation "A list of the arguments that this relation notes")
   (action :type symbol :accessor tr-action
    :documentation "the name of the function that should be executed
      when an instances of this relationship is noted.")

)
  (:documentation ""))

;;;----------
;;; printers
;;;----------

(defmethod print-object ((tr text-relation) stream)
  (print-unreadable-object (tr stream :type t)
    (format stream "~a" (name tr))))
