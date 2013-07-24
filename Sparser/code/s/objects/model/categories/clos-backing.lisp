;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2010-2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "clos-backing"
;;;   Module:  "objects;model:categories:"
;;;  version:  0.0 July 2013

;; initated 11/9/10. Modified the storage scheme 11/11. Tweaking cases
;; through 12/6. 6/16/11 fixed case of clash with existing classes.
;; 9/1/11 Tried a scheme for making instances of each class at the moment
;; the class is defined but it triggered a MOP issue on the first instance
;; of a subclass. 9/3 simplified the names by using a different package
;; and flushed the check to see if the class already exists, which made
;; the MOP problem go away. 1/4/13 Added get-shadow. 
;; 7/21/13 Moved in the macro that hides the shift-in-representation 
;; messiness and its ancilary parts so facility can be taken as a whole

(in-package :sparser)

;;;---------------------------------
;;; stashing the classes on a table
;;;---------------------------------

(defvar *categories-to-classes* (make-hash-table))

(defmethod get-sclass ((c category))
  (gethash c *categories-to-classes*))

(defmethod get-sclass ((s symbol))
  (let ((c (category-named s)))
    (unless c (error "No category named ~a" s))
    (get-sclass c)))

(defun store-class-for-category (c class)
  (setf (gethash c *categories-to-classes*) class))

(defvar *classes-defined* nil)


;;;-------------
;;; entry point
;;;-------------

(defun setup-backing-clos-class (c source)
  ;; Called from the bottom of decode-category-parameter-list when
  ;; we have created everything we can about the category. Also called
  ;; from find-or-make-category-object for other cases, notably
  ;; form categories like 'modal'. 
  (push-debug `(,c))
  (case source
    (:minimal)
    (:define-category)
    ((or :referential :form)
     (let* ((class-name (backing-class-name-for-cateory c))
            (supercat (when (cat-lattice-position c)
                        (lp-super-category (cat-lattice-position c))))
            (superc-name ;; presume there's just one
             (when supercat (backing-superclass-for-category supercat)))
            (variables (cat-slots c))
            (slot-expressions 
             (when variables (backing-class-slots-for-category variables))))
       (setq class-name (check-for-circularities class-name superc-name))
       (let ((form
              `(defclass ,class-name ,(if superc-name `(,superc-name) nil)
                 ,slot-expressions)))
         (push-debug `(,form))
         (let ((class (eval form)))
           (store-class-for-category c class)
           (push c *classes-defined*)
           (make-and-store-nominal-instance c)
           c))))
    (otherwise
     (push-debug `(,c ,source))
     (break "New backing-CLOS class source: ~a~%~a" source c))))

(defun backing-class-name-for-cateory (c)
  ;; N.b. do not check for the class already existing.
  ;; 1. It doesn't. 2. If you do, and seeing as how we haven't
  ;; defined it yet, the MOP in its wisdom will create
  ;; a forward-reference-class for it rather than a standard-
  ;; class. 
  (let* ((c-name (cat-symbol c)) ;; in the category package
         (c-pname (symbol-name c-name))
         (class-name (intern c-pname *shadow-package*)))
    class-name))

(defun check-for-circularities (class-name superc-name)
  "Because our categories correspond to ordinary words, we can get
   a clash where the category we want to create, based on a word, will
   have the same name."
  ;; strictly speaking should look up the lattice for a match
  ;; at any point (and argument should be the supercategory rather
  ;; than its name), but this catches the presenting case with "kind"
  (if superc-name
    (if (eq superc-name class-name)
      (intern (string-append '#:category- (symbol-name class-name))
              *shadow-package*)            
      class-name)
    class-name))

(defun backing-superclass-for-category (superc)
  ;; stub something if there's not already a class?
  (let* ((superc-name (backing-class-name-for-cateory superc))
         (super-class (get-sclass superc)))
    (unless super-class
      (break "The CLOS class for ~a doesn't exist yet." superc-name))
    superc-name))

(defun backing-class-slots-for-category (variables)
  (let ( forms )
    (dolist (v variables)
      (let* ((slot-name (intern (symbol-name (var-name v))
				(find-package :sparser)))
	     (v/r (var-value-restriction v))
	     (type-constraint
	      (when v/r (backing-type-for-variable-restriction v/r))))
	(push (if v/r
               `(,slot-name :type ,type-constraint)
	       `(,slot-name))
	      forms)))
    (nreverse forms)))

(defun backing-type-for-variable-restriction (v/r)
  (typecase v/r
    (cons
     (case (car v/r)
       (:primitive
	(typecase (second v/r)
	  (symbol
	   (case (second v/r)
	     (word 'word)
	     (list 'list)
	     (integer 'integer)
	     (fixnum 'fixnum)
	     (number 'number)
	     (pathname 'pathname)
	     (cons 'cons)
	     (polyword 'polyword)
	     (cfr 'cfr)
	     (category 'category)
	     (segment 'segment)
	     (otherwise (push-debug `(,v/r))
			(break "Another v/r primitive symbol: ~a" (second v/r)))))
	  (cons
	   (let ((tag (car (second v/r)))
		 (values (cdr (second v/r))))
	     (unless (symbolp tag) 
	       (push-debug `(,v/r)) (error "V/R shouldn't go this deep"))
	     (case tag
	       (:or
		(let ((r (mapcar #'backing-type-for-variable-restriction values)))
		  `(:or ,@r)))
	       (otherwise
		(push-debug `(,v/r))
		(break "New key in deep cons-based value restriction:~%  ~a" v/r)))))
	  (otherwise
	   (push-debug `(,v/r))
	   (break "New type of cons-based value restriction:~%  ~a" v/r))))
       (:or
	(let ((r (mapcar #'backing-type-for-variable-restriction (cdr v/r))))
	  `(:or ,@r)))
       (otherwise
	(push-debug `(,v/r))
	(break "New form for cons-based value restriction:~%  ~a" v/r))))
    (referential-category
     (backing-class-name-for-cateory v/r))
    (symbol
     v/r)
    (otherwise
     (push-debug `(,v/r))
     (break "New type for v/r: ~a~%  ~a" (type-of v/r) v/r))))


;;;-------------------------------------------------------------
;;; Dealing with individuals and the instances that shadow them
;;;-------------------------------------------------------------

(defun create-shadow (individual)
  (let* ((type (indiv-type individual))
         (category (etypecase type
                     (cons (car type))
                     (referential-category type)))
         (sclass (get-sclass category))
         (shadow (make-instance sclass))) ;; need a backpointer?
    (setf (indiv-shadow individual) shadow)
    shadow))

(defmethod find-or-make-shadow ((i individual))
  (or (get-shadow i :no-break)
      (create-shadow i)))


(defgeneric get-shadow (obj &optional no-break)
  (:documentation "Return the CLOS instances that we apply
 in methods."))

(defmethod get-shadow ((i individual) &optional no-break)
  (let ((s (indiv-shadow i)))
    (unless s
      (unless no-break
        (push-debug `(,i))
        (error "No shadow associated with ~a" i)))
    s))

