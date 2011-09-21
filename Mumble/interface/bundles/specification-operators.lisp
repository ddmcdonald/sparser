;;; -*- Syntax: Common-lisp; Mode: LISP; Package: MUMBLE -*-
;;; $Id: specification-operators.lisp 341 2009-12-29 17:09:23Z dmcdonal $

;;;  MUMBLE-86: message-level;operators-over-specifications

;;; Copyright (C) 1985, 1986, 1987, 1988, 1995  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2006-2009 BBNT Solutions LLC. All Rights Reserved

;; Changelog
;;   5/25/95 made sure all the functions that operate on bundles for side-effects
;;    return the bundle so that they can be cascaded.
;;   6/3 added NP/common-noun and the anonymous-individual and known-individual
;;    determiner types.  6/6 added PP-bundle

(in-package :mumble)



;################################################################
;             making the core specification object
;################################################################

(def-bundle-creator general-np ()
  ;; this provides a shell that you then add a kernel, etc. to
  (make-a-bundle 'general-np))

(def-bundle-creator unmarked-bundle ()
  (make-a-bundle 'general-bundle))


(def-bundle-creator np/common-noun (common-noun)
  (let ((b (general-np))
        (k (make-a-kernel 'np-common-noun common-noun)))
    (set-bundle-head b k)
    b ))

(def-bundle-creator np/pronoun (pronoun)
  (let ((b (unmarked-bundle))
        (k (make-a-kernel 'pronoun   ;; it's a single-choice
                          pronoun)))
    (set-bundle-head b k)
    b ))



(def-bundle-creator pp-bundle (prep lspec-for-complement)
  (when (stringp prep)
    (setq prep (word-for-string prep 'preposition)))
    
  (let ((b (unmarked-bundle))
        (k (make-a-kernel 'prepositional-phrase
                          prep lspec-for-complement)))
    (set-bundle-head b k)
    b ))




;################################################################
;                   Operators over Bundles
;################################################################


;################  Setting NP Accessories ################

(def-bundle-operator  neuter-&-third-person  (np-bundle)
  (add-accessory np-bundle :gender 'neuter)
  (add-accessory np-bundle :person 'third)
  np-bundle)

(def-bundle-operator  third-person  (np-bundle)
  (add-accessory np-bundle :person 'third)
  np-bundle)

(def-bundle-operator  singular  (np-bundle)
  (add-accessory np-bundle :number 'singular)
  np-bundle)

(def-bundle-operator  plural  (bundle)
  (add-accessory bundle :number 'plural)
  bundle)

(def-bundle-operator  proper-NAME  (bundle)
  (add-accessory bundle :proper-name)
  bundle)

(def-bundle-operator set-gender-accessory (np-bundle gender-name)
  (add-accessory np-bundle :gender gender-name)
  np-bundle )



;################ Setting Clause Accessories ################

(def-bundle-operator present-TENSE (bundle)
  (add-accessory bundle :tense-modal 'present)
  bundle )

(def-bundle-operator past-tense (bundle)
  (add-accessory bundle :tense-modal 'past)
  bundle )

(def-bundle-operator past (bundle)
  (add-accessory bundle :tense-modal 'past)
  bundle )

(def-bundle-operator future-tense (bundle)
  (add-accessory bundle :tense-modal "will")
  bundle )

(def-bundle-operator progressive (bundle)
  (add-accessory bundle :progressive)
  bundle )

(def-bundle-operator had (bundle) ;; adds have+en
  (add-accessory bundle :perfect)
  bundle )

(def-bundle-operator unmarked-clause (bundle)
  (add-accessory bundle :unmarked)
  bundle )

(def-bundle-operator command (bundle)
  (add-accessory bundle :command)
  bundle )

(def-bundle-operator question (bundle)
  (add-accessory bundle :question)
  bundle )

(def-bundle-operator negate (bundle)
  (add-accessory bundle :negate)
  bundle )

;################  Setting NP Heads  ################

(def-bundle-operator headed-by-a-common-noun  ( cn-source np-bundle )
  (let ((postprocessed-cn-source
	  (etypecase  cn-source
	    (specification  cn-source)
	    (string  (word-for-string cn-source)))))

  (set-bundle-head postprocessed-cn-source np-bundle)
  np-bundle))


;##################################################
;  CONJUNCTION ACCESSORIES FOR CONJUNCTION BUNDLES


(def-bundle-operator conjunction (bundle conj)
  (add-accessory bundle
		 :conjunction
		 (label-named conj))
  bundle )

;################ Setting Determiner Policies ################

(def-bundle-operator initially-indefinite (np-bundle)
  (add-accessory np-bundle
		 :determiner-policy
		 'indefinite-first-mention_definite-subsequent-mentions)
  np-bundle )


(def-bundle-operator always-definite (np-bundle)
  (add-accessory np-bundle
		 :determiner-policy
		 'always-definite)
  np-bundle )


(def-bundle-operator anonymous-individual (np-bundle)
  (add-accessory np-bundle
		 :determiner-policy
		 'anonymous-individual)
  np-bundle )


(def-bundle-operator known-individual (np-bundle)
  (add-accessory np-bundle                                       
		 :determiner-policy
		 'known-individual)
  np-bundle )


(def-bundle-operator no-determiner (np-bundle)
  (add-accessory np-bundle
		 :determiner-policy
		 'no-determiner)
  np-bundle )


;################  Adding Further-Specifications ################

(def-bundle-operator add-specializing-descriptor  (descriptor np-bundle)
  (add-further-specification np-bundle
			     descriptor
			     (attachment-class-named
			         'restrictive-modifier))
  np-bundle)
