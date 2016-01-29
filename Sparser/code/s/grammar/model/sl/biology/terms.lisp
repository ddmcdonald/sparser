;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "terms"
;;;  Module: "grammar/model/sl/biology/
;;; version: June 2015

;; Initiated 7/23/14 by lifting proteins from NFkappaB experiment.
;; Moved proteins out to their own file 9/8/14
;;; temporary home for rules
;;; gene  --> mutate gene
;;; enzyme --> bio-process enzyme
;;; move out oncoogene to taxonomy, and mutate to be a verb (so mutated is a past participle)
;; 11/9/14 hack for ', in part,' and terms for g1,...,g5, 'as a consequence' and .exchange' as a bio-process
;; added critical, common, "tumor formation", first stab at "form", revised "condition", revised "G-domain"
;; 12/8/14 Starting cell lines and drugs
;; RJB 12/13/2014 ugly handling of variety, form and analog <<DAVID-- we have to talk about this>>
;; also ugly handling of "et al." to start making it a signal for references, 
;; and get rid of the interpretation of "al." as a bio-entity (couldn't even find where that cam from)
;; RJB 12/14/2014 Added a bunchof stand-in definitions for words that were primed by COMLEX, added cell-line definitions (some) -- need help from <<DAVID>>
;; add MEK/ERK and ERK/MEK as pathway designators, try to define S338 as a residue
;; diverse vocabulary hacking
;; 02/18/15 alphabetized terms
;; 4/24/2015 added subject variable for many adjectives that can be copular adjectives
;; 4/27/2015 improve handling of "serum" and "fetal calf serum" and "open reading frame" using def-synonym
;; 5/15/2015 substantial revision in taxonomy to drastically reduce the overloading of bio-process,
;;  provide bio-rhetorical as a marker for verbs that talk about belief and truth, bio-event for actions that are not bio-processes in the OBO sense, bio-relation for things like
;;  contain, sonstitute, etc.
;;  concomitant revision for things like thatcomp and whethercomp
;;  5/30/2015 Rename poorly named "predicate" to "bio-predication" and update dependencies
;;  bunch of vo cabulary tweaks for test set -- at the beginning of the file temporarily
;; 6/5/2015 DAVID!! There is a temporary fix for the problems with interpreting "the next day" -- make it into a polyword
;;  the underlying problem needs to be fixed (by you)
;; 6/8/2015 added a bunch of plasmids
;; 6/10/15 Commented out "c" and "h" for clobbering more frequent interpretations


(in-package :sparser)

;; to be reviewed -- from Localization
(noun "route" :super bio-mechanism)
(define-category bio-observation :specializes bio-entity) ;; not really, but what is it
(noun "band" :super bio-observation) ;; as in chromatography bands?
(define-category bio-reagent :specializes bio-entity) ;; not really
(noun "gel" :super bio-reagent)
(noun "issue" :super bio-rhetorical) ;; not quite, but what 
(adj "compelling" :super bio-predication)
(noun "hint" :super bio-rhetorical)
(define-category bio-preparation :specializes bio-entity)
(noun "slice" :super bio-preparation) ;; brain slices
(noun "gain" :super positive-bio-control)
(adj "unperturbed" :super bio-predication)
(noun "positioning" :super bio-method)
(noun "thresholding" :super bio-method)
(noun "networking" :super bio-mechanism) ;; unsure of this -- "receptor networking"



;;lipids
;; in EGFR signaling comments
(noun ("DAG" "diacylglycerol") :super lipid)
(noun ("IP3" "inositol 1,4,5-triphosphate") :super phospholipid) 
(noun ("PIP2" "phosphatidylinositol 4,5-bisphosphate" "phosphoinositol 4,5-bisphosphate") :super phospholipid)
(noun ("PIP3" "phosphatidylinositol 3,4,5-triphosphate") :super phospholipid)

(define-category orientation-top
  :realization
  (:noun "top"))
(define-category orientation-bottom
  :realization
  (:noun "bottom"))

(define-category orientation-left
  :realization
  (:noun "left"))

(define-category orientation-right
  :realization
  (:noun "right"))

(adj "bound" :super bio-predication)
(adj "unbound" :super bio-predication)


;; new nouns and verbs used in Ras model comments

(noun ("stimulus" :plural "stimuli") :super bio-mechanism) 
;; not sure if this is ontologically correc, but I think it might be close

(define-category coincident 
                 :specializes bio-relation
  :realization
  (:adj "coincident"
        :with theme))

(define-category conformational-change
                 :specializes bio-process ;;TO-DO  not sure this is the best choice, but can't think of one better
  :binds ((structure bio-entity))
  :realization
  (:noun "conformational change"
         :in structure
         :of structure))

(def-synonym conformational-change 
             (:noun "allosteric change"))

(define-category guanyl-nucleotide-exchange :specializes bio-process
  :binds ((substrate (:or protein bio-complex)))
  :realization
  (:noun "guanyl-nucleotide exchange"
         :on substrate))

(noun "king" :super abstract) ;; actually an author's name, but treated as a verb because of morphology
(noun "bond" :super bio-entity) ;; chemical bond -- not 
;; want something for magnitude, size, etc. TO-DO
(adj "single" :super abstract)
(adj "double" :super abstract)
(adj "dual-specificity" :super bio-predication)
(define-category size :specializes abstract
  :binds ((measured-item biological))
  :realization
  (:noun "size" :of measured-item))
(noun "surface" :super bio-entity)
(define-adverb "in contrast") ;; TO-DO handle "in contrast to"
(define-adverb "by contrast")
(noun fold :super abstract)

;; only used in phrases like nnn-fold, this is here to suppress the
;;  attempt to ascribe a biological meanig to the verb


(adj "acidic" :super bio-predication)
(adj "adaptor" :super bio-predication) ;; "adaptor protein"
(adj "allosteric" :super bio-predication) ;; "allosteric activation", "allosteric activator""allosteric charge"

(noun "anchor" :super molecule) ;; "cytoplasmic anchor"
(adj "apparent" :super bio-predication) ;; perhaps need :rhetorical predication"
(adj "asymmetric" :super bio-predication)
(adj "conventional" :super bio-predication) ;;"conventinal MAPK cascade"
(adj "early" :super bio-predication)
(adj "familial" :super bio-predication)
(noun "glioblastoma" :super cancer)
(noun "neurooblastoma" :super cancer)
(noun "non-small cell lung cancer" :super cancer)
(noun "isomerase" :super enzyme)
(noun "ligaase" :super enzyme)
(noun "ubiquitinase" :super enzyme)
(noun "deubiquitinase" :super enzyme)
(noun "neurofibromatosis" :super disease)
(adj "intermolecular" :super bio-predication)
(adj "intramolecular" :super bio-predication)
(adj "lethal" :super bio-predication)
(adj "linear" :super bio-predication)
(adj "mammalian" :super species)
(adj "hydrophobic" :super bio-predication)
(adj "inhibitory" :super bio-predication)
(adj "obligatory" :super bio-predication)
(adj "adjesion" :super bio-predication) ;; TO-DO need to think about how to define "adhere" to structure
(adj "closed" :super bio-predication)
(adj "scaffolding" :super bio-predication) ;; "scaffolding protein"
(adj "scaffold" :super bio-predication);; "scaffold protein"
(adj "direct" :super bio-predication)
(adj "spatial" :super bio-predication)
(adj "resting" :super bio-predication)
(define-adverb "sterically")
(define-adverb "uniquely")

;;proteins from comments -- TO-DO move out to proteins file and do correctly
(define-protein "LAMTOR2" ("LAMTOR2" "MEK partner 1" "MP1"))
(define-protein "LAMTOR3" ("LAMTOR3"))
(define-protein "KBTBD7 E3 RING" ("KBTBD7 E3 RING" ))
(define-protein "KBTB7_HUMAN" ("KBTBD7"))

;; strange words used in 493 articles -- leads to incorrect stemming in COMLEX lookups
(noun "asides" :super abstract)
(noun "backs" :super abstract)
(noun "cans" :super abstract)
(noun "downs" :super abstract)
(noun "ups" :super abstract)
#-allegro (noun "O2˙-" :super molecule) ;; :synonyms ("superoxide anion")
(noun "MeHg" :super molecule)
(def-synonym MeHg (:noun "methyl mercury"))
(noun "brain" :super bio-organ)
(noun "colon" :super bio-organ)
(noun "breast" :super bio-organ)
(noun "eye" :super bio-organ)
(noun "prostate" :super bio-organ)
(noun "kidney" :super bio-organ)

(noun "lactate" :super molecule)

#-allegro (noun "pcDNA3.1-PPARγ" :super plasmid)
(noun "pcDNA3.1-Med1" :super plasmid)
(noun "pCMX-Med1" :super plasmid)
(noun "pcDNA3.1-PIMT" :super plasmid)
(noun "pcDNA3.1-PIMT-N" :super plasmid)
(noun "pCMV-PIMT-Flag" :super plasmid)
(noun "3XPPRE-Luc" :super plasmid)
(noun "GST-PIMT-N" :super plasmid)
(noun "GST-Med1-CRAF-BXB" :super plasmid)
(noun "pCMV-ERK2-HA" :super plasmid)


(noun "carcinogen" :super bio-agent)
(adj "phospho-specific" :super bio-predication) ;; standin for "phospho-specific antibody"
;;(def-synonym not (:adj "non"))

(noun "CML" :super disease)
(noun "the next day" :specializes abstract)
(noun  "blotting" :super bio-method)

(noun  "pipetting" :super bio-method)
(noun  "processing" :super bio-method
       :binds ((agent biological)(object bio-entity))
       :realization
       (:noun "processing"
       :by agent
       :of object))
(noun  "stripping" :super bio-method)
(noun  "uncapping" :super bio-method)
(noun  "spectroscopy" :super bio-method)
(noun  "microscopy" :super bio-method)
(noun  "microscope" :super bio-method)

(adj  "dimensional" :super bio-predication)
(adj  "exclusive" :super bio-predication)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define-category bio-amount :specializes bio-scalar
  :realization
  (:noun "amount"))

