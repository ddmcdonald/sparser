;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1996  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "receptor"
;;;   Module:  "model:sl:NIH:"
;;;  version:  August 1996

;; started 7/22/96. Fixed mistake in realization/primitive syntax in category
;; definition 8/4.

(in-package :sparser)

#| phrase forms seen so far:
      "the PDGF beta-receptor"
      "the beta PDGF receptor"  
|#


;;;---------------
;;; ancilary type
;;;---------------

(define-category  greek-letter
  :instantiates self
  :specializes nil
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:word name))

(define-individual 'greek-letter
  :name "alpha")

(define-individual 'greek-letter
  :name "beta")


;;;--------------
;;; primary type
;;;--------------

(define-category  receptor
  :instantiates self
  :specializes nil
  :binds ((type . greek-letter)
          (on-protein . protein))
  :index (:temporary :sequential-keys type on-protein)
  :realization (:common-noun "receptor"))


;; There should be a tree-family for this of course, but rather than build the
;; variant now, I'll just run out the rules individually.

(def-cfr receptor ("-" receptor)
  :form np-head
  :referent (:daughter right-edge))

(def-cfr receptor (greek-letter receptor)
  :form n-bar
  :referent (:instantiate-individual receptor
             :head right-edge
             :bind (type left-edge)))

(def-cfr receptor (gene/protein receptor)
  :form n-bar
  :referent (   ;; :instantiate-individual receptor  -see note
             :head right-edge
             :bind (type left-edge)))

;; Note: This scheme isn't going to work for "the beta PDGF receptor"
;; because the gene/protein + receptor rule doesn't instantiate an individual.
;; If it did, then in the standard (most frequent) case ("the PDGF beta-receptor")
;; we'd get a second individual built on top of the first and without extending
;; things (perhaps I should, the question is quite how) we'd lose the information
;; about the type.


;;;---------
;;; mutants
;;;---------

;; "A mutant PDGF beta-receptor in which Tyr-579 was replaced with phenylalanine"

(define-category  mutated-receptor
  :instantiates self
  :specializes receptor
  :binds ((receptor-type . receptor)
          (change))
  :index (:temporary :sequential-keys receptor-type change))
  ;; ditto on the tree-family - though in this case I'm less sure about wht
  ;; generalizations should be considered.


;; Note that the edge doesn't have to have the same label (category) as the
;; edge, and that we'll gain coverage in our pattern space if we stick with
;; a smallish set of syntactic labels while letting the semantic realm
;; be much more varigated.

(def-cfr receptor ("mutant" receptor)
  :form n-bar
  :referent (:instantiate-individual mutated-receptor
             ;; :head right-edge
             :bind (receptor-type right-edge)))
  


