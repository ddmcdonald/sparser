;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013 David D. McDonald all rights reserved
;;;
;;;      File: "heuristics"
;;;    Module: "analyzers;SDM&P:
;;;   Version: February 2013

;; Broken out of scan1 2/28/13.

(in-package :sparser)


(defparameter *segment-heuristics* nil)
(defvar *segment-heuristic-to-apply* nil)

(defun heuristics-apply-to-segment ()
  (dolist (h *segment-heuristics*)
    (when (segment-heuristic-succeeds? h)
      (setq *segment-heuristic-to-apply* h)
      (return-from heuristics-apply-to-segment h)))
  nil)

(defun apply-segment-heuristics ()
  (unless *segment-heuristic-to-apply*
    (break "*segment-heuristic-to-apply* should have a value"))
  (run-segment-heuristic *segment-heuristic-to-apply*))

(defun segment-heuristic-succeeds? (h)
  (let ((fn (sh-test h)))
    (funcall fn)))

(defun run-segment-heuristic (h)
  (let ((fn (sh-body h)))
    (funcall fn)))


(defstruct (segment-heuristic
	     (:conc-name #:sh-)
	     (:print-function
	      (lambda (h stream depth)
		(declare (ignore depth))
		(format stream "#<segment-heuristic ~a>"
			(sh-name h)))))
  name
  test
  body
)

(defmacro define-segment-heuristic (name &key test body)
  `(eval-when (:compile-toplevel
	       :load-toplevel :execute)
     (define-segment-heuristic/expr ',name ',test ',body)))

(defun define-segment-heuristic/expr (name test body)
  (let ((h (make-segment-heuristic :name name)))
    (format t "~&~%~%>>> Registering segment heuristic: ~a <<<<~%~%~%"
	    name)
    (let* ((test-name (intern (string-append (symbol-name name) "-TEST")))
	   (test-form `(defun ,test-name ()
			 ,@test))
	   (test-fn (eval test-form)))
      (setf (sh-test h) test-fn))
    (let* ((body-name (intern (string-append (symbol-name name) "-BODY")))
	   (body-form `(defun ,body-name ()
			 ,@body))
	   (body-fn (eval body-form)))
      (setf (sh-body h) body-fn))
    (push h *segment-heuristics*)
    h))
