;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "taxonomy"
;;;  Module: "grammar/model/sl/biology/
;;; version: February 2015

;; Lifted from mechanics 9/8/14. Tweaks through 10/29/14.
;; 11/9/14 Bunch of reworking on bio taxonomy, still a work in progress, 
;;bio-conditions, bio-locations, species
;; added step for biology (was defined in comlex), 
;; bio-variant for "form of <protein>", protein-segment for "G-dommain" and G1-box
;; RJB 12/14/2014 add cell-line (need to deal with this better)
;; 12/30/14 Reorganized to readability. Moved pathway to phenomena.lisp
;; 1/1/2015 fix (?) taxonomy above protein-family, to make it a sub-category of molecule
;; 1/1/2015 give biological a variable bio-context, and make bio-location be a bio-context
;; added variable mutation to protein to allow new rule for protein --> (protein point-mutation) for "ubiquitin C77G"
;; /22/2015 added variables for adverb and manner to category::predicate, bi0-process
;; added process-rate and redefined the noun meaning of rate -- over-ride old meaning
;; 2/5/15 Removed mutant from the variables on protein

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
 

;;;-----------------
;;; generalizations
;;;-----------------

(define-category with-quantifier
  :specializes abstract
  :binds ((quantifier)))

(define-category biological
  :specializes with-quantifier
  :lemma (:adjective "biological")
  :binds ((context bio-context)
          (location bio-location)
          (quantifier))
  :documentation "Provides a generalization over bio entities
   and processes by being mixed into those categories")

(define-category bio-abstract
  :specializes with-quantifier
  :documentation "Provides a generalization over bio entities
   and processes by being mixed into those categories")

(define-category bio-scalar
  :specializes scalar-quality
  :mixins (biological)
  :documentation "Provides a generalization over biological and scalar")


;; Rusty -- where are we supposed to put the two numbers
;; or two molecules?  Need example. 
(define-category ratio 
  :specializes bio-scalar
  :binds ((name)(value ratio))
  :realization
  (:noun "ratio"
        :of value))

;; Rusty -- This is a strikingly bad choice of name for this
;; category. Look before you leap (model/core/kinds/*
;; Worse is that you have no examples of this being used
;; in some text so I could figure out your intention and
;; suggest an alternative. 
(define-category predicate :specializes modifier
  :mixins (biological)
  :binds ((negation)
          (adverb)
          (manner)))

(define-category molecule-state
  :specializes predicate)




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

(define-category bio-chemical-entity ;; includes all molecules and complexes
  :specializes bio-entity  ;; sweeps a lot under the rug
  :mixins (has-UID has-name biological)
  :binds ((long-form :primitive polyword))
  :index (:permanent :key name)
  :realization (:common-noun name))


(define-category bio-process
  :specializes process
  :mixins (has-UID has-name biological)
  :realization (:common-noun name) ;; for nominal forms
  :binds ((adverb)(manner))
  :documentation "No content by itself, provides a common parent
    for 'processing', 'ubiquitization', etc. that may be the basis
    of the grammar patterns.")

(define-category molecular-function 
  :specializes bio-process
  :bindings (uid "GO:0005488"))

(define-category chemical-reaction
  :specializes bio-process ;; for our purposes, since we only have biologically relevant reactions
  )

(define-category bio-thatcomp
  :specializes bio-process
  :binds ((statement bio-process))
  :documentation "Actions that take a that complement -- verbs of
     communication, demonstraction, observation. Would like to have a 
     better break-down of these -- at least for wheterh they are positive
     or negative in terms of belief state. The prefix -bio- may not be warranted,
     since these are quite general, but at the moment we are putting them below the 
     bio-processes.")

(define-category bio-method
  :specializes process
  :mixins (has-UID has-name biological)
  :realization (:common-noun name) ;; for nominal forms
  :documentation "No content by itself, provides a common parent
    for 'liquid chromatography', etc. that may be the basis
    of the grammar patterns.")




(define-category study-bio-process
  :specializes bio-process
  :instantiates :self
  :binds ((subject biological))
  :realization 
  (:noun "study"
         :of subject))



;;;----------------------------------------------------
;;; categories of referents for particulars (entities)
;;;----------------------------------------------------


(delete-noun-cfr (resolve/make "agent"))
(delete-noun-cfr (resolve/make "agents"))

(define-category bio-agent
  :specializes biological
  :binds ((dummy biological))
  :realization
  (:noun "agent"))

(define-category molecule
  ;; makes more sense for ATP than H20, but not worrying about whether
  ;; we're doing organic or inorganic chemistry.
  :specializes bio-entity ;; SBCL caught random backquote here!
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
          (one-letter-code single-capitalized-letter))
  :index (:permanent :key name)
  :lemma (:common-noun "amino acid") ;;/// optionally-hyphenated pw
  :realization (:common-noun name))

(define-category nucleotide
  :specializes molecule
  :instantiates :self
  :index (:permanent :key name)
  :lemma (:common-noun "nucleotide")
  :realization (:common-noun name))

(define-category peptide
  :specializes molecule
  :instantiates :self
;;  :rule-label bio-entity
  :index (:permanent :key name)
  :lemma (:common-noun "peptide")
  :realization (:common-noun name))

(define-category protein
  :specializes peptide  ;; this is not clearly true
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
  :specializes protein  ;; not all enzymes are proteins -- there are RNA enzymes
  :instantiates :self
;; :rule-label bio-entity
  :lemma (:common-noun "enzyme")
  :realization (:common-noun name))

(define-category kinase 
                 ;; a kinase is a molecule, not an activity -- the link to GO:0016301"
                 ;;  should be as a "telic" qualia for those molecules which are kinases
  :specializes enzyme
  :instantiates :self
  :bindings (uid "GO:0016301") ;; "kinase activity" 
;;  :rule-label bio-entity
  :index (:permanent :key name)
  :lemma (:common-noun "kinase")
  :realization (:common-noun name))
#+ignore ;; want to give kinase a FOR case
;; but how to do it and still define instances
;; (individuals) that are kinases using def-bio
;; which assigns a neme. 
(define-category kinase
  :specializes enzyme
  :instantiates :self
  :bindings (uid "GO:0016301") ;; "kinase activity"
  :binds ((process bio-process))
  :realization
  (:noun "kinase"
         :for process))


(define-category GTPase
  :specializes enzyme
  :instantiates :self
  :index (:permanent :key name)
  :lemma (:common-noun "GTPase")
  :realization (:common-noun name))

(def-synonym GTPase
   (:noun "gtpase"))


(define-category bio-variant ;; not sure this is the correct term, but intended for things like "forms of ras"
  :specializes molecule
  :instantiates :self)

(define-category protein-segment ;; not sure this is the correct term, but intended for things like the G1 box and the G-domain
  :specializes bio-entity
  :instantiates :self)


;;----- complexes

(define-category complex ;; changed -- complexes are not molecules, but associated groups of molecules, often preteins, but not always
  :specializes bio-chemical-entity
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






;;/// these next aren't really entities. Consider a new
;; toplevel bio category. 

(define-category bio-context
  :specializes bio-entity)

(define-category bio-condition
  :specializes bio-context
  :instantiates self
  :index (:permanent :key name)
  :lemma (:common-noun "condition")
  :realization (:common-noun name))

(define-category experimental-system
  :specializes bio-context
  :realization
  (:noun "system"))

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

(define-category nucleus :specializes cellular-location
  :realization 
  (:noun "nucleus" :adj "nuclear"))

(define-category cytosol :specializes cellular-location
  :realization 
  (:noun "cytosol"))



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

;;---- family

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
  :rule-label protein
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
  :rule-label protein
  :bindings (type (category-named 'protein))
  :realization (:common-noun name))

(define-category human-protein-family
  :specializes protein-family
  :rule-label protein
  :bindings (species (find-individual 'species :name "human"))
  :realization (:common-noun name))




;;//// are these even "bio" at all?

(define-category process-rate ;;(noun "rate" :super bio-scalar
  :specializes bio-scalar
  :binds ((process bio-process) (components biological))
  :realization 
  (:noun "rate"
         :of process
         :for components))

(define-category bio-concentration
  :specializes bio-scalar)







;;--- referents for type kinds, v.s. the particulars
;;/// Need these if we want bio-type as a label in the
;; grammar. Otherwise lemmas on categories can carry
;; the burden
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

