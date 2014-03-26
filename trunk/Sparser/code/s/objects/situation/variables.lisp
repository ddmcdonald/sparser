;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "variables"
;;;            grammar/rules/situation/
;;;  version:  October 2013

;; Initiated 10/9/13. Given some content 10/10

(in-package :sparser)


(defclass indexical-functional-variable (named-object)
  ()
  (:documentation "Presently just the name. Activation stashes one onto
     the present situation in an alist with its value, which obviously
     we have to have at the same time.
     Don't need a resource because there is a fixed set of these
     and the values recycle as the situation evolves."))


(defvar *names-to-indexical-variables* (make-hash-table) ;; overkill?
  "Key is the symbol that defined the variable, value is the variable")

(defun get-indexical-variable (name)
  (gethash name *names-to-indexical-variables*))

(defun register-indexical-variable (name var)
  (setf (gethash name *names-to-indexical-variables*) var))


(defmacro define-indexical-variable (name)
  `(define-indexical-variable/expr ',name))

(defun define-indexical-variable/expr (name)
  (unless (symbolp name)
    (error "The name of an indexical variable must be a symbol~
          ~%Not the ~a you passed in -- ~a" (type-of name) name))
  (let ((var (make-instance 'indexical-functional-variable
               :name name))
        (activator-name (intern (string-append '#:activate "-" name)
                                (find-package :sparser))))
    (register-indexical-variable name var)
    
    (let ((activator-form
           `(defun ,activator-name (peg)
              (add-indexical-to-situation ',name peg)) ))
      (eval activator-form)
      var)))


(defmethod add-indexical-to-situation ((name symbol) (value t))
  (let ((var (get-indexical-variable name)))
    (unless var
      (error "No indexical variable named ~a" name))
    (add-indexical-to-situation var value)))

(defmethod add-indexical-to-situation ((var indexical-functional-variable)
                                       (value t))
  (let* ((situation (the-situation)) ;; does the error checking
         (variables-alist (variable-values situation)))
    (setf (variable-values situation)
          (cons `(,var . ,value)
                variables-alist))
    ;; Return the peg given use in incorporate-referent-into-the-situation
    ;; (when working at the phrase level)
    value))


(defmethod value-of-indexical ((name symbol)) ;; take a situation argument?
  (let ((var (get-indexical-variable name)))
    (unless var
      (error "No indexical variable named ~a" name))
    (value-of-indexical var)))

(defmethod value-of-indexical ((var indexical-functional-variable))
  (let* ((situation (the-situation))
         (variables-alist (variable-values situation))
         (entry (assq var variables-alist)))
    (unless entry
      (error "The indexical ~a has no value in ~a"
             var situation))
    (cdr entry)))




