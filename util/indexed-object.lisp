;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id: indexed-object.lisp 96 2007-06-18 17:27:12Z dmcdonal $
;;; Copyright (c) 2006-2007 BBNT Solutions LLC. All Rights Reserved
;; 3/23/2015 SBCL move defparameter early, to avoid SBCL complaint

(in-package :ddm-util)

;;;----------------------------------------------------
;;;   means of getting direct access to objects 
;;;   (invaluable given typically lousy debuggers)
;;;----------------------------------------------------

(defparameter *highest-object-index* 0)
(defparameter *index-numbers-to-objects* (make-hash-table))

(defstruct (indexed-object)
  index)

(defun obj# (number)
  (let ((obj (gethash number *index-numbers-to-objects*)))
    (unless obj
      (mbug "There is no object with index number ~d." number))
    obj))

(defun index-object (obj)
  (let ((count (incf *highest-object-index*)))
    (setf (gethash count *index-numbers-to-objects*) obj)
    count))
