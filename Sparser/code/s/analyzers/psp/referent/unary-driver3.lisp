;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-2005,2012-2013 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2006-2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:   "unary driver"
;;;    Module:   "analyzers;psp:referent:"
;;;   Version:   3.1 October 2013

;; broken out as its own file 11/91
;; 1.0 (10/23/92 v2.3) Got the options set up to date with actions in
;;      the new semantics.
;; 1.1 (12/31) added function and daughter options
;; 1.2 (5/14/93) fixed the bug in the daughter option
;; 1.3 (6/3) revised the arguments that ref/head is called with
;;     (6/17) ditto for ref/sub-type.
;;     (10/19/97) Referent-from-unary-rule choked on a symbol where it expected
;;      a rule, so put a gate on that.
;; 2.0 (3/22/98) direct referents now initiate psi's.
;;     (4/23) binding *rule-being-interpreted*
;;     (6/30) reworked how annotations were integrated and rethreaded.
;;     (6/4/99) Added an argument to the call to Annotate-individual from
;;       Referent-from-unary-rule.
;;     (4/19/00) Rationalized the annotation policy coming out of the
;;      driver to do it at that level only in the case of direct pointers
;;      and otherwise insist that the actions do it.
;; 2.1 (6/21) changed the arguments to annotate-realization/base-case. It had
;;      passed the rule as the second arg. and now passes what the caller expects.
;;     (12/26) added flag argument to :head case of dispatch for benefit of annotation
;; 2.2 (2/2/05) Removing the annotation calls for the nonce, e.g. Referent-from-unary-rule
;; 2.1 (3/20) Put it back unchanged.
;;     (10/31/06) put in 'get through' for mixin referents as with "will" in
;;       mixin-category.
;;     (2/6/07) Removed an ecase.
;; 3.0 (7/22/09) fanout from changes in psi design. (9/1) Added exception for
;;      external referents into referent-from-unary-rule. Added notes 11/12/12
;; 3.1 (10/10/13) Added final hook to incorporate the referent into the situation. 

(in-package :sparser)


(defvar *single-daughter-edge* nil)


(defun referent-from-unary-rule (edge rule daughter)

  ;; This is analogous to Referent-from-rule except for its specialization
  ;; to the case of having just a single daughter.

  (let ((*parent-edge-getting-reference* edge)
        (*single-daughter-edge* daughter)
        (*rule-being-interpreted* rule)
        (rule-field 
         (when (cfr-p rule)
           (cfr-referent rule)))
        *referent*  direct-pointer?)
    (tr :ref-unary-rule edge rule)

    (when rule-field  ;; return nil for empty fields
      (if (listp rule-field)
        (then
	  (tr :rule-field-is-a-list)
          (if (listp (first rule-field))
            (then
              (setq *referent*
                    (dispatch-on-unary-ref-actions (first rule-field)))
              (dolist (ref-action (rest rule-field))
                (setq *referent*
                      (dispatch-on-unary-ref-actions ref-action))))
            (else
	      (tr :simple-unary-dispatch rule-field)
              (setq *referent*
                    (dispatch-on-unary-ref-actions rule-field)))))
        (else
	  (tr :direct-referent rule-field)
          (setq *referent* rule-field
                direct-pointer? t)))

      (tr :unary-realization *referent*) ;; "Unary realization of ~a"

      (when direct-pointer?
        ;; In the other cases the annotation is done within the actions
        ;; we dispatched to.
        (typecase *referent*
          (referential-category
           (annotate-realization/base-case
            (find-self-node *referent*) ;; right now the lp for the category
            *referent*))
          (individual
           (annotate-individual *referent* :unary-rule))
          (mixin-category ; 10/31/06  just getting through it
           )
          (word) ;; ditto -- example is "still" as an adverb
	  (section-marker)
          (otherwise
	   (unless *external-referents*
	     (break "Unexpected type: ~a~%~a" ; 
		    (type-of *referent*) *referent*)))))

      (when *c3*
        (incorporate-referent-into-the-situation *referent* rule edge))

      *referent* )))


(defun dispatch-on-unary-ref-actions (rule-field)
  (case (car rule-field)
    (:instantiate-individual
     (ref/instantiate-individual
      rule-field (second rule-field) nil nil))
    (:head
     (ref/head (second rule-field) ;; will be "daughter"
               nil nil :calling-from-unary-rule))
    (:subtype
     (ref/subtype (second rule-field)
                  *single-daughter-edge* nil))

    (:daughter
     (edge-referent *single-daughter-edge*))
    (:funcall
     (cond ((cddr rule-field)
            ;; there is more than one argument, we have to go through
            ;; them for any reference to 'daughter, and if there's
            ;; one cons an argument list with it dereferenced
            (if (member 'daughter (cdr rule-field) :test #'eq)
              (apply (first rule-field)
                     (mapcar #'(lambda (item)
                                 (if (eq item 'daughter)
                                   (edge-referent *single-daughter-edge*)
                                   item))
                             (rest rule-field)))

              (apply (first rule-field)
                     (rest rule-field))))

           ((cdr rule-field)
            (funcall (first rule-field)
                     (if (eq (second rule-field) 'daughter)
                       (edge-referent *single-daughter-edge*)
                       (second rule-field))))
           (t
            (funcall (first rule-field)))))
    (otherwise
     (break "Unexpected keyword in referent of unary rule: ~a"
	    (car rule-field)))))
