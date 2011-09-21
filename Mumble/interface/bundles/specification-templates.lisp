;;; -*- Mode: lisp; Package:MUMBLE; Syntax: Common-lisp; Base:10 -*-
;;; $Id: specification-templates.lisp 100 2007-07-04 14:31:27Z dmcdonal $

;;;  MUMBLE-86:  message-level;specification-templates

;;; Copyright (C) 1985, 1986, 1987, 1988  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

(in-package :mumble)

;;these templates represent some of our early experiments
;;with specification templates.  for a more complete discussion,
;;see documentation section 6.1.2 

;; Changelog
;;  2/21/95  ddm,ys  -- added SPECIFIC-INSTANCE-OF-A-KIND
;;  3/27 added NON-COUNT-NOUNS.  3/27 added INSTANCE-OF-A-KIND/gender



;################################################################
;             Sources of kernels   (semantic "types")
;################################################################


(define-specification-template  np-based-on-a-common-noun
				( common-noun )
  (let ((k (make-a-kernel 'np-common-noun
			  common-noun)))
    k))
 

(define-specification-template  property-realized-as-an-adjective
				( adjective )
  (let ((k (make-a-kernel 'adjective
			  adjective)))
    k ))



(define-specification-template  predication-of-a-simple-property
				(object-predicated-of
				 property-predicated )
  (let ((k (make-a-kernel
	     'predication_to-be
	     (instantiate-mapping object-predicated-of)
	     (instantiate-mapping property-predicated))))
    k ))


;################################################################
;                Refering objects (anchored NPs)
;################################################################


;################ The general form for NPs built on common nouns