(adj "forward" :super bio-predication) ;; added to avoid problem with complex lookup
;;Error: Comlex -- new POS combination for "#<word "forward">:: (ADJECTIVE ADVERB ADVPART NOUN VERB)
(noun "bar" :super abstract) 
;;Error: Comlex -- new POS combination for "#<word "bar">:: (NOUN PREP VERB)
(adj "lesser" :super bio-predication)
;;> Error: Unexpected POS marker: 'QUANT' on #<word "lesser">
;; While executing: #<STANDARD-METHOD UNAMBIGUOUS-COMLEX-PRIMED-DECODER (WORD T)>, in process Listener(4).
(noun ("mouse" :plural "mice") :super species)

(noun "immunoblotting" :super bio-method)
(noun "sequential immunoblotting" :super bio-method)
(noun "immunofluorescence" :super bio-method)









(noun "32P" :super molecule) 
;; actually an isotope -- need to adjust taxonomy 


(noun "ability" :super bio-relation
      :binds ((ability bio-process))
      :realization
      (:noun "ability" :adj "able"
             :to-comp ability
             :of subject
             :to ability))

(noun "abnormality" :super disease)

(noun "absence" :super experimental-condition)

(define-category action :specializes bio-process
  :binds ((actor biological))
  :realization
  (:noun "action"
   :of actor))

