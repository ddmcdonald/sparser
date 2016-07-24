;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "size"
;;;   Module:  "grammar/core/qualities/
;;;  version:  July 2015

;; Initiated 12/3/15, on the model of color.

(in-package :sparser)

(define-category size
  :specializes attribute-type
  :binds ((size size))
  :realization (:common-noun "size")
  :documentation "")


(define-category size-value
  :specializes attribute
  :instantiates self
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :rule-label size  ;;// would 'attribute' be more useful?
  :realization (:adjective name)
  :documentation "This is for representing the qualitative
 values for sizes. It's analogous to a measurement of
 a scalar like length. It is not attributing this size
 to some object. That is is the purpose of xxx
   In Dolce's terms, this is defining the 'region' that
 contains the possible values of a size.")


(define-category size-is
  :specializes attribute-value
  ;; pre-bind the size category to the attribute (?)
  ;;  (value size-value)
  :documentation "")

(define-category size-of
  :specializes attribute-of-entity
  ;;  (attribution . size-is)
  ;; Something about what can take a size.
  )

;;--- actual size values (move to dossier for qualities)

(defun define-size (string) ;; syntactic sugar
  (define-or-find-individual 'size-value :name string))

;; a few cases as need for trival blocks world
(define-size "big")
(define-size "little")


#| lifted from biology/terms-to-move

We could treat this a a property (inherited variable) 
on physical objects -- would benefit from a organized
notion of dimension since height/weight/etc are also
properties.
 -- "the size of the modification" (dry-run #18),
"the size of Trump's ego", "the size of the effect"

So it's not phys. obj.  It's more like if we talk about
the size of something we're imposing a perspective on it
that it's a measurable scalar. 

(define-category size :specializes abstract
  :binds ((measured-item biological))
  :realization
  (:noun "size" :of measured-item))
|#
