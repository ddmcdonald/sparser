;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "taxonomy"
;;;  Module: "grammar/model/sl/biology/
;;; version: September 2015

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
;; 4/24/2015 added mixins for bio-thtcomp and bio-whethercomp 
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

;;;--------
;;; mixins
;;;--------

(define-mixin-category has-UID :specializes relation
  :binds ((uid)))

(define-mixin-category type-marker
  :documentation "This is mixed into selected classes
   like 'protein' or 'pathway or 'cell line' so that their
   lemmas can trigger a specific compose method
   in noun noun compounds.")

(define-mixin-category bio-complement
  :binds ((statement (:or bio-process molecule-state be bio-predication 
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
     better break-down of these -- at least for wheterh they are positive
     or negative in terms of belief state. The prefix -bio- may not be warranted,
     since these are quite general, but at the moment we are putting them below the 
     bio-processes.")

(define-mixin-category bio-whethercomp
  :specializes bio-complement
  :realization (:whethercomp statement)
  :documentation "Actions that take a that complement -- verbs of
     communication, demonstration, observation. Would like to have a 
     better break-down of these -- at least for wheterh they are positive
     or negative in terms of belief state. The prefix -bio- may not be warranted,
     since these are quite general, but at the moment we are putting them below the 
     bio-processes.")
 
(define-mixin-category bio-ifcomp  :specializes bio-complement
  :realization (:ifcomp statement)
  :documentation "Similar to bio-whethercomp.")

(define-category event-relation :specializes perdurant ;; put in here since we don't want to modify EVENT yet
  :binds ((relation)
          (event)
          (subordinated-event)
	  (adverb)
          (following process)
          (preceding process)
	  (during process)
	  (timeperiod (:or time-unit amount-of-time)))
  :realization (:for timeperiod
		 :over timeperiod
		 :upon following
		 :after following
		 :upon following
		 :following following
		 :before preceding
		 :during during))


(define-mixin-category reactome-category
   :mixins (has-name)
   :binds ((displayname)
           (reactome-id)))

(define-mixin-category in-ras2-model
   :binds ((ras2-model)))


;;;-----------------
;;; generalizations
;;;-----------------

(define-category reference-item :specializes abstract
  :documentation "For things like ProteinReference and SmallMoleculeReference.
  Generic characterizations of proteins and small molecules, etc. which have
  OBO identifiers, but are not localized to cellular locations.")

(define-category biological
  :documentation "Provides a generalization over bio entities
   and processes by being mixed into those categories, Because
   it spans such a wide range of things it will not fit into
   an upper-model category. It's real job is to contribute slots."
  :mixins (with-quantifier)
  :binds ((context (:or bio-context experiment-data))
          (cell-line cell-line)
          (cell-type cell-type)
          (organ bio-organ)
          (preparation preparation)
          (location non-cellular-location)
          (cellular-location cellular-location)
          (species species) ;; human? mouse?
          (non-cellular-location non-cellular-location)
          (examples biological)
	  (modifier)
	  (like biological)
	  (unlike biological)
;;	  (predication)
          ;;(variant variant)
          )
  :realization (:adj "biological"
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
         ;;:of variant
         :on cellular-location
         :such\ as examples
         :under context
         :upon cellular-location
         :with context
         :within cellular-location
	 :like like
	 :unlike unlike
         ))

;;/// This is OBE given revision to biological. 
(define-category bio-abstract :specializes biological)

(define-category visual-representation :specializes bio-abstract
		 ;; figures, arrows, stars, etc.
		 :realization
		 (:noun "observation"))

(define-category evidence :specializes bio-abstract
  :binds ((fact biological))
  :realization
  (:noun "evidence"
         :for fact))

(define-category experiment-data :specializes evidence
		 :mixins (biological)
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


(define-category bio-predication :specializes state 
  :mixins (biological event-relation)
  ;;/// This category is unlikely to be doing interesting
  ;; work for us. Need to review where it's used. 
  ;; Made it inherit from event because that provided
  ;; almost all the slots.
  ;; Aspect was annotated with "will likely be useful"
  :binds ((subject (:or biological visual-representation))
          (as-comp as-comp))
  :realization (:s subject
                   :as-comp as-comp))

(define-category bio-quality :specializes quality
  :mixins (biological)
  :binds ((subject biological)) ;; TO-DO better name?!
  :realization
  (:of subject))

(define-category bio-scalar :specializes scalar-quality
  :mixins (bio-quality)
  :documentation "Provides a generalization over biological and scalar")

(define-category  measurement  :specializes abstract
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


;; Rusty -- where are we supposed to put the two numbers
;; or two molecules?  Need example. 
(define-category ratio  :specializes measurement
 :binds ((measured hyphenated-triple)
	 (ratio (:or ratio number-colon-number))
	 (divisor biological))
   :realization
   (:noun "ratio"
	  :m measured
	  :of quantity
	  :of ratio
	  :to divisor))



(delete-adj-cfr (resolve "cyclic"))
(define-category bio-cyclic :specializes bio-predication
  :realization
  (:adj "cyclic"))

(define-category bio-state :specializes bio-predication ;; for things like "activated state"
  :realization
  (:noun "state"))

(define-category molecule-state :specializes bio-state)

(define-category bio-conformation :specializes molecule-state
  :realization 
  (:noun "conformation"))








;;;---------------------------------
;;; top of the biological hierarchy
;;;---------------------------------

(define-category bio-entity  :specializes physical-object  ;; sweeps a lot under the rug
  :instantiates :self
  :mixins (has-UID has-name biological)
  :binds ((long-form :primitive polyword))
  :index (:permanent :key name)
  :realization (:common-noun name))

(define-category plasmid :specializes bio-entity
  :realization
  (:noun "plasmid"))

(define-category bio-chemical-entity :specializes bio-entity ;; includes all molecules and complexes   ;; sweeps a lot under the rug
  :mixins (has-UID has-name biological)
  :binds ((in-equilibrium-with equilibrium))
  ;; :index (:permanent :key name)
  ;; :realization (:common-noun name)
  :realization
  (:noun "bio-chemical-entity"
         :in in-equilibrium-with)
  )

(define-category dna :specializes bio-chemical-entity
		 :realization (:noun "DNA"))

(define-category dna-motif :specializes bio-chemical-entity
		 ;; enhancers, promoters, etc., also response elements
		 )


(define-category dna-response-element :specializes dna-motif
		 :realization
		 (:noun "response element"))

(define-category ion :specializes bio-chemical-entity
  :binds ((molecule molecule)))



;; TO-DO figure out with David why this isnt working as expected...
;; why do we still have the old definitions of "processes" hanging arount
(delete-noun-cfr (resolve "process"))
(delete-noun-cfr (resolve "processes"))

(define-category bio-process
    :specializes process
    :mixins (has-UID has-name biological event-relation)
    :binds ((by-means-of (:or bio-process mechanism bio-method pathway))
	    (using protein)
	    (manner (:or  bio-mechanism bio-method)) ;; conflict with "increase" bio-process CHECK THIS
	    (as-comp as-comp)
	    (target (:or protein gene)))
    :realization 
    (:noun "process"
	   ;; :by by-means-of find out what uses this
	   :through by-means-of
	   :via by-means-of
	   :via using
           :through using
           :through by-means-of
	   :in manner
	   :as-comp as-comp
	   :at target)
    :documentation "No content by itself, provides a common parent
  for 'processing', 'ubiquitization', etc. that may be the basis
  of the grammar patterns.")


(define-category other-bio-process
                 :specializes bio-process
  :mixins (has-UID has-name biological)
  :binds ((subject biological))
  :realization 
  (:noun "processXXX"
         :s subject)
  :documentation "No content by itself, provides a common parent
  for 'processing', 'ubiquitization', etc. that may be the basis
  of the grammar patterns.")

(define-category cellular-process :specializes bio-process
  :mixins (has-UID has-name biological)
  :binds ((subject biological))
  :realization 
  (:noun "processYYY"
         :s subject
         :of subject)
  :documentation "No content by itself, provides a common parent
  for 'processing', 'ubiquitization', etc. that may be the basis
  of the grammar patterns.")

(define-category named-bio-process
    :specializes other-bio-process
  :realization (:common-noun name) ;; for nominal forms
  :documentation "No content by itself, provides a common parent
    for 'processing', 'ubiquitization', etc. that may be the basis
    of the grammar patterns.")

(define-category caused-bio-process
  :specializes bio-process
  :binds
  ((agent ;; supercedes subject in bio=-process
    (:or bio-entity bio-process bio-mechanism bio-method drug process-rate
	 bio-relation ;; The ability of oncogenic RAS to ... allows the cell to have a
	 measurement ;; "these data raised the possibility..."
	 molecular-location));; membrane targeting domains that facilitate interaction with the plasma membrane
   (object biological) ;;(:or biological molecule) molecule is to allow for "loading of GTP onto ..." 
   (at (:or bio-concentration quantity measurement))
   (extent (:or amount bio-scalar)))
  :realization
  (:s agent
      :o object
      :of object
      :m agent
      :m object
      :by agent     
      :at at
      :to extent
      ))


(define-category mechanism :specializes endurant
		 :binds ((process bio-process) ;;  the process typically performed by 
			 ;; this mechanism in the context of discussion
			 (goal)) ;; the predication that defines the desired end-state?
		 :realization
		 (:m process
		     :of process
		     :for process)
		 :documentation 
		 "A collection of interacting physical entities that performs an action 
   or has a purpose. Expand this comment...")

(define-category bio-mechanism :specializes mechanism
  :mixins (has-name biological)
  :realization
  (:noun "mechanism"))

(define-category bio-control :specializes caused-bio-process
  ;; increase in rate vs increase in RAS activity
  :binds ((multiplier fold))
  :realization
  (:verb ("control" :present-participle "controlling"
                    :present-participle "controling") 
         :etf (svo-passive)
         :by multiplier))

(define-category negative-bio-control :specializes bio-control
  ;; :restrict ((object (:or biological bio-rhetorical))) ;; "lowered the possibility"
  :binds ((inhibited-process bio-process))
  :realization (:verb "negatively controls"  :etf (svo-passive)
                      :from inhibited-process))

(define-category positive-bio-control :specializes bio-control
  ;; :restrict ((object (:or biological bio-rhetorical))) ;; "raised the possibility"
  :realization (:verb "positively controls"  :etf (svo-passive)))

(define-category bio-rhetorical :specializes event
  :mixins (biological bio-thatcomp bio-whethercomp event-relation)
  :binds ((agent (:or pronoun/first/plural
		      pronoun/plural ;; "they"
		      organism ;; "these animals showed..."
		      these
		      bio-entity
		      bio-location ;; "the Y561 site displayed no difference..."
		      evidence
		      article-figure
		      bio-rhetorical
		      bio-process ;; the B-RAFV600E mutation predicts
		      bio-method	;; high-throughput functional screens may inform
                      bio-mechanism    ;; "this pathway describes ..."
		      bio-predication ;; the success of raf and mek inhibitors
		      measurement     ;; these data
		      visual-representation))
	  (object (:or biological pronoun/inanimate))
	  (ratio-condition ratio)
	  (fig article-figure)
	  (method bio-method)
	  (by-means-of (:or bio-process mechanism bio-method)))
  :realization
  (:s agent
      :o object
      :by agent
      :of object
      :in fig
      :by method
      :through method
      :under method
      :in by-means-of
      :from by-means-of
      :via method
      :with method
      :at ratio-condition))

(define-category over-ridden)
;; this is used only for over-riding inherited variables

(define-category bio-movement ;; like translocation, entry and "binding to membrane"                 
                 :specializes bio-process
		 ;; :mixins (move) this creates an inconsistent taxonomy -- WH -- TO-DO
  :restrict ((cellular-location over-ridden))
  :binds
  ((object (:or bio-entity bio-chemical-entity))
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
   :at origin
   ))

(define-category culminate :specializes bio-self-movement
  :realization 
  (:verb "culminate" 
         :etf (sv)
   :in destination
   :at destination
   ))

(define-category molecular-function  :specializes bio-process
  :bindings (uid "GO:0005488"))

(delete-noun-cfr (resolve "reaction"))
(define-category chemical-reaction :specializes caused-bio-process   ;; for our purposes, since we only have biologically relevant reactions
   :binds ((co-reactant bio-chemical-entity)
           (result bio-chemical-entity))
   :realization (:noun "reaction"
                       :verb "react"
                       :etf (sv)
                       :with co-reactant
                       :to result
                       ))

(define-category biochemical-reaction :specializes chemical-reaction ;; from biopax
  )

(define-category catalysis :specializes chemical-reaction
  :mixins (bio-control)
  :binds ((controlType))
  :realization
  (:verb "catalyze" :noun "catalysis" 
         :etf(svo-passive) ));;/// "catalyysis of phosphorylation by MEK"

(define-category enzyme-activity :specializes catalysis
  :realization
  (:noun "enzyme activity"))

(define-category kinase-activity :specializes enzyme-activity
  :realization
  (:noun "kinase activity"))

(define-category bio-method :specializes process
  :mixins (has-UID has-name biological)
  :binds ((agent (:or pronoun/first/plural biological))
          (object (:or biological measurement))
	  (result-or-purpose bio-process)
          (timeperiod (:or time-unit amount-of-time)))
  :realization (:s agent
                   :o object
                   :by agent
                   :of object
                   :for timeperiod
		   :to-comp result-or-purpose) ;; for nominal forms
  :documentation "No content by itself, provides a common parent
  for 'liquid chromatography', etc. that may be the basis
  of the grammar patterns.")

(define-category immune-method :specializes bio-method
  :binds ((antibody antibody)
	  (tested-for bio-chemical-entity))
  :realization
  (:with antibody
	 :via antibody
	 :for tested-for))


(define-category bio-event :specializes bio-process
  :mixins (has-UID has-name biological)
  :binds ((process bio-process))
  :realization (:common-noun name) ;; for nominal forms
  :documentation "No content by itself, provides a common parent
    for 'acquire, act, addition, counfound etc. that may be the basis
    of the grammar patterns.")

(def-synonym bio-event 
   (:noun "event"
          :for process))

(define-category bio-relation :specializes bio-predication
  :mixins (has-UID has-name biological event-relation)
  :binds ((theme biological)) ;; this probably belongs higher
  :realization (:for timeperiod) ;; for nominal forms
  :documentation "No content by itself, provides a common parent
    for 'constitute, contains etc. that may be the basis
    of the grammar patterns.")

(define-category pathway-direction :specializes bio-relation
      :binds ((relative-to biological)
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





;;;----------------------------------------------------
;;; categories of referents for particulars (entities)
;;;----------------------------------------------------



(define-category bio-agent :specializes bio-entity
  :binds ((causes biological))
  :realization 
  (:noun "agent"
   :of causes
   :m causes))


(define-category bio-context :specializes biological
  :binds ((process process)
          (entity bio-entity)
	  (quantitative-condition (:or amount bio-scalar)))
  :mixins (has-name)
  :realization
  (:noun "context"
         ;; "yielded sustained C-RAF(S338) and ERK phosphorylation in the context of drug treatment"
         :of process
         :of entity
	 :of quantitative-condition))

(define-category bio-location  :specializes biological
  :mixins (has-UID has-name)
  :instantiates self
  :index (:permanent :key name))

(define-category molecule :specializes bio-chemical-entity ;; SBCL caught random backquote here!
  ;; makes more sense for ATP than H20, but not worrying about whether
  ;; we're doing organic or inorganic chemistry. 
  :instantiates :self
  :binds ((molecule-type molecule))
  :bindings (uid "CHEBI:36357")
  :index (:permanent :key name)
  ;;:lemma (:common-noun "molecule")
  :realization (:common-noun name))

(def-synonym molecule
    (:noun "molecule"
	   :of molecule-type))

(define-category drug
  :specializes molecule
  :lemma (:common-noun "drug")
  :realization (:common-noun name))

(define-category rna :specializes molecule
  :realization
  (:noun "RNA"))

(define-category micro-rna  :specializes rna
  :realization
  (:noun "micro-rna"))

(define-category lipid :specializes molecule
  :instantiates :self
  :index (:permanent :key name)
  :lemma (:common-noun "lipid")
  :realization (:common-noun name))

(define-category phospholipid :specializes lipid
  :instantiates :self
  :index (:permanent :key name)
  :lemma (:common-noun "phospholipid")
  :realization (:common-noun name))

(define-category polysaccharide :specializes molecule
  :realization 
  (:noun "polysaccharide"))

;; 'small molecule' should be done with a def-subtype
;;/// Start with define-sybtype-derived-category
(define-category small-molecule-reference :specializes reference-item
  ;; makes more sense for ATP than H20, but not worrying about whether
  ;; we're doing organic or inorganic chemistry. 
  :mixins (reactome-category)
  )

(define-category small-molecule :specializes molecule
  :binds ((entityReference small-molecule-reference)))

(define-category nucleobase :specializes small-molecule 
  :instantiates :self
  :index (:permanent :key name)
  :lemma (:common-noun "nucleobase")
  :realization (:common-noun name))

(define-category nucleotide :specializes small-molecule 
  :binds ((base nucleobase))
  :instantiates :self
  :index (:permanent :key name)
  :lemma (:common-noun "nucleotide")
  :realization (:common-noun name))

(define-category nucleoside :specializes small-molecule 
  :binds ((base nucleobase))
  :instantiates :self
  :index (:permanent :key name)
  :lemma (:common-noun "nucleoide")
  :realization (:common-noun name))

(define-category orthophosphate :specializes small-molecule 
  :instantiates :self
  :index (:permanent :key name)
  :lemma (:common-noun "orthophosphate")
  :realization (:common-noun name))

;; grounds "encode"
(define-category gene :specializes bio-entity ;;// case in point
  :instantiates :self
  :binds ((:expresses . protein))
  :index (:permanent :key name)
  :lemma (:common-noun "gene")
  :realization (:common-noun name))

(define-category oncogene :specializes gene 
  :instantiates :self
  :lemma (:common-noun "oncogene")
  :realization (:common-noun name))        
  

(define-category variant :specializes bio-chemical-entity
  ;; not sure this is the correct term, but intended for things like "forms of ras" 
  :binds ((basis bio-entity)) ;; can be a gene or protein, or something else
  :instantiates :self
  :realization
  (:noun "variant"
         :m basis
         :of basis))

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
  (:noun "loading"
         :of object
         :onto substrate))
;; leads to rule bio-entity + load, 
;; which works, but isn't satisfying


;; not sure this is the same stoichiometry as used in biopax
(define-category stoichiometry :specializes bio-abstract
  :mixins (reactome-category)
  :binds ((physicalEntity (:or bio-complex small-molecule protein)) 
          (stoichiometricCoefficient)) ;; an integer -- ask David
  :realization
  (:noun  "stoichiometry"
          :of physicalEntity))

;;/// these next aren't really entities. Consider a new
;; toplevel bio category. 

(define-category experimental-condition :specializes bio-context
  :instantiates self
  :index (:permanent :key name)
  :lemma (:common-noun "condition")
  :realization (:common-noun name))

(define-category experimental-system :specializes experimental-condition
  :realization
  (:noun "system"))

(define-category disease  :specializes bio-context
  :binds ((organ bio-organ))
  :realization (:noun "disease"
                      :m organ
                      :of organ
                      :in organ))

(define-category cancer  :specializes disease
  :instantiates self
  :index (:permanent :key name)
  :lemma (:common-noun "cancer")
  :realization (:common-noun name))

(define-category melananoma  :specializes cancer
  :instantiates self
  :index (:permanent :key name)
  :lemma (:common-noun "melanoma")
  :realization (:common-noun name))


(define-category cellular-location  :specializes bio-location
  :binds ((id))
  :instantiates self
  :index (:permanent :key name))


;; These came from the MITRE RAS1 owl file

(defmacro define-cellular-location (name id &key (adj nil)(synonyms nil))
  (def-cell-loc name id :adj adj :synonyms synonyms))

(defun def-cell-loc (name id &key adj synonyms)
  (flet ((hyphen-subs (str)
           (substitute #\- #\space str)))
    (let ((cat-name (intern (string-upcase (hyphen-subs name)))))
      `(progn
         (define-category ,cat-name :specializes cellular-location
           :bindings (id ,id name ,name)
           :realization
           (:noun ,name ,@(when adj `(:adj ,adj))))
         (handle-mitre-link ,(find-symbol (symbol-name cat-name) (find-package :category)) ,id)
         ,@(loop for syn in synonyms collect `(def-synonym ,cat-name (:noun ,syn)))))))

       

(define-cellular-location "Golgi apparatus" "GO_0005794")
(define-cellular-location "basolateral plasma membrane" "GO_0016323")
(define-cellular-location "caveola" "GO_0005901")
(define-cellular-location "cell leading edge" "GO_0031252")
(define-cellular-location "cell-cell junction" "GO_0005911")
(define-cellular-location "cytoplasm" "GO_0005737" :adj "cytoplasmic")
(define-cellular-location "cytoplasmic vesicle" "GO_0031410")
(define-cellular-location "cytoskeleton" "GO_0005856")
(define-cellular-location "cytosol" "GO_0005829" :adj "cytosolic")
(define-cellular-location "dendritic spine" "GO_0043197")
(define-cellular-location "early endosome" "GO_0005769")
(define-cellular-location "endoplasmic reticulum membrane" "GO_0005789")
(define-cellular-location "endoplasmic reticulum" "GO_0005783")
(define-cellular-location "endosome" "GO_0005768" :adj "endosomal")
(define-cellular-location "extracellular matrix" "GO_0031012")
(define-cellular-location "extracellular region" "GO_0005576")
(define-cellular-location "focal adhesion" "GO_0005925")
(define-cellular-location "growth cone" "GO_0030426")
(define-cellular-location "hemidesmosome" "GO_0030056")
(define-cellular-location "integral to membrane" "GO_0016021")
(define-cellular-location "intracellular" "GO_0005622")
(define-cellular-location "lamellipodium" "GO_0030027")
(define-cellular-location "lamellipodia" "GO_0030027")
(define-cellular-location "filopodium" "GO_0030175")
(define-cellular-location "filopodia" "GO_0030175")
(define-cellular-location "membrane raft" "GO_0045121")
(define-cellular-location "membrane" "GO_0016020")
(define-cellular-location "mitochondrial inner membrane" "GO_0005743")
(define-cellular-location "mitochondrial intermembrane space" "GO_0005758")
(define-cellular-location "mitochondrial matrix" "GO_0005759")
(define-cellular-location "neuromuscular junction" "GO_0031594")
(define-cellular-location "nucleoplasm" "GO_0005654")
(define-cellular-location "nucleus" "GO_0005634" :adj "nuclear")
(define-cellular-location "plasma membrane" "GO_0005886")
(define-cellular-location "platelet dense granule lumen" "GO_0031089")
(define-cellular-location "trailing edge" "GO_0031254")
(define-cellular-location "juxtamembrane" "GO_????")

(define-category stress-granule :specializes cellular-location
  :realization (:noun "SG"))
(def-synonym stress-granule (:noun "stress granule"))




(define-category non-cellular-location  :specializes bio-location
  :instantiates self
  :index (:permanent :key name))

(define-category bio-organ :specializes non-cellular-location
  :mixins (has-UID has-name)
  :binds ((organism organism))
  :realization
  (:noun "organ"
         :in organism
         :of organism))

;; molecular-location is no longer treated as a "non-cellular location"
;; but as a top level of bio-location
(define-category molecular-location  :specializes bio-location
  :binds ((substrate molecule))
  :instantiates self
  :index (:permanent :key name)
  :realization
  (:noun "region"
         :of substrate))

(define-category protein-domain
  :specializes molecular-location
  ;; not sure this is the correct term, but intended for things like
  ;; the G1 box and the G-domain
  :instantiates :self
  :realization
     (:noun "domain"
      :m substrate
      :of substrate))

(def-synonym protein-domain
    (:noun "region"))


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
	  (equilibrium-state equilibrium)
	  (state bio-state))
  :mixins (  reactome-category  in-ras2-model )
  :index (:permanent :key name)
  :lemma (:common-noun "protein")
  :realization (:common-noun name))

(fom-subcategorization category::protein
                       :category category::protein
                       :slots `(:in complex
				    :in equilibrium-state
                                    ;;:of functionally-related-to
				    :m site
				    :in state
                                    ))




(define-category enzyme :specializes protein ;; what's the relationship to kinase?   ;; not all enzymes are proteins -- there are RNA enzymes
  :binds ((enzyme protein)
          (reaction bio-process)
          (enzyme-activity enzyme-activity))
  :instantiates :self
  :lemma (:common-noun "enzyme")
  :realization (:common-noun name))

(def-synonym enzyme
    (:with enzyme-activity
           :m enzyme
           ))

(define-category post-translational-enzyme :specializes enzyme
  :binds ((residue residue-on-protein)
          (amino-acid amino-acid)))


(define-category kinase :specializes post-translational-enzyme
                 ;; a kinase is a molecule, not an activity -- the link to GO:0016301"
                 ;;  should be as a "telic" qualia for those molecules which are kinases 
  :instantiates :self
  :bindings (uid "GO:0016301") ;; "kinase activity" 
  :index (:permanent :key name)
  :realization (:common-noun name))

(def-synonym kinase
             (:noun "kinase"
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
  :realization (:common-noun name))


;; once "exchange" is defined as a verb, then this becomes a
;;  special case phrase
(define-category exchange-factor :specializes enzyme
  :binds ((substrate protein)
          (nucleotide nucleotide))
  :restrict ((enzyme determiner)) ;; BLOCK THIS
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

(def-synonym bio-exchange
    (:noun "turnover"))

(define-category nucleotide-exchange :specializes bio-exchange
  :binds ((substrate (:or protein bio-complex)))
  :realization
  (:noun "nucleotide exchange"
         :on substrate
         :from substrate))

(noun "GDP to GTP exchange" :super nucleotide-exchange)

(define-category phosphatase :specializes enzyme
                 ;; a kinase is a molecule, not an activity -- the link to GO:0016301"
                 ;;  should be as a "telic" qualia for those molecules which are kinases 
  :instantiates :self
  :index (:permanent :key name)
  :realization (:common-noun name))

(def-synonym phosphatase
             (:noun "phosphatase"
                    :for reaction
                    :m residue))

(define-category GTPase :specializes enzyme
  :instantiates :self
  :index (:permanent :key name)
  :lemma (:common-noun "GTPase")
  :realization (:common-noun name))

(def-synonym GTPase
   (:noun "gtpase"))

(define-category epitope
  :specializes protein-domain
  ;; not sure these are only proteins,
  ;; the part of an antigen that is recognized by the immune system
  :realization (:noun "epitope"))

(define-category cell-entity :specializes physical-object
		 :mixins (biological has-name))


(define-category cell-line :specializes cell-entity
  :instantiates self
  :binds ((with-protein protein))	 
  :realization (:common-noun name)
  :index (:permanent :key name))

(fom-subcategorization category::cell-line
                       :category category::cell-line
                       :slots `(:with with-protein))


(define-category cell-type :specializes cell-entity
  :realization (:noun "cell type" ))

;; used in biopax
(define-category organism :specializes biological
   :mixins (has-name)
   :instantiates self  
   :index (:permanent :key name)
   :lemma (:common-noun "organism")
   :realization (:common-noun name))

(def-synonym organism
             (:noun "animal"))

(define-category species :specializes organism
  :instantiates self 
  :index (:permanent :key name)
  :lemma (:common-noun "species")
  :realization (:common-noun name))


;;---- family

(define-category protein-family :specializes protein  ;; was bio-family, but only used fro protein families
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
          (members collection)
          (count number))
  :rule-label protein
  :index (:permanent :key name)
  :lemma (:common-noun "family")
  :realization 
  (:common-noun name))

(define-category human-protein-family :specializes protein-family
  :rule-label protein
  :bindings (species (find-individual 'species :name "human"))
  :realization (:common-noun name))

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

(define-category pair-with-protein
  :specializes bio-aggregate
  :binds ((left) ;; e.g. a protein region: "RBD-Ras"
          (right (:or protein bio-family nucleotide)))
  :index (:sequential-keys left right))

(define-category no-space-pair :specializes bio-pair
  ;; inherits items, item, type, number
  :instantiates :self
  :binds ((left)
          (right))
  :index (:sequential-keys left right)
  :documentation
  "Trust the pattern matching to correctly handle the
  value restrictions. This cuts down on the variation
  in how to define a pair which should reduce the possibilities
  for error.")


(define-category protein-pair :specializes bio-pair
  :mixins (protein)
  :binds ((left (:or protein bio-family nucleotide))
          (right (:or protein bio-family nucleotide)))
  :index (:sequential-keys left right))

;; See also amino-acid-pair in amino acids



;;//// are these even "bio" at all?
(delete-noun-cfr (resolve "rate"))
(define-category process-rate :specializes bio-scalar ;;(noun "rate" :super bio-scalar 
  :binds ((components biological))
  :realization 
  (:noun "rate"
         :for components))

(def-synonym process-rate 
    (:noun "kinetics"))


;; binding rate, dissociation rate, catalysis rate (from Ben Gyori)
(define-category binding-rate :specializes process-rate
		 :realization (:noun "binding rate"))

(define-category dissociation-rate :specializes process-rate
		 :realization (:noun "dissociation rate"))

(define-category catalysis-rate :specializes process-rate
		 :realization (:noun "catalysis rate"))

(define-category time-course :specializes bio-scalar ;;(noun "rate" :super bio-scalar 
  :realization 
  (:noun "time course"))

(define-category bio-concentration :specializes bio-scalar
  :realization
  (:noun "concentration"))

(define-category bio-strength :specializes bio-scalar
  :realization
  (:noun "strength"))



(def-realization protein
  :noun "protein"
  :in location)

(def-realization human-protein-family
  :noun "human protein family"
  :in location)




;;; moved from amino-acid
(define-category residue-on-protein
  :specializes molecular-location
  ;; NOT same as protein, it is the location, not the amino acid
  :instantiates :self
  :binds ((amino-acid . amino-acid)
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


(def-synonym residue-on-protein
             (:noun "position"))
(def-synonym amino-acid
             (:noun "amino acid"))



