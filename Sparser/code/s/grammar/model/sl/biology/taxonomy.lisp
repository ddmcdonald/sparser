;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "taxonomy"
;;;  Module: "grammar/model/sl/biology/
;;; version: April 2015

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
;; 4/16/2015 bunch of changes to make protein-family a protein in most senses -- it specializes protein, but has some
;;  special variables like :members. Also give protein and human-protein-family a sbcat frame for "in"
;; 4/23/15 Lifted out the dimer classes to phenomena to have all the parts
;;  in the same place. 
;; 4/24/2015 added mixins for bio-thtcomp and bio-whethercomp -- verbs that take thatcomps and whethercomps
;; 4/27/2015 remoe definition of amino-acid and move to that file, and add defnitions for
;;  nominal for "loading"
;; 4/30/2015 bunch of changes to partially merge biopax3/reactome categories with taxonomy
;; introduce new subcategories of location — molecular-location (for site and residue), cellular-location (organelles within a cell), non-cellular-location (for things like cell-line, species, organism)
;; 5/15/2015 substantial revision in taxonomy to drastically reduce the overloading of bio-process,
;;  provide bio-rhetorical as a marker for verbs that talk about belief and truth, bio-event for actions that are not bio-processes in the OBO sense, bio-relation for things like
;;  contain, sonstitute, etc.
;;  concomitant revision for things like thatcomp and whethercomp
;; 5/16/2015 add in all the cellular locations shown in the MITRE ras1 corpus, including their GO identifiers
;; 5/30/2015 Rename poorly named "predicate" to "bio-predication" and update dependencies
;; 6/8.2015 added cyclic and plasmid definitions


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
 
(define-mixin-category bio-ifcomp
  :binds ((ifstatement (:or bio-process molecule-state be bio-predication bio-method relation bio-rhetorical)))
  :documentation "Similar to bio-whethercomp.")

