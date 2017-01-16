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

(define-category  unit-of-measure ;; add uid to unit-of-measure -- needed for uom from TRIPS
  :mixins (has-uid)
  :specializes abstract ;; basically a typed number that applies to scalars
  :instantiates self
  :binds ((name :primitive word))
  :realization (:common-noun name))

(define-mixin-category type-marker
  :documentation "This is mixed into selected classes
   like 'protein' or 'pathway or 'cell line' so that their
   lemmas can trigger a specific compose method
   in noun noun compounds.")

(define-mixin-category bio-complement
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

  

(define-mixin-category reactome-category
   :mixins (has-name)
   :binds ((displayname)
           (reactome-id)))

(define-mixin-category in-ras2-model
   :binds ((ras2-model)))


;;;-----------------
;;; generalizations
;;;-----------------

(define-mixin-category with-measurement
   :binds ((at-measurement (:or bio-concentration measurement)) 
           (extent (:or amount measurement bio-scalar)))
   :realization
   (:at at-measurement
        :to extent))
   

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
         :but\ not excluding
         :under context
         :upon cellular-location
         :with context
         :m context
         :within cellular-location
	 :like like
	 :unlike unlike
         ))

(define-category reference-item :specializes biological
  :documentation "For things like ProteinReference and SmallMoleculeReference.
  Generic characterizations of proteins and small molecules, etc. which have
  OBO identifiers, but are not localized to cellular locations.")

;;/// This is OBE given revision to biological. 
(define-category bio-abstract :specializes abstract
   :mixins (biological))

(define-category visual-representation :specializes bio-abstract
		 ;; figures, arrows, stars, etc.
		 :realization
		 (:noun "observation"))


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
  :realization (:s subject
                   :as-comp as-comp))

(define-category scalar-variation :specializes bio-predication
                 ;;for adjectives like transient, unchanged, sustained
                 )

(define-category bio-quality :specializes quality
  :mixins (biological temporally-localized)
  :binds ((subject biological)) ;; TO-DO better name?!
  :realization
  (:of subject))

(define-category bio-measurement :specializes measurement
  :mixins (bio-quality)
  :documentation "Provides a generalization over biological and measurement")

(define-category bio-scalar :specializes scalar-quality
  :mixins (bio-quality)
  :binds ((measured-item biological))
  :realization
  (:of measured-item)
  :documentation "Provides a generalization over biological and scalar-quality")

(define-category value :specializes measurement
   :realization (:noun "value")) ;; for "a high value"

;; Rusty -- where are we supposed to put the two numbers
;; or two molecules?  Need example. 
(define-category ratio  :specializes measurement
 :binds ((measured hyphenated-triple)
	 (ratio (:or ratio number-colon-number))
	 (divisor biological))
   :realization
   (:noun "ratio"
	  :m measured
	  :of ratio
	  :to divisor))



(delete-adj-cfr (resolve "cyclic"))
(define-category bio-cyclic :specializes bio-predication
  :realization
  (:adj "cyclic"))




;;;---------------------------------
;;; top of the biological hierarchy
;;;---------------------------------

(define-category bio-entity  :specializes physical-object  ;; sweeps a lot under the rug
  :binds ((produced-by bio-method))
  :instantiates :self
  :mixins (has-UID has-name biological)
  :binds ((long-form :primitive polyword))
  :index (:permanent :key name)
  :realization (:common-noun name
                             :from produced-by))

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

(define-category anti-oxidant-response-element :specializes dna-response-element
  :realization
  (:noun ("anti-oxidant response element" "ARE")))               

(define-category ion :specializes bio-chemical-entity
  :binds ((molecule molecule)))



;; TO-DO figure out with David why this isnt working as expected...
;; why do we still have the old definitions of "processes" hanging arount
(delete-noun-cfr (resolve "process"))
(delete-noun-cfr (resolve "processes"))

