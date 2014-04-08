;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Base:10; -*-
;;; Copyright (c) 2013-2014 David D McDonald
;;; Copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved

;;;  mumble/interface/derivations/types

;; initiated 3/20/07, elaborated through 7/07
;; 9/17/09 Commenting out the definiion of lexicalized-phrase in favor of the
;;  one in derivation-trees. Others are likely to soon become obsolete as well.
;; 4/30/13 Adjusted fn name in bundle creator.

(in-package :mumble)

#| N.b. This set of types is deprecated, and somewhat incompatible
   with the CLOS classes defined in Mumble/derivation-trees/types.lisp |#

;;;---------------------------------------------------
;;;                     types
;;;---------------------------------------------------

(set-auto-gen-symbol-package :mumble)


;;;----------------------
;;; linguistic resources
;;;----------------------

(instantiate-type (lexical-resource
		   (#:lr-)
		   ("#<resource ~a ~a>" lr
		    (lr-name lr)
		    (indexed-object-index lr)))
  (name)
  (expression)
  (cache))

(defparameter *symbols-to-linguistic-resources* (make-hash-table))

(defun linguistic-resource-named (symbol)
  (gethash symbol *symbols-to-linguistic-resources*))


(defmacro def-lexical-resource (name expression)
  `(def-lexical-resource/expr ',name ',expression))

(defun def-lexical-resource/expr (name expression)
  (let ((lr (make-lexical-resource :name name
				   :expression expression)))
    (setf (indexed-object-index lr) (index-object lr))
    (setf (gethash name *symbols-to-linguistic-resources*) lr)
    lr))

(defun instantiate-linguistic-resource (lexical-resource)
  (let* ((lr-name (lr-name lexical-resource))
	 (resource
	  (or (template-resource-named lr-name)
	      (linguistic-resource-named lr-name))))
    (unless resource
      (error "There is no lexical-resource named ~a" lr-name))
    (let ((operator
	   (typecase resource
	     #+ignore(lexical-resource
	      (dereference-lexicalized-phrase-expression
	       (lr-expression resource)))
	     #+ignore(template-resource
	      (dereference-template-resource resource lexical-resource))
	     (otherwise
	      (break "Dereferencing resource expression - new type: ~a~%~a"
		     (type-of lexical-resource) lexical-resource)))))
      (setf (lr-cache lexical-resource) operator)
      operator)))
#|
  (let* ((exp (lr-expression lexical-resource))
	 (exp-name (car exp))
	 (exp-type (dereference-operator-name exp-name)))
    (let ((operator
	   (typecase exp-type
	     (phrase
	      (dereference-lexicalized-phrase-expression exp))
	     (template-resource
	      (dereference-template-resource lr))
	     (otherwise
	      (break "Dereferencing resource expression - new type: ~a~%~a"
		     (type-of exp-type) exp)))))
      (setf (lr-cache lexical-resource) operator)
      operator))) |#



;;;---------------------
;;; lexicalized-phrases
;;;---------------------
#+ignore  ;; it's defined in CLOS somewhere
(instantiate-type (lexicalized-phrase
		   (#:lp- )
		   ("#<lp ~a ~a ~a>" lp
		    (lp-name lp)
		    (lp-phrase lp)
		    (indexed-object-index lp)))
  (name)
  (phrase)
  (parameter-value-pairs)
  (open-parameters))

;; Stubs to quiet the compiler. Caller is construct-unpacked-phrasal-root
;; But defining these isn't enough -- need the setf functions as well
(defun lp-parameter-value-pairs (lp)
  (declare (ignore lp))
  (error "undefined until the struct version of lexicalized-phrase is moved"))
(defun lp-phrase (lp)
  (declare (ignore lp))
  (error "undefined until the struct version of lexicalized-phrase is moved"))
(defun lp-open-parameters (lp)
  (declare (ignore lp))
  (error "undefined until the struct version of lexicalized-phrase is moved"))


;; e.g. (SVPrepO (v . "bark") (p . "at"))
;;
;; This is the one place that uses the 2007-style lexicalized-phrase
;; so it ought to suffice to quiet things down
#+ignore
(defun dereference-lexicalized-phrase-expression (exp)
  (let ((phrase (phrase-named (car exp)))
	(pairs (cdr exp)))	
    (unless phrase
      (break "There is no phrase named ~a" (car exp)))
    (let* ((phrase-name (name phrase))
	   (lp-name ;; should be util/concat but need package argument
	    (intern (concatenate 'string (symbol-name phrase-name) "-LP")
		    (find-package :mumble)))
	   (lp (make-lexicalized-phrase :name lp-name)))
      (setf (indexed-object-index lp) (index-object lp))

      (setf (lp-phrase lp) phrase)
      (let ((dereferenced-args
	     (mapcar #'(lambda (pair)
			 (let ((var-name (car pair))
			       (value-exp (cdr pair)))
			   (let ((parameter (parameter-named var-name))
				 (value (realization-for value-exp)))
			     `(,parameter . ,value))))
		     pairs)))
	(setf (lp-parameter-value-pairs lp) dereferenced-args)
	(let ((remaining-ones (copy-list (parameters-to-phrase phrase))))
	  (dolist (pair dereferenced-args)
	    (let ((var (car pair)))
	      (setq remaining-ones (delete var remaining-ones))))
	  (setf (lp-open-parameters lp) remaining-ones)
	  ;;(format t "~&#1 lp = ~a~%" lp)
	  lp)))))



