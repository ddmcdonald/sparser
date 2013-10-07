;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,2013 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "context"
;;;   Module:  "objects;doc:"
;;;  Version:  0.1 October 2013

;; initiated 6/18/92.
;; 0.1 (10/4/13) Adding simpler uses of the context global.

(in-package :sparser)

#| Data structures that maintain contextual information that is 
   germain to the article as a whole, e.g. for the article's date,
   source, topic-company, etc.  |#

;;;----------
;;; indexing
;;;----------

(defvar *context-variables-and-init-values* nil
  "accumulates all the symbols. Used as a table -- sorted alphabetically
   for display off a menu.")


;;--- clearing -- early in per-article initizations

(defun clear-context-variables () ;; syntactic sugar and a hook
  (setq *context-variables-and-init-values* nil))


;;--- push, probe

(defun set-context-variable (indicator value)
  (push `(,indicator . ,value)
        *context-variables-and-init-values*))

(defun known-in-context (indicator)
  (cdr (assq indicator *context-variables-and-init-values* )))


;;;------------
;;; definition
;;;------------

(defun define-context-variable/expr (symbol initial-value comment)
  (unless (symbolp symbol)
    (format t "The first argument to define-context-variable has to ~
               be a symbol.~%But it is ~A" symbol))

  (unless (assoc symbol *context-variables-and-init-values*
                 :test #'eq)
    (push (cons symbol initial-value)
          *context-variables-and-init-values*))

  (eval `(defparameter ,symbol ,initial-value ,comment))

  symbol )


;;;----------------
;;; initialization
;;;----------------

(defun initialize-context-variables ()
  (dolist (pair *context-variables-and-init-values*)
    (set (car pair) (cdr pair))))