(adj "active" :super molecule-state
     :binds ((activated
              (:or molecule pathway)))
     :realization 
     (:adj "active"
           :s activated))

(noun "activity" :super bio-process
      :binds ((theme biological))
      :realization
      (:noun "activity"
             :of subject
             :towards theme
             :on theme))

(define-category activator :specializes molecule
  :binds ((activated molecule))
  :realization
  (:noun "activator"
         :of activated))

(def-bio "adenine" nucleobase)
(adj "additive" :super bio-predication)
;;(def-bio "agent" bio-entity)
(noun "agonist":super bio-entity) ;; keyword: (ist N) 
(define-category affinity :specializes bio-process
     :binds ((object bio-entity))
     :realization
     (:noun "affinity"
            :for object))
(noun "allele" :super variant)

(define-adverb "also")
(adj "also known as" :super bio-predication)

(noun "analog" :super variant)
(noun ("analysis" :plural "analyses")
  :super bio-method)

;; Usually in a hyphenated construction. Idiomatically as a XXXXXXX
;; marker and generally: "anti-inflammatory"
(adj "anti" :super bio-predication)

(define-category antibody :specializes protein
  :mixins (protein-method) ;; just to say that this is a bio-method
  :binds ((antigen molecule))
  :realization
  (:noun "antibody"
         :to antigen
         :for antigen))

(adj "anticancer" :super bio-predication)

(noun "approach" :super bio-method)

(define-adverb "as a consequence")
(noun "consequence" :super bio-quality)
;;(define-adverb "as expected") ;; not very common, but avoids a break
(noun "assay" :super bio-method)
(define-adverb "at baseline")
(adj "background" :super bio-predication)
(noun "bacteria" :super species) ;; not really
(noun "baseline" :super  bio-method)
(noun "behavior" :super bio-quality)
(adj "best" :super bio-predication)
(noun "bifc" :super bio-method)
(noun "binder" :super bio-entity)

(adj "biophysical" :super bio-predication)

(adj "candidate" :super bio-predication )

(noun "cascade" :super bio-process)

(adj "chemical" :super bio-predication) ;; keyword: (al ADJ) 


(noun "class" :super variant  ;;NOT SURE THIS IS RIGHT
      )

;; This should be made more general
(adj "class I" :super bio-predication)
(adj "class II" :super bio-predication)
(adj "clinical" :super bio-predication)
(adj "pre-clinical" :super bio-predication)

(adj "close" :super bio-predication)
(define-unit-of-measure "cm")
(adj "cognate" :super bio-predication)

(adj "combinatorial" :super bio-predication) ;; keyword: (al ADJ) 

(define-category complementation :specializes bio-process
  :binds ((complement bio-entity))
  :realization
  (:noun "complementation"
         :for complement))

(adj "common" :super bio-relation
  :realization 
  (:adj "common"
        :to theme))

;;; using 'bio-abstract' here as a standin for a better taxonomic treatment
(define-category component :specializes molecule
  :binds ((whole (:or bio-complex bio-process)))
  :realization
  (:noun "component"
         :of whole))

(def-synonym component 
             (:noun "part"))

(noun "concentration" :super bio-scalar) ;;levels of incorporated 32P (January sentence 34)
(noun "condition" :super experimental-condition)
(adj "consistent" :super bio-relation
  :realization 
  (:adj "consistent"
        :with theme))
(adj "constitutive" :super bio-predication)
(define-adverb "constitutively")
(noun "content" :super measurement)
(noun "control" :super bio-method)

(adj "critical" :super bio-relation
  :realization 
  (:adj "critical"
        :to theme
        :for theme))
(define-adverb "critically")

(adj "current" :super bio-predication)
(def-bio "cytosine" nucleobase)

(define-unit-of-measure "dalton")
;;(noun "data" :super bio-entity)
(def-bio "data" bio-entity) ;; need something better

(adj "de novo" :super bio-process)

(adj "dead" :super bio-predication)

(adj "deadliest" :super bio-predication) ;;//// no -- define shortcut, morphology extensions
;; to define the whole comparative paradigm

