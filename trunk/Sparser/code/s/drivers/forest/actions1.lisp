;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993,1994  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id: actions1.lisp 207 2009-06-18 20:59:16Z cgreenba $
;;; 
;;;     File:  "actions"
;;;   Module:  "drivers;forest:"
;;;  Version:  1.3 March 2007

;; 1.1 (10/31/91 v2.0) Pulled the call to (check-for-triggered-action category tt)
;; 1.2 (7/16/93 v2.3) Added options for reacting to the form as well, or to
;;      words or polywords
;; 1.3 (8/7/94) added position argument in the case of words
;;     (3/21/07) added list-generic-treetop-actions

(in-package :sparser)

;;;--------
;;; driver
;;;--------

(defun do-generic-actions-off-treetop (tt next-position)
  ;; called from Do-treetop
  (let ( action-routine )
    (etypecase tt
      (edge
       (let* ((category (edge-category tt))
              (form     (edge-form tt)))
         
         (when (setq action-routine (generic-treetop-action form))
           (tr :tt/action/form form action-routine)
           (funcall action-routine tt))
         
         (when (setq action-routine (generic-treetop-action category))
           (tr :tt/action action-routine)
           (funcall action-routine tt))

         (unless action-routine
           (tr :tt/no-action))))
      
      (word
       (if (setq action-routine (generic-treetop-action tt))
         (then
           (tr :tt/action action-routine)
           (funcall action-routine next-position))
         (tr :tt/no-action)))
      
      (polyword
       (if (setq action-routine (generic-treetop-action tt))
         (then
           (tr :tt/action action-routine)
           (funcall action-routine tt))
         (tr :tt/no-action))))))



;;;--------------------------------------------------
;;; connection object types to these generic actions
;;;--------------------------------------------------

(defparameter *generic-treetop-action-table* (make-hash-table
                                              :test #'eq))

(defun set-generic-treetop-action (object action)
  (setf (gethash object *generic-treetop-action-table*) action))

(defun generic-treetop-action (object)
  (gethash object *generic-treetop-action-table*))

(defun delete-generic-treetop-action (object)
  (remhash object *generic-treetop-action-table*))

(defun list-generic-treetop-actions ()
  (maphash #'(lambda (key value)
	       (format t "~&object: ~a  function: ~a~%"
		       key value))
	    *generic-treetop-action-table*))

