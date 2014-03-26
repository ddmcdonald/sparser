;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1995,2010-2014 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "index"
;;;   Module:  "objects;model:variables:"
;;;  version:  2.2 March 2014

;; initiated 11/18/91 v2.1, typo 11/24
;; 1.1 (7/92 v2.3) shifted from gl entries to straight categories
;; 1.2 (6/2/93) fixed missing case in Find/lambda-variable.
;; 1.3 (8/5/94) wrote Next-variable-id as value of the :lattice-site field
;; 1.4 (7/7/95) added superc check to Find-variable-for-category
;; 2.0 (6/16/09) Switching to a lexical treatment.
;; 2.1 (7/20/09) Added back in lambda-variable-named but have it returning
;;   the new notion of an anonymous-variable that will be replaces with
;;   a 'real' one that's associated with a category at runtime, i.e. when
;;   rules are executed. (12/14/10) method-ized find-variable-in-category
;;   to handle lattice points as the value of the type field.
;;   (1/18/11) Wrote swap-variable-in-binding. 4/1/13 Added signature for
;;   individuals for dereference-variable. 10/17/13 added signature to get
;;   categories via symbols in find-variable-in-category.
;;   (10/31/13) added find-variable-in-mixins to the mix.
;;   (11/13/13) Finished var name registration that lets you get a single
;;    variable from the name if that's the case. 

(in-package :sparser)

;;;----------
;;; indexing 
;;;----------

#| In the 2009 scheme, variables are lexical entities that are local to the
 categories that define them. There can be several variables with the same
 name provided that they are associated with different categories. |#


;;;---------
;;; finding
;;;---------

(defun find-variable-for-category (variable-name category)
  "The prefered way to access variables from their name."
  (when (eq (symbol-package variable-name) (find-package :keyword))
    ;; Happens when coming in from find-individual
    (setq variable-name (intern (symbol-name variable-name)
				(find-package :sparser))))
  (or (find-variable-in-category variable-name category)
      (super-category-has-variable-named variable-name category)
      (find-variable-in-mixins variable-name category)))


(defun find-variable-from-individual (variable-name i)
  (find-variable-in-category variable-name (first (indiv-type i))))