;; "the DSB repair defect", "a defect in sensitivity to GAP–mediated regulation"
(noun "defect" :super bio-relation
      :realization 
      (:NOUN "defect"
             :etf (premod)
             :m theme
             :in theme))

;; Something is deficient in something else. It needs that
;; thing but doesn't have it. Vitamin D, 
;; ERK#7 "to be dimerization-deficient in vitro"
(adj "deficient" :super bio-relation
  :realization
    (:adj "deficient"
     :noun "deficiency"
     :etf pre-mod
     :m theme
     :in theme))

(noun "derivative" :super molecule)
(noun "detail" :super bio-scalar)
(noun "development" :super bio-process) ;; keyword: (ment N) 

(delete-adj-cfr (resolve/make "different"))
(adj "different" :super bio-relation)
(noun "difference" :super biological ;;THIS IS DONE SIMPLY TO ALLOW THE VERB ALTER TO TAKE DIFFERENCE AS A SUBJECT
      ;; see sentence 7 of January test "...the differences between the enzymatic and chemical ubiquitination linkers (seven bonds and five bonds, respectively) do not alter GAP–responsiveness..."
      :binds ((compared biological))
      :realization
      (:noun "difference"
             :between compared))

(adj "diffuse" :super bio-predication) ;; TO-DO better superc
(noun "disorder" :super disease)
(noun "dna binding" :super bio-process
      :binds ((substrate bio-entity))
      :realization 
      (:noun "dna binding"
             :of substrate))

(adj "downstream" :super pathway-direction
  :realization 
  (:adj "downstream"))

(noun "duration" :super bio-scalar)
(noun "dynamics" :super bio-abstract)
(adj "ectopic" :super bio-predication) ;; keyword: (ic ADJ) 
(define-adverb "ectopically") ;; keyword: ENDS-IN-LY 
(noun "effect" :super bio-process
      :binds ((effector biological)(effectee biological))
      :realization
      (:noun "effect" 
             :of effector
             :on effectee))
(adj "effective" :super bio-relation
     :binds ((against biological))
     :realization 
     (:adj "effective"
           :against against)) ;; keyword: (ive ADJ) 

(define-category effector :specializes protein ;; NOT SURE WHAT THE RIGHT SUPER is
  :binds ((for-process bio-process))
  :realization
  (:noun "effector" 
         :for for-process
         :in for-process))

(define-category efficacy :specializes bio-predication
  :realization
  (:noun "efficacy"
         :of subject))

(noun "EGF" :super protein)
(adj "endogenous" :super bio-predication) ;; keyword: (ous ADJ) 


(adj "enzymatic" :super bio-predication)


(define-adverb "even")

(define-category evidence :specializes bio-abstract
  :binds ((fact biological))
  :realization
  (:noun "evidence"
         :for fact))
(noun "example" :super variant)
(define-category bio-exchange :specializes bio-process
  :binds ((state-before (:or bio-state variant))
          (state-after (:or bio-state variant))
          (subject nucleotide))
  :realization
  (:noun "exchange"
         :etf pre-mod
         :m subject
         :from state-before
         :to state-after))

(noun "exclusivity" :super bio-abstract) ;; keyword: (ity N)
(noun "extent" :super bio-scalar) 

(define-category fact :specializes bio-rhetorical
      :mixins (bio-thatcomp)
      :realization
      (:noun "fact"))

(noun "factor" :super bio-entity) ;; keyword: (or N) 
;;;(adj "fail-proof" :super bio-predication)
(noun "fate" :super bio-process)

(noun "fetal calf serum" :super experimental-condition)
(def-synonym category::fetal\ calf\ serum  (:noun "FCS"))


(define-adverb "finally")


(define-category fluorescence :specializes bio-process
  :realization
  (:noun "fluorescence"))

(noun "fluorescence correlation spectroscopy" :super bio-method)
(noun "fluorescence correlation spectroscopy measurements" :super bio-method)
(noun "fluorescence microscopy" :super bio-method)

(noun "form" :super variant)

(noun "forster resonance energy transfer" :super bio-method)

(noun "fragment" :super protein ;; not sure, but perhaps is always a protein -- can be phospohorylated
      :binds ((whole bio-entity)
              (measure measurement))
      :realization
      (:noun "fragment"
             :of whole
             :of measure))

(adj "free" :super bio-relation
     :binds ((free-of biological))
     :realization 
     (:adj "free"
           :of free-of)) ;; keyword: (ive ADJ) 
(adj "full" :super bio-predication)
(adj "nucleotide-free" :super bio-predication)

(adj "further" :super bio-predication)
(define-adverb "further")
(define-adverb "furthermore")
(adj "general" :super bio-predication)
(adj "genetic" :super bio-predication) ;; keyword: (al ADJ) 
(noun "group" :super bio-abstract)
;;(noun "growth factor" :super molecule)
(def-bio "guanine" nucleobase)

(adj "high" :super bio-predication)
(define-category HIGHER :specializes bio-relation
  :realization 
  (:adj "higher"))
        
(adj "high-activity" :super bio-predication)
(adj "high-throughput" :super bio-predication)
(noun "HPLC" :super bio-method)
(def-synonym HPLC (:noun "high performance liquid chromatography"))
(adj "housekeeping" :super bio-predication)