(define-category bio-process
    :specializes process
    :mixins (has-UID has-name biological with-measurement)
    :binds ((subject biological)
            (by-means-of (:or bio-process mechanism bio-method pathway))
	    (using protein)
	    (manner manner) ;; conflict with "increase" bio-process CHECK THIS WAS  bio-method
	    (as-comp as-comp)
	    (target (:or protein gene))
        )
    :realization 
    (:noun "process"
           :s subject
           :of subject
	   :by by-means-of ;;find out what uses this
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
  :realization 
  (:noun "processXXX")
  :documentation "No content by itself, provides a common parent
  for 'processing', 'ubiquitization', etc. that may be the basis
  of the grammar patterns.")

(define-category response :specializes bio-process
    :binds ((beneficiary biological)
            (agent biological)) ;; (:or biological drug)))
    :realization
    (:verb "respond"
           :etf (sv)
           :noun "response"
           :of beneficiary
           :to agent))

(define-category cellular-process :specializes response
  :mixins (has-UID has-name biological)
  :instantiates self
  :index (:permanent :key name)
  :realization
  (:common-noun name
                :noun "cellular response"))

(define-category named-bio-process
    :specializes other-bio-process
  :realization (:common-noun name) ;; for nominal forms
  :documentation "No content by itself, provides a common parent
    for 'processing', 'ubiquitization', etc. that may be the basis
    of the grammar patterns.")

(define-category blocked-category :specializes abstract)

(define-category caused-bio-process
  :specializes bio-process
  :restrict ((subject blocked-category))
  :binds
  ((agent ;; supercedes subject in bio=-process
    (:or  ;;bio-entity
     bio-chemical-entity ;;molecule bio-complex drug
     bio-process bio-mechanism bio-method  process-rate
     bio-relation ;; The ability of oncogenic RAS to ... allows the cell to have a
     measurement 
     bio-scalar ;; "these data raised the possibility..."
     protein-domain ;; not molecular-location -- that allows residues
     )) ;; membrane targeting domains that facilitate interaction with the plasma membrane
   (object (:or bio-entity cell-entity molecular-location measurement bio-scalar))
   (affected-process (:or bio-process bio-mechanism bio-method bio-quality
                          bio-predication bio-relation medical-treatment))
   ;;(:or biological molecule) molecule is to allow for "loading of GTP onto ..."
   )
  :realization
  (:s agent
      :o object
      :o affected-process
      :of affected-process ;;object
      :of object
      :m agent
      :m object
      :by agent     
      ))

(define-category caused-biochemical-process :specializes caused-bio-process
                 :binds ((process-for biochemical-process)))

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
  :binds ((multiplier (:or fold unit-of-measure)))
  :realization
  (:verb ("control" :present-participle "controlling"
                    :present-participle "controling") 
         :etf (svo-passive)
         :by multiplier
         :m multiplier))

(define-category negative-bio-control :specializes bio-control
  :binds ((inhibited-process bio-process))
  :realization (:verb "negatively controls"  :etf (svo-passive)
                      :from inhibited-process))

(define-category positive-bio-control :specializes bio-control
  :realization (:verb "positively controls"  :etf (svo-passive)))

