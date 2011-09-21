;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id$
;;;
;;; idea derived from Jake Beal's contributions to Poirot util.

(in-package :ddm-util)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (export '(push-debug
            pop-debug
            peek-debug
            clear-debug)))

;;;----------------------------
;;;      debugging stack
;;;----------------------------
;; Use this to stash "state of the system" variables instead of making globals

(defvar *debug-stack* '())
(defvar *debug* t)                      ; when false, nothing's stored
(defun push-debug (val) (when *debug* (push val *debug-stack*)))
(defun pop-debug () (pop *debug-stack*))
(defun peek-debug () (first *debug-stack*))
(defun clear-debug () (setf *debug-stack* '()))
(defun assq-debug (key) (assq key *debug-stack*))