;; "However" is actually a subordinate conjunction.
;; It can appear in adverbial positions as an interjection
;;/// but the correct fix is in the grammar.
(define-adverb "however")

(noun "human" :super species)


(adj "identical" :super bio-relation
     :realization
     (:adj "identical"
           :to theme))
(define-adverb "in part")
(define-category in-vivo :specializes experimental-condition
  :realization
  (:adj "in vivo"))
(define-category in-vitro :specializes experimental-condition
  :realization
  (:adj "in vitro"))


(delete-adj-cfr (resolve/make "important"))
(define-category importance :specializes bio-rhetorical
      :realization
      (:noun "importance"
             :adj "important"))

(define-category significance :specializes bio-rhetorical
      :realization
      (:noun "significance"
             :adj "significant"))

(adj "inactive" :super molecule-state
     :binds ((molecule molecule))
     :realization 
     (:adj "inactive"
           :s molecule))
(adj "independent" :super bio-relation
  :realization 
  (:adj "independent"))

(adj "inducible" :super bio-predication) ;; keyword: (ible ADJ) 
(adj "ineffective" :super bio-relation
     :binds ((against biological))
     :realization 
     (:adj "ineffective"
           :against against)) ;; keyword: (ive ADJ) 

(define-category inhibitor 
                 :specializes bio-entity
  :binds ((process (:or bio-process pathway bio-mechanism))
          (protein protein))
  :realization (:noun "inhibitor" :of process :of protein))
(define-category negative-regulator 
                 :specializes inhibitor
  :realization (:noun "negative regulator"))

(adj "initial" :super bio-predication)
(adj "insensitive" :super bio-relation
      :realization
      (:adj "insensitive"
             :to theme))
   
(noun "insensitivity" :super bio-scalar
      :binds ((cause biological))
      :realization
      (:noun "insensitivity"
             :to cause))
(noun "insight" :super abstract
      :binds ((concept biological))
      :realization
      (:noun "insight"
             :into concept))

(adj "integrative" :super bio-predication) ;; keyword: (ive ADJ) 
(adj "intriguing" :super bio-predication) ;; keyword: ENDS-IN-ING 
(noun "isoform" :super variant)
(adj "kinase-dead" :super bio-predication)


(adj "kinetic" :super bio-predication)

(define-category knockdown :specializes bio-process
  :binds ((gene-or-protein (:or protein gene)))
  :realization
  (:noun "knockdown" :of gene-or-protein))

(define-category lack :specializes bio-relation
      :realization (:noun "lack" :of theme))
(adj "least" :super bio-predication)
(adj "least-selective" :super bio-predication) ;; just to get through
(noun "length" :super bio-scalar)
(noun "level" :super bio-scalar) ;;levels of incorporated 32P (January sentence 34)

;;is likely to be mediated by
;;is likely that this possible feedback
;;will likely be useful
(define-category likely :specializes bio-relation
  :realization
  (:adj "likely" 
        :to-comp theme))
(define-adverb "likely")

(noun "linker" :super molecule) ;; not sure if it is a protein or short stretch of DNA in the case used
(noun "liquid chromatography" :super bio-method)
(adj "living" :super abstract)
(adj "long" :super bio-predication)
(adj "long-term" :super bio-predication)


(adj "low" :super bio-predication)
(define-comparative "lower")
;;--- "lower"  ("raise")
;;/// N.b. the adjective variant is commented out in the modifiers dossier
;; "(RasGEFs) lower the transition energy for ..."

(define-category lysate :specializes bio-entity
  :binds ((source cell-line))
  :realization
  (:noun "lysate"
         :from source))

(def-bio "adenine" nucleobase)
(noun "LPA" :super phospholipid)
(def-synonym lpa (:noun "lysophosphatidic acid"))

(noun "manner" :super bio-method
      :binds ((process bio-process))
      :realization
      (:noun "manner"
             :of process))
(noun "mass" :super measurement)
(noun "mass-spectrometry" :super bio-method)
(def-synonym mass-spectrometry (:noun "mass spectrometry"))
             
(noun "means" :super bio-method
      :binds ((process bio-process))
      :realization
      (:noun "means"
             :of process))
(adj "measurable" :super bio-predication) ;; keyword: (able ADJ) 

(define-adverb "mechanistically")
;;(delete-adj-cfr (resolve/make "independent"))

(noun "membrane" :super cellular-location)
(noun "method" :super bio-method)
(noun "miR-26A" :super micro-rna)
(noun "miR-26A2" :super micro-rna)
(def-synonym miR-26A2
             (:noun "MIR26A2"))
(noun "miR-26A1" :super micro-rna)
(def-synonym miR-26A1
             (:noun "MIR26A1"))
(noun "mitogen" :super molecule)
(define-unit-of-measure "mL")
(define-unit-of-measure "ml")
(define-category mobility :specializes bio-process
  :binds ((motile bio-entity))
  :realization
  (:noun "mobility"
         :of motile))

