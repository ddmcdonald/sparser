;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014 SIFT LLC. All Rights Reserved
;;;
;;;    File: "terms"
;;;  Module: "grammar/model/sl/biology/
;;; version: December 2014

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

;; strange words used in 493 articles -- leads to incorrect stemming in COMLEX lookups
(noun "asides" :super abstract)
(noun "backs" :super abstract)
(noun "cans" :super abstract)
(noun "downs" :super abstract)
(noun "ups" :super abstract)
(noun "O2˙-" :super molecule) ;; :synonyms ("superoxide anion")
(noun "MeHg" :super molecule)
(def-synonym MeHg (:noun "methyl mercury"))
(noun "colon" :super bio-organ)
(noun "breast" :super bio-organ)
(noun "prostate" :super bio-organ)
(noun "kidney" :super bio-organ)

(noun "lactate" :super molecule)

(noun "pcDNA3.1-PPARγ" :super plasmid)
(noun "pcDNA3.1-Med1" :super plasmid)
(noun "pCMX-Med1" :super plasmid)
(noun "pcDNA3.1-PIMT" :super plasmid)
(noun "pcDNA3.1-PIMT-N" :super plasmid)
(noun "pCMV-PIMT-Flag" :super plasmid)
(noun "3XPPRE-Luc" :super plasmid)
(noun "GST-PIMT-N" :super plasmid)
(noun "GST-Med1-CRAF-BXB" :super plasmid)
(noun "pCMV-ERK2-HA" :super plasmid)


(adj "wild-type" :super bio-predication)
(def-synonym wild-type (:adj "wild type"))

(noun "carcinogen" :super bio-agent)
(adj "phospho-specific" :super bio-predication) ;; standin for "phosho-specific antibody"
(def-synonym not (:adj "non"))
(delete-noun-cfr (resolve/make "number"))
(delete-noun-cfr (resolve/make "numbers"))
(define-category bio-number :specializes measurement
  :realization
  (:noun "number"))
(noun "CML" :super disease)
(noun "the next day" :specializes abstract)
(noun  "blotting" :super bio-method)
(noun  "pipetting" :super bio-method)
(noun  "processing" :super bio-method)
(noun  "stripping" :super bio-method)
(noun  "uncapping" :super bio-method)
(noun  "spectroscopy" :super bio-method)
(noun  "microscopy" :super bio-method)

(adj  "dimensional" :super bio-predication)
(adj  "exclusive" :super bio-predication)
(adj  "least" :super bio-predication)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define-category bio-amount :specializes measurement
  :realization
  (:noun "amount"))
(delete-adj-cfr (resolve/make "important"))
(adj "important" :super bio-predication)

(adj "forward" :super bio-predication) ;; added to avoid problem with complex lookup
;;Error: Comlex -- new POS combination for "#<word "forward">:: (ADJECTIVE ADVERB ADVPART NOUN VERB)
(noun "bar" :super abstract) 
;;Error: Comlex -- new POS combination for "#<word "bar">:: (NOUN PREP VERB)
(adj "lesser" :super bio-predication)
;;> Error: Unexpected POS marker: 'QUANT' on #<word "lesser">
;; While executing: #<STANDARD-METHOD UNAMBIGUOUS-COMLEX-PRIMED-DECODER (WORD T)>, in process Listener(4).
(noun ("mouse" :plural "mice") :super species)
(adj "deficient" :super bio-predication)
(noun "immunoblotting" :super bio-method)
(noun "sequential immunoblotting" :super bio-method)

(noun "bacteria" :super species) ;; not really
(adj "rich" :super bio-predication) ;; proline rich region


(noun "32P" :super molecule) 
;; actually an isotope -- need to adjust taxonomy 


(noun "ability" :super bio-relation
      :binds ((agent biological)(result biological)(ability bio-process))
      :realization
      (:noun "ability" :adj "able"
             :s agent
             :to result
             :of agent
             :to-comp ability))

(noun "absence" :super bio-condition
      :binds ((absent biological)) 
      :realization
      (:noun "absence"
             :of absent))

