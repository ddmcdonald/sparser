;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014 SIFT LLC. All Rights Reserved
;;;
;;;    File: "taxonomy"
;;;  Module: "grammar/model/sl/biology/
;;; version: October 2014

;; Lifted from mechanics 9/8/14. Tweaks through 10/29/14.
;; 11/9/14 Bunch of reworking on bio taxonomy, still a work in progress, bio-conditions, bio-locations, species
;; added step for biology (was defined in comlex), bio-variant for "form of <protein>", protein-segment for "G-dommain" and G1-box
;; RJB 12/14/2014 add cell-line (need to deal with this better)
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
  :documentation "No content by itself, provides a common parent
    for 'processing', 'ubiquitization', etc. that may be the basis
    of the grammar patterns.")
(define-category pathway
  :specializes bio-process
  :instantiates :self
  :index (:permanent :key name)
  :lemma (:common-noun "pathway")
  :realization (:common-noun name))

(define-category step
  :specializes bio-process
  :instantiates :self
  :index (:permanent :key name)
  :binds ((pathway pathway))
  :lemma (:common-noun "step")
  :realization (:common-noun name))

(define-category study-bio-process
  :specializes bio-process
  :instantiates :self
  :lemma (:common-noun "study")
  :realization (:common-noun name))

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
  :specializes physical-object  ;; sweeps a lot under the rug
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
;;  :rule-label bio-entity
  :index (:permanent :key name)
  :lemma (:common-noun "protein")
  :realization (:common-noun name))

(define-category bio-variant ;; not sure this is the correct term, but intended for things like "forms of ras"
  :specializes bio-entity
  :instantiates :self)

(define-category protein-segment ;; not sure this is the correct term, but intended for things like the G1 box and the G-domain
  :specializes bio-entity
  :instantiates :self)

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
  :realization (:common-noun name))        
  
(define-category enzyme ;; what's the relationship to kinase?
  :specializes protein
  :instantiates :self
;; :rule-label bio-entity
  :lemma (:common-noun "enzyme")
  :realization (:common-noun name))

(define-category kinase
  :specializes enzyme
  :instantiates :self
  :bindings (uid "GO:0016301") ;; "kinase activity"
;;  :rule-label bio-entity
  :index (:permanent :key name)
  :lemma (:common-noun "kinase")
  :realization (:common-noun name))

(define-category bio-context
  :specializes bio-entity)

(define-category bio-condition
  :specializes bio-context
  :instantiates self
  :index (:permanent :key name))

(define-category disease 
  :specializes bio-condition
  :instantiates self
  :index (:permanent :key name)
  :lemma (:common-noun "disease")
  :realization (:common-noun name))

(define-category cancer 
  :specializes disease
  :instantiates self
  :index (:permanent :key name)
  :lemma (:common-noun "cancer")
  :realization (:common-noun name))

(define-category melananoma 
  :specializes cancer
  :instantiates self
  :index (:permanent :key name)
  :lemma (:common-noun "melanoma")
  :realization (:common-noun name))


;; Rusty: if you define a category with -no- parameters
;; you get a simple category data structure that, e.g., you can't
;; inherit from. Most form categories are "simple".

                 
(define-category  in-bio-condition  ;; "in cancer, in physiological conditions"
  :instantiates self
  :specializes bio-context
  :binds ((place)
          (functor :primitive word)) ;;  
  :realization (:tree-family content-pp
                 :mapping ((type . :self)
                           (articulator . functor)
                           (item . place)
                           (pp . :self)
                           (preposition . ("in" "under"))
                           (complement . bio-condition))))

(define-category bio-location 
  :specializes bio-entity
  :instantiates self
  :index (:permanent :key name))

(define-category cellular-location 
  :specializes bio-location
  :instantiates self
  :index (:permanent :key name))

(define-category cell-line
  :specializes bio-location
  :instantiates self
  :realization (:common-noun name)
  :index (:permanent :key name))


(define-category  in-bio-location  ;; "in humans, in epithelial cells, in the plasma membrane"
  :instantiates self
  :specializes bio-context
  :binds ((place)
          (functor :primitive word)) ;;  may not be too relevant
  :realization (:tree-family content-pp
                 :mapping ((type . :self)
                           (articulator . functor)
                           (item . place)
                           (pp . :self)
                           (preposition . ("in" "within" "on")) ;; what else is imortant?
                           (complement . bio-location))))


(define-category species
  :instantiates self
  :specializes bio-location
  :index (:permanent :key name)
  :lemma (:common-noun "species")
  :realization (:common-noun name))
  
(define-category bio-scalar
  :specializes bio-entity
  :documentation "No content by itself, but provides a common superconcept 
     for measurable things that can be increased or decreased.")

(define-category process-rate
  :specializes bio-scalar
)

(define-category bio-concentration
  :specializes bio-scalar
)


#+ignore
(define-additional-realization bio-entity
  ;; category defined in places/relational)
  (:tree-family simple-in-complement
   :mapping ((np-item . functor)
             (of-item . place)
             (np . location)
             (complement . location))))
