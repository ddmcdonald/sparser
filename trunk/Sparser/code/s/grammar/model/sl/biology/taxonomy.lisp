;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014 SIFT LLC. All Rights Reserved
;;;
;;;    File: "taxonomy"
;;;  Module: "grammar/model/sl/biology/
;;; version: October 2014

;; Lifted from mechanics 9/8/14. Tweaks through 10/29/14.

(in-package :sparser)

;;;---------------------------
;;; Taxonomy and simple types
;;;---------------------------

(define-category has-UID
  :specializes relation
  :binds ((uid)))


(define-category bio-process
  :specializes process
  :mixins (has-UID has-name)
  :realization (:common-noun name) ;; for nominal forms
  :documentation "No content by itself, provides a common paraent
    for 'processing', 'ubiquitization', etc. that may be the basis
    of the grammar patterns.")



;;--- referents for type kinds, v.s. the particulars
;;/// Need these if we want bio-type as a label in the
;; grammar. Otherwise lemmas on categories can carry
;; the burden

#| Gets an 'Inconsistent superclasses' error making
   it's clos shadow class. Have to look up the problem

 has-name is a relation, as it has-UID, so the def-class
 superc list is (abstract relation relation) 
 Relation is a subclass of abstract, so it's (super sub sub)


(define-category bio-type
  :specializes abstract
  :mixins (has-UID has-name)
  :index (:permanent :key name)
  :realization (:common-noun name))

(define-individual 'bio-type
  :name "molecule")

(define-individual 'bio-type
  :name "amino acid")

(define-individual 'bio-type
  :name "protein")

(define-individual 'bio-type
  :name "kinase")
|#


;;--- categories of referents for particulars (see def-bio below)

(define-category bio-entity 
  :specializes endurant  ;; sweeps a lot under the rug
  :mixins (has-UID has-name)
  :binds ((long-form :primitive polyword))
  :index (:permanent :key name)
  :realization (:common-noun name))


(define-category molecule
  ;; makes more sense for ATP than H20, but not worrying about whether
  ;; we're doing organic or inorganic chemistry.
  :specializes bio-entity
  :instantiates :self
  :bindings (uid "CHEBI:36357")
  :index (:permanent :key name)
  :lemma (:common-noun "molecule")
  :realization (:common-noun name))

;; 'small molecule' should be done with a def-subtype
;;/// Start with define-sybtype-derived-category
(define-category small-molecule
  ;; makes more sense for ATP than H20, but not worrying about whether
  ;; we're doing organic or inorganic chemistry.
  :specializes molecule
  :instantiates :self
  ;; :bindings (uid "")
  :index (:permanent :key name)
  :lemma (:common-noun "small molecule")
  :realization (:common-noun name))

(define-category amino-acid
  :specializes molecule
  :instantiates :self
  :binds ((three-letter-code :primitive word)
          (one-letter-code :primitive word))
  :index (:permanent :key name)
  :lemma (:common-noun "amino acid") ;;/// optionally-hyphenated pw
  :realization (:common-noun name))

(define-category nucleotide
  :specializes molecule
  :instantiates :self
  :index (:permanent :key name)
  :lemma (:common-noun "nucleotide")
  :realization (:common-noun name))

(define-category protein
  :specializes molecule
  :instantiates :self
  :bindings (uid "CHEBI:36080")
  :rule-label bio-entity
  :index (:permanent :key name)
  :lemma (:common-noun "protein")
  :realization (:common-noun name))


;;/// will have a substantial model, so deserves its own
;; file. This is just to ground "encode"
(define-category gene
  :specializes bio-entity ;;// case in point
  :instantiates :self
  :binds ((:expresses . protein))
  :index (:permanent :key name)
  :lemma (:common-noun "gene")
  :realization (:common-noun name))

(define-category oncogene
  :specializes gene 
  :instantiates :self
  :lemma (:common-noun "oncogene")
  :realization (:common-noun name)
)        
  
(define-category kinase
  :specializes protein
  :instantiates :self
  :bindings (uid "GO:0016301") ;; "kinase activity"
  :rule-label bio-entity
  :index (:permanent :key name)
  :lemma (:common-noun "kinase")
  :realization (:common-noun name))

(define-category enzyme ;; what's the relationship to kinase?
  :specializes protein
  :instantiates :self
  :rule-label bio-entity
  :lemma (:common-noun "enzyme")
  :realization (:common-noun name))