(define-category action :specializes bio-process
  :binds ((actor biological))
  :realization
  (:noun "action"
   :of actor))

(adj "active" :super molecule-state
     :binds ((molecule molecule))
     :realization 
     (:adj "active"
           :s molecule))

(noun "activity" :super bio-process
      :binds ((agent biological))
      :realization
      (:noun "activity"
             :of agent))

(define-category activator :specializes molecule
  :binds ((activated molecule))
  :realization
  (:noun "activator"
         :of activated))

(def-bio "adenine" nucleotide)
(noun "advance" :super bio-process
      :binds ((advancement bio-process))
      :realization 
      (:noun "advance" 
             :in advancement))
(adj "additive" :super bio-predication)
;;(def-bio "agent" bio-entity)
(noun "agonist":super bio-entity) ;; keyword: (ist N) 
(define-category affinity :specializes bio-process
     :binds ((object bio-entity))
     :realization
     (:noun "affinity"
            :for object))
(noun "allele" :super bio-variant
      :binds ((basis bio-entity)) ;; this should be for genes and proteins
      :realization
      (:noun "allele"
             :of basis))

(define-adverb "also")
(adj "also known as" :super bio-predication)

(noun "analog" :super bio-variant
      :binds ((basis bio-entity)) ;; this should be for genes and proteins
      :realization
      (:noun "analog"
             :of basis))
(noun ("analysis" :plural "analyses")
  :super bio-method)

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
(define-adverb "as expected") ;; not very common, but avoids a break
(noun "assay" :super bio-method)
(define-adverb "at baseline")
(adj "background" :super bio-predication)
(noun "baseline" :super  bio-method)
(noun "bifc" :super bio-process)
(noun "binder" :super bio-entity)

(adj "biophysical" :super bio-predication)

(adj "candidate" :super bio-predication )

(noun "cascade" :super bio-process)

(adj "chemical" :super bio-predication) ;; keyword: (al ADJ) 


(noun "class" :super bio-variant  ;;NOT SURE THIS IS RIGHT
      :binds ((basis bio-entity)) 
      :realization
      (:noun "class"
             :of basis))

;; This should be made more general
(adj "class I" :super bio-predication)
(adj "class II" :super bio-predication)
(adj "clinical" :super bio-predication)
(adj "pre-clinical" :super bio-predication)
(noun "post-translational modification" :super bio-process)
(noun "post-transcriptional modification" :super bio-process)
(noun "post-transcriptional fate" :super bio-process)

(adj "close" :super bio-predication)
(define-unit-of-measure "cm")
(adj "cognate" :super bio-predication)

(adj "combinatorial" :super bio-predication) ;; keyword: (al ADJ) 

(define-category complementation :specializes bio-process
  :binds ((complement bio-entity))
  :realization
  (:noun "complementation"
         :for complement))

(adj "common" :super bio-predication
  :binds ((subject biological) (theme bio-entity))
  :realization 
  (:adj "common"
        :s subject
        :to theme))

;;; using 'bio-abstract' here as a standin for a better taxonomic treatment
(define-category component :specializes molecule
  :binds ((complex complex))
  :realization
  (:noun "component"
         :of complex))


(noun "concentration" :super bio-scalar
      :binds ((measurable biological))
      :realization 
      (:noun "concentration"
             :of measurable)) ;;levels of incorporated 32P (January sentence 34)
(noun "condition" :super bio-condition)
(noun "conformation" :super bio-entity) ;; keyword: (ion N) 
(adj "conserved" :super bio-predication) ;; virtually never used as a verb
(adj "consistent" :super bio-predication
  :binds ((subject biological) (theme biological))
  :realization 
  (:adj "consistent"
        :s subject
        :with theme))
(define-adverb "constitutively")
(noun "content" :super measurement)


(adj "critical" :super bio-predication
  :binds ((subject biological) (theme bio-entity))
  :realization 
  (:adj "critical"
        :s subject
        :to theme
        :for theme))
