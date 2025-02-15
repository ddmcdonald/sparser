;;; -*- Syntax: Common-lisp; Mode: LISP; Package: MUMBLE -*-
;;;
;;;  MUMBLE-86: interface/bundles/operators-over-specifications

;;; Copyright (C) 2015 David D. McDonald
;;; Copyright (C) 1985, 1986, 1987, 1988  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

;; Changelog:
;; 10/13/15 added more determiner cases to match set in
;; process-determiner-accessory. 

(in-package :mumble)

#| DEPRECATED -- Equivalent functionality is in the file
    interface/bundles/specification-operators.lisp |#




;################  Setting NP Heads  ##
;################################################################
;             making the core specification object
;################################################################

(defun general-np ()
  (make-a-bundle 'general-np))



;################################################################
;     Binding the specification to an Underlying Object
;################################################################

(defun link-to-underlying-object (rspec object)
  (when (specificationp rspec)
    (set-name rspec (if (symbolp object)
			object
			(intern (short-print-form object))))
    (set-underlying-object rspec object))
  rspec)



;################################################################
;                   Operators over Bundles
;################################################################


;################  Setting NP Accessories ################

(defun  neuter-&-third-person  (np-bundle)
  (add-accessory np-bundle :gender 'neuter)
  (add-accessory np-bundle :person 'third)
  np-bundle)

(defun  third-person  (np-bundle)
  (add-accessory np-bundle :person 'third)
  np-bundle)

(defun  singular  (np-bundle)
  (add-accessory np-bundle :number 'singular)
  np-bundle)

(defun  plural  (bundle)
  (add-accessory bundle :number 'plural)
  bundle)

(defun  proper-name  (bundle)
  (add-accessory bundle :proper-name)
  bundle)

(defun set-gender-accessory (np-bundle gender-name)
  (add-accessory np-bundle :gender gender-name))



;################ Setting Clause Accessories ################

(defun present-tense (bundle)
  (add-accessory bundle :tense-modal 'present))

(defun past-tense (bundle)
  (add-accessory bundle :tense-modal 'past))

(defun future-tense (bundle)
  (add-accessory bundle :tense-modal "will"))

(defun progressive (bundle)
  (add-accessory bundle :progressive))

(defun unmarked-clause (bundle)
  (add-accessory bundle :unmarked))

(defun command (bundle)
  (add-accessory bundle :command))

(defun question (bundle)
  (add-accessory bundle :question))

(defun negate (bundle)
  (add-accessory bundle :negate))

;################  Setting NP Heads  ################

(defun  headed-by-a-common-noun  ( cn-source np-bundle )
  (let ((postprocessed-cn-source
	  (etypecase  cn-source
	    (specification  cn-source)
	    (string  (word-for-string cn-source)))))

  (set-bundle-head postprocessed-cn-source np-bundle)
  np-bundle))


;##################################################
;  CONJUNCTION ACCESSORIES FOR CONJUCNTION BUNDLES


(defun conjunction (bundle conj)
  (add-accessory bundle
		 :conjunction
		 (label-named conj)))

;################ Setting Determiner Policies ################

(defun initially-indefinite (np-bundle)
  (add-accessory np-bundle
		 :determiner-policy
		 'indefinite-first-mention_definite-subsequent-mentions)
  np-bundle)

(defun always-definite (np-bundle)
  (add-accessory np-bundle
		 :determiner-policy
		 'always-definite)
  np-bundle)

(defun no-determiner (np-bundle)
  (add-accessory np-bundle
		 :determiner-policy
		 'no-determiner)
  np-bundle)

(defun anonymous-individual (np-bundle)
  (add-accessory np-bundle
		 :determiner-policy
		 'anonymous-individual)
  np-bundle)

(defun known-individual (np-bundle)
  (add-accessory np-bundle
		 :determiner-policy
		 'known-individual)
  np-bundle)

(defun kind (np-bundle)
  (add-accessory np-bundle :determiner-policy 'kind)
  np-bundle)

;################  Adding Further-Specifications ################

(defun add-specializing-descriptor  (descriptor np-bundle)
  (add-further-specification np-bundle
			     descriptor
			     (attachment-class-named
			         'restrictive-modifier))
  np-bundle)
