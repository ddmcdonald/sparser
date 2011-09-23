;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id$
;;;
;;;      File:  "SFL Clos"
;;;    Module:   "tools:basics"
;;;   Version:   September 2009

;; Copied over from SFL 'hacks' file 9/10/09.

(in-package :sparser)

;;; Makes defclass more reasonable

(defmacro defobject (name supers slots &rest options)
  "Like DEFCLASS but automatically defines initarg and accessor
   for each slot.  Slots have the form (name value . options)."
  `(defclass ,name
	  ,supers
	,(map 'list #'(lambda (s)
			(let ((name (first s))
			      (value (second s)))
			  `(,name :initform ,value
			    :initarg ,(intern (string name) :keyword)
			    :accessor ,name ., (cddr s))))
	      slots)
	. ,options))

