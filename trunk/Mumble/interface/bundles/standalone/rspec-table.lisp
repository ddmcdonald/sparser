;;; -*- Mode: Lisp; Package:MUMBLE; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id$

;;; MUMBLE-86:  interface>stand-along> rspec-table
;;;
;;; Copyright (C) 1985, 1986, 1987, 1988  David D. McDonald and the
;;;    Mumble Development Group.  All rights reserved.
;;;    Permission is granted to use and copy this file of the Mumble-86 system for
;;;    non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

(in-package :mumble)


(defun recursively-intern-a-standalone-msg (original-sexp)
  "Reconses the list."
  (let (unique-sexps)
    (declare (special unique-sexps))
    (intern-and-recons-rspec original-sexp)))



(defun intern-and-recons-rspec (sexp)
  (declare (special unique-sexps))
  (cond ((null sexp) nil)
	((not (listp sexp)) sexp)
	((listp sexp)
	 ;; "(tree-family <arg1> <arg2> ...) "
	 (let ((earlier-mention
		 (car (member sexp unique-sexps))))
	   (if earlier-mention
	       earlier-mention
	       (let ((new-rspec-cons
		       (cons (intern-and-recons-rspec (car sexp))
			     (mapcar #'intern-and-recons-rspec
				     (cdr sexp))) ))
		 (push new-rspec-cons unique-sexps)
		 new-rspec-cons))
	   ))))

