;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "taxonomy"
;;;  Module: "grammar/model/sl/biology/
;;; version: January 2017

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
;; 2/5/15 Removed mutant from the variables on protein.
;; 4/15/15 Moved out a flock of verbs to verb1. There were duplications.
;; 4/16/2015 bunch of changes to make protein-family a protein in most
;;  senses -- it specializes protein, but has some special variables like
;;  :members. Also give protein and human-protein-family a sbcat frame for "in"
;; 4/23/15 Lifted out the dimer classes to phenomena to have all the parts
;;  in the same place. 
;; 4/24/2015 added mixins for bio-thatcomp and bio-whethercomp 
;; 4/27/2015 remoe definition of amino-acid and move to that file, and add defnitions for
;;  nominal for "loading"
;; 4/30/2015 bunch of changes to partially merge biopax3/reactome
;;  categories with taxonomy introduce new subcategories of location —
;;  molecular-location (for site and residue), cellular-location (organelles
;;  within a cell), non-cellular-location (for things like cell-line, species, organism)
;; 5/15/2015 substantial revision in taxonomy to drastically reduce the
;;  overloading of bio-process, provide bio-rhetorical as a marker for verbs
;;  that talk about belief and truth, bio-event for actions that are not
;;  bio-processes in the OBO sense, bio-relation for things like contain,
;;  sonstitute, etc.  concomitant revision for things like thatcomp and whethercomp
;; 5/16/2015 add in all the cellular locations shown in the MITRE ras1 corpus, including their GO identifiers
;; 5/30/2015 Rename poorly named "predicate" to "bio-predication" and update dependencies
;; 6/8.2015 added cyclic and plasmid definitions
;; 7/6/2015 New merge-classes post-translational-modification and phosphorylation-modification
;; 10/15/2015 moved post-translational-modification and phosphorylation-modification to phenomena
;;   make it easier to find processes that are handled the same way wrt MITRE index cards
;; 9/22/15 More colapsing of cases,

(in-package :sparser)

;;;------------------------
;;; non-referential things
;;;------------------------

(define-category blocked-category :specializes abstract)

(define-category over-ridden)
;; this is used only for over-riding inherited variables


;;;--------
;;; mixins
;;;--------