(define-adverb "critically")

(adj "current" :super bio-predication)
(def-bio "cytosine" nucleotide)

(define-unit-of-measure "dalton")
;;(noun "data" :super bio-entity)
(def-bio "data" bio-entity) ;; need something better

(adj "de novo" :super bio-process)

(adj "dead" :super bio-predication)

(adj "deadliest" :super bio-predication) ;;//// no -- define shortcut, morphology extensions
;; to define the whole comparative paradigm

(noun "defect" :super bio-predication
      :binds ((defective biological))
      :realization 
      (:NOUN "defect"
             :in defective))
#|
;; Something is deficient in something else. It needs that
;; thing but doesn't have it. Vitamin D, 
;; ERK#7 "to be dimerization-deficient in vitro"
(adj "deficient" :super bio-predication
  :binds ((missing biological)) 
  :realization
    (
     :etf pre-mod
     :m missing))
|#



(noun "derivative" :super molecule)
(noun "development" :super bio-process) ;; keyword: (ment N) 


(noun "difference" :super biological ;;THIS IS DONE SIMPLY TO ALLOW THE VERB ALTER TO TAKE DIFFERENCE AS A SUBJECT
      ;; see sentence 7 of January test "...the differences between the enzymatic and chemical ubiquitination linkers (seven bonds and five bonds, respectively) do not alter GAP–responsiveness..."
      :binds ((compared biological))
      :realization
      (:noun "difference"
             :between compared))
#+ignore
(adj "dimerization-deficient" :super molecule-state
     :binds ((molecule molecule))
     :realization 
     (:adj "dimerization-deficient"
           :s molecule))


(noun "domain" :super molecular-location
      :binds ((substrate bio-entity))
      :realization 
      (:noun "domain"
             :of substrate))
(noun "dna binding" :super bio-process
      :binds ((substrate bio-entity))
      :realization 
      (:noun "dna binding"
             :of substrate))

(adj "downstream" :super bio-predication
  :binds ((subject biological)
          (theme (:or bio-entity bio-process)))
  :realization 
  (:adj "downstream"
        :s subject
        :for theme
        :from theme
        :of theme))
(noun "dynamics" :super bio-abstract)
(adj "ectopic" :super bio-predication) ;; keyword: (ic ADJ) 
(define-adverb "ectopically") ;; keyword: ENDS-IN-LY 
(noun "effect" :super bio-process
      :binds ((effector biological)(effectee biological))
      :realization
      (:noun "effect" 
             :of effector
             :on effectee))
(adj "effective" :super bio-predication
     :binds ((subject biological)(against biological))
     :realization 
     (:adj "effective"
           :s subject
           :against against)) ;; keyword: (ive ADJ) 

(noun "effector" :super protein) ;; NOT SURE WHAT THE RIGHT SUPER is

(define-category efficacy :specializes bio-predication
  :binds ((item biological))
  :realization
  (:noun "efficacy"
         :of item))

(noun "EGF" :super protein)
(adj "endogenous" :super bio-predication) ;; keyword: (ous ADJ) 


(adj "enzymatic" :super bio-predication)


(define-adverb "even")

(define-category evidence :specializes bio-abstract
  :binds ((fact biological))
  :realization
  (:noun "evidence"
         :for fact))

(noun "exchange" :super bio-process)
(noun "exclusivity" :super bio-abstract) ;; keyword: (ity N)
(noun "factor" :super bio-entity) ;; keyword: (or N) 
(noun "fate" :super bio-process)

(noun "fetal calf serum" :super bio-context)
(def-synonym category::fetal\ calf\ serum
             (:noun "FCS"))


(define-adverb "finally")

(noun "finding" :super bio-entity) ;; like data(noun "paradigm" :super bio-entity)

(define-category fluorescence :specializes bio-process
  :realization
  (:noun "fluorescence"))

(noun "fluorescence correlation spectroscopy" :super bio-method)
(noun "fluorescence correlation spectroscopy measurements" :super bio-method)
(noun "fluorescence microscopy" :super bio-method)

