;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id: indexed-object.lisp 96 2007-06-18 17:27:12Z dmcdonal $
;;; Copyright (c) 2006-2007 BBNT Solutions LLC. All Rights Reserved

(in-package :ddm-util)

;;;----------------------------------------------------
;;;   means of getting direct access to objects 
;;;   (invaluable given typically lousy debuggers)
;;;----------------------------------------------------

(defstruct (indexed-object)
  index)

(defun obj# (number)
  (let ((obj (gethash number *index-numbers-to-objects*)))
    (unless obj
      (break "There is no object with index number ~a" number))
    obj))

(defparameter *index-numbers-to-objects* (make-hash-table))
(defvar *highest-object-index* 0)

(defun index-object (obj)
  (let ((count (incf *highest-object-index*)))
    (setf (gethash count *index-numbers-to-objects*) obj)
    count))

(defun create-indexed-symbol (symbol number) ;; &optional package ??
  (let ((namestring (string-append (symbol-name symbol)
				   "-"
				   (format nil "~a" number))))
    (intern namestring)))


(export '(obj#
	  index-object
	  indexed-object
	  indexed-object-index
	  )
	(find-package :ddm-util))

;;;-------------------------------------------------------------------------
;;; this really feels more like a mixin, but you can't do that with structs
;;;-------------------------------------------------------------------------

(defstruct (indexed-with-comment
	     (:include indexed-object))
  comment)

(defun comment-on (obj)
  (when (typep obj 'indexed-with-comment)
    (indexed-with-comment-comment obj)))
