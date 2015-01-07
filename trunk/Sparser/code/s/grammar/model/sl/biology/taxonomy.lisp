;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014 SIFT LLC. All Rights Reserved
;;;
;;;    File: "taxonomy"
;;;  Module: "grammar/model/sl/biology/
;;; version: December 2014

;; Lifted from mechanics 9/8/14. Tweaks through 10/29/14.
;; 11/9/14 Bunch of reworking on bio taxonomy, still a work in progress, 
;;bio-conditions, bio-locations, species
;; added step for biology (was defined in comlex), 
;; bio-variant for "form of <protein>", protein-segment for "G-dommain" and G1-box
;; RJB 12/14/2014 add cell-line (need to deal with this better)
;; 12/30/14 Reorganized to readability. Moved pathway to phenomena.lisp
;; 1/1/2015 fix (?) taxonomy above protein-family, to make it a sub-category of molecule
;; 1/1/2015 give biological a variable bio-context, and make bio-location be a bio-context

(in-package :sparser)

;;;--------
;;; mixins
;;;--------

(define-mixin-category has-UID
  :specializes relation
  :binds ((uid)))

(define-mixin-category type-marker
  :documentation "This is mixed into selected classes
   like 'protein' or 'pathway or 'cell line' so that their
   lemmas can trigger a specific compose method
   in noun noun compounds.")

(define-mixin-category bio-scalar
     :documentation "No content by itself, but provides a common superconcept 
     for measurable things that can be increased or decreased.")

(define-mixin-category biological
  :specializes bio-scalar
  :lemma (:adjective "biological")
  :binds ((bio-context bio-context)) 
  :documentation "Strictly speaking this a mixin")

;; redefine to make this a bio-scalar
#+ignore
(define-category  measurement  ;; "10 yards"
  :specializes bio-scalar
  :instantiates self
  :binds ((units . unit-of-measure)
          (quantity  :or quantity number))
  :realization (:tree-family  quantity+kind
                :mapping ((quantity . quantity)
                          (base . units)
                          (np . :self)
                          (np-head . unit-of-measure)
                          (modifier . (number quantity))
                          (result-type . :self))))


;;;---------------------------------
;;; top of the biological hierarchy
;;;---------------------------------

(define-category bio-entity 
  :specializes physical-object  ;; sweeps a lot under the rug
  :mixins (has-UID has-name biological)
  :binds ((long-form :primitive polyword))
  :index (:permanent :key name)
  :realization (:common-noun name))

(define-category bio-process
  :specializes process
  :mixins (has-UID has-name biological)
  :realization (:common-noun name) ;; for nominal forms
  :documentation "No content by itself, provides a common parent
    for 'processing', 'ubiquitization', etc. that may be the basis
    of the grammar patterns.")





(define-category study-bio-process
  :specializes bio-process
  :instantiates :self
  :lemma (:common-noun "study")
  :realization (:common-noun name))

;;--- referents for type kinds, v.s. the particulars
;;/// Need these if we want bio-type as a label in the
;; grammar. Otherwise lemmas on categories can carry
;; the burden

;;;----------------------------------------------------
;;; categories of referents for particulars (entities)
;;;----------------------------------------------------

(define-category bio-agent
  :specializes bio-entity
  :binds ((dummy biological))
  :realization
  (:noun "agent"))

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



(define-category bio-variant ;; not sure this is the correct term, but intended for things like "forms of ras"
  :specializes molecule
  :instantiates :self)

(define-category protein-segment ;; not sure this is the correct term, but intended for things like the G1 box and the G-domain
  :specializes bio-entity
  :instantiates :self)


(define-category complex
  :specializes molecule
  :instantiates :self
  :lemma (:common-noun "complex"))

(define-category dimer
  :specializes complex
  :instantiates :self
  :lemma (:common-noun "dimer"))   

(define-category heterodimer
  :specializes dimer
  :instantiates :self
  :lemma (:common-noun "heterodimer"))  

(define-category heterodimerization
  :specializes bio-process
  :instantiates :self
  :lemma (:common-noun "heterodimerization"))






;;/// these ext aren't really entities. Consider a new
;; toplevel bio category. 

(define-category bio-context
  :specializes bio-entity)

(define-category bio-condition
  :specializes bio-context
  :instantiates self
  :index (:permanent :key name)
  :lemma (:common-noun "condition")
  :realization (:common-noun name))

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


;;--- location ///maybe it's not a bio-entity?

(define-category bio-location 
  :specializes bio-context
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
  


(define-category bio-family
  :instantiates :self
  :documentation "Familes of proteins are abstractions based
    on common properties, especially the function, of the
    members. They're talked about just like specific proteins
    are, hence making them entities"
  ;; They should be either a sub-category of protein or molecule to allow for
  ;;  selectional restrictions on PPs
  ;; as in "binds to RAS" where RAS is a family
  :specializes molecule
  :binds ((type bio-entity) ;; a family of what?
          (species species) ;; human? mouse?
          (members collection)
          (count number))
  :index (:permanent :key name)
  :lemma (:common-noun "family")
  :realization (:common-noun name))

(define-category protein-family
  :specializes bio-family
  ;;/// something needs fixing in the bindings decoder
  ;; since these should be simpler to write
  :bindings (type (category-named 'protein))
  :realization (:common-noun name))

(define-category human-protein-family
  :specializes protein-family
  :rule-label protein
  :bindings (species (find-individual 'species :name "human"))
  :realization (:common-noun name))




;;//// are these even "bio" at all?

(define-category process-rate
  :specializes bio-scalar
)

(define-category bio-concentration
  :specializes bio-scalar
)




#| bio-type gets an 'Inconsistent superclasses' error making
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

(define-category bib-reference
   :specializes abstract) ;; to allow "et al." to be easily ignored

(define-category article-figure
   :specializes abstract) ;; to allow "et al." to be easily ignored

(define-category article-table
   :specializes abstract) ;; to allow "et al." to be easily ignored