(noun "form" :super bio-variant
      :binds ((basis bio-entity)) ;; this should be for genes and proteins
      :realization
      (:noun "form"
             :of basis))

(noun "forster resonance energy transfer" :super bio-method)

(noun "fragment" :super protein ;; not sure, but perhaps is always a protein -- can be phospohorylated
      :binds ((whole bio-entity))
      :realization
      (:noun "fragment"
             :of whole))

(adj "free" :super bio-predication
     :binds ((subject biological)(free-of biological))
     :realization 
     (:adj "free"
           :s subject
           :of free-of)) ;; keyword: (ive ADJ) 
(adj "full" :super bio-predication)
(adj "nucleotide-free" :super bio-predication)

(noun "function" :super bio-process
      :binds ((functional bio-entity)(process bio-process)) ;; this should be for genes and proteins
      :realization
      (:noun "function"
       :of functional
       :to process))
(adj "further" :super bio-predication)
(define-adverb "further")
(define-adverb "furthermore")
(noun "G-domain" :super protein-domain) ;; somehow (def-bio "G-domain" protein-segment) did not work
(noun "BRCT" :super protein-domain)
(noun "BRCT1" :super protein-domain)
(noun "BRCT2" :super protein-domain)

(noun "SH2" :super protein-domain)
(noun "SH3" :super protein-domain)

(noun "g1" :super protein-domain)
(noun "g2" :super protein-domain)
(noun "g3" :super protein-domain)
(noun "g4" :super protein-domain)
(noun "g5" :super protein-domain)
(adj "general" :super bio-predication)
(adj "genetic" :super bio-predication) ;; keyword: (al ADJ) 
(noun "group" :super bio-abstract)
(def-bio "guanine" nucleotide)

(adj "high" :super bio-predication)
(noun "HPLC" :super bio-method)
(def-synonym HPLC
             (:noun "high performance liquid chromatography"))
(adj "housekeeping" :super bio-predication)
(define-adverb "however")
(noun "human" :super species)
(adj "identical" :super bio-predication
     :binds ((basis biological)
             (comparator biological))
     :realization
     (:adj "identical"
           :s basis
           :to comparator))
;;(noun "living cells" :super bio-context)
(define-adverb "in part")
(define-category in-vivo :specializes bio-context
  :realization
  (:adj "in vivo"))
(define-category in-vitro :specializes bio-context
  :realization
  (:adj "in vitro"))


(adj "inactive" :super molecule-state
     :binds ((molecule molecule))
     :realization 
     (:adj "inactive"
           :s molecule))
(adj "independent" :super bio-predication
  :binds ((subject biological)
          (theme biological))
  :realization 
  (:adj "independent"
        :s subject
        :of theme))

(adj "inducible" :super bio-predication) ;; keyword: (ible ADJ) 
(adj "ineffective" :super bio-predication
     :binds ((subject biological)(against biological))
     :realization 
     (:adj "ineffective"
           :s subject
           :against against)) ;; keyword: (ive ADJ) 
(noun "inhibitor" :super bio-entity) ;; keyword: (or N) 

(adj "initial" :super bio-predication)
(adj "insensitive" :super bio-predication
      :binds ((subject biological)(cause biological))
      :realization
      (:adj "insensitive"
             :s subject
             :to cause))
   
(noun "insensitivity" :super bio-scalar
      :binds ((subject biological)(cause biological))
      :realization
      (:noun "insensitivity"
             :of subject
             :to cause))
(noun "insight" :super abstract
      :binds ((concept biological))
      :realization
      (:noun "insight"
             :into concept))

(adj "integrative" :super bio-predication) ;; keyword: (ive ADJ) 
(adj "intriguing" :super bio-predication) ;; keyword: ENDS-IN-ING 
(noun "isoform" :super bio-variant
      :binds ((basis bio-entity)) ;; this should be for genes and proteins
      :realization
      (:noun "isoform"
             :of basis))
(adj "kinase-dead" :super bio-predication)
(adj "kinetic" :super bio-predication)

