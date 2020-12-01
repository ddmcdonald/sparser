;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017-2020  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  December 2020

;; Initiated 2/17/17 to gather all of the k-function that might be
;; used into one place for better review.

(in-package :sparser)

;;;----------------------------------------------------------
;;; Generic functions for all the standard syntactic methods
;;;----------------------------------------------------------

;;--- compose

(def-k-function compose (left right)
  (:documentation "This provides a hook for co-composition or simply
   for type specialization or adding additional relations to a 'daughter'
   style rule. Expecially well suited for form rules. Can be used as
   a dispatch point for more specific binary compostions. Intended to be
   the most generic way to compose the referents of two edges."))

;;--- copula

(def-k-function apply-copula (subject copular-predicate)
  (:documentation "A hook for type-driven refinement of the
    meaning of the subject in light of what's been predicated
    of it. Default will just complete the copular predication
    by binding the open variable."))


;;--- adjectives

(def-k-function modifier+noun (modifier head)
  (:documentation  "Motivated by adjectives like 'about'. 
   Called when the modifier-creates-definite-individual or
   generic-np-premodifier ETF is used. Determines the
   referent of the edge that combines these two elements.
   The default (in adjectives.lisp) binds the 'modifier' variable
   of the head."))
;; Also used in a set of (modifiers + head) form rules
;; in syntax/adjectives.lisp


;;--- adverbs

(def-k-function modified (modifier head)
  (:documentation "Motivated by adverbs like 'just' 
   and 'almost', but could be used with adjectives or anything else.
   The default (in adjectives.lisp) binds the 'modifier' variable
   of the head."))


;;--- prepositions
  
(def-k-function analyze-pp (preposition complement)
  (:documentation "Computes the referent of a pp created
   by the  computed-pp ETF. Particular combinations can produced anything
   they want. The default is the referent of the complement, which
   is equivalent to :daughter right-edge."))


;;--- quantifiers

(def-k-function quantify (quantifier body)
  (:documentation "Provides for specializing the relationship between
   a particular category of quantifier and category of body."))


;;;---------------------------------
;;; Generic handling of adjunctions
;;;---------------------------------

;; N.b. this is just the initial draft
;; See example of use in bio;evidence-sources.lisp

(defparameter *domain-adjunctive-pp-tests* (make-hash-table :test #'equal)
  "Hash table keyed on prepositions, with values being triples of
   POBJ-type, NP-head-type and construction-function this might want
   to be done by k-methods -- DAVID -- let's review this The current
  implementation is a standin")

(defun add-domain-adjunctive-pp-rule (prep pobj-type np-head-type interpretation-function)
  (push (list pobj-type np-head-type interpretation-function)
        (gethash (pname prep) *domain-adjunctive-pp-tests*)))

(defun is-domain-adjunctive-pp? (np pp-edge)
  "Test for PPs like 'in the literature' which may be used as
   modifiers for certain classes of general (mid-level model) NPs, 
   but are domain specific -- e.g. 'the relations in the literature'"
  (loop for triple in
          (let ((prep (identify-preposition pp-edge)))
            (when (category-p prep)
                (gethash (pname prep) *domain-adjunctive-pp-tests*)))
     when (and (itypep (identify-pobj pp-edge) (car triple))
               (itypep np (second triple)))
     collect (third triple)))

(defun maybe-add-domain-adjunctive-predicate-to-phrase (np pp-edge)
  (let ((domain-adjunct-functions (is-domain-adjunctive-pp? np pp-edge))
        result)
    (loop for fn in domain-adjunct-functions
       when (setq result (funcall fn np pp-edge))
       do (return result))))



