;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;      File:  "debug stack"
;;;    Module:  "tools:basics"
;;;   Version:  July 2009

;; Copied from Sparser's copy of poirot utils 7/23/09...
;; then copied from that copy 12/6/09

(in-package :mumble)
 
(defvar *debug-stack* '())

(defvar *debug* t) ; when false, nothing's stored

(defun push-debug (val) (when *debug* (push val *debug-stack*)))
(defun pop-debug () (pop *debug-stack*))
(defun peek-debug () (first *debug-stack*))

(defun clear-debug () (setf *debug-stack* '()))