(define-category bio-rhetorical :specializes event
  :mixins (biological bio-thatcomp bio-whethercomp with-measurement)
  :binds ((agent (:or pronoun/first/plural
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
      :of statement
      :in fig
      :by method
      :through method
      :under method
      :in by-means-of
      ;;:from by-means-of
      :via method
      :with method
      :at ratio-condition
      :for result))

(define-category certainty :specializes bio-rhetorical
  :realization
  (:noun "certainty" :adj "certain"))

;; can't seem to get this to work -- DAVID??
;;(define-adverb "certainly" :super-category category::certainty)

(define-category evidence :specializes bio-rhetorical
  :binds ((fact biological))
  :realization
  (:verb ("evidenceXX" :past-tense "evidenced")
         :noun "evidence"
         :etf (svo-passive)
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
           (produces bio-chemical-entity))
   :realization (:noun "reaction"
                       :verb "react"
                       :etf (sv)
                       :with co-reactant
                       :to produces
                       ))

(define-category biopax-entry :specializes abstract
                 :binds
                 ((dataSource)
                  (xref)))

(define-category bio-interaction :specializes bio-process)
(define-category bio-conversion :specializes bio-interaction)

(define-category biochemical-reaction :specializes bio-conversion ;; from biopax
                 )



#+ignore
(define-category catalysis-reaction :specializes  ;; rename to avoid conflict with biopax model
  :restrict ((object biochemical-reaction))
  :binds ((controlType)
          ;;(controlled BiochemicalReaction) from BioPax3
          ;;(controller (:or protein complex bio-entity)) from BioPax3
          )
  :realization
  (:verb "catalyze" :noun "catalysis" 
         :etf(svo-passive)

         ));;/// "catalyysis of phosphorylation by MEK"

;;/// "catalysis of phosphorylation by MEK"
(define-category catalytic-activity :specializes positive-bio-control
  :restrict ((object biochemical-reaction))
  :bindings (uid "GO:0003824")
  :binds ((controlType)
          (catalyst (:or protein bio-complex gene)))
  :realization
  (:verb "catalyze" :noun "catalysis" :adj "catalytic"
         :etf (svo-passive)
         :of catalyst))


(define-category enzyme-activity :specializes catalytic-activity
  :realization
  (:noun "enzyme activity"))

(define-category kinase-activity :specializes enzyme-activity
  :realization
  (:noun "kinase activity"))

(define-category purposive-process :specializes  process
   :binds ((result-or-purpose bio-process))
   :realization
   (:to-comp result-or-purpose
             :for result-or-purpose))

(define-category bio-method :SPECIALIZES purposive-process
  :mixins (has-UID has-name biological)
  :binds ((agent (:or pronoun/first/plural biological))
          (object (:or biological measurement bio-scalar)))
  :realization (:s agent
                   :o object
                   :by agent
                   :of object) ;; for nominal forms
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

(define-category measure :specializes bio-method
  :binds ((method bio-method)
          (measured-item (:or bio-entity bio-process))
          ;;(location bio-location)
          )
  :realization 
  (:verb "measure" :noun "measurement"
         :etf (svo-passive)
         :m measured-item
         :of measured-item
         :by method
         ;;:in location
         :with method))

(define-category clinical-trial :specializes bio-method
		 :realization
		 (:noun "clinical trial"))


(define-category bio-event :specializes bio-process
  :mixins (has-UID has-name biological)
  :binds ((process bio-process))
  :lemma (:common-noun "event")
  :realization (:common-noun name
                :for process)
  :documentation "No content by itself, provides a common parent
    for 'acquire, act, addition, counfound etc. that may be the basis
    of the grammar patterns.")

(define-category bio-relation :specializes bio-predication
  :mixins (has-UID has-name biological)
  :binds ((theme (:or biological predication))) ;; this probably belongs higher
  :realization (:for timeperiod) ;; for nominal forms
  :documentation "No content by itself, provides a common parent
    for 'constitute, contains etc. that may be the basis
    of the grammar patterns.")

(define-category bio-event-relation :specializes bio-relation
                 :restrict ((subject perdurant ;; this captures all of these and more
                                     ;;(:or bio-process bio-method bio-mechanism)
                                     )
             (theme perdurant))
  :realization
  (:s subject
      :o theme))

(define-category aspectual-relation :specializes bio-relation
  :binds ((action bio-process))
  :realization (:to-comp action))

                 
(define-category post-adj :specializes linguistic) ;; used as a marker for adjectives which can follow nouns

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
          (quantitative-condition (:or amount measurement bio-scalar)))
  :mixins (has-name)
  :realization
  (:noun "context"
         ;; "yielded sustained C-RAF(S338) and ERK phosphorylation in the context of drug treatment"
         :of process
         :of entity
         :of quantitative-condition))

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
  :realization (:common-noun name
                             :of molecule-type))

;;; using molecule here as a standin for a better taxonomic treatment
;;  The biologists often talk of a "fraction" as a separated-out portion of
;;  a solution. We need some more general way of talking about this
(define-category component :specializes molecule
		 :binds ((whole (:or bio-complex bio-process)))
  :realization
  (:noun "component"
         :of whole
	 :in whole))

(def-synonym component 
    (:noun "part"))

(def-synonym component (:noun "fraction")) 

(define-category medical-treatment :specializes purposive-process
  :binds ((disease disease)
          (medical-treatment medical-treatment))
  :mixins (biological)
  :realization
  (:noun "medical treatment"
         :m disease
         :for disease
         :for medical-treatment
         ))


(noun "chemotherapy" :super medical-treatment)
(noun "organ transplant" :super medical-treatment)
(noun "therapeutic strategy" :super medical-treatment)

(define-category drug :specializes molecule
  :instantiates self
  :index (:permanent :key name)
  :lemma (:common-noun "drug")
  :realization (:common-noun name))

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
(define-category gene :specializes bio-chemical-entity ;;// case in point
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

;;; These have been moved here to allow state to be a variant

(define-category bio-state :specializes variant ;; not quite right, but it is almost always a protein
                 ;; for things like "activated state"
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

(define-category disease-process :specializes process
  :mixins (biological))

(define-category metastasis :specializes disease-process
  :binds ((cancer cancer))
  :realization
  (:noun ("metastasis" :plural "metastases") :verb "metastasize"
         :etf (sv)
         :s cancer))

(define-category disease  :specializes bio-context
  :mixins (has-uid)
  :binds ((organ bio-organ))
  :instantiates self
  :index (:permanent :key name)
  :lemma (:common-noun "cancer")
  :realization (:common-noun name
                             :noun "disease"
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
  :mixins (has-uid)
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
           :bindings (uid ,id name ,name)
           :realization
           (:noun ,name ,@(when adj `(:adj ,adj))))
         (handle-mitre-link ,(find-symbol (symbol-name cat-name) (find-package :category)) ,id)
         ,@(loop for syn in synonyms collect `(def-synonym ,cat-name (:noun ,syn)))))))

       

(define-cellular-location "Golgi apparatus" "GO:0005794")
(define-cellular-location "basolateral plasma membrane" "GO:0016323")
(define-cellular-location "caveola" "GO:0005901")
(define-cellular-location "cell leading edge" "GO:0031252")
(define-cellular-location "cell-cell junction" "GO:0005911")
(define-cellular-location "cytoplasm" "GO:0005737" :adj "cytoplasmic")
(define-cellular-location "cytoplasmic vesicle" "GO:0031410")
(define-cellular-location "cytoskeleton" "GO:0005856")
(define-cellular-location "cytosol" "GO:0005829" :adj "cytosolic")
(define-cellular-location "dendritic spine" "GO:0043197")
(define-cellular-location "early endosome" "GO:0005769")
(define-cellular-location "endoplasmic reticulum membrane" "GO:0005789")
(define-cellular-location "endoplasmic reticulum" "GO:0005783")
(define-cellular-location "endosome" "GO:0005768" :adj "endosomal")
(define-cellular-location "extracellular matrix" "GO:0031012")
(define-cellular-location "extracellular region" "GO:0005576")
(define-cellular-location "focal adhesion" "GO:0005925")
(define-cellular-location "growth cone" "GO:0030426")
(define-cellular-location "hemidesmosome" "GO:0030056")
(define-cellular-location "integral to membrane" "GO:0016021")
(define-cellular-location "intracellular" "GO:0005622")
(define-cellular-location "lamellipodium" "GO:0030027")
(define-cellular-location "lamellipodia" "GO:0030027")
(define-cellular-location "filopodium" "GO:0030175")
(define-cellular-location "filopodia" "GO:0030175")
(define-cellular-location "membrane raft" "GO:0045121")
(define-cellular-location "membrane" "GO:0016020")
(define-cellular-location "mitochondrial inner membrane" "GO:0005743")
(define-cellular-location "mitochondrial intermembrane space" "GO:0005758")
(define-cellular-location "mitochondrial matrix" "GO:0005759")
(define-cellular-location "neuromuscular junction" "GO:0031594")
(define-cellular-location "nucleoplasm" "GO:0005654")
(define-cellular-location "nucleus" "GO:0005634" :adj "nuclear")
(define-cellular-location "plasma membrane" "GO:0005886")
(def-synonym plasma-membrane (:noun "PM"))
(define-cellular-location "platelet dense granule lumen" "GO:0031089")
(define-cellular-location "trailing edge" "GO:0031254")
(define-cellular-location "juxtamembrane" "GO:????")

(define-category stress-granule :specializes cellular-location
  :realization (:noun "SG"))
(def-synonym stress-granule (:noun "stress granule"))




(define-category non-cellular-location  :specializes bio-location
  :instantiates self
  :index (:permanent :key name))

(define-category bio-organ :specializes non-cellular-location
  :mixins (has-UID has-name)
  :binds ((organism organism))
  :instantiates self
  :index (:permanent :key name)
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
          (variant-number number)
	  (equilibrium-state equilibrium)
	  (state bio-state))
  :mixins (  reactome-category  in-ras2-model )
  :index (:permanent :key name)
  :lemma (:common-noun "protein")
  :realization (:common-noun name
                :in complex
                :in equilibrium-state
                :in state
                :in location
                :m site))

(define-category protein-state :specializes molecule
  :binds ((protein protein)
          (post-translational-mod post-translational-modification)))


(define-category enzyme :specializes protein ;; what's the relationship to kinase?   ;; not all enzymes are proteins -- there are RNA enzymes
  :binds ((enzyme protein)
          (reaction bio-process)
          (enzyme-activity enzyme-activity))
  :instantiates :self
  :lemma (:common-noun "enzyme")
  :realization (:common-noun name
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
  :realization (:common-noun name
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
  :binds ((substrate (:or protein bio-complex gene)))
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
  :lemma (:common-noun "phosphatase")
  :realization (:common-noun name
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
   :mixins (biological has-uid has-name)
   :binds ((with-protein protein))
  :realization (:with with-protein))

(define-category cell-line :specializes cell-entity
  :instantiates self
  :index (:permanent :key name)
  :realization (:common-noun name))

(define-category cell-type :specializes cell-entity
  :instantiates self
  :index (:permanent :key name)
  :realization
  (:common-noun name
     :noun "cell type"))

;; used in biopax
(define-category organism :specializes endurant
   :mixins (has-name has-uid biological)
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

(define-category virus :specializes organism
                 :instantiates self 
                 :index (:permanent :key name)
                 :lemma (:common-noun "virus")
                 :realization (:common-noun name))

(define-category bacterium :specializes organism
                                  :instantiates self 
                 :index (:permanent :key name)
                 :lemma (:common-noun ("bacterium" :plural "bacteria"))
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
  :lemma (:common-noun "human protein family")
  :realization (:common-noun name
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

(define-category pair-with-protein
  :specializes bio-aggregate
  :binds ((left) ;; e.g. a protein region: "RBD-Ras"
          (right (:or protein bio-family nucleotide gene)))
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
  :binds ((left (:or protein bio-family nucleotide gene))
          (right (:or protein bio-family nucleotide)))
  :index (:sequential-keys left right))

;; See also amino-acid-pair in amino acids



;;//// are these even "bio" at all?
(delete-noun-cfr (resolve "rate"))
(define-category process-rate :specializes bio-scalar ;;(noun "rate" :super bio-scalar 
                 :binds ((components biological)
                         (process bio-process))
  :realization 
  (:noun "rate"
         :for components
         :m process))

(def-synonym process-rate 
    (:noun "kinetics"))

#|
;; binding rate, dissociation rate, catalysis rate (from Ben Gyori)
(define-category binding-rate :specializes process-rate
		 :realization (:noun "binding rate"))

(define-category dissociation-rate :specializes process-rate
		 :realization (:noun "dissociation rate"))

(define-category catalysis-rate :specializes process-rate
		 :realization (:noun "catalysis rate"))
|#


(define-category bio-concentration :specializes bio-scalar
  :realization
  (:noun "concentration"))

(define-category bio-strength :specializes bio-scalar
  :realization
  (:noun "strength"))

;;; moved from amino-acid
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


(def-synonym residue-on-protein
             (:noun "position"))