(defmethod find-variable-in-category (symbol (category model-category))
  (let ((variables (cat-slots category)))
    (when variables
      (find symbol variables :key #'var-name))))

(defmethod find-variable-in-category (symbol (category-name symbol))
  (let ((category (category-named category-name :break-if-missing)))
    (let ((variables (cat-slots category)))
      (when variables
        (find symbol variables :key #'var-name)))))

(defmethod find-variable-in-category (symbol (lp lattice-point))
  (let ((category (base-category-of-lp lp)))
    (find-variable-in-category symbol category)))
  

;;--- mixins
(defun find-variable-in-mixins (variable-name category)
  (let ((mixin-categories (cat-mix-ins category)))
    (when mixin-categories
      ;; first look in each mixin
      (dolist (mixin  mixin-categories)
        (let ((var (find-variable-in-category variable-name mixin)))
          (when var
            (return-from find-variable-in-mixins var))))
      ;; Now look up the line of super-categories
      (dolist (mixin  mixin-categories)
        (let ((var (super-category-has-variable-named variable-name mixin)))
          (when var
            (return-from find-variable-in-mixins var)))))))


;;;--------------------
;;; internal Make form
;;;--------------------

(defun find/make-lambda-variable-for-category (name-symbol restriction category)
  ;; called by define-lambda-variable
  (unless category
    (error "Cannot define the variable ~a~
          ~%because the category parameter was not supplied.~
          ~%Variables are only defined relative to categories." name-symbol))
  (let ((v (find-variable-in-category name-symbol category)))
    (if v
      (setf (var-value-restriction v) restriction) ;; pro

      (setq v (make-lambda-variable
               :name  name-symbol
               :value-restriction  restriction
	       :category category )))
    v))


;;;----------------------------------------------------------------------
;;; Access to all the variable/category combinations for a variable-name
;;;----------------------------------------------------------------------

(defvar *symbols-to-variables* (make-hash-table)
  "Maps from the name of a symbol to dotted pairs of 
   variable and category. Set during the find-or-make.")

(defun register-var-name-to-category-list (name-symbol variable category)
  ;; called by define-lambda-variable
  (let ((entry (get-variable-category-pairs-for-var-name name-symbol)))
    (if (null entry)
      (setf (gethash name-symbol *symbols-to-variables*)
            `((,category . ,variable)))
      (unless (assq category entry)
        (setf (gethash name-symbol *symbols-to-variables*)
              (cons `(,category . ,variable)
                    entry))))))

(defun get-variable-category-pairs-for-var-name (name-symbol)
  (gethash name-symbol *symbols-to-variables*))

(defun variable-defined-on-one-category (name-symbol)
  (let ((pairs (get-variable-category-pairs-for-var-name name-symbol)))
    (when pairs
      (when (= (length pairs) 1)
        (let ((pair (car pairs)))
          (cdr pair))))))

(defun find-variable (name-symbol)
  "Returns a single variable if is is only bound by one category,
   otherwise returns the full list or nil if undefined."
  (let ((entry (get-variable-category-pairs-for-var-name name-symbol)))
    (cond
     ((null entry) nil)
     ((null (cdr entry)) (cdr (car entry)))
     (t entry))))





;;;---------------------
;;; Anonymous variables
;;;---------------------

(defvar *strings-to-anonymous-variable* (make-hash-table))

(defun lambda-variable-named (symbol)
  (unless (symbolp symbol)
    (error "The argument to lambda-variable-named must be a symbol.~
            ~%It was passed ~A" symbol))
  (or (variable-defined-on-one-category symbol)
      (gethash symbol *strings-to-anonymous-variable*)
      (let ((avar (make-anonymous-variable :name symbol)))
	(setf (gethash symbol *strings-to-anonymous-variable*) avar)
	avar)))


(defmethod dereference-variable ((variable lambda-variable) 
				 psi-or-individual)
  (declare (ignore psi-or-individual))
  variable)

(defmethod dereference-variable ((v anonymous-variable)
				 (i psi))
  (let ((category (category-of-psi i)))
    (dereference-variable v category)))

(defmethod dereference-variable ((v anonymous-variable)
				 (i individual))
  (let ((category (itype-of i)))
    (dereference-variable v category)))

(defmethod dereference-variable ((v anonymous-variable)
				 (c referential-category))
  (let ((name (avar-name v))
	(variables (cat-slots c)))
    (declare (ignore variables))
    (let ((variable (find-variable-for-category name c)))
      (unless variable
	(error "There is no variable named ~a~%in the category ~a"
	       name c))
      variable)))


;;;-------------------------------------------
;;; Juggling around the variables in bindings
;;;-------------------------------------------

;; Sometimes a rule uses a variable that is descriptive given what it
;; knows at the time, but later we know more about the object and
;; want to change our original characterization while keeping the
;; other parts the same. 

(defun swap-variable-in-binding (variable-symbol individual
				 &key to in)
  ;; Locate a binding in the individual whose pname is the symbol.
  ;; Change that variable to the one named by the 'to' keyword
  ;; taken from the 'in' category.
  (let ((bindings (indiv-binds individual)))
    (unless bindings (error "~a expected to have bindings" individual))
    (let ((b (find variable-symbol bindings :test #'eq
		   :key #'(lambda (binding)
			    (let ((v (binding-variable binding)))
			      (var-name v))))))
      (unless b
	(push-debug `(,bindings ,variable-symbol ,individual))
	(error "No variable with the name ~a~%among the bindings of ~a"
	       variable-symbol individual))
      (cond
	((and to in)
	 (let ((var (find-variable-in-category to in)))
	   (unless var
	     (push-debug `(,to ,in))
	     (error "There is no variable named ~a in the category ~a"
		    to in))
	   (setf (binding-variable b) var)
	   b))
	(t ;; placeholder for other kinds of modifications 
	   ;; indicated by different patterns of keywords
	 (error "No :to and or :in specified"))))))