(define-category knockdown :specializes bio-process
  :binds ((antigen molecule))
  :realization
  (:noun "knockdown"
         :to antigen
         :for antigen))
(adj "least-selective" :super bio-predication) ;; just to get through
(noun "length" :super bio-scalar)
(noun "level" :super bio-scalar
      :binds ((measurable biological))
      :realization 
      (:noun "level"
             :of measurable)) ;;levels of incorporated 32P (January sentence 34)
;;is likely to be mediated by
;;is likely that this possible feedback
;;will likely be useful
(define-category likely :specializes bio-relation
  :binds ((result process))
  :realization
  (:adj "likely" 
        :o result
        :to-comp result))

(define-adverb "likely")

(noun "linker" :super molecule) ;; not sure if it is a protein or short stretch of DNA in the case used
(noun "liquid chromatography" :super bio-method)
(adj "long" :super bio-predication)
(adj "long-term" :super bio-predication)
(adj "low" :super bio-predication)
(define-comparative "lower")
;;--- "lower"  ("raise")
;;/// N.b. the adjective variant is commented out in the modifiers dossier
;; "(RasGEFs) lower the transition energy for ..."
;; only instance of "lower" so far is as an adjective (svo/bio "lower")

(define-category lysate :specializes bio-entity
  :binds ((source cell-line))
  :realization
  (:noun "lysate"
         :from source))

(noun "manner" :super bio-method
      :binds ((process bio-process))
      :realization
      (:noun "manner"
             :of process))
(noun "mass" :super measurement)
(noun "mass-spectrometry" :super bio-method)
(def-synonym mass-spectrometry
             (:noun "mass spectrometry"))
             
(noun "means" :super bio-method
      :binds ((process bio-process))
      :realization
      (:noun "means"
             :of process))
(adj "measurable" :super bio-predication) ;; keyword: (able ADJ) 
(noun "mechanism" :super bio-process
      :binds ((process bio-process))
      :realization
      (:noun "mechanism"
             :of process))
(define-adverb "mechanistically")
;;(delete-adj-cfr (resolve/make "independent"))

(noun "membrane" :super cellular-location)
(noun "method" :super bio-process)
(noun "mitogen" :super molecule)
(define-unit-of-measure "mL")
(define-unit-of-measure "ml")
(define-category mobility :specializes bio-process
  :binds ((motile bio-entity))
  :realization
  (:noun "mobility"
         :of motile))

(noun "mode" :super bio-method
      :binds ((process bio-process))
      :realization
      (:noun "mode"
             :of process))
(noun "model" :super biological) ;; almost never used as a verb
(noun "modeling" :super bio-method) ;; but modeling is a nominal that is used
(adj "molecular" :super bio-predication) ;; It's realated to molecule, but how exactly? Seems wrong to jump to "is made of molecules"
(define-adverb "moreover")
(noun "mortality" :super bio-abstract) ;;/// relationship to "mortal" ??
(noun "mutagenic approaches" :super bio-method)
(adj "mutagenic" :super bio-predication)
(adj "mutual" :super bio-predication) ;; keyword: (al ADJ) 

(adj "native" :super bio-predication)
(noun "natural growth conditions" :super bio-context)
(adj "necessary" :super bio-predication
     :binds ((condition biological)(agent biological)(result biological))
     :realization 
     (:adj "effective"
           :s condition
           :for agent
           :to result))
(define-adverb "nevertheless")
(define-adverb "next")
(define-unit-of-measure "nM")
(define-unit-of-measure "nm")
(noun "NMR" :super bio-method)


(define-adverb "notably")
(adj "novel" :super bio-predication)

;; These three want to be synonyms
(noun "open reading frame" :super bio-entity)
(noun "open reading frames" :super open\ reading\ frame)
(def-synonym open\ reading\ frame 
            (:noun "ORF")) ;; same as above -- need to figure out how to get the category spelling right

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
(noun "plasma membrane" :super cellular-location)
(adj "polyclonal" :super bio-predication)
(noun "population" :super bio-entity
      :binds ((element biological))
      :realization
      (:noun "population"
             :of element))  
