;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1995,2010-2016 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "index"
;;;   Module:  "objects;model:variables:"
;;;  version:  June 20156

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
;;   (10/27/14) Added find-variable-in-category method that takes an individual

(in-package :sparser)

;;;----------
;;; indexing 
;;;----------

#| In the 2009 scheme, variables are lexical entities that are local to the
 categories that define them. There can be several variables with the same
 name provided that they are associated with different categories. |#


;;;------------------------------------------------
;;; find the variable anywhere up the superc chain
;;;------------------------------------------------

(defmethod find-variable-for-category ((variable-name symbol) (cat-name symbol))
  (find-variable-for-category variable-name
                              (category-named cat-name :error-if-missing)))

(defmethod find-variable-for-category ((variable-name symbol) (category category))
  "The prefered way to access variables from their name."
  (when (eq (symbol-package variable-name) (find-package :keyword))
    ;; Happens when coming in from find-individual
    (setq variable-name (intern (symbol-name variable-name)
				(find-package :sparser))))
  (unless (category-p category)
    (error "Category parameter is a ~a instead of a category.~
          ~%Upstream function call passed down the wrong thing."
           (type-of category)))
  ;; First we look on the category itself. Then we look through
  ;; of its superc's as determined by super-categories-of,
  ;; Finally we consult the category's mixins.
  (or (find-variable-in-category variable-name category) 
      (super-category-has-variable-named variable-name category) 
      (find-variable-in-mixins variable-name category)))


(defun find-variable-from-individual (variable-name i)
  (find-variable-for-category variable-name (first (indiv-type i))))


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


(defun super-category-has-variable-named (variable-name base-category)
  (let ((supercs (super-categories-of base-category))
        variables  target-variable )
    (dolist (category supercs nil)
      (setq variables (cat-slots category))
      (when variables
        (setq target-variable
              (find variable-name variables :key #'var-name))
        (when target-variable
          (return-from super-category-has-variable-named target-variable))))))


;;;--------------------------------------------
;;; find the variable directly on the category
;;;--------------------------------------------

(defgeneric find-variable-in-category (name category)
  (:documentation "Given a symbol that names a variable, return
    the actual variable on the indicated category. Alternative
    methods provide other ways to getting to the category.
    This method does -not- search beyond the category itself"))

(defmethod find-variable-in-category (symbol (i individual))
  (loop for category in (indiv-type i)
    thereis (find-variable-in-category symbol category)))

(defmethod find-variable-in-category (symbol (lp lattice-point))
  (let ((category (base-category-of-lp lp)))
    (find-variable-in-category symbol category)))

(defmethod find-variable-in-category (symbol (category model-category))
  (let ((variables (cat-slots category)))
    (when variables
      (find symbol variables :key #'var-name))))

(defmethod find-variable-in-category (symbol (category-name symbol))
  (let ((category (category-named category-name :break-if-missing)))
    (let ((variables (cat-slots category)))
      (when variables
        (find symbol variables :key #'var-name)))))
  



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
      (setf (var-value-restriction v) restriction)

      (setq v (make-lambda-variable
               :name  name-symbol
               :value-restriction  restriction
	       :category category )))
    v))



;;;---------------------------------------
;;; variables that represent disjunctions
;;;---------------------------------------

(defun find/make-disjunctive-lambda-variable-for-category (vars category)
  (let ((name-symbol (format nil "~a" (var-name (car vars))))
	v)
    (loop for n in (cdr vars) do
	 (setq name-symbol (format nil "~A-OR-~A" name-symbol (var-name n))))
    (setq name-symbol (intern name-symbol (find-package :sparser)))
    ;;(lsp-break "find/make-disjunctive-lambda-variable-for-category")
    (unless (setq v (find-variable-in-category name-symbol category))
      (setq v (make-disjunctive-lambda-variable
	       :name name-symbol
	       :variables vars
	       :value-restriction (intersection-of-vrs vars category)
	       :category (find-super-category-with-variables category vars))))
    v))

(defun find-super-category-with-variables (category vars)
  category) ;; for the moment
  

(defun intersection-of-vrs (vars category)
  (when (not (itypep category 'collection))
    (let ((v/r (local-v/r-for (car vars) category)))
      (loop for var in (cdr vars)
         as local = (local-v/r-for var category)
         when (and v/r local)
	 do (setq v/r (intersect-v/rs v/r local)))
      v/r)))

(defun local-v/r-for (var category)
  (var-value-restriction
   (find-variable-for-category (var-name var) category)))

(defun intersect-v/rs (vr1 vr2)
  (cond
    ((and (consp vr1)
          (eq (car vr1) :or))
     (cond
       ((and (consp vr2)
             (eq (car vr2) :or))
	(let ((vr
	       (loop for v1 in (cdr vr1)
		  when (loop for v2 in (cdr vr2)
                          thereis (or (eq v1 v2) (itypep v1 v2)))
		  collect v1)))
	  (if (cdr vr) (cons :or vr) (car vr))))
       ((loop for v1 in (cdr vr1)
           thereis (or (eq v1 vr2) (itypep v1 vr2)))
	vr2)))
    ((and (consp vr2)
          (eq (car vr2) :or))
     (when (loop for v2 in (cdr vr2)
              thereis (or (eq v2 vr1) (itypep vr1 v2)))
       vr1))
    ((itypep vr1 vr2) vr1)
    ((itypep vr2 vr1) vr2)))
	

     
  
				   

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

