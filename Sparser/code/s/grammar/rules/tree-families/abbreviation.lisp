;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "abbreviation"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  February 2014

;; Initiated 2/7/14. Generator for the function in the short-cut file.

(in-package :sparser)


(defvar *name-to-category-abbreviator* (make-hash-table)
  "Index structure for category-abbreviators. Key is a symbol")

(defun get-category-abbreviator (name)
  (gethash name *name-to-category-abbreviator*))


#| The idea is to take a minimal specification of
a category-generating function -- the name to use and 
the tree family its based on -- and from that determine
the needed parameters and their reasonable defaults.
We store those on an object so we can relax while doing
this, then use the object to provide the data to generate
the function. 
|#

(defclass category-abbreviator (named-object)
  ((trees :initarg :family :accessor tree-family
    :documentation "The family of trees the function
     is based on. Can be changed when the function 
     is redefined.")
   (word-vars :accessor word-parameters
    :documentation "The symbols that name parameters that
      get strings that are converted to words (or get lists
      if irregulars have to be specified). The first of
      these strings becomes the name of the constructed
      category.")
   (superc :accessor super-category 
    :documentation "The name of category to be used by
      default as the 'specializes' of the new category.
      Usually depends on the major category of the schema
      in the tree family.")
   (slot-names :type list :accessor variable-names
    :documentation "A list of the names of the variables
      that the category will bind. Derives from the
      parameters of the trees in the family. These are
      also the names of the keyword arguments the category
      function will have so the use can override the
      default restrictions.")
   (slot-defaults :accessor default-value-restrictions
    :documentation "The default value restrictions of
      those variables, given in the same order as the
      list of slot names so they're easy to pair up.")
   (label-names :accessor label-names
    :documentation "The labels from the syntactic portion of
      the ETFs in the family. These could be specialized just
      like the parameters are, but probably won't be."))
  (:documentation ""))


(defmacro define-category-abbreviation-class (name tree-family
                                              &key parameter-defaults)
  `(define-category-abbreviation-class/expr 
       ',name ',tree-family ',parameter-defaults))

(defun define-category-abbreviation-class/expr (name tree-family parameter-defaults)
  ;; Examine all the ETF in the family to determine the arguments 
  ;; and defaults for constructing a function for creating classes
  ;; by rote with sensible defaults.
  (let ((tf (get-family-of-trees tree-family)))
    (unless tf
      (error "There is no tree-family named ~a" tree-family))
    (let* ((new? nil)
           (i (or (get-category-abbreviator name)
                  (let ((new (make-instance 'category-abbreviator
                               :name name
                               :family tf)))
                    (setf (gethash name *name-to-category-abbreviator*) new)
                    (setq new? t)
                    new))))
      new? ;;/// or maybe old? -- determine what we check for on redef. 
      (let ( slots  defaults )
        (dolist (pair parameter-defaults)
          (push (car pair) slots)
          (push (cdr pair) defaults))
        (setf (variable-names i) (nreverse slots))
        (setf (default-value-restrictions i) (nreverse defaults)))
      (setf (super-category i) (determine-superc-from-tf tf))
      (setf (word-parameters i) (determine-tf-word-parameters tf))
      (setf (label-names i) (determine-tf-labels tf))
      ;;(push-debug `(,i)) (break "check ")
      (generate-category-abbreviation-code i)
      i)))




(defun generate-category-abbreviation-code (i)
  (let* ((word-parameters (word-parameters i))
         (category-parameter (car word-parameters))
         (default-super-category (super-category i))
         (binding-parameters (variable-names i))
         (index-operator (if (null (cdr binding-parameters))
                                       :key  :sequential-keys))
         (parameter-defaults (default-value-restrictions i))
         ;;(label-parameters (label-names i))
         (parameters binding-parameters) ;;(append binding-parameters label-parameters))
         (binding-expressions (assemble-variable-restriction-defaults
                               binding-parameters))
         (name-of-tree-family (name (tree-family i)))
         (fn-name (name i)))
    (let ((base-form
           `(defun ,fn-name (,@word-parameters &optional super-category
                             &key instantiates ,@parameters)
              (let* ((category-name (category-name-from-string-arg
                                     ,category-parameter))
                     (specializes (or super-category
                                      ',default-super-category))
                     (category-instantiated (or instantiates :self))
                     (binding-forms (list ',@binding-expressions))
                     ,@(variable-restriction-conditionals
                        binding-parameters parameter-defaults))
                (unless (eq category-instantiated :self)
                  (setq category-instantiated 
                        (category-named category-instantiated)))
                (let ((category
                       (define-category/expr category-name
                         (list :instantiates category-instantiated
                               :specializes specializes
                               :index '(,index-operator ,@binding-parameters) 
                               ;;/// variable doesn't get the v/r
                               :binds binding-forms))))
                  (push-debug `(,category)) (break "look at category")
                  (apply-tree-family category
                                     (get-family-of-trees ',name-of-tree-family)
                                     (get-category-abbreviator ,fn-name)
                                     :words (list ,@word-parameters))
                  category)))
           ))
      (push-debug `(,base-form)) (break "look at base form")
      (eval base-form))))

  

(defun apply-tree-family (category family constructor &key words)
  (push-debug `(,category ,family ,constructor ,words))
  (dolist (mapping-expression (family-mapping-fn-pairs family))
    (let ((schema (car mapping-expression))
          (mapping-form (cdr mapping-expression)))
      (push-debug `(,schema ,mapping-form))
      (break "apply-tree-family stub"))))

;;;--------
;;; Gofers
;;;--------

;;--- For generate-category-abbreviation-code

(defun restriction-symbol (parameter-symbol)
  ;; Would be in an flet except that it's needed in to fns
  (let ((string (string-append parameter-symbol '#:-restriction)))
    (intern string (find-package :sparser))))

(defun variable-restriction-conditionals (parameters defaults)
  ;; if statements as to whether a value is supplied
  (loop for par in parameters 
    as def in defaults
    as restr-var = (restriction-symbol par)
    collect `(,restr-var (or ,par ',def)) ))

;;/// variable doesn't get v/r so may need modification somehow
(defun assemble-variable-restriction-defaults (parameters)
  ;; the final version, using the variable defined in the base-form's
  ;; let by variable-restriction-conditionals
  (loop for par in parameters 
    as restr-var = (restriction-symbol par)
    collect `(,par . ,restr-var)))


;;--- for define-category-abbreviation-class

(defun determine-superc-from-tf (tf)
  (let ((root (car (tf-roots tf))))
    (case root
      (s 'event)
      (otherwise
       (push-debug `(,root ,tf))
       (error "Unanticipated root: ~a" root)))))

(defun determine-tf-word-parameters (tf)
  (flet ((simplify-parameter-name (symbol)
           (case symbol
             (main-verb 'verb)
             (otherwise
              (error "Unexpected paramter name: ~a" symbol)))))
    (let ((parameters (tf-word-parameters tf)))
      (loop for name in parameters
        collect (simplify-parameter-name name)))))

(defun determine-tf-labels (tf)
  (loop for pair in (tf-label-pairs tf)
    collect (car pair)))
  

