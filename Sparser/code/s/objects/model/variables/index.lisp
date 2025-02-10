;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1995,2010-2018,2022 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "index"
;;;   Module:  "objects;model:variables:"
;;;  version:  April 2022

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

(defgeneric find-variable-for-category (variable category)
  (:documentation "Look for and return the lambda variable of the
 indicated name on this category. If it is not local, look for
 it on the supercategories of the category, and on its mixin 
 categories, the mixins of the supercategories, and their own
 supercategories.  This is the prefered way to access variables
 from their name.
    Note that when you're editing the model, in particular when you
 rearrange what categories bind what variables, find-variable-for-category
 will fail to find the variable that you know is there. This happens
 because the variable cache is stale. To refresh it run (cache-variable-lookup),
 which makes a sweep over all the categories and resets the cache. ")
  
  (:method ((variable lambda-variable) category)
    (find-variable-for-category (var-name variable) category))
  
  (:method ((variable-name symbol) (cat-name symbol))
    (find-variable-for-category variable-name (category-named cat-name t)))

  (:method ((variable-name symbol) (i individual))
    (find-variable-from-individual variable-name i))

  (:method ((var anonymous-variable) (category category))
    (find-variable-for-category (pname var) category))
  
  (:method ((variable-name symbol) (category category))
    (when (eq (symbol-package variable-name) (find-package :keyword))
      ;; Happens when coming in from find-individual
      (setq variable-name (sparser-symbol variable-name)))
    
    (if (cached-variable-lookup?)
      (hash-find-variable variable-name category)
      
      ;; First we look on the category itself. Then we look through
      ;; of its superc's as determined by super-categories-of,
      ;; Finally we consult the category's mixins.
      (or (find-variable-in-category variable-name category) 
          (super-category-has-variable-named variable-name category) 
          (find-variable-in-mixins variable-name category)))))

#| 
|#

;;;---------------
;;; cached lookup
;;;---------------

(defun cache-variable-lookup ()
  "Called by setup-session-globals/grammar once all the categories
  have been defined. May be called by hand while developing when the
  arrangement of the variables has changed too much. See the note in
  the documentation of find-variable-for-category"
  (loop for c in *categories-defined* do (fill-inherited-vars c)))

(defparameter *inherited-cat-variables* (make-hash-table :size 5000)
  "Holds the per-category hash tables of variable names (symbols)
   to the variables of that category with that name. Populated by
   fill-inherited-vars")

(defun cached-variable-lookup? ()
  "Used by find-variable-for-category that it's worth looking for
   a cached version of the variable"
  (> (hash-table-count *inherited-cat-variables*) 0))

(defun hash-find-variable (var-name cat)
  "There will be a cache of variable objects in the hash table
   that was created for this category. Lookup the variable name
   in the table and return the variable object."
  (declare (special category::top)
           (optimize (speed 3)(safety 0)))
  (let ((var-table (gethash cat *inherited-cat-variables*)))
    (when (and (not (hash-table-p var-table))
               (itypep cat category::top))
      (setq var-table (fill-inherited-vars cat)))
    (gethash var-name var-table)))


(defun fill-inherited-vars (cat)
  "populate the hashtable for this category with the variables it
   directly specifies and the ones it is known to inherit."
  (if (not (itypep cat 'top))
    (setf (gethash cat *inherited-cat-variables*)
          (make-hash-table :size 2))
    (else
      ;; Walk through the accumulated variables to make the
      ;; updated value of the variables that are accessible from
      ;; this category. Omit any variable that has been marked
      ;; as having been restricted. The more specific variable
      ;; with that same name will be on the regular list
      (let* ((sups (super-categories-of cat))
             vars ;; collects all the variables
             rvars ;; collects variables that have been restricted
             (var-ht (make-hash-table :size 40 :test #'eq)))
        (loop for s in sups ;; Walk up the list of super categories
           do (loop for v in (cat-slots s)
                do (push v vars)
                   (when (get-tag :restricts v)
                     (push (get-tag :restricts v) rvars))))
        (loop for v in vars unless (member v rvars :test #'eq)
           do (setf (gethash (var-name v) var-ht) v))
        (setf (gethash cat *inherited-cat-variables*) var-ht)))))


;;;--------------------------------
;;; more specific lookup functions
;;;--------------------------------

;;/// depricated
(defun find-variable-from-individual (variable-name i)
  (if (collection-p i)
    (if (member variable-name '(items type number))
      (find-variable-for-category variable-name (itype-of i))
      (find-variable-for-category variable-name
                                  ;; wrt variables, the type of
                                  ;; a collection is given by its TYPE variable
                                  (or (value-of 'type i) (itype-of i))))
    (find-variable-for-category variable-name (itype-of i))))


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



;;;---------------------------------------------------------
;;; Computations over variables used in bind{-dli}-variable
;;;---------------------------------------------------------

(defun var-takes-category? (var/name individual category)
  "Does the restriction on this variable indicate that it can be bound
   to categories? Called from bind-dli-variable so may need to
   decode the symbol that names the variable.
   Called by bind-dli-variable when the value being bound is a category.
   It want to know whether the variable takes category values or
   it should convert the category to an individual."
  (let* ((variable (variable-given-name-and-individual var/name individual category)))
    (cond (variable         
           (equal (var-value-restriction variable)
                  '(:PRIMITIVE CATEGORY)))
          (t
           #+ignore
           (warn "no variable named ~s on ~s of category ~s~% in sentence ~s~%"
                 var/name individual category
                 (current-string))
           nil))))


(defun variable-given-name-and-individual (var/name individual category)
  "What specific variable does the var/name symbol correspond to.
   While variables with the same name can be bound by different categories,
   we have to consult the category (or the individual as a proxy for the
   category) in order to return the correct variable."
  (declare (special *break-on-pattern-outside-coverage?*))
  (unless category ;; optional in some callers
    (cond ((referential-category-p individual) ;; 6/22/09
           (setq category individual))
          (t (setq category (indiv-type individual)))))
  (when (consp category) ;; new 6/19/09
    (setq category (car category)))
  (let ((variable (or (when (typep var/name 'lambda-variable)
                        var/name)
                      (when (typep var/name 'anonymous-variable)
                        (dereference-variable var/name individual))
                      (find-variable-for-category var/name category))))
    (unless variable
      ;; motivated by "lipofectamine 2000" where 2000 is read as a year
      (when *break-on-pattern-outside-coverage?*
        (push-debug `(,var/name ,individual ,category))
        (if category
          (break "There is no variable named ~A~
                ~%associated with the category ~A" var/name category)
          (break "There is no variable named ~A~
                ~%associated with the category of the individual ~A"
                 var/name individual))))
    variable))



;;;--------------------------------------------
;;; find the variable directly on the category
;;;--------------------------------------------

(defgeneric find-variable-in-category (name category)
  (:documentation "Given a symbol that names a variable, return
    the actual variable on the indicated category. Alternative
    methods provide other ways to getting to the category.
    This method does -not- search beyond the category itself")

  (:method (symbol (i individual))
    (loop for category in (indiv-type i)
       thereis (find-variable-in-category symbol category)))

  (:method (symbol (lp lattice-point))
    (let ((category (base-category-of-lp lp)))
      (find-variable-in-category symbol category)))

  (:method (symbol (category model-category))
    ;;(find-variable-for-category symbol category)
    (let ((variables (cat-slots category)))
      (when variables
        (find symbol variables :key #'var-name))))

  (:method (symbol (category-name symbol))
    (let ((category (category-named category-name :break-if-missing)))
      (find-variable-in-category symbol category))))
  



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
  (when (not (collection-p category))
    (let ((v/r (local-v/r-for (car vars) category)))
      (loop for var in (cdr vars)
         as local = (local-v/r-for var category)
         when (and v/r local)
	 do (setq v/r (intersect-v/rs v/r local)))
      v/r)))

(defun local-v/r-for (var category)
  (let ((local-var (find-variable-for-category (var-name var) category)))
    (when local-var
      ;; some times there is no local var for :subject (e.g.(p "PKM2 K433E mutant, which fails to bind to tyrosine-phosphorylated peptides  xref  , had similar glycolytic enzyme activity to its WT counterpart ( xref )  xref  ."))
      (var-value-restriction local-var))))

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
  ;; called by define-lambda-variable. Adds to a global alist of
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
  "Returns a single variable if it is only bound by one category,
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
      (else
        ;;(break "about to make ~a an anonymous variable" symbol)
        (let ((avar (make-anonymous-variable :name symbol)))
          (setf (gethash symbol *strings-to-anonymous-variable*) avar)
          avar))))
  
(defgeneric dereference-variable (variable referent-unit)
  (:documentation "There are times when we have to refer to
 a variable by name -- using lambda-variable-named -- and 
 do not have access to the category that the variable is
 defined by. In these cases we construct an 'anonymous-variable'
 with the idea that when we actually need to use it we will
 have the category in hand. This method does the lookup.")

  (:method ((variable lambda-variable) 
	    psi-or-individual)
    (declare (ignore psi-or-individual))
    variable)

  (:method ((v anonymous-variable)
            (i individual))
    (let ((category (itype-of i)))
      (dereference-variable v category)))

  (:method ((v anonymous-variable)
            (c referential-category))
    (let ((name (avar-name v))
          (variables (cat-slots c)))
      (declare (ignore variables))
      (let ((variable (find-variable-for-category name c)))
        (unless variable
          (warn "There is no variable named ~a~%in the category ~a"
                 name c))
        variable))))

(defparameter *warn-non-binding-anonymous-var* nil
  "The actual assembly of binding objects happens in the function
 old-bind-variable and it requires us to have a real variable in
 our hand, i.e. that we can determine the intended instance of
 the variable with that name. If we can't, then no binding is
 constructed. This gates a warning message about that, which
 can be very noisy when running over a set of articles.")

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


;;;---------------------------------------
;;; Variables that are bound at load-time
;;;---------------------------------------

(defvar *variables-bound-at-load-time* nil
  "Accumulates a list of variables that are bound at definition time
   rather than parse time and consequently should be handled differently
   by walking code that describes semantic interpretations or gathers
   information by walking an interpretation.")

(defun fixed-at-runtime (var-list cat-name)
  (let* ((category (category-named cat-name :error-if-nil))
         (variables (loop for v-name in var-list
                       collect (find-variable-in-category v-name category))))
    (assert (every #'lambda-variable-p variables))
    (loop for var in variables do (push var *variables-bound-at-load-time*))
    variables))

(defgeneric fixed-value (variable)
  (:documentation "A predicate that identifies a variable as
   one whose value was fixed when it was defined. Used to block
   recursive application of walking functions and thereby avoid
   including unnecessary information or a run away recursion.")
  (:method ((b binding))
    (fixed-value (binding-variable b)))
  (:method ((v lambda-variable))
    (memq v *variables-bound-at-load-time*)))

