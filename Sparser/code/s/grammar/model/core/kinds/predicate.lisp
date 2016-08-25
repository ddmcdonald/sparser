;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "predicate"
;;;   Module:  "model;core:kinds:"
;;;  version:  August 2016

;; Broken out of upper-model 8/23/16

(in-package :sparser)


;;;------------------------------------------------
;;;--------- subcategories of relation -------------
;;;------------------------------------------------

(define-category dependent-substrate
   :specializes relation
   ;; See dependent-of ETF and paths (exit-turnpike)
   ;; Related to feature in things.lisp
   :binds ((dependent)
           (substrate)))

#|  subcategories
(subcategories-of 'operator)
(#<ref-category PREPOSITIONAL-OPERATOR> #<ref-category MODAL-OPERATOR>
                #<ref-category QUANTIFIER> #<ref-category MODIFIER>) |#
(define-category operator
  :specializes relation
  :binds ((name :primitive word)))

(define-category predicate
  :specializes relation
  :documentation "Candidate to relace operator")



; Atributes or predicates some property of something.
; Goes with the relation modified.
(define-category modifier
  :specializes operator)

(define-category adverbial
   :specializes modifier)

(define-category modifies
  :specializes relation
  :instantiates :self
  :binds ((modifier . modifier)
          (modified)))


(define-category predication
  :specializes relation
  :binds ((predicate predicate)
          (term))
  :documentation "Represents the application of the predicate
 to one or more terms.")


