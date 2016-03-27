;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Base:10; -*-
;;; Idea derived from Jake Beal's contributions to Poirot util.

(in-package :ddm-util)

;;;----------------------------
;;;      debugging stack
;;;----------------------------

(defvar *debug-stack* '()
  "Use this to stash state variables instead of making globals.")

(defvar *debug* t
  "When false, nothing's stored.")

(defun push-debug (val) (when *debug* (push val *debug-stack*)))
(defun pop-debug () (pop *debug-stack*))
(defun peek-debug () (first *debug-stack*))
(defun clear-debug () (setf *debug-stack* '()))
(defun assq-debug (key) (assq key *debug-stack*))