(define-mixin-category type-marker
  :documentation "This is mixed into selected classes
   like 'protein' or 'pathway or 'cell line' so that their
   lemmas can trigger a specific compose method
   in noun noun compounds.")

;;--- labels needed by various sources / exports

(define-mixin-category reactome-category
  :mixins (has-name)
  :binds ((displayname)
           (reactome-id)))

(define-mixin-category in-ras2-model
  :binds ((ras2-model)))


;;;-------------------------------
;;; complements (mostly mixed in)
;;;-------------------------------

(define-mixin-category bio-complement
  :specializes linguistic
  :binds ((statement (:or bio-process molecule-state be
                          bio-predication predication
                          bio-method relation bio-rhetorical
                          there-exists
			  event-relation)))
  :documentation "Common parent to the other types of biological 
    complements to share the same standard set of bindings.")

(define-mixin-category bio-thatcomp
  :specializes bio-complement
  :realization (:thatcomp statement)
  :documentation "Actions that take a that complement -- verbs of
     communication, demonstration, observation. Would like to have a
     better break-down of these -- at least for whether they are
     positive or negative in terms of belief state. The prefix -bio-
     may not be warranted, since these are quite general, but at the
     moment we are putting them below the bio-processes.")
  
(define-mixin-category bio-whethercomp
  :specializes bio-complement
  :realization (:whethercomp statement))
 
(define-mixin-category bio-ifcomp  :specializes bio-complement
  :realization (:ifcomp statement))


;;;--------------
;;; 'biological'
;;;--------------

(define-category biological :specializes top
  :documentation "Provides a generalization over bio entities
   and processes by being mixed into those categories, Because
   it spans such a wide range of things it will not fit into
   an upper-model category. It's real job is to contribute slots."
  :mixins (with-quantifier)
  :binds ((context (:or bio-context
                        bio-mechanism ;; for pathways -- they are context, not manner
                        experiment-data))
          (cell-line cell-line)
          (cell-type cell-type)
          (organ bio-organ)
          (preparation preparation)
          (location non-cellular-location)
          (cellular-location cellular-location)
          (species species) ;; human? mouse?
          (non-cellular-location non-cellular-location)
          (examples biological)
          (excluding biological) ;; nucleotide-free Ras but not GTP-loaded Ras
	  (modifier)
	  (like biological)
	  (unlike biological)
          )
  :realization
    (:adj "biological"
     :at cellular-location
     :from cell-line
     :from cell-type         
     :in cell-line
     :in cell-type
     :in cellular-location
     :in context
     :in non-cellular-location
     :in organ
     :in preparation
     :in species
     :m cellular-location
     :m non-cellular-location
     :m cell-type
     :m cell-line
     :m context
     ;;:of variant
     :on cellular-location
     :such\ as examples
     :but\ not excluding
     :under context
     :upon cellular-location
     :with context
     :within cellular-location
     :like like
     :unlike unlike ))


(define-category bio-abstract :specializes abstract
   :mixins (biological))


;;;-----------------
;;; bio-predication
;;;-----------------

(define-category bio-predication :specializes state 
  :mixins (biological)
  ;;/// This category is unlikely to be doing interesting
  ;; work for us. Need to review where it's used. 
  ;; Made it inherit from event because that provided
  ;; almost all the slots.
  ;; Aspect was annotated with "will likely be useful"
  :binds ((subject (:or biological visual-representation))
          (as-comp as-comp)
          (certainty certainty))
  :realization
    (:s subject
     :as-comp as-comp))


;;--- Quality

(define-category bio-quality :specializes quality
  :mixins (biological
           temporally-localized) ;; provides time, certainty modifiers
  :binds ((subject biological))
  :realization
    (:of subject))

(define-category bio-scalar
;;  :specializes bio-quality
  :specializes scalar-quality ;; deprecated
;;  :mixins (scalar)
  :mixins (bio-quality)
  :documentation "Provides a generalization over 
    biological and scalar-quality"
  :binds ((measured-item biological))
  :realization
    (:of measured-item))


;;;--------------
;;; measurements
;;;--------------

(define-mixin-category with-measurement
  :binds ((at-measurement (:or bio-concentration measurement)) 
          (extent (:or amount measurement bio-scalar)))
  :realization
     (:at at-measurement
      :to extent))

(define-category bio-measurement :specializes measurement
  :mixins (bio-quality)
  :documentation "Provides a generalization over biological and measurement")

(define-category value :specializes measurement
   :realization (:noun "value")) ;; for "a high value"

(define-category ratio  :specializes measurement
 :binds ((measured hyphenated-triple)
	 (ratio (:or ratio number-colon-number))
	 (divisor biological))
   :realization
     (:noun "ratio"
      :m measured
      :of ratio
      :to divisor))


;;;------------
;;; bio-entity
;;;------------

(define-category bio-entity  :specializes physical-object  ;; sweeps a lot under the rug
  :mixins (has-UID has-name biological)
  :binds ((produced-by bio-method))
  :instantiates :self
  :binds ((long-form :primitive polyword))
  :index (:permanent :key name)
  :realization (:common-noun name
                :from produced-by))

;; collections
(define-category bio-grouping :specializes bio-entity
  :binds ((group-members bio-entity))
  :realization
  (:noun "group"
         :of group-members))

(def-synonym bio-grouping (:noun "set"))
(def-synonym bio-grouping (:noun "collection"))
(def-synonym bio-grouping (:noun "family"))



(define-category plasmid :specializes bio-entity
  :realization
    (:noun "plasmid"))


(define-category bio-chemical-entity :specializes bio-entity
  :mixins (has-UID has-name biological)
  :documentation  "includes all molecules and complexe"
  :binds ((in-equilibrium-with equilibrium))
  :realization
    (:noun "bio-chemical-entity"
     :in in-equilibrium-with))

(define-category dna :specializes bio-chemical-entity
   :realization (:noun "DNA"))


(define-category dna-motif :specializes bio-chemical-entity
  :documentation "enhancers, promoters, etc., also response elements")
		 
(define-category dna-response-element :specializes dna-motif
  :realization
    (:noun "response element"))

(define-category anti-oxidant-response-element :specializes dna-response-element
  :realization
    (:noun ("anti-oxidant response element" "ARE")))               

(define-category ion :specializes bio-chemical-entity
  :binds ((molecule molecule)))



;;;-------------
;;; bio-process
;;;-------------

;; TO-DO figure out with David why this isnt working as expected...
;; why do we still have the old definitions of "processes" hanging
(delete-noun-cfr (resolve "process"))
(delete-noun-cfr (resolve "processes"))

(define-category bio-process
  :specializes process
  :mixins (has-UID has-name biological with-measurement)
  :documentation "No content by itself, provides a common parent
    for 'processing', 'ubiquitization', etc. that may be the basis
    of the grammar patterns."
  :binds ((subject biological)
          (by-means-of (:or bio-process mechanism bio-method pathway))
          (using protein)
          (manner manner) ;; conflict with "increase" bio-process CHECK THIS WAS  bio-method
          (without-using protein)
          (without-means-of (:or bio-process mechanism bio-method pathway))
          (as-comp as-comp)
          (target (:or protein gene)))
  :realization 
    (:noun "process"
     :s subject
     :of subject
     :by by-means-of ;;find out what uses this
     :through by-means-of
     :via by-means-of
     :via using
     :with by-means-of
     :with using
     :without without-means-of
     :without without-using
     :through using
     :through by-means-of
     :in manner
     :as-comp as-comp
     :at target))


(define-category other-bio-process
  :specializes bio-process)

(define-category named-bio-process
  :specializes other-bio-process
  :realization (:common-noun name)) ;; for nominal forms


(define-category caused-bio-process
    :specializes bio-process
    :restrict ((subject blocked-category))
    :binds
    ((agent
      (:or                 ;;bio-entity
       bio-chemical-entity ;;molecule bio-complex drug
       bio-process bio-mechanism bio-method
       )) ;; membrane targeting domains that facilitate interaction with the plasma membrane
     (cause ;; sematically like agent, but want to tighten the restriction on premodifiers used as agents
      ;; we had gotten "an equivalent activation" which treated "equivalent" as an agent
      (:or process-rate
           bio-relation ;; The ability of oncogenic RAS to ... allows the cell to have a
           measurement 
           bio-scalar ;; "these data raised the possibility..."
           protein-domain ;; not molecular-location -- that allows residues
           ))
     (object
      (:or bio-entity cell-entity molecular-location
           measurement bio-scalar disease)))
    :realization
    (:s agent
        :s cause
        :o object
        :of object
        :m agent
        :m object
        :by agent))


(define-category process-control-process :specializes caused-bio-process
  :restrict ((subject blocked-category))
  :binds ((affected-process (:or bio-process bio-mechanism bio-method bio-quality
                                 bio-predication bio-relation medical-treatment)))
  :realization
    (:o affected-process
     :o object
     :of affected-process))

(define-category caused-biochemical-process :specializes caused-bio-process
  :binds ((process-for biochemical-process)))


;;;-----------
;;; mechanism
;;;-----------

(define-category mechanism :specializes endurant
  :documentation "A collection of interacting physical entities that performs
    an action or has a purpose. 
      The 'process' variable is the process typically performed by  this
    mechanism in the context of discussion.
      The 'goal' is  the predication that defines the desired end-state?"
  :binds ((process bio-process)
          (goal))
  :realization
    (:m process
     :of process
     :for process))

(define-category bio-mechanism :specializes mechanism
  :mixins (has-name biological)
  :realization
    (:noun "mechanism"))


;;;----------------
;;; bio-rhetorical
;;;----------------

(define-category bio-rhetorical :specializes perdurant
  :mixins (biological 
           bio-thatcomp bio-whethercomp
           with-measurement)
  :binds ((agent
           (:or pronoun/first/plural
                PRONOUN/FIRST/SINGULAR ;; in dialog, not typical in journals
                pronoun/plural ;; "they"
                organism ;; "these animals showed..."
                these
                ;; bio-entity too general -- leads to problems with created semantic rules
                bio-chemical-entity
                bio-location ;; "the Y561 site displayed no difference..."
                evidence
                article-figure
                bio-quality
                bio-rhetorical
                bio-process ;; the B-RAFV600E mutation predicts
                bio-method	;; high-throughput functional screens may inform
                bio-mechanism    ;; "this pathway describes ..."
                bio-predication ;; the success of raf and mek inhibitors
                measurement     ;; these data
                visual-representation))
	  (ratio-condition ratio)
	  (fig article-figure)
	  (method bio-method)
          (result biological)
	  (by-means-of (:or bio-process mechanism bio-method)))
  :realization
    (:s agent
     :o statement
     :by agent
     :by method
     :of statement
     :in fig
     :through method
     :under method
     :in by-means-of
     ;;:from by-means-of
     :via method
     :with method
     :at ratio-condition
     :for result))




(define-category evidence :specializes bio-rhetorical
  :binds ((fact biological))
  :realization
    (:verb ("evidenceXX" :past-tense "evidenced")
     :noun "evidence"
     :etf (svo-passive)
     :for fact))

(define-category experiment-data :specializes evidence
  :realization
     (:noun "experiment"))

(define-category analysis-data :specializes evidence
  :realization
     (:noun ("analysis" :plural "analyses")))

(define-category study-data :specializes evidence
  :realization
     (:noun ("study" :plural "studies")))

(define-category observation :specializes evidence
  :realization
     (:noun "observation"))



;;;--------------
;;; bio-movement
;;;--------------

(define-category bio-movement
  :specializes bio-process
  :documentation "like translocation, entry and 'binding to membrane'"
  ;; :mixins (move) this creates an inconsistent taxonomy -- WH -- TO-DO
  :restrict ((cellular-location over-ridden)) ;; really? ddm 2/3/17
  :binds ((object (:or bio-entity bio-chemical-entity))
          (co-object (:or bio-entity bio-chemical-entity))
          (origin cellular-location)
          (destination cellular-location))
  :realization 
    (:at origin
     :into destination
     :to destination
     :onto destination
     :from origin
     :m destination
     :m object
     :with co-object))


(define-category bio-self-movement :specializes bio-movement
  :realization
    (:s object
     :of object))

(define-category bio-transport :specializes bio-movement
  :mixins (caused-bio-process)
  :realization 
    (;;:verb "transport" 
     :noun "transport"))

(define-category originate :specializes bio-self-movement
  :realization 
    (:verb "originate" 
     :etf (sv)
     :noun "origination" 
     :in origin
     :at origin ))

(define-category culminate :specializes bio-self-movement
  :realization 
    (:verb "culminate" 
     :etf (sv)
     :in destination
     :at destination ))



(define-category molecular-function  :specializes bio-process
  :bindings (uid "GO:0005488"))



(delete-noun-cfr (resolve "reaction"))
(define-category chemical-reaction
  :specializes caused-bio-process
  :documentation "Enough for our purposes, since we only have 
      biologically relevant reactions"
  :binds ((co-reactant bio-chemical-entity)
          (produces bio-chemical-entity))
  :realization
    (:noun "reaction"
     :verb "react"
     :etf (sv)
     :with co-reactant
     :to produces ))



(define-category biopax-entry :specializes abstract
  :binds ((dataSource)
          (xref)))



(define-category bio-interaction :specializes bio-process)
(define-category bio-conversion :specializes bio-interaction)

;; from biopax
(define-category biochemical-reaction :specializes bio-conversion)
                 


;;;------------
;;; bio-method
;;;------------

(define-category purposive-process :specializes  process
  :binds ((result-or-purpose bio-process))
  :realization
     (:to-comp result-or-purpose
      :for result-or-purpose))

(define-category bio-method :specializes purposive-process
  :mixins (has-UID has-name biological)
  :documentation "No content by itself, provides a common parent
    for 'liquid chromatography', etc. that may be the basis
    of the grammar patterns."
  :binds ((agent (:or pronoun/first/plural biological))
          (object (:or biological measurement bio-scalar)))
  :realization
    (:s agent
     :o object
     :by agent
     :of object)) ;; for nominal forms

    
(define-category immune-method :specializes bio-method
   :binds ((antibody (:or protein antibody))
           (tested-for bio-chemical-entity)
           (origin (:or cellular-location cell-line)))
   :realization
   (:from origin
          :with antibody
          :via antibody
          :for tested-for))

(define-category measure :specializes bio-method
  :binds ((method bio-method)
          (measured-item (:or bio-entity bio-process)))
  :realization 
    (:verb "measure"
     :etf (svo-passive)
     :noun "measurement"
     :m measured-item
     :of measured-item
     :by method
     :with method))

(define-category clinical-trial :specializes bio-method
  :realization
    (:noun "clinical trial"))




(define-category bio-event :specializes bio-process
  :mixins (has-UID has-name biological)
  :documentation "Parent for 'acquire, act, addition, counfound etc.
    that may be the basis of the grammar patterns."
  :binds ((process bio-process))
  :lemma (:common-noun "event")
  :realization
    (:common-noun name
     :for process))


(define-category bio-relation :specializes bio-predication
  :mixins (has-UID has-name biological)
  :documentation "as in  'constitute, contains etc"               
  :binds ((theme (:or biological predication))) ;; this probably belongs higher
  :realization
    (:for timeperiod
      :o theme))
 

(define-category bio-event-relation :specializes bio-relation
  :restrict ((subject perdurant) ;; this captures all of these and more
             (theme perdurant))
  :realization
    (:s subject
     :o theme))

(define-category aspectual-relation :specializes bio-relation
  :binds ((action bio-process))
  :realization
    (:to-comp action))


                 
(define-category post-adj :specializes linguistic 
  :documentation "used as a marker for adjectives which can follow nouns")

(define-category pathway-direction :specializes bio-relation
  :mixins (post-adj)
  :binds ((relative-to (:or bio-process bio-entity pathway))
          (pathway pathway))
  :realization
    (:noun "upstream"
     :of relative-to
     :from relative-to
     :in pathway))


(define-category equilibrium :specializes bio-relation
  :binds ((with-species bio-chemical-entity))
  :realization
    (:noun ("equilibrium" :plural "equilibria")
     :with with-species))



(define-category feedback-loop :specializes bio-mechanism
  :binds ((participant biological))
  :realization
    (:noun "feedback loop"
     :between participant))

(define-category positive-feedback-loop :specializes feedback-loop
  :realization
    (:noun "positive feedback loop"))

(define-category negative-feedback-loop :specializes feedback-loop
  :realization
    (:noun "negative feedback loop"))



;;;-----------
;;; bio-agent
;;;-----------

(define-category bio-agent :specializes bio-entity
  :binds ((causes biological))
  :realization 
    (:noun "agent"
     :of causes
     :m causes))


;;;-------------
;;; bio-content
;;;-------------

(define-category bio-context :specializes biological
  :binds ((process process)
          (entity bio-entity)
          (quantitative-condition (:or amount measurement bio-scalar)))
  :mixins (has-name)
  :realization
    (:noun "context"
     ;; "yielded sustained C-RAF(S338) and ERK phosphorylation in the context of drug treatment"
     :of process
     :of entity
     :of quantitative-condition))


;;;--------------
;;; bio-location
;;;--------------

(define-category bio-location  :specializes endurant
  :mixins (has-UID has-name biological)
  :instantiates self
  :index (:permanent :key name))



(define-category molecule :specializes bio-chemical-entity ;; SBCL caught random backquote here!
  ;; makes more sense for ATP than H20, but not worrying about whether
  ;; we're doing organic or inorganic chemistry. 
  :instantiates :self
  :binds ((molecule-type molecule))
  :bindings (uid "CHEBI:36357")
  :index (:permanent :key name)
  :lemma (:common-noun "molecule")
  :realization
    (:common-noun name
     :of molecule-type))



(define-category component
  :specializes molecule
  :documentation "using molecule here as a standin for a better
    taxonomic treatment. The biologists often talk of a 'fraction'
    as a separated-out portion of a solution. We need some 
    more general way of talking about this"
  :binds ((whole (:or bio-complex bio-process)))
  :realization
    (:noun "component"
     :of whole
     :in whole))

(def-synonym component 
  (:noun "part"))

(def-synonym component
  (:noun "fraction")) 



(define-category medical-treatment :specializes purposive-process
  :binds ((disease disease)
          (medical-treatment medical-treatment))
  :mixins (biological)
  :realization
    (:noun "medical treatment"
     :m disease
     :for disease
     :for medical-treatment ))

(noun "chemotherapy" :super medical-treatment)
(noun "organ transplant" :super medical-treatment)
(noun "therapeutic strategy" :super medical-treatment)




(define-category drug :specializes molecule
  :instantiates self
  :index (:permanent :key name)
  :lemma (:common-noun "drug")
  :realization
     (:common-noun name))


(define-category rna :specializes molecule
  :instantiates self
  :index (:permanent :key name)
  :lemma (:common-noun "RNA")
  :realization
     (:common-noun name))

(define-category micro-rna  :specializes rna
  :instantiates self
  :index (:permanent :key name)
  :lemma (:common-noun "micro-rna")
  :realization
     (:common-noun name))


(define-category lipid :specializes molecule
  :instantiates :self
  :index (:permanent :key name)
  :lemma (:common-noun "lipid")
  :realization
    (:common-noun name))

(define-category phospholipid :specializes lipid
  :instantiates :self
  :index (:permanent :key name)
  :lemma (:common-noun "phospholipid")
  :realization
     (:common-noun name))


(define-category polysaccharide :specializes molecule
  :realization 
    (:noun "polysaccharide"))



(define-category small-molecule :specializes molecule
  :binds ((entity-reference small-molecule-reference)))

(define-category nucleobase :specializes small-molecule 
  :instantiates :self
  :index (:permanent :key name)
  :lemma (:common-noun "nucleobase")
  :realization
     (:common-noun name))

(define-category nucleotide :specializes small-molecule 
  :binds ((base nucleobase))
  :instantiates :self
  :index (:permanent :key name)
  :lemma (:common-noun "nucleotide")
  :realization
    (:common-noun name))

(define-category nucleoside :specializes small-molecule 
  :binds ((base nucleobase))
  :instantiates :self
  :index (:permanent :key name)
  :lemma (:common-noun "nucleoide")
  :realization
    (:common-noun name))

(define-category orthophosphate :specializes small-molecule 
  :instantiates :self
  :index (:permanent :key name)
  :lemma (:common-noun "orthophosphate")
  :realization
    (:common-noun name))



(define-category gene :specializes bio-chemical-entity
  :instantiates :self
  :binds ((:expresses . protein))
  :index (:permanent :key name)
  :lemma (:common-noun "gene")
  :realization
    (:common-noun name))

(define-category oncogene :specializes gene 
  :instantiates :self
  :lemma (:common-noun "oncogene")
  :realization
    (:common-noun name))        
  


(define-category mutant :specializes bio-chemical-entity
  :binds ((basis (:or bio-entity molecular-location)))
  :instantiates :self
  :realization
    (:noun "mutant"
     :m basis
     :of basis))



(define-category variant :specializes bio-chemical-entity
  ;; not sure this is the correct term, but intended for things like "forms of ras" 
  :binds ((basis bio-entity)) ;; can be a gene or protein, or something else
  :instantiates :self
  :realization
    (:noun "variant"
     :m basis
     :of basis))

;;; These have been moved here to allow state to be a variant

(define-category bio-state
  :specializes variant
  :documentation  "not quite right, but it is almost always a protein
      for things like activated state"
  :binds ((stateful-item biological))
  :realization
    (:noun "state"
     :of stateful-item)) ;; subject in on bio-predication


(define-category molecule-state :specializes bio-state)

(define-category bio-conformation :specializes molecule-state
  :realization 
    (:noun "conformation"))




;;--- "load" -- "GTP loading"
;; "activated upon GTP loading"
;; You load GTP onto something, presumably a protein
;; can you say "the loading of GTP onto Ras" ?
;; "Determination of GTP loading on Rho"
;; "regulation of Ras GTP loading"
;; "GTP-loading of Ras" <<< hyphen
;; "may involve Ras-GTP loading"
;; "enhanced GTP loading"
;; "Structural basis for conformational switching and GTP loading of the large G protein atlastin"

(define-category molecule-load :specializes caused-bio-process
  :binds (;;(object molecule) ;; the nucleotyde that moves
          (substrate biological))
  :realization
    (:verb "load"
     :etf (svo-passive)
     :of object
     :onto substrate))



(define-category stoichiometry :specializes bio-abstract
  ;; not sure this is the same stoichiometry as used in biopax
  :mixins (reactome-category)
  :binds ((physicalEntity (:or bio-complex small-molecule protein)) 
          (stoichiometricCoefficient)) ;; an integer -- ask David
  :realization
    (:noun "stoichiometry"
      :of physicalEntity))




(define-category experimental-condition :specializes bio-context
  :instantiates self
  :index (:permanent :key name)
  :lemma (:common-noun "condition")
  :realization
     (:common-noun name))

(define-category experimental-system :specializes experimental-condition
  :realization
    (:noun "system"))



(define-category disease-process :specializes process
  :mixins (biological))

(define-category metastasis :specializes disease-process
  :binds ((cancer cancer))
  :realization
    (:noun ("metastasis" :plural "metastases")
     :verb "metastasize"
     :etf (sv)
     :s cancer))



(define-category disease  :specializes bio-context
  :mixins (has-uid)
  :binds ((organ bio-organ))
  :instantiates self
  :index (:permanent :key name)
  :realization
    (:common-noun name
     :noun "disease"
     :m organ
     :of organ
     :in organ))

(define-category cancer  :specializes disease
  :instantiates self
  :index (:permanent :key name)
  :lemma (:common-noun  "cancer")
  :realization (:common-noun name))

(define-category melanoma  :specializes cancer
  :instantiates self
  :index (:permanent :key name)
  :lemma (:common-noun "melanoma")
  :realization (:common-noun name))





(define-category molecular-location  :specializes bio-location
  :binds ((substrate molecule))
  :instantiates self
  :index (:permanent :key name)
  :realization
    (:noun "region"
     :of substrate))

(define-category protein-domain
  :specializes molecular-location
  :documentation "not sure this is the correct term, but intended for things
    like the G1 box and the G-domain"
  :instantiates :self
  :realization
     (:noun "domain"
      :m substrate
      :of substrate))

(def-synonym protein-domain (:noun "region"))




(define-category peptide :specializes molecule
  :binds ((residue residue-on-protein))
  :realization
    (:noun "peptide"
     :with residue))

(def-synonym peptide (:noun "polypeptide"))


(define-category protein :specializes peptide  ;; this is not clearly true
  :instantiates :self
  :bindings (uid "CHEBI:36080")
  :binds ((species species)
          (mutation point-mutation)
          (complex bio-complex)
          (functionally-related-to protein)
	  (site molecular-location)
          (variant-number number)
	  (equilibrium-state equilibrium)
	  (state bio-state))
  :mixins (  reactome-category  in-ras2-model )
  :index (:permanent :key name)
  :lemma (:common-noun "protein")
  :realization
    (:common-noun name
     :in complex
     :in equilibrium-state
     :in state
     :in location
     :m site))


(define-category protein-state :specializes molecule
  :binds ((protein protein)
          (post-translational-mod post-translational-modification)))


(define-category enzyme :specializes protein
  ;; what's the relationship to kinase?   
  ;; not all enzymes are proteins -- there are RNA enzymes
  :binds ((enzyme protein)
          (reaction bio-process)
          (enzyme-activity enzyme-activity))
  :instantiates :self
  :lemma (:common-noun "enzyme")
  :realization
    (:common-noun name
     :with enzyme-activity
     :m enzyme))


(define-category post-translational-enzyme :specializes enzyme
  :binds ((residue residue-on-protein)
          (amino-acid amino-acid)))


(define-category kinase :specializes post-translational-enzyme
  ;; a kinase is a molecule, not an activity -- the link to GO:0016301"
  ;;  should be as a "telic" qualia for those molecules which are kinases 
  :instantiates :self
  :bindings (uid "GO:0016301") ;; "kinase activity" 
  :index (:permanent :key name)
  :lemma (:common-noun "kinase")
  :realization
    (:common-noun name
     :for reaction
     :m residue
     :m amino-acid))

(noun "phosphatase" :super post-translational-enzyme)

(noun "ubiquitylase" :super post-translational-enzyme)

(define-category deubiquitylase :specializes enzyme
  ;; a ubiquitalyse is a molecule, not an activity -- the link to GO:0016301"
  ;;  should be as a "telic" qualia for those molecules which are kinases 
  :instantiates :self
  :bindings (uid "GO:0016301") ;; "kinase activity" 
  :index (:permanent :key name)
  :realization
    (:common-noun name))


(define-category exchange-factor :specializes enzyme
  ;; once "exchange" is defined as a verb, then this becomes a
  ;;  special case phrase
  :binds ((substrate protein)
          (nucleotide nucleotide))
  :restrict ((enzyme determiner)) ;; BLOCK THIS (huh? ddm 2/3/17)
  :realization
    (:noun "exchange factor"
     :m nucleotide
     :m substrate
     :of substrate
     :for substrate))

(define-category nucleotide-exchange-factor :specializes exchange-factor
  :realization
     (:noun "nucleotide exchange factor"))




(define-category bio-exchange :specializes bio-movement
  :binds ((state-before (:or nucleotide bio-state variant))
          (state-after (:or nucleotide bio-chemical-entity bio-state variant))
          (subject nucleotide))
  :realization
    (:noun "exchange"
     :verb "exchange"
     :etf (svo-passive)
     :o object
     :m subject
     :s subject
     :of state-before
     :from state-before
     :to state-after))

(def-synonym bio-exchange (:noun "turnover"))

(define-category nucleotide-exchange :specializes bio-exchange
  :binds ((substrate (:or protein bio-complex gene)))
  :realization
    (:noun "nucleotide exchange"
     :on substrate
     :from substrate))

(noun "GDP to GTP exchange" :super nucleotide-exchange)



(define-category phosphatase :specializes enzyme
  :instantiates :self
  :index (:permanent :key name)
  :lemma (:common-noun "phosphatase")
  :realization
    (:common-noun name
     :for reaction
     :m residue))

(define-category GTPase :specializes enzyme
  :instantiates :self
  :index (:permanent :key name)
  :lemma (:common-noun "GTPase")
  :realization
    (:common-noun name))

(def-synonym GTPase (:noun "gtpase"))



(define-category epitope
  :specializes protein-domain
  ;; not sure these are only proteins,
  ;; the part of an antigen that is recognized by the immune system
  :realization (:noun "epitope"))



(define-category cell-entity :specializes physical-object
  :mixins (biological has-uid has-name)
  :binds ((with-protein protein))
  :realization
    (:with with-protein))

(define-category cell-line :specializes cell-entity
  :instantiates self
  :index (:permanent :key name)
  :realization
    (:common-noun name))

(define-category cell-type :specializes cell-entity
  :instantiates self
  :index (:permanent :key name)
  :realization
    (:common-noun name
     :noun "cell type"))



(define-category organism ;; used in biopax
 :specializes endurant
 :mixins (has-name has-uid biological)
 :instantiates self  
 :index (:permanent :key name)
 :lemma (:common-noun "organism")
 :realization
   (:common-noun name))

(def-synonym organism  (:noun "animal"))

(define-category species :specializes organism
  :instantiates self 
  :index (:permanent :key name)
  :lemma (:common-noun "species")
  :realization (:common-noun name))

(define-category virus :specializes organism
  :instantiates self 
  :index (:permanent :key name)
  :lemma (:common-noun "virus")
  :realization
    (:common-noun name))

(define-category bacterium :specializes organism
  :instantiates self 
  :index (:permanent :key name)
  :lemma (:common-noun ("bacterium" :plural "bacteria"))
  :realization
    (:common-noun name))




(define-category protein-family :specializes protein
  ;; was bio-family, but only used fro protein families
  :instantiates :self
  :documentation "Familes of proteins are abstractions based
    on common properties, especially the function, of the
    members. They're talked about just like specific proteins
    are, hence making them entities"
  ;; They should be either a sub-category of protein or molecule to allow for
  ;;  selectional restrictions on PPs
  ;; as in "binds to RAS" where RAS is a family
  ;; :specializes molecule
  ;; :rule-label protein
  :binds ((type bio-entity) ;; a family of what?
          (family-members collection)
          (count number))
  :rule-label protein
  :index (:permanent :key name)
  :lemma (:common-noun "family")
  :realization 
    (:common-noun name))

(define-category human-protein-family :specializes protein-family
  :rule-label protein
  :bindings (species (find-individual 'species :name "human"))
  :lemma (:common-noun "human protein family")
  :realization
    (:common-noun name
     :in location))



;;----- aggregations

(define-category bio-aggregate  :specializes aggregate
  ;; can drop the 'bio-', but it lets us play with the
  ;; notion before we promote that behavior to the upper str.
  :mixins (sequence biological))
#| This would be a good level at which to site a method that
meditated whether or not we distributed the components of
the aggregate across the predicate it's in. |#

(define-category bio-pair :specializes bio-aggregate 
  :binds ((left)
          (right))
  :index (:sequential-keys left right))

(define-category pair-with-protein :specializes bio-aggregate
  :binds ((left) ;; e.g. a protein region: "RBD-Ras"
          (right (:or protein bio-family nucleotide gene)))
  :index (:sequential-keys left right))

(define-category no-space-pair :specializes bio-pair
  :instantiates :self
  :binds ((left)
          (right))
  :index (:sequential-keys left right)
  :documentation "Trust the pattern matching to correctly handle the
    value restrictions. This cuts down on the variation
    in how to define a pair which should reduce the possibilities
    for error.")

(define-category protein-pair :specializes bio-pair
  :mixins (protein)
  :binds ((left (:or protein bio-family nucleotide gene))
          (right (:or protein bio-family nucleotide)))
  :index (:sequential-keys left right))

;; See also amino-acid-pair in amino acids






(define-category bio-strength :specializes bio-scalar
  :realization
    (:noun "strength"))




(define-category residue-on-protein
  :specializes molecular-location
  ;; NOT same as protein, it is the location, not the amino acid
  :instantiates :self
  :binds ((amino-acid amino-acid)
          (substrate protein)
          (position number)) ;; counting from the N terminus
  :index (:permanent :sequential-keys amino-acid position)
  :realization
     (:noun "residue"
      :of substrate
      :on substrate
      :in substrate
      :at amino-acid))
;; this is actually for serine at residue 822 -- this is an "inverse" :at
;; for use by interpret-pp-as-head-of-np and a form rule in form-rules


(def-synonym residue-on-protein (:noun "position"))