;;;-------------------------------------------------------
;;; simple wrapper around phrases -- see wrap-in-a-bundle
;;;-------------------------------------------------------

(instantiate-type (unpacked-phrasal-root
		   (#:uppr- )
		   ("#<uppr ~a ~a>" up
		     (uppr-phrase up)
		     (indexed-object-index up)))
  (phrase)
  (parameter-values))

(defun fold-in-phrase-parameter (uppr parameters &rest values)
  ;; Works for side-effects, extending the alist of parameter values
  ;; that becomes the kernel of the bundle.
  (let ((alist (uppr-parameter-values uppr)))
    (do ((p (car parameters) (car rest-of-the-parameters))
	 (rest-of-the-parameters (cdr parameters) (cdr rest-of-the-parameters))
	 (v (car values) (car rest-of-values))
	 (rest-of-values (cdr values) (cdr rest-of-values)))
	((null p))
      (let ((cons (assq p alist)))
	(unless cons
	  (error "There is no ~a in the parameters of the uppr" p))
	(rplacd cons v)))))

(defun construct-unpacked-phrasal-root (lp source)
  (unless (typep lp 'lexicalized-phrase)
    (break "Expected the lexicalized resource to be lexicalized-phrase, ~
            but it's a ~a~%~a" (type-of lp) lp))
  (let* ((phrase (lp-phrase lp))
	 (alist (lp-parameter-value-pairs lp))
	 (parameters (parameters-to-phrase phrase))
	 (uppr (make-unpacked-phrasal-root :phrase phrase)))
    (setf (indexed-object-index uppr) (index-object uppr))
    ;; 1st set up the skeleton -- lists with just the parameter
    (setf (uppr-parameter-values uppr)
	  (mapcar #'list parameters))
    ;; 2d see which ones are filled and copy over the filler
    (dolist (cons (uppr-parameter-values uppr))
      (let* ((parameter (car cons))
	     (known-value (cdr (assq parameter alist))))
	(when known-value
	  (rplacd cons known-value)))) ;;(setq *uppr* uppr) (break "uppr")
    uppr)) ;;(defvar *uppr* nil)




;;;------------------
;;; bundle operators
;;;------------------

(instantiate-type (bundle-operator
		   (#:bo-)
		   ("#<operator ~a ~a>" bo
		     (bo-name bo)
		     (indexed-object-index bo)))
  (name)
  (function))

(defparameter *symbols-to-bundle-operators* (make-hash-table))

(defun bundle-operator-named (symbol)
  (gethash symbol *symbols-to-bundle-operators*))

(defmacro def-bundle-operator (name args &body body)
  `(def-bundle-operator/expr ',name ',args ',body))

(defun def-bundle-operator/expr (name args body)
  (let ((bo (make-bundle-operator :name name)))
    (setf (indexed-object-index bo) (index-object bo))
    (let* ((fn-name (concat name '#:-bundle-operator))
	   (form `(defun ,fn-name ,args ,@body))
	   (fn (eval form)))
      (setf (bo-function bo) fn)
      (setf (gethash name *symbols-to-bundle-operators*) bo)
      bo)))


;;;-----------------
;;; bundle creators
;;;-----------------

(instantiate-type (bundle-creator
		   (#:bc-)
		   ("#<bundle-creator ~a ~a>" bc
		     (bo-name bc)
		     (indexed-object-index bc)))
  (name)
  (parameters)
  (function))

(defparameter *symbols-to-bundle-creators* (make-hash-table))

(defun bundle-creator-named (symbol)
  (gethash symbol *symbols-to-bundle-creators*))

(defmacro def-bundle-creator (name args &body body)
  `(def-bundle-creator/expr ',name ',args ',body))

(defun def-bundle-creator/expr (name args body)
  (let ((bc (make-bundle-creator :name name
				 :parameters args)))
    (setf (indexed-object-index bc) (index-object bc))
    (let* ((fn-name (concat '#:make-a- name '#:-bundle))
	   (form `(defun ,fn-name ,args ,@body))
	   (fn (eval form)))
      (setf (bc-function bc) fn)
      (setf (gethash name *symbols-to-bundle-creators*) bc)
      bc)))