(define-specification-template instance-of-a-kind-parameterized
			       (kind-term
				person number gender
				determiner-policy )
  (let ((b (general-np)))
    (set-bundle-head
      b (typecase kind-term
	  (word   (make-a-kernel 'np-common-noun kind-term))
	  (string (make-a-kernel 'np-common-noun (word-for-string kind-term)))
	  (otherwise (instantiate-mapping kind-term))))
    (add-accessory b :person person)
    (add-accessory b :number number)
    (add-accessory b :gender gender)
    (add-accessory b :determiner-policy determiner-policy)
    b))


(define-specification-template instance-of-a-kind/gender
			       (kind-term gender)
  (let ((b (general-np)))
    (set-bundle-head
      b (typecase kind-term
	  (word   (make-a-kernel 'np-common-noun kind-term))
	  (string (make-a-kernel 'np-common-noun (word-for-string kind-term)))
	  (otherwise (instantiate-mapping kind-term))))
    (third-person b)
    (singular b)
    (initially-indefinite b)
    (add-accessory b :gender gender)
    b))

(define-specification-template instance-of-a-kind
			       (kind-term)
  (let ((b (general-np)))
    (set-bundle-head
      b (typecase kind-term
	  (word   (make-a-kernel 'np-common-noun kind-term))
	  (string (make-a-kernel 'np-common-noun (word-for-string kind-term)))
	  (otherwise (instantiate-mapping kind-term))))
    (neuter-&-third-person b)
    (singular b)
    (initially-indefinite b)
    b))

(define-specification-template SPECIFIC-INSTANCE-OF-A-KIND
			       (kind-term)
  (let ((b (general-np)))
    (set-bundle-head
      b (typecase kind-term
	  (word   (make-a-kernel 'np-common-noun kind-term))
	  (string (make-a-kernel 'np-common-noun (word-for-string kind-term)))
	  (otherwise (instantiate-mapping kind-term))))
    (neuter-&-third-person b)
    (singular b)
    (always-definite b)
    b))


(define-specification-template NON-COUNT-NOUNS
			       (kind-term)
  (let ((b (general-np)))
    (set-bundle-head
      b (typecase kind-term
	  (word   (make-a-kernel 'np-common-noun kind-term))
	  (string (make-a-kernel 'np-common-noun (word-for-string kind-term)))
	  (otherwise (instantiate-mapping kind-term))))
    (neuter-&-third-person b)
    (singular b)
    (no-determiner b)
    b))


;#### Specializations

(define-specification-template one-object-described-by-its-kind (kind-term)
  (let ((b (general-np)))
    (set-bundle-head
      b (typecase kind-term
	  (word   (make-a-kernel 'np-common-noun kind-term))
	  (string (make-a-kernel 'np-common-noun (word-for-string kind-term)))
	  (otherwise (instantiate-mapping kind-term))))
    (neuter-&-third-person b)
    (singular b)
    (initially-indefinite b)
    b))


;################  NPs built on names
;;  these are variations of templates showing different
;;parameterizations and the use of  subroutines

(define-specification-template named-object (name gender)
  (let ((b (general-np) ))
    (set-bundle-head
      b
      (if (specificationp name)
	  name
	  (make-a-kernel 'np-proper-name name)))
    (singular b)
    (set-gender-accessory b gender)
    (no-determiner b)
    b))


(define-specification-template named_third-person (name)
;  "intended as a subroutine"
  (let ((k (make-a-kernel 'np-proper-name name))
	(b (make-a-bundle 'general-np)))
    (set-bundle-head b k)
    (third-person b)
    (no-determiner b)
    (singular b)
    b))

(define-specification-template named-individual (name gender)
  (let ((b (funcall-template 'named_third-person name)))
    (singular b)
    (set-gender-accessory b gender)
    b))

;;;################  these two have obsolete modularities ???

(define-specification-template specific-individual_identified-by-its-kind
			       (kind-term
				person number gender
				determiner-policy )
  (let ((b (general-np)))
    (set-bundle-head b (if (specificationp kind-term)
			   kind-term
			   (instantiate-mapping kind-term)))
    (add-accessory b :person person)
    (add-accessory b :number number)
    (add-accessory b :gender gender)
    (add-accessory b :determiner-policy determiner-policy)
    b))


(define-specification-template specific-individual_identified-by-name
			       (name
				number
				gender)
  (let ((k (make-a-kernel 'np-proper-name name))
	(b (general-np)))
    (set-bundle-head b k)
    (add-accessory b :number number)
    (add-accessory b :gender gender)
    (add-accessory b :person 'third)
    (add-accessory b :determiner-policy 'no-determiner)
    b))





(define-specification-template specialize-description
			       (specification-for-item-being-described
				specification-for-added-description)
  (add-specializing-descriptor
    specification-for-added-description
    specification-for-item-being-described)
  specification-for-item-being-described)


(define-specification-template reference (object rspec)
    "Only plausibily used in a stand-along demo when one want to specify
     explicity what the referent of some specification is to be.
     E.g. for testing pronouns."
  (link-to-underlying-object rspec (underlying-object object))
  rspec)


;################################################################
;  `wrapper' templates for the different kinds of eventualities
;################################################################

(define-specification-template ongoing-state-of-affairs
			       (state-type)
  (let ((k state-type)  ;;shouldn't we check whether state-type is a specification? -**-ps
	(b (make-a-bundle 'general-clause)))
    (set-bundle-head b k)
    (present-tense   b)
    (unmarked-clause b)
    b ))


(define-specification-template  ongoing-process (event-type)
  (let ((k (instantiate-mapping event-type))
	(b (make-a-bundle      'general-clause)))
    (set-bundle-head b k)
    (progressive     b)  ;;ordering of these two is crucial - fix this!
    (present-tense   b)
    (unmarked-clause b)
    b ))


;################################################################
;               Events anchored in a situation
;################################################################

;
; Prepackaged compositions of an eventuality and a clause-creator
;

(define-specification-template predication-of-a-simple-property__ongoing
			       (object property)
  (funcall-template 'ongoing-state-of-affairs
		    (funcall-template 'predication-of-a-simple-property
				      (instantiate-mapping object)
				      (instantiate-mapping property))))


;################################################################
;                   Sentence operators
;################################################################

(define-specification-template  not (bundle)
  ;; this assumes that its argument has been mapped to an specification
  ;; already, which is out of sync with the other templates.  Maybe that's
  ;; because this one really does feel like more of an operator ??
  (when (not (eq (name (bundle-type bundle))
		 'general-clause))
    (mbug "The template NOT is being applied to the bundle ~A, which ~
           isn't a general-clause" bundle))

  (add-accessory bundle :negate)
  bundle)