(noun "mode" :super bio-method)
(noun "model" :super biological) ;; almost never used as a verb
(noun "modeling" :super bio-method) ;; but modeling is a nominal that is used
(adj "molecular" :super bio-predication) ;; It's realated to molecule, but how exactly? Seems wrong to jump to "is made of molecules"
(define-adverb "moreover")
(noun "mortality" :super bio-abstract) ;;/// relationship to "mortal" ??
(noun ("mutagenesis" :plural "mutageneses") :super bio-method)
(noun "mutagenic approaches" :super mutagenesis)
(adj "mutagenic" :super bio-predication)
(adj "mutual" :super bio-predication) ;; keyword: (al ADJ) 

(define-adverb "namely")
(adj "native" :super bio-predication)
(noun "natural growth conditions" :super experimental-condition)
(adj "necessary" :super bio-relation
     :binds ((condition biological)(agent biological)(result biological))
     :realization 
     (:adj "necessary"
           :for agent
           :to result
           :to-comp result))
(define-adverb "nevertheless")
(define-adverb "next")
(define-unit-of-measure "nM")
(define-unit-of-measure "nm")
(noun "NMR" :super bio-method)
(def-synonym NMR (:noun "NMR analyses"))

(delete-noun-cfr (resolve/make "number"))
(delete-noun-cfr (resolve/make "numbers"))
(define-category bio-number :specializes measurement
  :realization
  (:noun "number"))

(define-adverb "notably")
(adj "novel" :super bio-predication)

;; These three want to be synonyms
(noun "frame" :super bio-entity)
(noun "open reading frame" :super bio-entity)
(noun "open reading frames" :super open\ reading\ frame)
(def-synonym open\ reading\ frame (:noun "ORF")) ;; same as above -- need to figure out how to get the category spelling right

(noun "order of magnitude" :super bio-abstract)
(noun "outcome" :super bio-process
      :binds ((process bio-process))
      :realization
      (:noun "outcome"
             :of process))

(noun "panel" :super bio-method
      :binds ((component molecule)) ;; this should be for genes and proteins
      :realization
      (:noun "panel"
             :of component))
(noun "paradigm" :super bio-abstract)
(noun "paradox" :super bio-entity)

(adj "parallel" :super bio-predication)
(noun "partner" :super bio-abstract)
(noun "patient" :super bio-entity)
(noun "PCR" :super bio-method)
(noun "RT-PCR" :super bio-method)
(noun "qRT/PCR" :super bio-method)
(noun "peak" :super measurement)
(adj "pharmacological" :super bio-predication) ;; keyword: (al ADJ) 

(adj "physiological" :super bio-predication)

(noun "phenotype" :super bio-entity)
(noun "plasma" :super cellular-location)
(adj "polyclonal" :super bio-predication)
(noun "population" :super bio-entity
      :binds ((element biological))
      :realization
      (:noun "population"
             :of element))  
(noun "position" :super residue-on-protein)
(define-category possibility :specializes bio-rhetorical
      :mixins (bio-thatcomp)
      :realization
      (:noun "possibility"))

(adj "potent" :super bio-relation
  :realization 
  (:adj "potent"))
  
(noun "presence" :super bio-context
      :binds ((context biological))
      :realization 
      (:noun "presence" 
             :of context)) ;; keyword: (ence N) 
(adj "present" :super bio-predication  ;; keyword: (ent ADJ)
     :binds ((in-molecule molecule))
     :realization
     (:adj "present"
           :in in-molecule))
(adj "prevalent" :super bio-predication)
(define-adverb "primarily") ;; keyword: ENDS-IN-LY 
(adj "prior" :super bio-relation
  :binds ((prior-event  bio-process))
  :realization (:to prior-event))
(noun "proportion" :super bio-scalar)
(noun "proto-oncogene" :super oncogene)
(adj "putative" :super bio-predication)

(noun "radioactivity" :super bio-abstract
      :binds ((material molecule))
      :realization
      (:noun "radioactivity" :adj "radioactive"
             :of material))

(adj "rate-limiting" :super bio-predication)
(define-adverb "readily")
(adj "real-time" :super bio-predication)
(def-synonym real-time (:adj "real time"))
(noun "receptor" :super protein)
(noun "receptor protein" :super protein)
(noun "receptor protein-tyrosine kinase" :super kinase)
(adj "recombinant" :super bio-predication)
(adj "refractory" :super bio-relation
     :realization
     (:to theme))
     ;; keyword: (ory ADJ)
(noun "region" :super molecular-location
      :binds ((bounds biological))
      :realization
      (:noun "region"
             :between bounds))

(adj "relative" :super bio-relation
     :realization
     (:to theme))

(adj "resistant" :super bio-relation
     :binds ((treatment (:or bio-process bio-entity)))
     :realization
     (:adj "resistant"
           :to treatment))

(noun "response" :super bio-process
    :binds ((beneficiary biological)
            (agent biological)) ;; (:or biological drug)))
    :realization
    (;; :verb "respond" cant get the right :etf for verbs
     :noun "response" :adj "responsive"
     :of beneficiary
     :to agent))

(adj "responsible" :super bio-predication ;; adj/noun "resposibility"
  :binds ((subject biological)(theme bio-entity))
  :realization 
  (:adj "responsible"
        :s subject 
        :for theme))
