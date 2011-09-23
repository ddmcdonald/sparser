;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2010 David D. McDonald  -- all rights reserved
;;; $Id:$
;;;
;;;      File:  "debug stack"
;;;    Module:  "tools:basics"
;;;   Version:  November 2010

;; Copied from Sparser's copy of poirot utils 7/23/09. Added 'd' 11/11/10.

(in-package :sparser)
 
(defvar *debug-stack* '())

(defvar *debug* t) ; when false, nothing's stored

(defun push-debug (val) (when *debug* (push val *debug-stack*)))
(defun pop-debug () (pop *debug-stack*))
(defun peek-debug () (first *debug-stack*))

(defun clear-debug () (setf *debug-stack* '()))



(defun d (o) (describe o) o)
