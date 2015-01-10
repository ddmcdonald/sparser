;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1995,2010-2015  Rusty Bobrow  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:  "loader"
;;;    Module:   "tools:basics"
;;;   Version:   October 2013

;; utilities for testing in R3



(in-package :sparser)


(defvar *known-breaks* nil)
(defvar *tested* '(0))
(defun reset-dectest ()
  (setq *tested* '(0)))

(defun reset-test ()
  (setq *tested* '(0)))

(defparameter *sentences* nil)
(defun test-jan ()
  (setq *sentences* *jan-dry-run*)
  nil)

(defun test-dec ()
  (setq *sentences* *dec-tests*)
  nil)

(defun dectest(n &optional (sentences *sentences*))
  (let ((test  (nth (- n 1) sentences)))
    (print (list n test))
    (if (member n *known-breaks*)
        (print "skipping because of known problems")
        (progn
          (eval test)
          (terpri) 
          (terpri)
          (format t "SEMANTIC FOREST ------------------------------------~&")
          
          (loop for tree in
            (tts-semantics)
            do (print-tree tree))
          (format t "~&___________________________________________~&~&")
          ))))

(defun retest () 
  (loop for i from (+ 1 (car *tested*)) to 100 
    when (<= i (length *sentences*))
    do 
    (push i *tested*) (dectest i)))



(defun bad () 
  (push (car *tested*) *known-breaks*) 
  (retest))


(defun print-tree (tree &optional (last nil) (indent 0) (stream t))
  (nspaces indent stream)
  (cond
    ((consp tree)
     (format stream "(~S"  (car tree))
     (when
	 (cdr tree)
       (terpri)
       (loop for items on (cdr tree) do (print-tree (car items) (null (cdr items))(+ indent 3) stream)))
     (format stream ")"))
    (t
     (format stream "~S" tree)))
  (if
   (not last)
   (terpri stream)))

(defun nspaces (n stream)
  (when (> n 0)
      (princ " " stream)
      (nspaces (- n 1) stream)))
