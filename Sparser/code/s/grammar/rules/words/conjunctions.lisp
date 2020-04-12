;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1994,2012-2020  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:   "conjunctions"
;;;    Module:   "grammar;rules:words:"
;;;   Version:   April 2020

;; broken out from "fn words - cases" 12/17/92 v2.3.  Added some 1/11/94
;; added conjunction.] to "and" and "or" 3/17
;; 0.1 (5/12) removed conjunction.] -- solved segmentation problem better.
;;     (9/27) added "instead"
;;     (4/17/10] Added "thus"
;; 0.2 (11/22/12) reorganized the list under a simpler scheme of passing
;;      it through one function and added in a bunch from Comlex (particulary
;;      the multi-word ones). 12/4/12 Removed "only" in favor of its reading
;;      as an approximator. 8/28/14 Added "whereas"
;; 0.3 (8/31/14) Rewriting these as things that make an edge and have form
;;      labels so the new forest sweep can see them. Modeling them sort of
;;      on the way quantifiers are treated. 
;;     (10/8/15) Hooked up conjunction and subordinate-conjunction into
;;      the upper structure.

(in-package :sparser)

;;--- these augment the definitions as form categories

(define-category conjunction
  :specializes relation
  :binds ((word  :primitive word))
  :index (:permanent :key word))

(define-category subordinate-conjunction
  :specializes relation
  :binds ((word  :primitive word))
  :index (:permanent :key word))

#| Conjunction is not one of the head categories in the system
(like :common-noun or :verb), so we have to do by hand some of
the things we might otherwise have gotten for free.
  The definitive write up on the behavior of conjunctions is
in chapter 13 of the blue book, where they distinguish the
syntactic properties of three types.
  coordinators (and, or, but)
  conjuncts (yet, so, however)
  subordinators (for, so that, if, because)
|#

(defun define-conjunction (string &key
                           (brackets '( ].phrase phrase.[ ))
                           (form 'subordinate-conjunction))
  ;; Most conjunctions are subordinate conjunctions taking complements
  ;; rather than simple ones composing the phrases on their two sides
  ;; so that's the way the defaults are setup. 
  (let* ((word (define-function-word string
                 :brackets brackets
                 :form form))
         (category-name (name-to-use-for-category string))
         (superc (ecase form
                   (conjunction category::conjunction)
                   (subordinate-conjunction category::subordinate-conjunction)))
         (category (eval `(define-category ,category-name
                            :specializes ,superc
                            :instantiates :self
                            :bindings (word ,word))))
         (i (or (find-individual form :word word)
                (define-individual form :word word)))
         (cfr (def-cfr/expr category ;; lhs
                  (list word)        ;; rhs
                :form form
                :referent i)))
    (make-corresponding-mumble-resource
     word
     (if (eq form 'conjunction) :conjunction :subordinate-conjunction)
     i)
    (setf (get-rules i) (list cfr))
    i))
    

;;------- simple conjunctions

(define-conjunction "and" :form 'conjunction
  :brackets '( ].conjunction conjunction.[ ))

(define-conjunction "or"  :form 'conjunction
                    :brackets '( ].conjunction conjunction.[ ))

(define-conjunction "and/or"  :form 'conjunction
  :brackets '( ].conjunction conjunction.[ ))

;;(define-conjunction "but not"  :form 'conjunction) works more simply as a "preposition"

(define-conjunction "instead of"  :form 'conjunction)
(define-conjunction "as well as"  :form 'conjunction)




;;------- paired coordinators
;;/// How do we represent their paired-ness ?

(define-conjunction "nor"  :form 'conjunction)


(mapcar #'define-conjunction
        '("neither" ;; "nor" handle neither/nor by da rules?
          "if" "then" 
          ))



;;;------ subordinating conjunctions

(mapcar #'define-conjunction
        '("according as"
          "albeit"
          ;;"also" use version in modifiers
          "although" 
          ;; "among" prefer treatment as a preposition
          ;; "as" -- ditto
	  "as expected"
	  "as a result"
          "as far as"
          "as if"
          "as soon as"
          ;;"as well as"
          "as a consequence"
          "as though"
          "because"
          "besides"
          "but"
          "but rather"
	  "by contrast"
          ;;"consequently" -- to handle "and consequently activated RAS" preventing "activated" from being an ng-start?
          "e.g."
          "even"
          "even if"
          "except"
          "except that"
	  ;; "finally" go with position-in-process
          "for example"
          "furthermore"
          "hence"
          "however"
          "if"
          "i.e."
	  ;; "in contrast" -- like the adverb in modifiers
	  ;; "in contrast to" probably a preposition
	  ;; "in contrast with"
	  ;; "in addition to"
          "instead" 
          "inasmuch as"
          "lest"
          "moreover"
          "nevertheless"
          "on grounds that"
          "on the grounds that"
          "once"
          "otherwise"
          "prior to"
          "rather than"
          "since"
          "so"
          ;;"such as" -- in prepositions
          "such that"
	  ;; "surprisingly" use the adverb
          "than" ;; much better than we could have expected
          "therefore"
          "though"
          "till" ;; short for 'until' takes range of complements
          "thereby"
          "thus"  
          "to this end"
	  ;; "unexpectedly" go with 'intensifier' reading as an adverb
          "until"
          "until now"
          "whereas"
          "while"
          "whilst"
          "unless"  
          "until"   
          "upon"
          "whatever"
	  "when" ;; also a wh-pronoun
          "whether" ;; this is to allow "whether" to be a subordinating conjunction leading to a "whethercomp"
          ))