(noun "responsiveness" :super bio-scalar)
(noun "restricted substrate" :super bio-predication)
(adj "rich" :super bio-predication) ;; proline rich region
(noun "rna" :super molecule)
(noun "rnai" :super bio-method)
(noun "role" :super bio-quality
      :binds ((process bio-process))
      :realization
      (:in process))
(adj "same" :super bio-predication)
(noun "scaffold" :super protein) 
(noun "scale" :super bio-scalar)     
(noun "SDS-PAGE"  :super bio-method)
(adj "selective" :super bio-relation
     :realization (:for theme))

(adj "sensitive" :super bio-relation
      :binds ((treatment biological))
      :realization
      (:adj "sensitive"
             :to treatment))

(adj "subject" :super bio-relation
      :binds ((treatment biological))
      :realization
      (:adj "subject"
             :to treatment))

(noun "sensitivity"  :super bio-scalar
      :binds ((cause biological))
      :realization
      (:noun "sensitivity"
             :to cause))

(noun "serum" :super experimental-condition) 
(noun "setting" :super bio-context)
(adj "short-lived" :super bio-predication)

(adj "similar" :super bio-relation
  :realization 
  (:to theme))
(adj "related" :super similar)

(define-adverb "similarly")
 
;; Jan 29 "two MAPK phosphorylation sites in ASPP1 and ASPP2."
;; Jan 14 "mutation of the primary site of monoubiquitination"
;; 16 "mUbRas, modified at a single site, "
(noun "site" :super molecular-location
  :binds ((process bio-process)
          (protein protein)
          (residue residue-on-protein))
  :realization
     (:noun "site"
      :etf pre-mod
      :m process
      :m protein
      :of process
      :for process
      :in protein
      :on protein
      :at residue))

