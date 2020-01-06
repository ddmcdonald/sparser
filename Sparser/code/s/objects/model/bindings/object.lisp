;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-2005,2011-2020 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "object"
;;;   Module:  "objects;model:bindings:"
;;;  version:  January 2020

;; initiated 11/30 v2.1
;; 7/17/92 v2.3 revised the definition
;; 6/7/93 added Value-of covering Value/var to improve how it can be
;;  used from code. (1/10/94) Added All-bindings-such-that and Up-and-over.
;;  (4/1) added value-of/binding
;; 0.1 (6/13) redefined Value-of to return nil rather than break when there is
;;      no variable of that name
;;     (8/3) added All-values-for  (8/4) added Has-binding  
;; 0.2 (8/10) added a field for a permanent index.  8/17 added Add-item-to-list-value
;;      8/29 added Binds.  10/5 added Bound-in
;;      11/29 added 'all' keyword args. to those two functions
;; 0.3 (7/7/95) elaborated Value-of to take bindings off of referential categories
;;     (9/19) tweeked Value-of to pre-empt the var decoding routine from breaking
;;      on ambiguous variables
;; 0.4 (1/31/99) extended value-of to appreciate psi.
;;     (9/7) Debugged that extension to typecase when it disambiguates variables
;; 0.5 (9/27) Extended Bound-in to allow the body of the bindings it examines to
;;      be categories. Needed to handle the binding of an ordinal to a number, where
;;      the ordinal is here construed as a category rather than an individual.
;;     (8/5/00) Rewrote value/var to handle the typecase within value-of.
;;     (2/2/05) Fixed format dumb-o in bound-in
;; 2.0 (7/14/09) Fan-out from new way of indexing variables because they're now lexical
;; 2.1 (1/18/11) Changed value-of to have an optional category argument to overrule 
;;      the category inferred from the individual. If the variable doesn't exist
;;      when the category is specified then we signal an error. 2/13/13 added an
;;      argument test to value-of. 4.7.13 added with-bindings, and an escape for
;;      value-of
;; 2.2 (5/28/13) Added who-binds as analog of value-of for the bound-in field.
;;     (6/15/13) Clarified what has-binding is doing an added guards to ensure
;;      that it's used correctly.
;; 2.3 (8/26/13) Refactored value of bindings search a bit. Added bound-in-value-of
;;      as direct analog of value-of
;;     (10/27/14) added open-in method
;; 3/22/2015 speed up access to var-instances by using hash table


(in-package :sparser)


(defun binding-count (b)
  (get-tag :incidence-count b 0))


;;;----------------------------------------------------
;;; operations over bindings and individuals with them
;;;----------------------------------------------------