(noun "position" :super residue-on-protein)
(noun "possibility" :super bio-abstract
      :binds ((assertion biological))
      :realization
      (:noun "possibility"
             :thatcomp assertion)) ;; keyword: (ity N) 
(adj "potent" :super bio-predication
  :binds ((subject biological)
          (theme bio-entity))
  :realization 
  (:adj "potent"
        :s subject
        :for theme))
  
(noun "presence" :super bio-context
      :binds ((context biological))
      :realization 
      (:noun "presence" 
             :of context)) ;; keyword: (ence N) 
(adj "present" :super bio-predication) ;; keyword: (ent ADJ) 
(adj "prevalent" :super bio-predication)
(define-adverb "primarily") ;; keyword: ENDS-IN-LY 
(adj "prior" :super bio-predication
  :binds ((event . bio-process))
  :realization (:to event))
(noun "proportion" :super bio-scalar
      :binds ((basis bio-entity)) ;; this should be for genes and proteins
      :realization
      (:noun "proportion"
             :of basis))
(adj "putative" :super bio-predication)

(noun "radioactivity" :super bio-abstract
      :binds ((material molecule))
      :realization
      (:noun "radioactivity" :adj "radioactive"
             :of material))
(noun "range" :super bio-scalar)
(define-category RBD :specializes protein-domain
      :binds ((substrate bio-entity))
      :realization 
      (:noun "RBD"
             :of substrate)) 
(noun "Raf-RBD" :super RBD)
(adj "rate-limiting" :super bio-predication)
(adj "real-time" :super bio-predication)
(def-synonym real-time (:adj "real time"))
(adj "recombinant" :super bio-predication)
(adj "refractory" :super bio-predication
     :binds ((theme biological) (treatment bio-process))
     :realization
     (:s theme
         :to treatment))
     ;; keyword: (ory ADJ)
(noun "region" :super bio-location
      :binds ((bounds biological))
      :realization
      (:noun "region"
             :between bounds))
(adj "relative" :super bio-predication
     :binds ((comparator biological))
     :realization
     (:to comparator))

(adj "resistant" :super bio-predication
     :binds ((agent (:or bio-entity bio-process bio-method))
             (effect (:or bio-process bio-entity)))
     :realization
     (:adj "resistant"
           :s agent
           :to-comp effect))

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
(adj "right" :super bio-predication)
(noun "rna" :super molecule)
(noun "rnai" :super bio-process)

(adj "same" :super bio-predication)
(noun "scaffold" :super protein) 
(noun "scale" :super bio-scalar)     
(noun "screen" :super  bio-method)
(noun "SDS-PAGE"  :super bio-method)
(adj "selective" :super bio-predication
  :binds ((agent biological)(theme bio-entity))
  :realization
  (:s agent
      :for theme))

(adj "sensitive" :super bio-predication
      :binds ((subject biological)(cause biological))
      :realization
      (:adj "sensitive"
             :s subject
             :to cause))
(noun "sensitivity" :super bio-scalar
      :binds ((subject biological)(cause biological))
      :realization
      (:noun "sensitivity"
             :of subject
             :to cause)) ;; keyword: (ity N)
(noun "serum" :super bio-context) 
(noun "setting" :super bio-context)
(adj "short-lived" :super bio-predication)

(adj "similar" :super bio-predication
  :binds ((item biological)(compared-to biological))
  :realization 
  (:s item
      :to compared-to))
(define-adverb "similarly")
 
;; Jan 29 "two MAPK phosphorylation sites in ASPP1 and ASPP2."
;; Jan 14 "mutation of the primary site of monoubiquitination"
;; 16 "mUbRas, modified at a single site, "
(noun "site" :super bio-location
  :binds ((process bio-process)(protein protein)(residue residue-on-protein))
  :realization
     (:noun "site"
      :etf pre-mod
      :m process
      :of process
      :in protein
      :at residue))

