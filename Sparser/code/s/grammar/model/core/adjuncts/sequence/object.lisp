;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1995,2013-2021 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "grammar;model:core:adjuncts:sequence:"
;;;  version:  February 2021

;; initiated 4/9/91 v1.8.2
;; 0.1 (12/15/92 v2.3) setting up for new semantics
;; 0.2 (5/27/94) fleshed it out with def-forms, rdata, and autodef
;;     (9/12/95) tweeked the autodef.  11/15 fixed a typo in them
;; 0.3 (6/6/13) Rebuilt the def form in the modern class-centric idiom. 
;;     (7/1/13) Changed the leading bracket on determiner case to be
;;      ].quantifier, otherwise it messed up on "the last ..."
;;     (7/10/13) modified sequencer and define-sequencer/preposition to 
;;     incorporate interval relations.
;; 0.4 (5/28/14) Rebuilding it in terms of categories rather than 
;;      individuals. (5/30/14) Elaborated the call to define-function-term
;;      and put in the needed form rules

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category sequencer
  :instantiates  modifier
  :specializes modifier
  :binds ((word :primitive word)
          (relation :primitive word)) ;;added this variable in for interval relationships
  :index (:key name :permanent)
  :realization (:word name))

;;;----------------
;;; defining forms
;;;----------------

#| For the purpose of introducing brackets we need to subcategorize
   these into two sorts, roughly determiners and prepositions. |#

;;--- determiners (now actually adjectives

(defun define-sequencer/adjective (string &key category documentation)
  (define-function-term string 'adjective
    :super-category 'sequencer
    :rule-label 'sequencer
    :discriminator 'sequence
    :brackets (list ].quantifier .[np )
    :tree-families '(generic-np-premodifier)))


;;--- prepositions

;; 10/11/16 moved rules to syntax/syntactic-rules.lisp
;; for "before", "after" as bare categories

(defun define-sequencer/preposition (string)
  "Define a specialization of sequencer for this case. But just
   define the string as a vanilla preposition. The and individual
   for the specialization of sequencer is the referent -- the same
   pattern as we use with quantifiers."
  (declare (special *prepositional-brackets*))
  (let* ((word (or (resolve string)
                   (define-function-word string
                       :brackets *prepositional-brackets*)))
         (category-name (name-to-use-for-category string)))
    
    (let* ((form `(define-category ,category-name
                    :specializes ,category::sequencer
                    :instantiates :self
                    :index (:permanent :key word)
                    :bindings (word ,word)))
           (category (eval form)))
      
      (let* ((object
              (or (find-individual category-name :word word)
                  (make-an-individual category-name :word word)))
             (cfr (def-cfr/expr category (list word)
                    :form 'preposition
                    :referent object)))
        (make-corresponding-mumble-resource word :preposition object)
        (add-rule cfr object)
        object ))))


;;--- semantically special prepositions

(define-category relative-position
  :specializes sequencer
  :documentation "Tagging category. These operate more like subordinate conjunctions
 in that they are operators refering to the time of the perdurant in a clause
 ('before it gets too dark') or over time-oriented NPs ('before lunch').
 The temporal force of the category is the same in both cases (or close enough)
 and substantive question is where and how these two kinds of constructions
 (pp vs subordinate-clause) are sorted out. We could try disambiguating two edges
 over the word, or we could get tricky in the rule competition, or we could
 come up with a new part of speech label and adjust the rules to fix.
 See QPLS 9.38 & 14.12 for the discussion of the grammar")

(defun define-relative-position-preposition (string)
  "Among those choices this is opting to pin the terms to one reading (the one
   that wants to front clauses). It is implicitly demanding that we state the
   pp-forming cases with a new set of rules. In both cases the complements
   are associated with time and sequence, and anything that shunts them through
   that sort of check would be a good thing."
  (define-function-term string 'subordinate-conjunction
    :super-category 'relative-position))