(defun value-of (var-name individual &optional specified-category)
  "Standard way to get the value of a particular binding on
   an individual. Convenient for using in code since the variable
   is dereferenced from its name here. If a category is supplied
   to get the variable from, it must be an object, not a name."
  (when (and specified-category (symbolp specified-category))
    (error "The category argument to value-of should be a real category object"))
  (etypecase individual
    (individual
     (let* ((category (or specified-category
			  (etypecase individual
			    (individual (itype-of individual)))))
	    (variable
	     (or (when (lambda-variable-p var-name) var-name)
                 (when (symbolp var-name)
                   (find-variable-for-category var-name category))
		 (find-variable-in-category var-name category))))
       (if variable
         (then
           (when (and (listp variable)
                      (eq (car variable) :different-value-restrictions))
             (setq variable
                   (find-variable-for-category var-name category)))
           (value/var variable individual))
         (else
          (when specified-category
            ;; You should be asking for a variable that is known to be 
            ;; associated with the category, otherwise you're confused.
            (push-debug `(,var-name ,individual ,category))
            (error "Cannot find a variable named ~a~%that is associated ~
                    with the individual ~a" var-name individual))
          (let ((bindings (indiv-binds individual)))
            (when bindings
              (dolist (b bindings)
                (when (eq (var-name (binding-variable b))
                          var-name)
                  (return (binding-value b))))))))))

    (referential-category
     (let ((category individual))
       (let ((bindings (cat-binds category)))
         (when bindings
           (value-of/binding var-name bindings category)))))

    (symbol
     ;; The only symbol we ever expect (1/20) is *lambda-var* which
     ;; is introduced in predication edges. (/// check for it?).
     ;; It's not a Krisp data type so no consumer of the value
     ;; will know what to do with it, hence we're returning nil
     nil)))


(defun value/var (variable individual)
  "Caller did the dereferencing: both variable and individual are objects"
  (etypecase individual
    (individual
     (let ((bindings (indiv-binds individual)))
       (find-bindings-value-for-var bindings variable)))))


(defun find-bindings-value-for-var (bindings variable)
  "Identify the binding within the list of bindings that is based
   on the variable. Note that the test is based on strings because
   a variable that has been restricted is not eq to the variable
   on its super-category that it is derived from."
  (when bindings
    (let ((binding
           (find (var-name variable)
                 bindings
                 :key #'(lambda (b)
                          (var-name (binding-variable b))))))
      (when binding
        (binding-value binding)))))


(defun value-of/binding (var-name list-of-bindings &optional category)
  (let ((variable
         (etypecase var-name
           (symbol
            (if category
              (find-variable-for-category var-name category)
              (error "Supply a category so that the variable name ~A~
                      ~%can be disambiguated" var-name)))
           (lambda-variable var-name))))
    (when variable
      (find-bindings-value-for-var list-of-bindings variable))))


(defun who-binds (variable value)
  "This is 'who binds this variable to this value'.
   Look in the bound-in field of 'value', which should be 
   an individual. For all the bindings that use that variable,
   return a list of all of the body individuals in those
   bindings."
  (unless (individual-p value)
    (push-debug `(,variable ,value))
    (error "Expected the second argument to be an individual~
          ~%But it's a ~a~%~a" (type-of value) value))
  (let ((bindings (indiv-bound-in value))
        (var-name (etypecase variable
                    (lambda-variable (var-name variable))
                    (symbol variable))))
    (when bindings
      (loop for b in bindings
        when (eq (var-name (binding-variable b))
                 var-name)
        collect (binding-body b)))))



(defun all-bindings-such-that (bindings
                               &key ((:body-type-is body-type))
                                    ((:variable-is variable)))
  "Return every binding some the argument set that fits the
   description laid out in either of the keyword arguments.
   Expects only one of keyword argument to have a value."
  (let ( good-ones )
    (dolist (b bindings)
      (cond (body-type
             (when (member body-type
                           (indiv-type (binding-body b)) :test #'eq)
               (push b good-ones)))
            (variable
             (when (eq variable
                       (binding-variable b))
               (push b good-ones)))
            (t
             (error "Cond doesn't cover argument pattern"))))
    (nreverse good-ones)))


(defgeneric binds (object)
  (:documentation "Returns the list of bindings, if any,
    that are a component of this object")
  (:method ((i individual))
    (indiv-binds i))
  (:method ((c category))
    (cat-binds c))
  (:method ((o T))
    (error "Objects of type ~a do not have bindings~%~a"
           (type-of o) o)))


(defun binds-variable (indiv var-name  &key all )
  "Walk through the bindings on the individual and return 
   the first one that binds this variable. If 'all' is specified, 
   return ever binding of that variable."
  (let ((variable (find-variable-from-individual var-name  indiv))
        (bindings (indiv-binds indiv))
        matched-bindings )
    (dolist (b bindings)
      (when (eq (binding-variable b) variable)
        (if all
          (push b matched-bindings)
          (return-from binds-variable b))))
    (nreverse matched-bindings)))


(defun bound-in (indiv &key all body-type super-category)
  "Search the individual's bound-in field for the first (or all) binding/s
   whose body is the indicated type. Alternatively, supply a super-category
   and look for the types of the bodies inheriting from that category."
  (let ((category (when body-type
                    (typecase body-type
                      (symbol (category-named body-type))
                      (category body-type)
                      (otherwise
                       (break "body type must be specified by either ~
                               the name of a category~%or a category.~
                               ~%Argument passed in is ~A" body-type)))))
        (superc (when super-category
                  (typecase super-category
                    (symbol (category-named super-category))
                    (category super-category)
                    (otherwise
                     (break "The super category must be specified by either ~
                             the name of a category~%or a category.~
                             ~%Argument passed in is ~A" body-type)))))
        body  matched-bindings )
    (when body-type
      (unless category
        (break "The category specifier passed in: ~A~
                ~%does not correspond to a defined category" body-type)))
    (when super-category
      (unless superc
        (break "The super category specifier passed in: ~A~
              ~%does not correspond to a defined category" super-category)))

    (dolist (b (indiv-bound-in indiv))
      (setq body (binding-body b))
      (when body-type
        (when (etypecase body
                (individual (itype body category))
                (referential-category (eq body category)))
          (if all
            (push b matched-bindings)
            (return-from bound-in body))))
      (when super-category
        (when (individual-inherits-type? body superc)
          (if all
            (push b matched-bindings)
            (return-from bound-in body)))))
    (nreverse matched-bindings)))
          




(defun has-binding (indiv &key ((:variable var-name))
                                value)
  "Does the individual bind this value, and if so does the value
   of that binding match this specified value?"
  (unless var-name (error "A variable has to be specified"))
  (unless value (error "A value has to be specified"))
  (let ((variable (decode-variable-name var-name :individual indiv))
        (bindings (indiv-binds indiv))
        with-variable )
    (dolist (b bindings)
      (when (eq (binding-variable b) variable)
        (push b with-variable)))
    (when with-variable
      (dolist (b with-variable)
        (when (eq (binding-value b) value)
          (return-from has-binding b))))))
    



(defun all-values-for (var-name individual)
  "Search through the bindings of the individual, accumulate
   all the bindings of the variable, and return all the
   binding values in those bindings."
  (let ((variable
         (etypecase var-name
           (symbol
            (let ((category (itype-of individual))
                  var )
              (setq var (find-variable-for-category var-name category))
              (unless var
                (return-from all-values-for nil))
              var ))
           (lambda-variable var-name))))
    (let ((bindings
           (all-bindings-such-that (indiv-binds individual)
                                   :variable-is variable)))
      (let ( values )
        (dolist (b bindings)
          (push (binding-value b) values))
        values ))))


(defun up-and-over (b var &optional cat)
  "A fanciful name for a standard manipulation of a binding.
   We have identified some individual on the basis of the binding 'b'
   and we now want the value of that individual's 'var' binding."
  (let* ((individual (binding-body b))
         (category
          (etypecase cat
            (symbol (category-named cat))
            (referential-category cat)))
         (variable (decode-variable-name 
                    var :individual individual
                        :category category)))
    (let ((value (value/var variable individual)))
      (when (null value)
        (error "The individual ~A~
                ~%has no ~A binding" variable individual))
      value )))



(defun all-such-that (category-name var-name value)
  "Using the hashtable index on the variable, return all the 
   bindings of this value. The category is used to decode
   the name of the variable."
  (declare (special *index-bindings-to-variables*))
  (when *index-bindings-to-variables*
    (let* ((category (category-named category-name t))
           (variable (decode-variable-name  var-name :category category))
           (instances-ht (var-instances variable)))
      (gethash value instances-ht))))



(defun add-item-to-list-value (item var-name individual)
  (let ((variable (decode-variable-name var-name
                                        :individual individual)))
    (assert (list-type-variable? variable))
    (let ((binding (find variable (indiv-binds individual)
                         :test #'eq  :key #'binding-variable)))
      (unless binding
        (error "There is no ~A binding in ~A" var-name individual))
      (unless (consp (binding-value binding))
        (error "The value of the ~A binding of ~A~
                ~%is not a list:~%   ~A" var-name individual
               (binding-value binding)))

      (setf (binding-value binding)
            (kcons item (binding-value binding))))))





(defmacro with-bindings (var-list object &body body)
  "Usage: (with-binding (v1 v2 ...) i &body)
   The symbols are understood to be the names of variables.
   This macro wraps the body in a let statement where the
   symbols are local variables that are set to the value
   of the symbol (qua variable) on the individual i.
     Note that the variable list can be overloaded by
   having it begin with a package designator inside parens
   as its first element, e.g. ((:sparser) v1 v2 ...).
   In this condition, the variable lookup is done using 
   variable names in the designated package, while the
   locals are in the native package of the site where
   this macro is called."
  (let ((pkg-shift? (consp (first var-list))))
    (when pkg-shift?
      (let* ((pkg-name (car (first var-list)))
             (pkg (find-package pkg-name)))
        (assert (packagep pkg))
        (setq var-list (cdr var-list))))
    (let* ((variables (if pkg-shift?
                        (reintern-symbols var-list)
                        var-list))
           (locals var-list)
           (let-bindings
            (loop for var-name in var-list
               as local in locals
               collect `(,local (value-of ',var-name obj-pointer)))))
      `(let* ((obj-pointer ,object)
              ,@let-bindings)
         ,@body)  )))


(defgeneric open-in (individual variable)
  (:documentation "Does this the category(ies) of this individual
    include the variable, and if so is it still unbound in this
    individual?"))

(defmethod open-in ((i individual) (var-name symbol))
  (let ((var (find-variable-in-category var-name i)))
    (open-in i var)))

(defmethod open-in ((i individual) (var lambda-variable))
  (when (null (value-of var i))
    ;; it's bound or doesn't apply
    (let ((category (itype-of i))) ;; assumes multiple categories don't matter
      ;;/// needs a proper sweep like super-categories-of might return
      (memq var (cat-slots category)))))


