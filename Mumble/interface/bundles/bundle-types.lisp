;;; -*- Package: MUMBLE; Syntax: Common-lisp; Base: 10; Mode: LISP; Syntax: Zetalisp -*-
;;; $Id: bundle-types.lisp 100 2007-07-04 14:31:27Z dmcdonal $

;;; MUMBLE-86:  message-level;bundle-types

;;; Copyright (C) 1985, 1986, 1987, 1988 -- 2000  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

;; Change Log
;;  7/9/00 Added :in-focus to general-np

(in-package :mumble)

;; ChangeLog:
;;  8/99 Added minimal-bundle-driver to handle quantifier phrases.
;;  7/00 Added 

#|
(def-type BUNDLE-TYPE permanent   
  (name				"a symbol")
  (driver			"the function that executes to process the bundle")
  (accessory-list		"a list of keywords")
  )

The drivers are functions defined in the interpreters>realization file.


The accessory list of the bundle-type both define which accessories may be attached 
to that bundle type and indicate the order in which they are to be processed.  

|#

(define-bundle-type general-clause
		    clausal-bundle-driver
   accessory-list (:question
		  :tense-modal
		  :perfect
		  :progressive
		  :negate 
		     ;;the following are passive accessories (unordered)
		  :wh
		  :wh-adj
		  :command
		  :purpose-clause-object
		  :given
		  :unmarked))


(define-bundle-type discourse-unit 
		    discourse-unit-bundle-driver )

(define-bundle-type  general-np
		     general-np-bundle-driver
  accessory-list (:number
		  :person
		  :gender
		  :determiner-policy
		  :proper-name
		  :reducible
                  :in-focus))

(define-bundle-type conjunction-bundle
		    conjunction-bundle-driver
  accessory-list (:conjunction :number))


(define-bundle-type  modifier-bundle
		     modifier-bundle-driver
  accessory-list ())


(define-bundle-type general-vp
		    vp-bundle-driver
   accessory-list (:aspect
		    ;;??:negate
		    ))

;;This new bundle type was created to handle adverbial phrases
;;and other such phrases that may take further specifications
;;but are neither clauses nor nps.  

(define-bundle-type  general-bundle
		     general-bundle-driver
  accessory-list ())


;; This bundle is the smallest container we can have for a kernel.
;; It is intended for phrases that are never modified and take
;; no inflection, e.g., for our present (8/99) analysis of quantifier
;; phrases

(define-bundle-type minimal-bundle
                    minimal-bundle-driver
  accessory-list ())

