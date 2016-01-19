;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id: discourse-reference.lisp 100 2007-07-04 14:31:27Z dmcdonal $
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved

;; initiated 4/24/07

(in-package :mumble)

(defparameter *objects-to-references* (make-hash-table))

(defun record-reference (obj bundle)
  (declare (ignore bundle))
  (let ((entry (mentions obj))
	(record (record-discourse-context)))
    (setf (gethash obj *objects-to-references*)
	  (if entry
	    (cons record entry)
	    (list record)))
    ;;(format t "~&Recording reference to ~a~%" obj)
    record))

(defun mentions (obj)
  (gethash obj *objects-to-references*))

(defun record-discourse-context () t)


;;;-----------
;;; focus API
;;;-----------

(defgeneric set-the-focus (item)
  (:documentation "External interface to the focus system.
    Given some criteria, a process has concluded that the
    item is in focus. The impact of that will be to have
    the item be pronominalized. Use this method to trigger
    Mumble machinery that acts on this."))

(defvar *item-in-focus* nil)

(defun in-focus? (obj)
  ;;(format t "~&Testing whether ~a is in focus~%" obj)
  (let ((result (eq obj *item-in-focus*)))
    ;(format t "~&The *item-in-focus* is ~a~%" *item-in-focus*)
    ;(if result 
    ;  (format t "~&  it is~%" obj)
    ;  (format t "~&  no~%" obj))
    result))