(defmethod get-shadow ((c category) &optional no-break)
  (let ((s (get-nominal-instance c)))
    (unless s
      (unless no-break
        (push-debug `(,c))
        (error "No shadow associated with ~a" c)))
    s))

(defmethod get-shadow ((obj t) &optional no-break)
  (push-debug `(,obj))
  (unless no-break
    (error "There are no shadows associated with object of ~
            type ~a~%  ~a" (type-of obj) obj)))

(defvar *category-classes-to-nominal-instance* (make-hash-table))

(defmethod get-nominal-instance ((c category))
  (get-nominal-instance (get-sclass c)))

(defmethod get-nominal-instance ((cl standard-class))
  (gethash cl *category-classes-to-nominal-instance*))

(defmethod make-and-store-nominal-instance ((c category))
  (let ((cl (get-sclass c)))
    (make-and-store-nominal-instance cl)))

(defmethod make-and-store-nominal-instance ((cl standard-class))
  (let ((i (make-instance cl)))
    (setf (gethash cl *category-classes-to-nominal-instance*) i)))



;;;--------------------------------------------------------------
;;; getting back the individuals from the shadows invoke methods
;;;--------------------------------------------------------------

(defvar *shadows-to-individuals* nil
  "Set with each call to the setup wrapper below. 
   Alist from the nominal category instance use to invoke
   the method and the referent (usually an individual) 
   that is the 'real' referent.")

(defun dereference-shadow-individual (shadow)
  (let ((value (cdr (assoc shadow  *shadows-to-individuals*))))
    (unless value
      (error "No Krisp value found for nominal instance ~a"
             shadow))
    value))


;;;------------------------------------------------------
;;; macro to sugar shifting representations in defmethod
;;;------------------------------------------------------

(defmacro def-k-method (name args &body body)
  `(def-k-method/expr ',name ',args ',body))

(defun def-k-method/expr (name args body)
  ;;(push-debug `(,name ,args ,body))
  (unless (every #'symbolp args)
    (error "The arguments in a k-method must be symbols~
          ~%At least one of them is not: ~a" args))
  (unless (every #'category-named args)
    (error "As least of of the args to the k-method is not a category:~
          ~%~a" args))
  (let* ((categories (loop for arg in args collect (category-named arg)))
         (shadow-classes
          (loop for c in categories collect (get-sclass c)))
         (dummy-parameters
          (loop with i = 0
            collect (intern (string-append '#:d "-" (incf i))
                            (find-package :sparser))
            until (= i (length shadow-classes))))
         (method-args
          (loop for s in shadow-classes
            as d in dummy-parameters
            collect `(,d ,s)))
         (let-bindings
          (loop for d in dummy-parameters
            as s in args
            collect `(,s (dereference-shadow-individual ,d)) )))

    ;;(push-debug `(,let-bindings ,method-args ,dummy-parameters ,shadow-classes))
    (let ((form 
           `(defmethod ,name ,method-args
              (let ,let-bindings
                ,@body))))
      ;;(pprint form)      
      (eval form))))


;;;-------------------------------------------------------
;;; wrapper to setup environment for calling def-k-method
;;;-------------------------------------------------------

;; Used in ref/method and call-redistribute-if-appropriate

(defmacro setup-args-and-call-k-method (left-referent right-referent
                                        &body body)
  `(flet ((dispatch-type-of (o)
           (typecase o
             (psi (base-category-of-psi o))
             (individual (i-type-of o))
             (category o)
             (otherwise
              (push-debug `(,o))
              (error "Unexpected type of object passed to ref/method: ~
                      ~a~%   ~a" (type-of o) o)))))
     (let* ((left-type (dispatch-type-of left-referent))
            (right-type (dispatch-type-of right-referent))
            (left-shadow (get-nominal-instance (get-sclass left-type)))
            (right-shadow (get-nominal-instance (get-sclass right-type)))
            (*shadows-to-individuals*
             `((,left-shadow . ,left-referent)
               (,right-shadow . ,right-referent))))
       (declare (special *shadows-to-individuals*))
       ;; (push-debug `(,left-shadow ,right-shadow))
       ,@body)))




 
	     



