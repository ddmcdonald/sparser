;;; -*- Mode: Lisp; Package:MUMBLE; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id: characteristics.lisp 100 2007-07-04 14:31:27Z dmcdonal $

;;; MUMBLE-86: grammar; characteristics
;;;
;;; Copyright (C) 1985, 1986, 1987, 1988  David D. McDonald and the
;;;    Mumble Development Group.  All rights reserved.
;;;    Permission is granted to use and copy this file of the Mumble-86 system for
;;;    non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

(in-package :mumble)


(define-grammatical-characteristic np)

(define-grammatical-characteristic clause)

(define-grammatical-characteristic prenominal-modifier)

(define-grammatical-characteristic wh-q)

(define-grammatical-characteristic participle-phrase)

(define-grammatical-characteristic tensed-clause)

(define-grammatical-characteristic pp)

(define-grammatical-characteristic relative-clause)

(define-grammatical-characteristic relative-pronoun)

(define-grammatical-characteristic interrogative-pronoun)

(define-grammatical-characteristic vp)

(define-grammatical-characteristic qp)


(define-grammatical-characteristic adverb)

(define-grammatical-characteristic adverbial-phrase)


;******NEW FOR PURPOSE CLAUSES 

(define-grammatical-characteristic for-infinitive)

(define-grammatical-characteristic subject-reducible)

(define-grammatical-characteristic  subject-deletion)

;#################################################################

#|

(def-type  ARGUMENT-CHARACTERISTIC    permanent
  (name			"a symbol")
  (parameter		"an optional list of tree-family parameters")
  (consistency-test	"a function")
   )
|#

(define-argument-characteristic  identical-with-root (parameter)
  identical-with-root?)

(defun identical-with-root?  (arg)
  (if *current-phrasal-root*
      (then
	(let* ((object-underlying-root
		(actual-object
		  (underlying-object
		    (original-rspec *current-phrasal-root*))))
	      (object-underlying-arg
		(actual-object (underlying-object arg)))
	      (result (eq object-underlying-root
			  object-underlying-arg)))
	  (if result
	      (landmark 'arg-is-identical-with-root)
	      (landmark 'failed-arg-doesnt-equal-phrasal-root
			object-underlying-arg object-underlying-root))
	  result))
      (else
	(landmark 'failed-because-no-phrasal-root)
	nil)))



(define-argument-characteristic  Identical-with-any-main-clause-argument 
				 (parameter)
  identical-with-any-main-clause-argument )

(defun identical-with-any-main-clause-argument (arg)
  (member arg (arguments (original-rspec (car *context-stack*)))))





(define-argument-characteristic available  (parameter)
  argument-is-available-in-present-context)


(defun argument-is-available-in-present-context (arg)
  ;;this accessory is marked in the text structure 
  (or  (when (bundle-specificationp arg)
	 (assoc (accessory-type-named :reducible)
		(accessories arg)))
       (argument-same-as-argument-of-matrix arg)))


(defun  ARGUMENT-SAME-AS-ARGUMENT-OF-MATRIX (arg)
   (when (and *current-phrasal-root* 
              (original-rspec *current-phrasal-root*)
              (eq (bundle-type (original-rspec *current-phrasal-root*))
                  'general-clause))
     (let* ((matrix-spec  (original-rspec *current-phrasal-root*))
	    (matrix-args (arguments (head matrix-spec)))
	    arg-list)

     (dolist (a matrix-args)
       (if (specificationp a)
	   (push (actual-object (underlying-object a)) arg-list)
	   (push a arg-list)))
     (if (specificationp arg)
	 (member (actual-object
		   (underlying-object arg)) arg-list)
	 (member arg arg-list))
     )))

;; actual-object --move to same place as member-of-class?
