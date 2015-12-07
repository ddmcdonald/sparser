;;; -*- Syntax: Common-lisp; Mode: LISP; Package: MUMBLE -*-

;;;  MUMBLE-86: interface/bundles/specification-operators

;;; Copyright (C) 1985, 1986, 1987, 1988, 1995  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2006-2009 BBNT Solutions LLC. All Rights Reserved
;;; Copyright (c) 2015 David D. McDonald  All Rights Reserved

;; Changelog
;;   5/25/95 made sure all the functions that operate on bases for side-effects
;;    return the base so that they can be cascaded.
;;   6/3 added NP/common-noun and the anonymous-individual and known-individual
;;    determiner types.  6/6/95 added PP-base
;;   11/28/15 Complete make-over using def-accessory-operator to be
;;    type-specific definitions

(in-package :mumble)


;################################################################
;                   Operators over bases
;################################################################


;################  Setting NP Accessories ################

(def-accessory-operator  neuter-&-third-person 
  (add-accessory base :gender 'neuter)
  (add-accessory base :person 'third)
  base)

(def-accessory-operator  third-person  
  (add-accessory base :person 'third)
  base)

(def-accessory-operator  singular  
  (add-accessory base :number 'singular)
  base)

(def-accessory-operator  plural
  (add-accessory base :number 'plural)
  base)

(def-accessory-operator  proper-NAME
  (add-accessory base :proper-name)
  base)

#| With two arguments it doesn't fit the pattern
(def-accessory-operator set-gender-accessory (base gender-name)
  (add-accessory base :gender gender-name)
  base )  |#



;################ Setting Clause Accessories ################

(def-accessory-operator present-TENSE
  (add-accessory base :tense-modal 'present)
  base )

(def-accessory-operator past-tense
  (add-accessory base :tense-modal 'past)
  base )

(def-accessory-operator past
  (add-accessory base :tense-modal 'past)
  base )

(def-accessory-operator future-tense 
  (add-accessory base :tense-modal "will")
  base )

(def-accessory-operator progressive 
  (add-accessory base :progressive)
  base )

(def-accessory-operator had  ;; adds have+en
  (add-accessory base :perfect)
  base )

(def-accessory-operator unmarked-clause 
  (add-accessory base :unmarked)
  base )

(def-accessory-operator command 
  (add-accessory base :command)
  (add-dummy-subject base)
  base )

(def-accessory-operator question 
  (add-accessory base :question)
  base )

(def-accessory-operator negate 
  (add-accessory base :negate)
  base )

;################  Setting NP Heads  ################
#+ignore
(def-accessory-operator headed-by-a-common-noun  ( cn-source base )
  (let ((postprocessed-cn-source
	  (etypecase  cn-source
	    (specification  cn-source)
	    (string  (word-for-string cn-source)))))
  (set-base-head postprocessed-cn-source base)
  base))


;##################################################
;  CONJUNCTION ACCESSORIES FOR CONJUNCTION baseS

#+ignore
(def-accessory-operator conjunction (base conj)
  (add-accessory base
		 :conjunction
		 (label-named conj))
  base )  

;################ Setting Determiner Policies ################

(def-accessory-operator initially-indefinite 
  (add-accessory base
		 :determiner-policy
		 'indefinite-first-mention_definite-subsequent-mentions)
  base )


(def-accessory-operator always-definite 
  (add-accessory base
		 :determiner-policy
		 'always-definite)
  base )


(def-accessory-operator anonymous-individual 
  (add-accessory base
		 :determiner-policy
		 'anonymous-individual)
  base )


(def-accessory-operator known-individual 
  (add-accessory base                                       
		 :determiner-policy
		 'known-individual)
  base )


(def-accessory-operator no-determiner 
  (add-accessory base
		 :determiner-policy
		 'no-determiner)
  base )

(def-accessory-operator kind 
  (add-accessory base :determiner-policy 'kind)
  base)


;################  Adding Further-Specifications ################
#+ignore
(def-accessory-operator add-specializing-descriptor  (descriptor base)
  (add-further-specification base
			     descriptor
			     (attachment-class-named
			         'restrictive-modifier))
  base)
