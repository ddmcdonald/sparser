;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "context"
;;;   Module:  "objects;doc:"
;;;  Version:  June 1992

;; initiated 6/18/92

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

