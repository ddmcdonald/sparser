;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id: rspec-interpretation.lisp 104 2007-08-03 21:30:13Z dmcdonal $
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved

;;;  mumble/interface/derivations/rspec-interpretation

(in-package :mumble)
  
;;;----------------------------------------------------
;;; interpreting realization-specification expressions
;;;----------------------------------------------------

(defun instantiate-rspec (rspec &optional referent)
  ;; Called from Realize, or recursively.
  (let ((bundle
	 (typecase rspec
	   (cons
	    (interpret-rspec-expression rspec referent))
	   (string
	    (word-for-string rspec))
	   (symbol
	    (cond
	      ((symbol-function rspec)
	       (funcall rspec referent))
	      ((eq (symbol-package rspec) (find-package :mumble))
	       (let ((value (or (pronoun-named rspec)
				(word-named rspec))))
		 (unless value
		   (error "Rspec is a symbol in the mumble package but ~
                            doesn't name a word or a pronoun: ~a" rspec))
		 value))
	       (t
		(error "Rspec is a symbol but we don't know what to ~
                        do with it.~%~a   package: ~a"
		       rspec (symbol-package rspec)))))
	   (otherwise
	    (break "New type of rspec: ~a~%~a"
		   (type-of rspec) rspec)))))
    (when referent
      (when (bundle-specification-p bundle)
	(link-to-underlying-object bundle referent)))
    bundle))

(defun interpret-rspec-expression (rspec referent)
  (typecase rspec
    (cons
     (let ((operator-name (car rspec)))
       (let ((operator (dereference-operator-name operator-name)))
	 (dispatch-to-interpreters operator rspec referent))))
    ((or word bundle-specification)
     (break "interpret-rspec-expression -- word, bundle-spec case:~%~a" rspec)
     ;; We get here because, e.g., the string argument to an np-bundle
     ;; forming operator comes through, recursively, as a cons since the
     ;; caller took a cdr -- formalizing the operators so we could spell-out
     ;; their arity would eliminate this oddness.
     rspec)
    (otherwise
     (break "New type passed to interpret-rspec-expression: ~a~%~a"
	    (type-of rspec) rspec))))

(defun dereference-operator-name (operator-name)
  (typecase operator-name
    (symbol
     (or (specification-template-named operator-name)
	 (phrase-named operator-name)
	 (linguistic-resource-named operator-name)
	    ;; covers lexicalized-phrase and template-resource
	 (bundle-operator-named operator-name)
	 (bundle-creator-named operator-name)
	 (break "Rspec operator ~a does not have an ~
                 interpretation" operator-name)))
    (string
     (word-for-string operator-name))
    (otherwise
     (break "New type of operator: ~a~%~a"
	    (type-of operator-name) operator-name))))

(defun dispatch-to-interpreters (operator rspec referent)
  (typecase operator
    (specification-template
     (break "specification-template: rspec = ~a" rspec)
     (interpret-specification-template operator arguments referent))
    (phrase
     (break "phrase: rspec = ~a" rspec)
     (interpret-phrase operator arguments referent))
    (lexical-resource
     (interpret-lexical-resource operator (cdr rspec) referent))
    (word operator)
    (bundle-operator
     (apply-bundle-operator operator (second rspec) referent))
    (bundle-creator
     (apply-bundle-creator operator (cdr rspec) referent))
    (otherwise
     (break "Forgot to add an interpreter for ~a" operator))))


(defun apply-resource (resource-name &key args referent)
  ;; To do what instantiate-rspec does but in a form that can be
  ;; called from schemas instantiated as straight code. It's a different
  ;; factoring and somewhat redundant, so there can be some settling
  ;; out as we get more experience
  (let ((resource (dereference-operator-name resource-name)))
    (unless resource
      (break "There is no resource named ~a" resource-name))
    ;; This is a copy of dispatch-to-interpreters except that we've
    ;; got the arguments already identified.
    (typecase resource
      (lexical-resource
       ;;(break "lexical-resource: rspec = ~a" rspec)
       (interpret-lexical-resource resource args referent))
      (word resource)
      (bundle-operator
       (apply-bundle-operator resource args referent))
      (bundle-creator
       (apply-bundle-creator resource args referent))
      (specification-template
       (interpret-specification-template resource args referent))
      (otherwise
       (break "Apply-resource needs a case for ~a" resource)))))


;;;-------
;;; cases
;;;-------

(defun interpret-specification-template (template arguments referent)
  (let ((template-fn (function-from-objects-to-rspecs template))
	) ;;(values (mapcar #'realization-for arguments)))
    ;; Realization-for return rpsecs, things that feed to Instantiate-rspec
    ;; to create bundles or the equiv. that Realize accepts. So (1) that
    ;; includes expression, which won't survive the call to apply, and
    ;; (2) we want lazy evaluation in any event, so just pass the
    ;; values through.
    (let ((rspec (apply template-fn arguments))) ;;values)))
      rspec)))

(defun apply-rspec-operator (operator argument referent)
  ;; assumes (but how would we check? - maybe we'd provides an introspective
  ;; structure when defining operators, not just use straight functions)
  ;; that these are functions of one argument.
  (when (consp argument)
    ;;(format t "~&recursively evaluating ~a~%" argument)
    (setq argument (interpret-rspec-expression argument referent)))    
  (let ((value (interpret-rspec-expression argument referent)))
    (funcall operator value)))

(defun interpret-lexical-resource (lr arguments referent)
  ;;(format t "~&interpret-lexical-resource:~%  lr = ~a~%  args = ~a~%"
  ;;	 lr arguments)
  (let ((name (lr-name lr))
	(exp (lr-expression lr))
	(operator (lr-cache lr)))
    (when (null operator)
      (setq operator (instantiate-linguistic-resource lr)))
    (typecase operator ;; Uncertain as to overlap with rspec-exp interpreter
      (lexicalized-phrase
       (instantiate-lexicalize-phrase-with-arguments operator arguments referent))
      (template-resource
       (let ((template (tr-template operator)))
	 (interpret-specification-template template arguments referent)))
      (otherwise
       (break "New type of lexical resource: ~a~%~a"
	      (type-of operator) operator)))))

(defun instantiate-lexicalize-phrase-with-arguments (lp arguments referent)
  ;; we're returning a root-node for realize (the ultimate source of
  ;; this call) to knit in to its slot. We're sort of copying
  ;; the code in instantiate-lexicalized-phrase without having 
  ;; to work from a derivaion tree since we've short-circuited that.
  (let ((argument-alist (lp-parameter-value-pairs lp))
	(phrase (lp-phrase lp)))
    (dolist (arg-exp arguments)
      (let ((parameter (parameter-named (car arg-exp)))
	    (fn (cdr arg-exp))) ;; works for this one case
	(unless referent
	  (break "Threading (design) problem - referent is nil"))
	(let* ((arg-value (funcall fn referent))
	       (arg-rspec (realization-for arg-value)))
	  (unless arg-rspec
	    (break "There is no realization specification for ~a" arg-value))
	  (let ((specification (instantiate-rspec arg-rspec arg-value)))
	    (push `(,parameter . ,specification)
		  argument-alist)))))
    (let ((ordered-arguments
	   (mapcar #'(lambda (p) (cdr (assq p argument-alist)))
		   (parameters-to-phrase phrase))))
      (wrap-in-a-bundle phrase ordered-arguments))))

(defun wrap-in-a-bundle (phrase ordered-arguments)
  ;; Given a lexical phrase, we could go straight through to a phrasal
  ;; root (by calling instantiate-phrase instead of this), but that doesn't
  ;; allow us to write compositional rspecs over them (on-the-fly templates)
  ;; For that we need to return a bundle.
  (let* ((bundle-type (bundle-type-for-phrase phrase))
	 (b (make-a-bundle bundle-type))
	 (uppr (make-unpacked-phrasal-root
		:phrase phrase
		:parameter-values ordered-arguments)))
     (setf (indexed-object-index uppr) (index-object uppr))
     (set-bundle-head b uppr)
     b))




(defun bundle-type-for-phrase (phrase) 'general-clause) ;;//////////////

(defun interpret-phrase (phrase arguments referent)
  (break "stub")) ;; (instantiate-phrase 


;; The referent is used down within the bundle creation to enable access
;; functions. It only wants to be assigned once to the final bundle,
;; so perhaps some other sort of dynamic access other than passing them
;; through as a referent is in order. 

(defun apply-bundle-operator (operator bundle-source-exp &optional referent)
  (let ((bundle (instantiate-rspec bundle-source-exp referent))
	(function (bo-function operator)))
    ;;(format t "~&Applying ~a to ~a~%" operator bundle)
    (funcall function bundle)))
    

(defun apply-bundle-creator (operator arg-expressions &optional referent)
  (let ((args (mapcar #'(lambda (exp) 
			  (instantiate-rspec exp referent))
		      arg-expressions))
	(function (bc-function operator)))
    ;;(break "bundle-creator: args = ~a" args)
    (let ((b (apply function args)))
      ;;(format t "~&Created ~a using ~a~%" b operator)
      b)))