(find-or-make-individual 'qualitative-rate :name "slow")


(adj "specific" :super bio-predication :super bio-abstract
     :binds ((theme biological)(situation biological)(beneficiary biological))
     :realization
     (:adj "specific"
           :s theme
           :to situation
           :for beneficiary))
(noun "spectrometry" :super bio-method)
(define-category stable :specializes bio-abstract
     :binds ((agent biological)(context bio-context))
     :realization
     (:adj "stable" 
           :s agent
           :in context))

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

(adj "suitable" :super bio-predication
     :binds ((theme biological)(purpose biological))
     :realization
     (:adj "suitable"
           :s theme
           :for purpose))


(delete-adj-cfr (resolve/make "sufficient"))
(adj "sufficient" :super bio-predication :super bio-abstract
     :binds ((theme biological)(result biological))
     :realization
     (:adj "sufficient"
           :s theme
           :to result))


(adj "supplementary" :super bio-predication) ;; keyword: (ary ADJ)
(define-category argument-support :specializes abstract
  :binds ((argument (:or model statement)))
  :realization
  (:noun "support"
         :for argument))
(noun "surface area" :super bio-location)
(define-adverb "surprisingly")
(adj "synthetic" :super bio-predication)
(noun "table" :super article-table)
(noun "target" :super bio-entity)
(adj "targeted" :super bio-predication)
(noun "targeting" :super bio-process)

(define-adverb "therefore")
(define-adverb "thereby")
(noun "throughput" :super measurement)
(define-adverb "thus")
(noun "tissue" :super bio-context)
(define-adverb "to this end")
(adj "transient" :super bio-predication)
(noun "transition state intermediate" :super molecule-state)
(noun "trial" :super bio-context)
(noun "tumor" :super bio-location)
(noun "tumor formation" :super bio-process)
(noun "tumorigenesis" :super bio-process)
(adj "unable" :super bio-predication
     :binds ((agent (:or bio-entity bio-process bio-method))
             (capability bio-process))
     :realization
     (:adj "unable"
           :s agent
           :to-comp capability))
           
(adj "unclear" :super bio-predication)
(adj "unknown" :super bio-predication
     :binds ((subject biological))
     :realization
     (:adj "unknown"
           :s subject))
(adj "unmodified" :super bio-process)
(adj "unresponsive" :super bio-predication
     :binds ((agent (:or bio-entity bio-process bio-method))
             (effect (:or bio-process bio-entity)))
     :realization
     (:adj "unresponsive"
           :s agent
           :to-comp effect))
(define-adverb "until now")
(noun "upstream" :super bio-context
      :binds ((relative-to biological))
      :realization
      (:noun "upstream"
             :of relative-to))
(adj "useful" :super bio-predication
     :binds ((subject biological)
             (purpose (:or bio-process bio-method)))
     :realization
     (:adj "useful"
           :s subject
           :for purpose))
(noun "variety" :super bio-variant
      :binds ((basis bio-entity)) ;; this should be for genes and proteins
      :realization
      (:noun "variety"
             :of basis))
(noun "variation" :super bio-variant
      :binds ((basis biological)(scale bio-scalar)) ;; this should be for genes and proteins
      :realization
      (:noun "variation"
             :of basis
             :in basis
             :on scale))

(noun "work" :super bio-method)





;;--- ddm 12/18/14 hacked phrases to 'get through' more text

(adj "long-term" :super bio-predication) ;; #51 "effective long-term treatment strategies"





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

(def-cell-line "mouse embryo fibroblast") ;; not sure this is right -- it is a type of cell, but...
;;A fibroblast is a type of cell that synthesizes the extracellular matrix and collagen,[1] 
;; the structural framework (stroma) for animal tissues, and plays a critical role in wound healing. 
;; Fibroblasts are the most common cells of connective tissue in animals.
(def-cell-line "fibroblasts")


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

(def-synonym article-figure
             (:noun "fig."))

(def-synonym article-figure
             (:noun "fig"))

 
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


  