;;;--------------------
;;; template resources
;;;--------------------

(instantiate-type (template-resource
		   (#:tr-)
		   ("#<template-resource ~a ~a>" tr
		      (tr-name tr)
		      (indexed-object-index tr)))
  (name)
  (level) ;; determines the bundle-type: clause, np, ...
  (lexicalized-phrase)
  (open-parameters)
  (operators)
  (template)) ;; a specification-template

;; These are probably also 'linguistic resources' that could wait
;; on their expansion until they're referenced. That would certainly
;; help in eliminating a further level of postprocessing, since the
;; lexicalize phrase we'll want needn't have been defined before it's
;; referenced.
;;
;; To do this, we need to take all the information that's going to
;; go into creating the 'on-the-fly template' and stash it, and we
;; need to flag the name of this as a template-resource so that we
;; can recover it and retrieve or instantiate this when its referenced.

(defmacro def-template-resource (name level &body key-value-pairs)
  `(def-template-resource/expr ',name ',level ',key-value-pairs))

(defun def-template-resource/expr (name level key-value-pairs)
  (let ((tr (make-template-resource :name name :level level)))
    (register-template-resource name tr)
    (def-lexical-resource/expr name key-value-pairs)))

(defun dereference-template-resource (tr lexical-resource)
  (let ((key-value-pairs (lr-expression lexical-resource)))
    (apply #'make-template-for-template-resource tr key-value-pairs)
    (setf (lr-cache lexical-resource) tr)))

(defun make-template-for-template-resource (tr &key ((:lexicalized-resource
						      lr-exp))
					            operators)
  ;; Runs for side-effects, fleshing out the other fields of the
  ;; template-resource object.
  (unless (and lr-exp operators)
    (break "Typos? expected keywords for lexicalized-phrase &/or operators"))
  (let* ((name (tr-name tr))
	 (resource-name (car lr-exp))
	 (additional-pairs (cdr lr-exp))
	 (lr (linguistic-resource-named resource-name)))
    (declare (ignore additional-pairs))
    (unless lr
      (break "There is  no linguistic resource named ~a" resource-name))
    (let* ((lexicalized-phrase 
	    ;; in principle could be any level of linguistic resource, but
	    ;; this choice of resource name makes it concrete for thinking
	    ;; about
	    (or (lr-cache lr)
		(instantiate-linguistic-resource lr)))
	   (uppr (construct-unpacked-phrasal-root lexicalized-phrase 
						  :template-resource))
	   (open-in-lp (lp-open-parameters lexicalized-phrase))
	   (formals (mapcar #'name open-in-lp))
	   (bundle-making-expression
	    (case (tr-level tr)
	      (clause '(make-a-bundle 'general-clause))
	      (np `(general-np))
	      (otherwise
	       (break "New level type: ~a" (tr-level tr)))))
	   (operator-expression 'b))
      (setf (tr-lexicalized-phrase tr) lexicalized-phrase)
      ;; We could imaging making a derived lexicalized-phrase with
      ;; more parameters, but it seems easier to put them in the
      ;; template as its arguments
      (setf (tr-open-parameters tr) open-in-lp)
      (dolist (operator-name operators)
	(let ((operator (bundle-operator-named operator-name)))
	  (unless operator
	    (error "The is no bundle-operator named ~a" operator-name))
	  (setq operator-expression
		`(,operator-name ,operator-expression))
	  (push operator ;; order is not supposed to matter
		(tr-operators tr))))
      (let* ((form
	      `(define-specification-template ,name ,formals
		 (let ((b ,bundle-making-expression)
		       (k ,uppr))
		   (set-bundle-head b k)
		   (fold-in-phrase-parameter ;; ordering matters
		    ,uppr ',(mapcar #'eval formals) ,@formals)
		   ,operator-expression
		   b)))
	     (template (eval form))) 
	(setf (tr-template tr) template) (break "tr")
	tr))))




;;;----------------------
;;; rhetorical resources
;;;----------------------

;; These are motivated by the first instance of schema (canned text-plans)
;; that extend over one sentence. They're also the first place that clearly
;; calls for alternative choices. But since this is a place where we want
;; to link up with Sparser output much sooner than later, they're likely
;; to be drastically refactored once it's clear how that is going to fall
;; out. 

(instantiate-type (rhetorical-resource
		   (#:rr-)
		   ("#<rhetorical-resource ~a ~a>" rr
		      (rr-name rr)
		      (indexed-object-index tr)))
  (name)
  (parameters)
  (cases))





