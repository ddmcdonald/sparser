;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id: discourse-reference.lisp 100 2007-07-04 14:31:27Z dmcdonal $
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved

;; initiated 4/24/07

(in-package :mumble)

(defparameter *objects-to-references* (make-hash-table))

(defun record-reference (obj bundle)
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



(defvar *item-in-focus* nil)

(defun in-focus? (obj)
  ;;(format t "~&Testing whether ~a is in focus~%" obj)
  (let ((result (eq obj *item-in-focus*)))
    ;(format t "~&The *item-in-focus* is ~a~%" *item-in-focus*)
    ;(if result 
    ;  (format t "~&  it is~%" obj)
    ;  (format t "~&  no~%" obj))
    result))