(find-or-make-individual 'qualitative-rate :name "slow")


(adj "specific" :super bio-relation
     :binds ((situation biological)(beneficiary biological))
     :realization
     (:adj "specific"
           :to situation
           :for beneficiary))
(noun "spectrometry" :super bio-method)
(define-category stable :specializes bio-predication
     :realization
     (:adj "stable"))

(noun "starvation" :super bio-method)

(noun "strategy" :super bio-method
      :binds ((goal bio-process))
      :realization
      (:noun "strategy"
             :for goal))

(define-category substrate :specializes bio-entity
      :binds ((enzyme protein))
  :realization
  (:noun "substrate"
         :of enzyme
         :for enzyme))
;;(noun "success" :super bio-abstract) -- make a verb

(adj "suitable" :super bio-relation
     :realization
     (:adj "suitable"
           :for theme))


(delete-adj-cfr (resolve/make "sufficient"))
(adj "sufficient" :super bio-predication :super bio-abstract
     :binds ((theme biological)(result biological))
     :realization
     (:adj "sufficient"
           :s theme
           :to-comp result))


(adj "supplementary" :super bio-predication) ;; keyword: (ary ADJ)

(noun "surface area" :super molecular-location)
(define-adverb "surprisingly")
(adj "synthetic" :super bio-predication)
(noun "table" :super article-table)

(define-adverb "therefore")
(define-adverb "thereby")
(noun "throughput" :super measurement)

(noun "tissue" :super bio-organ)

(define-adverb "to this end")


(adj "transient" :super bio-predication)
(noun "transition state intermediate" :super molecule-state)
(define-category translation :specializes bio-process
  :binds ((result bio-entity))
  :realization
  (:of subject
       :into result))
(noun "trial" :super bio-context)
(noun "tumor" :super non-cellular-location)
(noun "tumor formation" :super named-bio-process)
(noun "tumorigenesis" :super named-bio-process)
(adj "unable" :super bio-relation
     :binds ((capability bio-process))
     :realization
     (:adj "unable"
           :to-comp capability))
           
(adj "unclear" :super bio-rhetorical)
(adj "unexpected" :super bio-rhetorical)
(define-adverb "unexpectedly") ;; TO-DO wants to be  :super-category 'bio-rhetorical)
(adj "unknown" :super bio-predication)
(adj "unmodified" :super bio-predication)
(adj "unresponsive" :super bio-relation
     :binds ((treatment (:or bio-process bio-entity)))
     :realization
     (:adj "unresponsive"
           :to treatment))
(define-adverb "until now")
(noun "upstream" :super pathway-direction
      :realization
      (:noun "upstream"))

(adj "useful" :super bio-relation
     :binds ((purpose (:or bio-process bio-method)))
     :realization
     (:adj "useful"
           :for purpose))
(noun "variety" :super variant)

(adj "wild-type" :super bio-predication)
(def-synonym wild-type (:adj "wild type"))
(def-synonym wild-type (:adj "WT"))

(noun "work" :super bio-method)








;;;------------
;;; cell lines
;;;------------
; were expressed in HEK293T cells
; BRAF mutant thyroid cell lines
; HER2-amplified breast cancer cell lines
; breast carcinoma cell lines
; all six BRAF-mutant thyroid cancer cell lines
; increased basal HER3 in 8505C cells
; confirmed in a second cell line
; our panel of cancer cell lines (Figure 6A).
; the HCC827 NSCLC cell line


(def-synonym cell-line (:noun "line"))
(def-synonym cell-line (:noun "cell line"))
(def-synonym cell-line (:noun "cell"))
(def-synonym cell-line (:noun "cultured cell"))
(def-synonym cell-line (:noun "cultured cell line"))

(defun def-cell-line (line)
  (def-bio/expr line 'cell-line :takes-plurals nil))

(defun def-cell-type (type)
  (def-bio/expr type 'cell-type :takes-plurals t))

(def-cell-line "keratin") ;; NOT SURE THIS IS HOW IT IS BEING USED

(def-cell-line "A375")
(def-cell-line "D04")
(def-cell-line "D25")
(def-cell-line "MM415")
(def-cell-line "MM485")
(def-cell-line "OUMS-23")
(def-cell-line "RPMI-7951")
(def-cell-line "SkMel24")
(def-cell-line "SkMel28")
(def-cell-line "WM266.4")
(def-cell-line "WM852")
(def-cell-line "hBRIE")
(def-cell-line "HEK293")
(def-cell-line "HEK293T")
(def-cell-line "HKe3 ER:HRASV12")
(def-cell-line "HKe3 ER:HRAS12")
(def-cell-line "HKe3")
(def-cell-line "NIH-3T3")
(def-cell-line "Saos2")
(def-cell-line "VMM12")
(def-cell-line "VMM18")
(def-cell-line "VMM39")
(def-cell-line "VMM5A")

(def-cell-type "mouse embryo fibroblast") ;; CORRECTED -- was not sure this is right -- it is a type of cell, but...
;;A fibroblast is a type of cell that synthesizes the extracellular matrix and collagen,[1] 
;; the structural framework (stroma) for animal tissues, and plays a critical role in wound healing. 
;; Fibroblasts are the most common cells of connective tissue in animals.
(def-cell-type "fibroblasts")
(def-cell-type "neuron")


;;;------------------
;;; Units of measure
;;;------------------

;;-- see model/dossiers/units-of-measure.lisp for more forms.


(define-unit-of-measure "mm")
#+ccl (define-unit-of-measure "μm")
;;(define-unit-of-measure "µm") this fails in ACL. Reading in UTF-8 ?

(define-unit-of-measure "kb")



;;;-------------------------------------------------------
;;; Hacked up to 'get through' the 9/4/14 target abstract
;;;-------------------------------------------------------



;; Not quite right -- DAVID -- how do I make "et al." be a word that is the head of a bibliographic reference
(define-category bib-reference 
  :specializes bio-abstract)

(noun "et al." :super bib-reference)


(define-category article-figure
  :specializes bio-abstract
  :binds ((label two-part-label))
  :realization
  (:noun "figure"))

(def-synonym article-figure (:noun "Fig."))

(def-synonym article-figure (:noun "Fig"))

 
(def-cfr article-figure (article-figure two-part-label)
  :form proper-noun
  :referent (:head left-edge
             :bind (label right-edge)))

(def-cfr article-figure (article-figure number)
  :form proper-noun
  :referent (:head left-edge
             :bind (label right-edge)))



(define-category article-table
  :specializes bio-abstract)


;;;------------------------------------------------------------------
;;; all remaining (including overlap with the nouns and verbs above)
;;;------------------------------------------------------------------
 

"auto" 
"binder"
"effect" 
"fate" 
"fig" 
"groups" 
"trials" 
; a {wide, large, extensive, big} variety of ..
;; "variety" is an "of quantifier" like "many" or "some"
;; Def-bio doesn't appreciate part of speech, so hacked the
;; Needs a whole model
;; activated forms of the Ras proteins
;; cellular "GO:0005623"
;; cytosolic "GO:0005829"
;; presenting plural version here. #52
;; these adverbs are added to make the simple subj+verb test succeed in the island-driving phase
;; we need better semantics for these <<DAVID>>
;;(noun "formation")
;;--- j5
;;--- j8
;;; new words to be defined -- were primed bhy COMLEX
;;adjective
;;adverb
;;need prep cases
;;noun
;;;POTENTIAL AMBIGUITIES TO BE SUPPRESSED
"express";;ambiguous between (ADJECTIVE :super bio-predication ADVERB NOUN VERB)
"show";;ambiguous between (NOUN VERB)
"describe"
"paradigm"
"maintain"
"keep";;ambiguous between (NOUN VERB)
"approach";;ambiguous between (NOUN VERB)
"elucidate"
"escape";;ambiguous between (NOUN VERB)
"fate";;ambiguous between (NOUN VERB)
"membrane"
"scaffold"
"know";;ambiguous between (NOUN VERB)
"component";;ambiguous between (ADJECTIVE NOUN)
"wild";;ambiguous between (ADJECTIVE ADVERB)
"type";;ambiguous between (NOUN VERB)
"dead";;ambiguous between (ADJECTIVE ADVERB)
"derivative";;ambiguous between (ADJECTIVE NOUN)
"effect";;ambiguous between (NOUN VERB)
"resistance"
"candidate"
"screen";;ambiguous between (NOUN VERB)
"group";;ambiguous between (NOUN VERB)
"constitute"
"response"
"high";;ambiguous between (ADJECTIVE ADVERB)
"engender"
"target";;ambiguous between (NOUN VERB)
"observation"
"assay";;ambiguous between (NOUN VERB)


  










