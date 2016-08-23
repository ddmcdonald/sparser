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

; The intuitions for the notion of 'operator' come ultimately from
; logic. This is classification for properties (in this model these
; are 'qualities' to stay with the clearest current literature) like
; 'tall' or 'unusual' and for logical operators like 'not'.  
;
; Metaphysically speaking we group these together becase they are
; concepts that only pick out a thing in the world when they are
; part of a predication.  Some, like colors, are pretty vivid concepts,
; but except neurologically the world only has colored things,
; not colors qua colors. 
;
; Operationally we have the category 'operator' as the root category
; of every quality, manner, conventional operator, and so that the parser
; can have a uniform way of handling the grammatical juxtaposition
; of operators with the terms as looking up in the model for a predication 
; that that particular category of operator with that particular category
; of term ("smart demon", "not unusual", "expected outcome").
; Virtually all of the adjunction-based resources refer to something 
; that derives from operator, which goes along with the fact that adjuncts 
; are always grammatically optional.


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



; Predication is a category that exists because predicate does. It will
; usually be a mixin on a more conventinal category, but the parser can
; always make an instance of it as a 'construction of last resort' if
; the syntactic basis for the combination is definitive but there isn't
; something already available for it in the model.
;
(define-category predication
  :specializes relation
  :binds ((predicate predicate)
          (term))
  :documentation "Represents the application of the predicate
 to one or more terms.")


