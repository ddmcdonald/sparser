;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2020 SIFT LLC. All Rights Reserved
;;;
;;;    File: "taxonomy"
;;;  Module: "grammar/model/sl/biology/
;;; version: November 2020

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

;; Other candidates to lifting higher in the taxonomy
;;  bio-movement
;;  mechanism
;;  with-measurement

;;;------------------------
;;; non-referential things
;;;------------------------

(define-category blocked-category :specializes abstract)

(define-category over-ridden)
;; n.b. this is just a simple category
;; this is used only for over-riding inherited variables


;;;--------
;;; mixins
;;;--------

(define-mixin-category type-marker
  :specializes linguistic
  :documentation "This is mixed into selected classes
   like 'protein' or 'pathway or 'cell line' so that their
   lemmas can trigger a specific compose method
   in noun noun compounds.")

;;--- labels needed by various sources / exports

(define-mixin-category reactome-category
  :specializes adds-relation
  :binds ((displayname)
           (reactome-id)))

(define-mixin-category in-ras2-model
  :specializes adds-relation
  :binds ((ras2-model)))


;;;-------------------------------
;;; complements (mostly mixed in)
;;;-------------------------------

(define-mixin-category bio-complement
  :specializes abstract
  :binds ((statement (:or
                      #| these are not statement-like items
                      -- they should be handled differently
                      (LEAVE THIS TIL A BIT LATER)
                      |#

                      bio-chemical-entity
                      molecule-state
                      bio-process
                      activity-with-a-purpose ;; generalizes bio-method
                      information ;; generalizes "evidence" and "observation"
                      mechanism
                      
                           be
                           bio-predication
                           predication
                           event-relation
                           copular-predication
                           bio-relation
                           bio-rhetorical
                           there-exists
                           perdurant
                           ;; not sure either of these is needed
                           relation
                            abstract ;; for information like "evidence"
                           )))
  :documentation "Common parent to the other types of biological 
    complements to share the same standard set of bindings.")


;; closely related to prop-attitude and we should revise to take that into account
(define-mixin-category bio-thatcomp
  :specializes bio-complement
  :realization (:thatcomp statement)
  :documentation "Actions that take a that complement -- verbs of
     communication, demonstration, observation. Would like to have a
     better break-down of these -- at least for whether they are
     positive or negative in terms of belief state. The prefix -bio-
     may not be warranted, since these are quite general, but at the
     moment we are putting them below the bio-processes.")

(define-mixin-category bio-howcomp
  :specializes bio-complement
  :realization (:howcomp statement))
  
(define-mixin-category bio-whethercomp
  :specializes bio-complement
  :realization (:whethercomp statement))

(define-mixin-category bio-whycomp
  :specializes bio-complement
  :realization (:whycomp statement))
 
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
  :mixins (with-quantifier has-location)
  :binds ((context (:or bio-context
                        experimental-condition
                        bio-mechanism ;; for pathways -- they are context, not manner
                        experiment-data))
          (disease disease)
          (cell-line cell-line)
          (cell-type cell-type)
          (organ (:or bio-organ where))
          (preparation preparation)
          (cellular-location cellular-location)
          (cellular-process cellular-process)
          (organism organism) ;; human? mouse?
          (non-cellular-location non-cellular-location)
          (examples biological)
          (excluding biological) ;; nucleotide-free Ras but not GTP-loaded Ras
	  ;; (modifier) provided by top
	  (like biological)
	  (unlike biological))
  :restrict ((location non-cellular-location))          
  :realization
    (:adj "biological"
     :at cellular-location
     :from cell-line
     :from cell-type
     :for cell-type
     :for cell-line
     :in cell-line
     :in cell-type
     :in cellular-location
     :in context
     :in disease
     :in info-context
     :in non-cellular-location
     :in organ
     :in preparation
     :in organism
     :m cellular-location
     :m non-cellular-location
     :m cell-type
     :m cell-line
     :m context
     :m organism
     :m cellular-process
     :for cellular-process
     ;;:of variant
     :on cellular-location
     :such\ as examples
     :but\ not excluding
     :under context
     :upon cellular-location
     :with context
     :within cellular-location
     :within non-cellular-location
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
  :binds ((as-comp as-comp)
          (certainty certainty))
  :restrict ((participant (:or biological document-part)))
  :realization
  (:s participant
      :as-comp as-comp))

(define-mixin-category of-participant-bio-predication :specializes bio-predication
  :realization (:of participant))

;;--- Quality

(define-category bio-quality :specializes bio-predication
  :mixins (biological))


;;;--------------
;;; measurements
;;;--------------

(define-mixin-category with-measurement
  :specializes adds-relation
  :binds ((at-measurement (:or scalar-attribute measurement)) 
          (extent (:or scalar-attribute  amount measurement)))
  :realization
     (:at at-measurement
      :to extent))

#+ignore (define-category bio-measurement :specializes measurement
           :mixins (bio-quality has-uid)
           :documentation "Provides a generalization over biological and measurement")

;; ratio and value moved to amounts;measurements

;;;------------
;;; bio-entity
;;;------------

(define-category bio-entity  :specializes physical-object  ;; sweeps a lot under the rug
  :mixins (has-UID biological capable-of-being-measured)
  :binds ((produced-by activity-with-a-purpose))
  :instantiates :self
  :binds ((long-form :primitive polyword))
  :index (:permanent :key name)
  :realization (:common-noun name
                :from produced-by))




(define-category plasmid :specializes bio-entity
  :realization
    (:noun "plasmid"))


(define-category bio-chemical-entity :specializes bio-entity
  :mixins (has-UID biological physical-agent)
  :documentation  "includes all molecules and complexes"
  :binds ((in-equilibrium-with equilibrium))
  :realization
    (:noun "bio-chemical-entity"
     :in in-equilibrium-with))

(define-category dna :specializes bio-chemical-entity
   :bindings (uid "CHEBI:16991")
   :realization (:noun ("DNA" "deoxyribonucleic acid" "dna")))

(define-category dna-motif :specializes bio-chemical-entity
                 :documentation "enhancers, promoters, etc., also response elements")

(define-category promoter :specializes dna-motif
  :realization
  (:noun "promoter"))               
		 
(define-category dna-response-element :specializes dna-motif
  :realization
    (:noun "response element"))

(define-category anti-oxidant-response-element :specializes dna-response-element
  :realization
    (:noun ("anti-oxidant response element" "ARE")))               

(define-category rna-region :specializes bio-chemical-entity
                 :documentation "subpart of RNA, e.g., UTR for untranslated region")





;;;-------------
;;; bio-process
;;;-------------

;; TO-DO figure out with David why this isnt working as expected...
;; why do we still have the old definitions of "processes" hanging
(delete-noun-cfr (resolve "process"))
(delete-noun-cfr (resolve "processes"))

(define-category bio-process
  :specializes process
  :mixins (has-UID biological with-measurement)
  :documentation "No content by itself, provides a common parent
    for 'processing', 'ubiquitization', etc. that may be the basis
    of the grammar patterns."
  :binds ((by-means-of (:or bio-process mechanism
                            activity-with-a-purpose ;;generalizes bio-method
                            pathway))
          (using protein)
          (manner manner) ;; conflict with "increase" bio-process CHECK THIS WAS  bio-method
          (without-using protein)
          (without-means-of (:or bio-process mechanism
                                 activity-with-a-purpose ;; generalizes bio-method
                                 pathway))
          (as-comp as-comp)
          (target (:or protein gene)))
  :restrict ((participant  biological))
  :realization 
    (:noun "process"
     :s participant
     :of participant
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


;; actually, bio-activity is the process seen
;; from the point of view of the subject/agent
;; so that "activity of X" means X is the active
;; entity, whereas "<process-name> of X" typically means object
;; so "phosphorylation of MEK" means MEK is phosphorylated
;; perhaps this is related to being a quality of the agent
(define-category bio-activity
    :specializes other-bio-process
    :binds ((theme biological)
            (process process))
    :realization
    (:noun "activity"
          :towards theme
          :on theme
          :m process))

(define-category named-bio-process
  :specializes other-bio-process
  :realization (:common-noun name)) ;; for nominal forms

(defun apply-of-np-to-nominalization-of-transitive (verb-or-np of)
  (when (and
         (eq (form-cat-name (left-edge-for-referent verb-or-np))
             'np)
         (find-object-vars verb-or-np))
    (lsp-break "apply-of-np-to-nominalization-of-transitive")))
    

(define-category caused-bio-process-base
    :specializes bio-process
    :mixins (with-agent)
    :restrict ((participant blocked-category)
               (agent
                (:or bio-chemical-entity ;;molecule bio-complex drug
                     infectious-agent ;; virus, bacterium
                     medical-condition
                     experimental-condition
                     bio-process bio-mechanism activity-with-a-purpose
                     scalar-attribute  ;; controled by the rate of phosphorylation
                     ))) ;;generalizes bio-method
    :binds ((cause ;; semantically like agent, but want to tighten the restriction on premodifiers used as agents
             ;; we had gotten "an equivalent activation" which treated "equivalent" as an agent
             (:or rate ; n.b. this is the rate in amounts/measurements.lisp
                  bio-relation ;; The ability of oncogenic RAS to ... allows the cell to have a
                  information ;; "these data raised the possibility..."
                  ;;amount measurement
                  protein-domain ;; not molecular-location -- that allows residues
                  disease ;; to allow for "cancer targets SMAD3"
                  ))
            (object
             (:or bio-entity cell-entity molecular-location
                  artifact ; "create a model"
                  ;;bio-process bio-mechanism
                  scalar
                  bio-quality
                  disease)))
    :realization
    (:s agent
        :s cause
        :o :object
        ;;:of :object
        :m agent
        :m object
     :by agent))

(define-category caused-bio-process
  :specializes caused-bio-process-base
  :realization
  (:of :object))

(define-category caused-bio-process-with-of-agent
    :specializes caused-bio-process-base
    :realization
    (:of :agent))


(define-category process-control-process :specializes caused-bio-process
  :binds ((affected-process (:or bio-process bio-mechanism activity-with-a-purpose ;; generalizes bio-method
                                 bio-predication bio-relation medical-treatment))
          (affected-other comlex-noun)
          (comlex-object comlex-noun))
  :restrict ((object
              (:or bio-entity cell-entity molecular-location
                   disease
                   ;;measurement
                   ;;scalar-attribute
                   related-thing
                   )))
  :realization
  (:o affected-process
   :o affected-other
   :o object
   :o comlex-object
   :of affected-process
   :of object))

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
  :mixins (biological has-uid)
  :binds ((participant biological))
  :realization
    (:noun "mechanism"))


;;;----------------
;;; bio-rhetorical
;;;----------------

(define-category bio-rhetorical :specializes perdurant
  :mixins (bio-complement
           with-agent biological 
           bio-thatcomp bio-whethercomp
           with-measurement bio-howcomp)
  :restrict ((agent
              (:or
               physical-agent social-agent ; "participants could read
               bio-chemical-entity
               group ;; a group/set/subset...
               cell-entity
               organism ;; "these animals showed..."
               these
               ;; bio-entity too general -- leads to problems with created semantic rules
               bio-chemical-entity
               bio-location ;; "the Y561 site displayed no difference..."
               disease ;; "SARS-CoV-2 infection shows ..."
               information
               quality ;; "validate the role" -- perhaps there is a better way to do this
               bio-quality
               bio-rhetorical
               bio-process ;; the B-RAFV600E mutation predicts
               activity-with-a-purpose ;; super-category of bio-method -- now includes "study"
               ;;bio-method ;; high-throughput functional screens may inform
               bio-mechanism    ;; "this pathway describes ..."
               bio-predication ;; the success of raf and mek inhibitors
               ;; measurement     ;; these data -- data is now "information" not "measurement"
               document-part ;; subsumes article-figure
               physical-agent
               social-agent
               )))
  :binds ((ratio-condition ratio)
	  (fig article-figure)
	  (method activity-with-a-purpose) ;; generalizes bio-method
          (context bio-context)
          (result biological)
	  (by-means-of (:or bio-process mechanism activity-with-a-purpose)));; generalizes bio-method
  :realization
    (:s agent
     :o statement
     :by agent
     :by method
     :of :object
     :in fig
     :through method
     :under method
     :in by-means-of
     ;;:from by-means-of
     :via method
     :with method
     :at ratio-condition
     :for context
     :for result))




;;;--------------
;;; bio-movement
;;;--------------

(define-category bio-movement
  :specializes bio-process
  :documentation "like translocation, entry and 'binding to membrane'"
  ;; :mixins (move) this creates an inconsistent taxonomy -- WH -- TO-DO
  :restrict ((cellular-location over-ridden)) ;; really? ddm 2/3/17
  :binds ((moving-object (:or bio-entity bio-chemical-entity))
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
     :m moving-object
     :with co-object))


(define-category bio-self-movement :specializes bio-movement
  :realization
    (:s moving-object
     :of moving-object))

(define-category bio-transport :specializes bio-movement
  :mixins (caused-bio-process)
  :bindings (uid "GO:0006810")
  :restrict ((object bio-entity))               
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


#+ignore (define-category purposive-process :specializes  process  ;;; replaced by 'activity-with-a-purpose'
  ;; not quite right -- the verb takes an object, but it is the subject that is moved to the to-comp
  ;;  not quite a raising verb, however, since the subject of the main verb has a meaning
  :binds ((result-or-purpose bio-process))
  :realization
     (:to-comp result-or-purpose
      :for result-or-purpose))

(define-category bio-method :specializes directed-activity-with-a-purpose
  :mixins (has-UID biological purposive-activity-with-instrument)
  :documentation "Indicates something that experimental biologist do,
    and restricts the agent and object as a means of recognizing such activities
    and provides a common parent
    for 'liquid chromatography', etc. that may be the basis
    of the grammar patterns."
  :restrict ((agent biological)
             (object (:or biological
                          attribute ;; was scalar-attribute, not sure why we restricted to scalar-attribute, "we obtained results"
                          measure ;; assay is a measure ;; amount measurement 
                          ))
             (instrument (:or bio-process activity-with-a-purpose))) ;; generalizes bio-method
  
  )

(define-category medical-method :specializes bio-method
                 :documentation "No content by itself, but indicates something that
    medical personnel do to patients e.g. 'transfuse', 'intubate' etc.")
    
(define-category immune-method :specializes bio-method
   :binds ((antibody (:or protein antibody))
           (tested-for bio-chemical-entity)
           (origin (:or cellular-location cell-line)))
   :realization
   (:from origin
          :with antibody
          :via antibody
          :for tested-for))


(define-category clinical-trial :specializes bio-method
  :realization
    (:noun "clinical trial"))




(define-category bio-event :specializes bio-process
  :mixins (has-UID biological)
  :documentation "Parent for 'acquire, act, addition, counfound etc.
    that may be the basis of the grammar patterns."
  :binds ((process bio-process))
  :lemma (:common-noun "event")
  :realization
    (:common-noun name
     :for process))


(define-category bio-relation :specializes bio-predication
  :mixins (has-UID biological)
  :documentation "as in  'constitute, contains etc"               
  :binds ((theme (:or biological predication abstract information attribute))
          ;; information dominates evidence
          (patient (:or biological predication abstract information
                        attribute measurement amount)))
  ;; this probably belongs higher
  :realization
    (:for timeperiod
      :o patient
      :s theme
      :of theme))
 

(define-category aspectual-relation :specializes bio-relation
  :mixins (control-verb-intrans))
                 
(define-category post-adj :specializes linguistic 
  :documentation "used as a marker for adjectives which can follow nouns")




(define-category equilibrium :specializes bio-relation
  :binds ((with-species bio-chemical-entity))
  :realization
    (:noun ("equilibrium" :plural "equilibria")
     :with with-species))



(define-category feedback-loop :specializes bio-mechanism
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
          (relation bio-relation) ;; for "resistance" etc.
          (quantitative-condition (:or scalar-attribute ;; amount measurement
                                       )))
  :realization
    (:noun "context"
     ;; "yielded sustained C-RAF(S338) and ERK phosphorylation in the context of drug treatment"
     :of process
     :of entity
     :of relation
     :of quantitative-condition))


;;;--------------
;;; bio-location
;;;--------------

(define-category bio-location  :specializes location
  :mixins (has-UID biological)
  :instantiates self
  :index (:permanent :key name))

(define-category substance :specializes bio-chemical-entity ;; for things like "liquid" "colloid" and such based on TRIPS
  :instantiates :self
  :realization
    (:noun "substance"))

;; should possibly define element and its relation, and also add some
;; relation to molecule
(define-category atom :specializes bio-chemical-entity
                 :binds ((molecule molecule))
                 :lemma (:common-noun "atom"))

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

(define-category ion :specializes bio-chemical-entity
  :binds ((molecule molecule)))


(define-category bio-component
  :specializes component
  :restrict ((whole (:or bio-complex bio-process))))


(noun "toxin" :super molecule) ;;"CHEBI:27026"
(noun "cytotoxin" :super toxin)
(noun "cardiotoxin" :super toxin)


(define-category rna :specializes molecule
  :instantiates self
  :bindings (uid "NCIT:C812")
  :index (:permanent :key name)
  :lemma (:common-noun "RNA")
  :realization
     (:common-noun name 
                   :noun ("ribonucleic acid" "rna")))

(define-category micro-rna  :specializes rna
  :instantiates self
  :bindings (uid "NCIT:C25966")
  :index (:permanent :key name)
  :lemma (:common-noun "micro-rna")
  :realization
     (:common-noun name 
                   :noun ("miR" "microRNA" "miRNA" "mirna" "microrna" "mir")))

(define-category ce-rna  :specializes rna
  :instantiates self
  :realization
     (:noun ("ceRNA" "ce-RNA" "competing endogenous RNA")))


(define-category lipid :specializes molecule
  :instantiates :self
  :index (:permanent :key name)
  :lemma (:common-noun "lipid")
  :realization
    (:common-noun name))
(def-synonym lipid (:noun "fat"))

(define-category phospholipid :specializes lipid
  :instantiates :self
  :index (:permanent :key name)
  :lemma (:common-noun "phospholipid")
  :realization
     (:common-noun name))

(define-category carbohydrate :specializes molecule
                 :bindings (uid "CHEBI:16646")
                 :realization (:noun "carbohydrate"))
(def-synonym carbohydrate (:noun "saccharide"))

(define-category polysaccharide :specializes carbohydrate
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



(define-category gene :specializes dna
  :binds ((expresses  protein)
          (in-family protein-family)
          (in-pathway pathway)
          )
  :realization
  (:noun "gene"
         :m expresses
         :for disease
         :for expresses
         :in disease
         :in in-family
         :in in-pathway
))

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

(noun "exon" :super gene) ;; the sequences of a gene that are present in the final, mature, spliced messenger RNA molecule from that gene.
(noun "intron" :super dna)


;; molecule-states are the predications, whereas bio-states are the
;;  molecules in some states
(define-category molecule-state :specializes bio-predication)

(define-category bio-conformation :specializes molecule-state
  :binds ((subject biological))
  :realization 
  (:noun "conformation"
         :of subject))




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

(define-mixin-category on-substrate :specializes biological
   :binds ((substrate
            ;; add gene because of ambiguity in use b y biologists
            ;; "What genes does MAPK1 phosphorylate?"
          (:or bio-complex peptide component gene))
         (site
          (:or protein-domain region-of-molecule))))

(define-category load :specializes caused-bio-process
  :mixins (on-substrate)
  :restrict ((object top))
  :realization
    (:verb "load"
     :etf (svo-passive)
     :of :object
     :onto substrate))



(define-category stoichiometry :specializes bio-relation
  ;; not sure this is the same stoichiometry as used in biopax
  :mixins (reactome-category)
  :binds ((physicalEntity (:or bio-complex small-molecule protein component))
          (stoichiometricCoefficient)) ;; an integer -- ask David
  :realization
    (:noun "stoichiometry"
      :of physicalEntity))




(define-category experimental-condition :specializes bio-context
                  :mixins (has-uid) 
  :instantiates self
  :index (:permanent :key name)
  :lemma (:common-noun "condition")
  :realization
     (:common-noun name))

(define-category experimental-system :specializes experimental-condition
  :realization
    (:noun "system"))



(define-category molecular-location  :specializes bio-location
  :mixins (on-substrate)
  :instantiates self
  :index (:permanent :key name)
  :realization
    (#|:noun "region"|#
     :of substrate))

(define-category protein-domain
  :specializes molecular-location
  :documentation "not sure this is the correct term, but intended for things
    like the G1 box and the G-domain"
  :instantiates :self
  :realization
     (:noun "domain"
      :m substrate
      :m domain      
      :of substrate))

#+ignore(def-synonym protein-domain (:noun "region"))
(def-synonym protein-domain (:noun "segment")) ;"C-terminal segment of PEA-15"

#| (show-sents "region") in R3 gets quite specific phrases ('linker-region')
 or instances of region-of-molecule
|#
(define-category region-of-molecule
  :specializes molecular-location
  :binds ((bounds biological))
  :realization
    (:noun "region"
     :between bounds))


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
	  (state bio-state)
          (in-pathway pathway)
          (in-family protein-family))
  :restrict ((context (:or bio-mechanism ;; for pathways -- they are context, not manner
                           experiment-data
                           experimental-system)))
  :mixins (  reactome-category  in-ras2-model )
  :index (:permanent :key name)
  :lemma (:common-noun "protein")
  :realization
    (:common-noun name
     :in complex
     :in equilibrium-state
     :in state
     :in in-pathway
     :in in-family
     :m site))

 ;; subject in on bio-predication

(define-category slashed-protein-collection :specializes protein
                 :mixins (collection)
                 ;; for things like "MEK/ERK" which can be treated as protein collections
                 ;; sometimes, and as part of a pathway description sometimes
                 ;; don't want to treat this as a simple collection, since it is not
                 ;; distributed in contextual-interpretation, e.g. "the MEK/ERK pathway" is
                 ;; not the collection of the MEK and ERK pathways
                 )

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

(define-category chaperone :specializes protein
  :binds ((protein protein))
  :realization
  (:noun ("chaperone" "chaperone protein" "molecular chaperone")
           :for protein
           :m protein))

(define-category co-chaperone :specializes protein
  :binds ((protein protein))
  :realization
  (:noun ("co-chaperone" "molecular co-chaperone" "co-chaperone protein")
           :for protein
           :m protein))



(define-mixin-category with-specified-amino-acid
   :specializes adds-relation
   :binds ((amino-acid amino-acid)))

(define-category post-translational-enzyme :specializes enzyme
                 :mixins (with-specified-amino-acid)
  :binds ((residue residue-on-protein)))


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

(define-category methyltransferase-enzyme :specializes enzyme
  :realization (:noun "methyltransferase enzyme"))
  
(define-category dna-methyltransferase :specializes methyltransferase-enzyme
  :realization (:noun "DNA methyltransferase"))

(define-category m6a :specializes dna-methyltransferase
                 :realization (:noun "m6 a"))

(def-synonym m6a (:noun "m6a"))
(def-synonym m6a (:noun "m6A"))
(def-synonym m6a (:noun "m6 A"))

(define-category m4c :specializes dna-methyltransferase
                 :realization (:noun "m4 c"))

(def-synonym m6a (:noun "m4c"))
(def-synonym m6a (:noun "m4C"))
(def-synonym m6a (:noun "m4 C"))

(define-category m5c :specializes dna-methyltransferase
                 :realization (:noun "m5 c"))

(def-synonym m6a (:noun "m5c"))
(def-synonym m6a (:noun "m5C"))
(def-synonym m6a (:noun "m5 C"))

(define-category transcription-factor :specializes protein ;; maybe another higher class?
                 ;; a transcription-factor is a protein which somehow regulates the transcription of a gene
  :binds ((controlled-gene (:or gene protein)))
  :realization
    (:noun "transcription factor"
           :for controlled-gene
           :m controlled-gene))

(def-synonym transcription-factor
    (:noun "transcription-factor"
           :for controlled-gene))

(def-synonym transcription-factor
    (:noun "factor"))


#| several transcription factors, including CREB
   forkhead transcription factors
   transcription factors such as LEF-1 or Tcf4
   the STAT1 transcription factor 
   (noun "transcription factor" :super protein)
|#
;already defined below
;(noun "phosphatase" :super post-translational-enzyme)

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
  :mixins (on-substrate)
  :binds ((nucleotide nucleotide))
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
          (state-after (:or nucleotide bio-chemical-entity bio-state variant)))
  :restrict ((participant nucleotide))
  :realization
    (:noun "exchange"
     :verb "exchange"
     :etf (svo-passive)
     :o moving-object
     :m participand
     :of state-before
     :from state-before
     :to state-after))

(def-synonym bio-exchange (:noun "turnover"))

(define-category nucleotide-exchange :specializes bio-exchange
  :mixins (on-substrate)
  :realization
    (:noun "nucleotide exchange"
     :on substrate
     :from substrate))

(noun "GDP to GTP exchange" :super nucleotide-exchange)



(define-category phosphatase :specializes post-translational-enzyme
  :instantiates :self
  :index (:permanent :key name)
  :bindings (uid "FPLX:Phosphatase")
  :lemma (:common-noun "phosphatase")
  :realization
    (:common-noun name
     :for reaction
     :m residue))

(define-category GTPase :specializes enzyme
  :instantiates :self
  :index (:permanent :key name)
  :bindings (uid "FPLX:GTPase")
  :lemma (:common-noun "GTPase")
  :realization
    (:common-noun name))

(def-synonym GTPase (:noun "gtpase"))



(define-category epitope
  :specializes protein-domain
  ;; not sure these are only proteins,
  ;; the part of an antigen that is recognized by the immune system
  :realization (:noun "epitope"))

(define-category hinge
  :specializes protein-domain
  ;; not sure these are only proteins,
  ;; the part of an antigen that is recognized by the immune system
  :realization (:noun ("hinge" "hinge region")))

(define-category determinant
  :specializes protein-domain
  ;; not sure these are only proteins,
  ;; the part of an antigen that is recognized by the immune system
  :realization (:noun "determinant"))



(define-category cell-entity :specializes physical-object
  :mixins (biological has-uid)
  :binds ((with-protein protein))
  :realization
    (:with with-protein))

(define-category cell-line :specializes cell-entity
  :realization
    (:noun ("cell-line" "cell line")))

(define-category cell-type :specializes cell-entity
                 :binds ((associated-disease disease)
                         (mutation (:or mutation alter)))
  :realization
  (:noun "cell"
         :m associated-disease
         :with mutation))



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
          (count :primitive integer))
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
    (:common-noun name))

(noun "subfamily" :super protein-family)

;;----- aggregations

(define-category bio-aggregate  :specializes aggregate
  ;; can drop the 'bio-', but it lets us play with the
  ;; notion before we promote that behavior to the upper str.
  :mixins (sequence bio-entity))
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









(define-category residue-on-protein
  :specializes molecular-location
  ;; NOT same as protein, it is the location, not the amino acid
  :instantiates :self
  :mixins (on-substrate with-specified-amino-acid)
  :binds ((position number)) ;; counting from the N terminus
  :index (:permanent :sequential-keys amino-acid position)
  :realization
     (:noun ("residue" :plural "residues")
      :of substrate
      :on substrate
      :in substrate
      :at amino-acid))
;; this is actually for serine at residue 822 -- this is an "inverse" :at
;; for use by interpret-pp-as-head-of-np and a form rule in form-rules


;;(def-synonym residue-on-protein (:noun "position"))