(define-mixin-category bio-thatcomp
  :binds ((statement (:or bio-process molecule-state be bio-predication bio-method relation bio-rhetorical)))
  :documentation "Actions that take a that complement -- verbs of
     communication, demonstration, observation. Would like to have a 
     better break-down of these -- at least for wheterh they are positive
     or negative in terms of belief state. The prefix -bio- may not be warranted,
     since these are quite general, but at the moment we are putting them below the 
     bio-processes.")

(define-mixin-category bio-whethercomp
  :binds ((statement (:or bio-process molecule-state be bio-predication bio-method relation bio-rhetorical)))
  :documentation "Actions that take a that complement -- verbs of
     communication, demonstration, observation. Would like to have a 
     better break-down of these -- at least for wheterh they are positive
     or negative in terms of belief state. The prefix -bio- may not be warranted,
     since these are quite general, but at the moment we are putting them below the 
     bio-processes.")

(define-mixin-category reactome-category
   :binds ((name)(displayname)(reactome-id)))

;;;-----------------
;;; generalizations
;;;-----------------

(define-category with-quantifier
  :specializes abstract
  :binds ((quantifier)))

(define-category reference-item :specializes abstract
  
  :documentation "For things like ProteinReference and SmallMoleculeReference -- generic characterizations of
  prtoeins and small molecules, etc. which have
  OBO identifiers, but are not localized to cellular locations.")


(define-category biological
  :specializes with-quantifier
  :lemma (:adjective "biological")
  :binds ((context bio-context)
          (location non-cellular-location)
          (cellularLocation cellular-location)
          (quantifier))
  :documentation "Provides a generalization over bio entities
   and processes by being mixed into those categories")

(define-category bio-abstract :specializes biological ;; some probelm with with-quantifier and abstract
  :mixins (with-quantifier)
  :documentation "Provides a generalization over bio entities
   and processes by being mixed into those categories")

(define-category bio-predication :specializes endurant ;; might be better as "quality" -- need to talk to David
  :mixins (biological)
  :binds ((negation)
          (adverb)
          (manner)
          (aspect) ;; "will likely be useful"
          (in-order-to)))

(define-category bio-state :specializes bio-predication ;; for things like "activated state"
  :realization
  (:noun "state"))

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

(delete-adj-cfr (resolve/make "cyclic"))
(define-category bio-cyclic :specializes bio-predication
  :realization
  (:adj "cyclic"))

(define-category molecule-state
  :specializes bio-state)




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
  :instantiates :self
  :mixins (has-UID has-name biological)
  :binds ((long-form :primitive polyword))
  :index (:permanent :key name)
  :realization (:common-noun name))

(define-category plasmid :specializes bio-entity
  :realization
  (:noun "plasmid"))

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
  :binds ((adverb)(manner)(following)(modifier)(in-order-to))
  :documentation "No content by itself, provides a common parent
    for 'processing', 'ubiquitization', etc. that may be the basis
    of the grammar patterns.")

(define-category bio-control :specializes bio-process
  :binds ((agent biological) 
          (object biological) ;; can be bio-entity or bio-scalar (and perhaps? bio-process)
          (theme biological)) ;; increase in rate vs increase in RAS activity
  :realization
  (:verb ("control" :present-participle "controlling" :present-participle "controling") 
         :etf (svo-passive)
         :s agent
         :o object
         :for theme))

(define-category bio-rhetorical :specializes event)

(define-category bio-movement ;; like translocation, entry and "binding to membrane"
  :specializes bio-process)

(define-category transport :specializes bio-movement
  :binds ((agent bio-process)
          (object protein)
          (origin cellular-location)
          (destination cellular-location)) 
  :realization 
  (;;:verb "transport" 
   :noun "transport" 
   ;;:etf (svo-passive) 
   :s object ;; ERK translocates -- this is not the agent, but the object!
   :o object
   :to destination
   :of object
   :from origin
   :premod destination
   :premod object))

(define-category molecular-function 
  :specializes bio-process
  :bindings (uid "GO:0005488"))

(delete-noun-cfr (resolve/make "reaction"))
(define-category chemical-reaction
  :realization (:noun "reaction")
  :specializes bio-process ;; for our purposes, since we only have biologically relevant reactions
  )

(define-category biochemical-reaction :specializes chemical-reaction ;; from biopax
  )

(define-category catalysis :specializes biochemical-reaction
  :binds ((controller bio-entity) 
          (controlled bio-process)
          (controlType))
  :realization
  (:verb "catalyze" :noun "catalysis" 
         :etf(svo-passive of-nominal) ;;/// "catalyysis of phosphorylation by MEK"
         :s controller 
         :o controlled))

(define-category bio-method
  :specializes process
  :mixins (has-UID has-name biological)
  :realization (:common-noun name) ;; for nominal forms
  :documentation "No content by itself, provides a common parent
    for 'liquid chromatography', etc. that may be the basis
    of the grammar patterns.")

(define-category bio-event
  :specializes event
  :mixins (has-UID has-name biological)
  :realization (:common-noun name) ;; for nominal forms
  :documentation "No content by itself, provides a common parent
    for 'acquire, act, addition, counfound etc. that may be the basis
    of the grammar patterns.")

(define-category bio-relation
  :specializes event
  :mixins (has-UID has-name biological)
  :realization (:common-noun name) ;; for nominal forms
  :documentation "No content by itself, provides a common parent
    for 'constitute, contains etc. that may be the basis
    of the grammar patterns.")

(define-category feedback-loop :specializes bio-process
   :binds ((participant biological))
  :realization
  (:noun "feedback loop"
         :between participant))



;;;----------------------------------------------------
;;; categories of referents for particulars (entities)
;;;----------------------------------------------------



(define-category bio-agent :specializes bio-entity
  :binds ((causes biological))
  :realization 
  (:noun "agent"
   :of causes
   :premod causes))

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
(define-category small-molecule-reference
  ;; makes more sense for ATP than H20, but not worrying about whether
  ;; we're doing organic or inorganic chemistry.
  :specializes reference-item
  :mixins (reactome-category)
  )

(define-category small-molecule :specializes molecule
  ;;:mixins (reactome-category)
  ;; small-molecule, like molecule itself, has a (cellular) location
  :binds ((entityReference small-molecule-reference)))

(define-category nucleotide
  :specializes small-molecule
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
  :binds((species species))
;;  :rule-label bio-entity
  :index (:permanent :key name)
  :lemma (:common-noun "protein")
  :realization (:common-noun name))

(define-mixin-category protein-method :specializes bio-method)

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
  :binds ((reaction bio-process))
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
  :realization (:common-noun name))

(def-synonym kinase
             (:noun "kinase"
                   :for reaction))


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

(define-category protein-domain ;; not sure this is the correct term, but intended for things like the G1 box and the G-domain
  :specializes bio-entity
  :instantiates :self)


;;----- complexes
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

(define-category molecule-load
 :specializes bio-process
 :binds ((agent bio-entity) ;; causes the action
         (object molecule) ;; the nucleotyde that moves
         (substrate biological))
 :realization
 (:noun "loading"
  :etf (of-nominal)
  :s agent
  :o object
  :of object
  :onto substrate))
;; leads to rule bio-entity + load, 
;; which works, but isn't satisfying


;; not sure this is the same stoichiometry as used in biopax
(define-category stoichiometry :specializes bio-abstract
  :mixins (reactome-category)
  :binds ((physicalEntity (:or complex small-molecule protein)) 
          (stoichiometricCoefficient)) ;; an integer -- ask David
  :realization
  (:noun  "stoichiometry"
          :of physicalEntity))




;;/// these next aren't really entities. Consider a new
;; toplevel bio category. 

(define-category bio-context :specializes bio-entity
  :binds ((process process)(entity bio-entity))
  :realization
  (:noun "context"
         :of process
         :of entity))


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


;;--- ///maybe it's not a bio-entity?

(define-category bio-location 
  :specializes bio-context
  :instantiates self
  :index (:permanent :key name))

(define-category bio-organ :specializes bio-location
  :instantiates self
  :index (:permanent :key name))

(define-category cellular-location 
  :specializes bio-location
  :binds ((id))
  :instantiates self
  :index (:permanent :key name))


;; These came from the MITRE RAS1 owl file

(defmacro define-cellular-location (name id &key (adj nil)(synonyms nil))
  (def-cell-loc name id :adj adj :synonyms synonyms))

(defun hyphen-subs (str)
  (substitute #\- #\space str))

(defun def-cell-loc (name id &key adj synonyms)
  (let
      ((cat-name (intern (string-upcase (hyphen-subs name)))))
    `(progn
      (define-category ,cat-name :specializes cellular-location
        :bindings (id ,id name ,name)
        :realization
        (:noun ,name ,@(when adj `(:adj ,adj))))
      (handle-mitre-link ,(find-symbol (symbol-name cat-name) (find-package :category)) ,id)
      ,@(loop for syn in synonyms collect `(def-synonym ,cat-name (:noun ,syn))))))

       

(define-category caveola :specializes cellular-location
  :realization
  (:noun "caveola"))
(handle-mitre-link category::caveola "GO:0005901")
(define-cellular-location "Golgi apparatus" "GO_0005794")
(define-cellular-location "basolateral plasma membrane" "GO_0016323")
(define-cellular-location "caveola" "GO_0005901")
(define-cellular-location "cell leading edge" "GO_0031252")
(define-cellular-location "cell-cell junction" "GO_0005911")
(define-cellular-location "cytoplasm" "GO_0005737")
(define-cellular-location "cytoplasmic vesicle" "GO_0031410")
(define-cellular-location "cytoskeleton" "GO_0005856")
(define-cellular-location "cytosol" "GO_0005829" :adj "cytosolic")
(define-cellular-location "dendritic spine" "GO_0043197")
(define-cellular-location "early endosome" "GO_0005769")
(define-cellular-location "endoplasmic reticulum membrane" "GO_0005789")
(define-cellular-location "endoplasmic reticulum" "GO_0005783")
(define-cellular-location "endosome" "GO_0005768")
(define-cellular-location "extracellular matrix" "GO_0031012")
(define-cellular-location "extracellular region" "GO_0005576")
(define-cellular-location "focal adhesion" "GO_0005925")
(define-cellular-location "growth cone" "GO_0030426")
(define-cellular-location "hemidesmosome" "GO_0030056")
(define-cellular-location "integral to membrane" "GO_0016021")
(define-cellular-location "intracellular" "GO_0005622")
(define-cellular-location "lamellipodium" "GO_0030027")
(define-cellular-location "membrane raft" "GO_0045121")
(define-cellular-location "membrane" "GO_0016020")
(define-cellular-location "mitochondrial inner membrane" "GO_0005743")
(define-cellular-location "mitochondrial intermembrane space" "GO_0005758")
(define-cellular-location "mitochondrial matrix" "GO_0005759")
(define-cellular-location "neuromuscular junction" "GO_0031594")
(define-cellular-location "nucleoplasm" "GO_0005654")
(define-cellular-location "nucleus" "GO_0005634")
(define-cellular-location "plasma membrane" "GO_0005886")
(define-cellular-location "platelet dense granule lumen" "GO_0031089")
(define-cellular-location "trailing edge" "GO_0031254")

(define-category stress-granule :specializes cellular-location
  :realization (:noun "SG"))
(def-synonym stress-granule (:noun "stress granule"))




(define-category non-cellular-location 
  :specializes bio-location
  :instantiates self
  :index (:permanent :key name))

(define-category molecular-location 
  :specializes non-cellular-location
  :instantiates self
  :index (:permanent :key name))

(define-category cell-line
  :specializes non-cellular-location
  :instantiates self
  :realization (:common-noun name)
  :index (:permanent :key name))

(define-category species
  :instantiates self
  :specializes non-cellular-location
  :index (:permanent :key name)
  :lemma (:common-noun "species")
  :realization (:common-noun name))

;; used in biopax
(define-category organism
  :instantiates self
  :specializes non-cellular-location
  :index (:permanent :key name)
  :lemma (:common-noun "organism")
  :realization (:common-noun name))

#+ignore
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




;;---- family

(define-category bio-family :specializes protein
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
  ;;:bindings (type (category-named 'protein))
  :realization (:common-noun name))

(define-category human-protein-family
  :specializes protein-family
  :rule-label protein
  :bindings (species (find-individual 'species :name "human"))
  :realization (:common-noun name))

;;----- aggregations

(define-category bio-aggregate 
  :specializes aggregate
  ;; can drop the 'bio-', but it lets us play with the
  ;; notion before we promote that behavior to the upper str.
  :mixins (sequence biological))
#| This would be a good level at which to site a method that
meditated whether or not we distributed the components of
the aggregate across the predicate it's in. |#

(define-category bio-pair
  :specializes bio-aggregate 
  :binds ((left)
          (right))
  :index (:sequential-keys left right))

(define-category protein-pair
  :specializes bio-pair
  :binds ((left (:or protein bio-family nucleotide))
          (right (:or protein bio-family nucleotide)))
  :index (:sequential-keys left right))

;; See also amino-acid-pair in amino acids



;;//// are these even "bio" at all?
(delete-noun-cfr (resolve/make "rate"))
(define-category process-rate ;;(noun "rate" :super bio-scalar
  :specializes bio-scalar
  :binds ((process bio-process) (components biological))
  :realization 
  (:noun "rate"
         :of process
         :for components))

(define-category bio-concentration
  :specializes bio-scalar
  :realization
  (:noun "concentration"))







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

(define-category article-table
   :specializes abstract) ;; to allow "et al." to be easily ignored

(def-realization protein
  :noun "protein"
  :in location)

(def-realization human-protein-family
  :noun "human protein family"
  :in location)

;;; moved from amino-acid
(define-category residue-on-protein   
  :specializes molecular-location ;; NOT same as protein, it is the location, not the amino acid
  :instantiates :self
  :binds ((amino-acid . amino-acid)
          (position number) ;; counting from the N terminus
          (on-protein . protein))
  :index (:permanent :sequential-keys amino-acid position)
  :realization
   (:noun "residue"
   :of on-protein
   :on on-protein
   :at amino-acid))  ;; this is actually for serine at residue 822 -- this is an "inverse" :at
                    ;;  for use by interpret-pp-as-head-of-np and a form rule in form-rules


(def-synonym residue-on-protein
             (:noun "position"))
(def-synonym residue-on-protein
             (:noun "amino acid"))
