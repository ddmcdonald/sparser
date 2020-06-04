;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: SPARSER -*-
;;; Copyright (c) 2016 SIFT LLC. All Rights Reserved.
;;;
;;;     File: "k-methods"
;;;   Module: "objects;model;categories;"
;;;  Version: March 2018
;;;
;;; Pseudo-generic functions with methods specialized on KRISP categories.

(in-package :sparser)

(defstruct k-method
  specializers
  function)

#-:ccl(deftype eql-specializer ()
  '(cons (eql eql) (cons * null)))

(defun eql-specializer-p (object)
  (typep object 'eql-specializer))

(defgeneric k-specializer-applicable-p (specializer argument)
  (:method ((specializer category) argument) (itypep argument specializer))
  (:method ((specializer class) argument) (typep argument specializer))
  (:method ((specializer cons) argument)
    (check-type specializer eql-specializer "an EQL specializer")
    (eql argument (cadr specializer))))

(defun k-method-applicable-p (k-method arguments)
  "Return true if K-METHOD is applicable to ARGUMENTS."
  (loop for specializer in (k-method-specializers k-method)
        and arg in arguments
        always (k-specializer-applicable-p specializer arg)))

(defun k-method-more-specific-p (k-method-1 k-method-2)
  "Return true if K-METHOD-1 is more specific than K-METHOD-2."
  (loop for p in (k-method-specializers k-method-1)
        and q in (k-method-specializers k-method-2)
        thereis (cond ((eql-specializer-p p) t)
                      ((and (category-p p) (category-p q))
                       (and (itypep p q) (not (itypep q p))))
                      ((category-p p) t)
                      ((category-p q) nil)
                      (t (and (subtypep p q) (not (subtypep q p)))))))

(defun most-specific-k-method (function-name arguments)
  "Return the most specific K-method of FUNCTION-NAME applicable to ARGUMENTS."
  (loop with most-specific-k-method
        for k-method in (get function-name 'k-methods)
        when (and (k-method-applicable-p k-method arguments)
                  (or (null most-specific-k-method)
                      (k-method-more-specific-p k-method most-specific-k-method)))
        do (setq most-specific-k-method k-method)
        finally (return most-specific-k-method)))

(defun compute-applicable-k-methods (function-name arguments)
  "Return all of the K-methods of FUNCTION-NAME applicable to ARGUMENTS.
Not currently used, but will be when we add CALL-NEXT-K-METHOD support."
  (sort (remove-if-not (lambda (k-method)
                         (k-method-applicable-p k-method arguments))
                       (get function-name 'k-methods))
        #'k-method-more-specific-p))

(defun ensure-k-function (function-name)
  "If FUNCTION-NAME is not fbound in the global environment,
create a new K-function with that name."
  (if (fboundp function-name)
    (fdefinition function-name)
    (setf (fdefinition function-name)
          (lambda (&rest args)
            (let ((k-method (most-specific-k-method function-name args)))
              (if k-method
                (apply (k-method-function k-method) args)
                (error "No applicable K-methods for ~a with arguments ~:a."
                       function-name args)))))))

(defmacro def-k-function (function-name lambda-list &rest options)
  "Define a new K-function, and optionally some methods for it.
Analogous to DEFGENERIC."
  (check-type function-name symbol "a valid K-function name")
  (assert (every #'symbolp lambda-list) (lambda-list) "Invalid K-function lambda list.")
  (assert (every #'listp options) (options) "Invalid K-function options.")
  `(progn
     (ensure-k-function ',function-name)
     ,@(loop for option in options
             collect (etypecase option
                       ((cons (eql :documentation) (cons string null))
                        `(setf (documentation ',function-name 'function)
                               ,(cadr option)))
                       ((cons (eql :method) (cons list))
                        `(def-k-method ,function-name ,(cadr option)
                           ,@(cddr option)))))
     ',function-name))

(defun kmakunbound (function-name)
  "Remove the K-function definition and all of its K-methods.
Analogous to FMAKUNBOUND."
  (remprop function-name 'k-methods)
  (fmakunbound function-name))

(defun add-k-method (function-name k-method)
  (ensure-k-function function-name)
  (let ((old-k-method (find (k-method-specializers k-method)
                            (get function-name 'k-methods)
                            :key #'k-method-specializers
                            :test #'equal)))
    (cond (old-k-method
           (setf (k-method-function old-k-method)
                 (k-method-function k-method))
           old-k-method)
          (t (push k-method (get function-name 'k-methods))
             k-method))))

(defun collect-k-method-specializers (lambda-list)
  (loop for arg in lambda-list
        if (member arg lambda-list-keywords)
          do (loop-finish)
        else
          collect (etypecase arg
                    (symbol (find-class t))
                    ((cons symbol (cons eql-specializer))
                     `(eql ,(eval (cadadr arg))))
                    ((cons symbol (cons symbol null))
                     (let ((type (cadr arg)))
                       (if (eq (symbol-package type) *category-package*)
                         (category-named type t)
                         (find-class type t)))))))

(defmacro make-k-method-lambda (lambda-list &body body &aux ignorable)
  `(lambda ,(loop with required-arg = t
                  for arg in lambda-list
                  if (member arg lambda-list-keywords)
                    do (setq required-arg nil)
                    and collect arg
                  else if required-arg
                    collect (etypecase arg
                              (symbol arg)
                              ((cons symbol)
                               (push (car arg) ignorable)
                               (car arg)))
                  else
                    collect arg)
     (declare (ignorable ,@ignorable))
     ,@body))

(defmacro def-k-method (function-name lambda-list &body body)
  `(add-k-method ',function-name
                 (make-k-method
                  :specializers (collect-k-method-specializers ',lambda-list)
                  :function (make-k-method-lambda ,lambda-list ,@body))))
