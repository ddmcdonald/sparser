;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;; $Id: actions.lisp 279 2009-09-02 15:37:56Z dmcdonal $
;;; 
;;;     File:  "actions"
;;;   Module:  "analyzers;CA:"
;;;  Version:   1.0 February 2008
;;;
;;; 2/17/08 Added list-ca-actions

(in-package :sparser)


(defparameter *CA-action-table*  (make-hash-table :test #'eq)
  "Provides the link from objects or object-categories to the actions
   their presence should initiate as part of Conceptual Analysis.")

(defun list-ca-actions ()
  (maphash #'(lambda (key value)
	       (format t "~&key: ~a  value: ~a" key value))
	   *CA-action-table*))


(defun ca-action (obj)
  (gethash obj *CA-action-table*))

(defun set-ca-action (obj action)
  (setf (gethash obj *CA-action-table*)
        action))

(defun delete-CA-action (obj)
  (remhash obj *CA-action-table*))

