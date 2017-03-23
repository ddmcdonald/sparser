;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "loader"
;;;  Module: "grammar/model/sl/biology/
;;; version: February 2017

;; Broken out from terms 2/27/17
;;; Sections: bio-methods, bio-methods with IDs, bio-processes, bio-processes with IDs, knock-out types,
;;; experimental-conditions, molecular states and variants,
;;; miscellaneous

(in-package :sparser)

;;;-------------
;;; bio-methods
;;;-------------

;; as in "centrosome sections"
(define-category bio-section :specializes bio-method
                 :realization (:noun "section"))

(noun "SILAC labeling" :super bio-method)
(noun "ipegal" :super bio-method) ;; actually a detergent used to lyse cells, but we don't really care
;; this should avoid an error in parsing the folloiwng in the first CURE article
;;"Cells were lysed in a buffer containing 50 mM Tris-HCl (pH 7.4), 150 mM NaCl, 2.5 mM EDTA, 1% Triton X-100, and 0.25% IPEGAL."

(noun "vector" :super bio-method) ;; need a class for experimental materials
(noun "incubation" :super bio-method)
(noun "copy number analysis" :super bio-method)
(noun "mutation profiling" :super bio-method)

(define-category bio-observation :specializes bio-method
  :binds ((observed biological))
  :realization (:of observed))
;; not really, but what is it
(noun "band" :super bio-observation)

(noun "positioning" :super bio-method)
(noun "thresholding" :super bio-method)
(noun "whole cell extract" :super bio-method)

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
(noun  "microimaging" :super bio-method)
(noun  "microarray" :super bio-method)
(noun  "array" :super bio-method)
(noun "sequential immunoblotting" :super bio-method)
(noun "immunofluorescence" :super bio-method)
(noun "approach" :super bio-method)
(noun "baseline" :super  bio-method)

(noun "bifc" :super bio-method)
(noun "control" :super bio-method)
(noun "denaturing gel electrophoresis" :super bio-method)

(noun "fluorescence correlation spectroscopy" :super bio-method)
(noun "fluorescence correlation spectroscopy measurements" :super bio-method)
(noun "fluorescence microscopy" :super bio-method)
(noun "forster resonance energy transfer" :super bio-method)
(noun "gel electrophoresis" :super bio-method)

(noun "HPLC" :super bio-method)
(def-synonym HPLC (:noun "high performance liquid chromatography"))
(noun "SCX" :super bio-method)
(def-synonym SCX (:noun "strong cation exchange chromatography"))
(noun "FRET" :super bio-method)
(def-synonym fret (:noun "fluorescence resonance energy transfer"))
(noun "isoelectric focussing" :super bio-method)
(noun "liquid chromatography" :super bio-method)
(noun "mass-spectrometry" :super bio-method)
(def-synonym mass-spectrometry (:noun "mass spectrometry"))
             
(noun "means" :super bio-method
      :restrict ((object over-ridden))
      :binds ((process bio-process))
      :realization
      (:noun "means"
             :of process))
(noun "method" :super bio-method)

(noun ("analysis" :plural "analyses")
  :super bio-method)
(noun "mode" :super bio-method)
(noun "modeling" :super bio-method) ;; but modeling is a nominal that is used
(noun ("mutagenesis" :plural "mutageneses") :super bio-method)

(noun "NMR" :super bio-method)
(def-synonym NMR (:noun "NMR analyses"))

(noun "panel" :super bio-method
      :restrict ((object over-ridden))
      :binds ((component molecule)) ;; this should be for genes and proteins
      :realization
      (:noun "panel"
             :of component))
(noun "PCR" :super bio-method)
(noun "RT-PCR" :super bio-method)
(noun "qRT/PCR" :super bio-method)
(noun "rnai" :super bio-method)
(noun "SDS-PAGE"  :super bio-method)
(noun "spectrometry" :super bio-method)

(noun "starvation" :super bio-method)

(noun "strategy" :super bio-method
      :binds ((goal bio-process))
      :realization
      (:noun "strategy"
             :for goal))
(noun "two-dimensional isoelectric focussing" :super bio-method)
(noun "way" :super bio-method
      :restrict ((object over-ridden))
      :binds ((process bio-process))
      :realization
      (:noun "way"
             :of process))
(noun "work" :super bio-method)

;;;-------------
;;; bio-methods with IDs
;;;-------------

(def-ided-indiv bio-method "CID" "NCIT:C48061" :name "collision-induced dissociation")
(def-ided-indiv bio-method "ChIP-chip" "EFO:0000748" :name "ChIP-Chip")
(def-ided-indiv bio-method "ChIP-seq" "EFO:0002692" :name "ChIP-seq")
(def-ided-indiv bio-method "EMSA" "NCIT:C19362" :name "electrophoretic mobility shift assay")
(def-ided-indiv bio-method "FACS" "NCIT:C17353" :name "fluorescence activated cell sorting")
(def-ided-indiv bio-method "LSC" "NCIT:C122170" :name "liquid scintillation counting")
(def-ided-indiv bio-method "MALDI" "NCIT:C48040" :name "matrix-assisted laser desorption ionization mass spectrometry")
(def-ided-indiv bio-method "MALDI-TOF" "NCIT:C19935" :name "MALDI-TOF mass spectrometry")
(def-ided-indiv bio-method "QRT-PCR" "NCIT:C28408" :name "quantitative reverse transcriptase PCR")
(def-ided-indiv bio-method "RNA-IP" "EFO:0005033" :name "RIP")
(def-ided-indiv bio-method "RNA-seq" "EFO:0002770" :name "transcription profiling by high throughput sequencing")
(def-ided-indiv bio-method "co-crystallization" "NCIT:C19558" :name "cocrystallography")
(def-ided-indiv bio-method "densitometry" "NCIT:C86063" :name "densitometry")
(def-ided-indiv bio-method "end-point" "NCIT:C82866" :name "endpoint value derivation technique")
(def-ided-indiv bio-method "meta-analyses" "NCIT:C17886" :name "meta-analysis")
(def-ided-indiv bio-method "q-PCR" "NCIT:C51962" :name "real time PCR")
(def-ided-indiv bio-method "q-RT-PCR" "NCIT:C28408" :name "quantitative reverse transcriptase PCR")
(def-ided-indiv bio-method "recombination" "EFO:0004293" :name "recombination")
(def-ided-indiv bio-method "t-test" "NCIT:C53231" :name "t-test")
(def-ided-indiv bio-method "xenograft" "EFO:0003942" :name "heterologous transplantation")



;;;-------------
;;; bio-processes
;;;-------------

(define-category conformational-change
                 :specializes bio-process ;;TO-DO  not sure this is the best choice, but can't think of one better
  :binds ((structure (:or bio-entity molecular-location)))
  :realization
  (:noun "conformational change"
         :in structure
         :of structure))

(def-synonym conformational-change 
             (:noun "allosteric change"))

(noun "cascade" :super bio-process)
(define-category complementation :specializes bio-process
  :binds ((complement bio-entity))
  :realization
  (:noun "complementation"
         :for complement))
(adj "de novo" :super bio-process)
(noun "dna binding" :super bio-process
      :binds ((substrate bio-entity))
      :realization 
      (:noun "dna binding"
             :of substrate))
(noun "fate" :super bio-process)
(define-category fluorescence :specializes bio-process
  :realization
  (:noun "fluorescence"))


(noun "manner" :super bio-process
      :realization
      (:noun "manner"))

(define-category mobility :specializes bio-process
  :binds ((motile bio-entity))
  :realization
  (:noun "mobility"
         :of motile))

(noun "outcome" :super bio-process
      :binds ((process bio-process))
      :realization
      (:noun "outcome"
             :of process))

(define-category knock-out  :specializes bio-process
  :binds ((gene-or-protein (:or protein gene)))
  :realization
  (:noun "knock-out" :of gene-or-protein
         :m gene-or-protein))
(def-synonym knock-out
             (:noun "knockout"
                    :of gene-or-protein
                    :m gene-or-protein))

;;;-----------------------
;;; bio-processes with IDs
;;;-----------------------
;; note from LB: manually moved most post-trans-mod to post-trans-mod file and changed category, but some of these should be cellular-processes and not dealing with sorting those out now
(def-ided-indiv bio-process "ADCC" "GO:0001788" :name "antibody-dependent cellular cytotoxicity")
(def-ided-indiv bio-process "G1-phase" "NCIT:C17355" :name "G1-phase")
(def-ided-indiv bio-process "G2-phase" "NCIT:C17356" :name "G2-phase")
;(def-ided-indiv bio-process "G2-phases" "NCIT:C17356" :name "G2-phase")
(def-ided-indiv bio-process "GG-NER" "GO:0070911" :name "global genome nucleotide-excision repair")
(def-ided-indiv bio-process "HDR" "GO:0000724" :name "double-strand break repair via homologous recombination")
(def-ided-indiv bio-process "IL-35" "GO:0070748" :name "interleukin-35 receptor binding")
(def-ided-indiv bio-process "MPT" "GO:0035794" :name "positive regulation of mitochondrial membrane permeability")
(def-ided-indiv bio-process "OIS" "GO:0090402" :name "oncogene-induced cell senescence")
(def-ided-indiv bio-process "SOCE" "GO:0002115" :name "store-operated calcium entry")
(def-ided-indiv bio-process "anergy" "NCIT:C17706" :name "anergy")
(def-ided-indiv bio-process "anti-apoptosis" "GO:0043066" :name "negative regulation of apoptotic process")
;; might want to not define anti-apoptosis and have it be composed
(def-ided-indiv bio-process "break-down" "GO:0009056" :name "catabolic process")
(def-ided-indiv bio-process "broncho-constriction" "NCIT:C40942" :name "bronchoconstriction")
(def-ided-indiv bio-process "check-point" "NCIT:C18689" :name "cell cycle checkpoint")
(def-ided-indiv bio-process "cross-reaction" "NCIT:C96482" :name "cross reaction")
(def-ided-indiv bio-process "cross-talk" "NCIT:C94304" :name "cross-talk")
(def-ided-indiv bio-process "endocytosis" "GO:0006897" :name "endocytosis")
(def-ided-indiv bio-process "hypoplasia" "NCIT:C120893" :name "hypoplasia")
(def-ided-indiv bio-process "lipid-metabolism" "GO:0006629" :name "lipid metabolic process")
(def-ided-indiv bio-process "lysis" "NCIT:C37889" :name "lysis")
(def-ided-indiv bio-process "lytic" "NCIT:C37889" :name "lysis")
(def-ided-indiv bio-process "neo-angiogenesis" "NCIT:C16900" :name "neovascularization")
(def-ided-indiv bio-process "parasitism" "GO:0072519" :name "parasitism")
(def-ided-indiv bio-process "pro-metaphase" "NCIT:C51030" :name "prometaphase")
(def-ided-indiv bio-process "re-arrangement" "NCIT:C21069" :name "DNA sequence rearrangement")
(def-ided-indiv bio-process "trans-differentiation" "GO:0060290" :name "transdifferentiation")
(def-ided-indiv bio-process "tumorigenesis" "NCIT:C18121" :name "tumorigenesis")

;;;-----------------------------------
;;; knockout types -- applies to mice
;;;-----------------------------------
#| see https://en.wikipedia.org/wiki/Knockout_mouse
Given a particular mutated gene, a +/+ will be not have
the mutation (both parents). A - indicates the presence
of the mutation. That makes them homozygous (both)
or heterozygous (one of each). When the mutation is
present on both sides it's a "knockout mouse". 
One or both of the while type alleles have been replaced
with something else
|#

(define-category knockout-pattern :specializes bio-quality
  :mixins (has-name)
  :binds ((gene-or-protein (:or gene protein)))
  :realization
  (:m gene-or-protein
      :for gene-or-protein))

(define-category -/- :specializes  knockout-pattern
  :realization
  (:noun "-/-"))

(define-category +/- :specializes  knockout-pattern
  :realization
  (:noun "+/-"))
(define-category -/+ :specializes  knockout-pattern
  :realization
  (:noun "-/+"))
(define-category +/+ :specializes  knockout-pattern
  :realization
  (:noun "+/+"))



;;;------------------------
;;; experimental-conditions
;;;------------------------

(noun "medium" :super experimental-condition)
(noun "unstimulated" :super experimental-condition)
(define-category absence :specializes experimental-condition
  :binds ((measurement (:or measurement bio-scalar)))
  :realization
  (:noun "absence"
	 :of measurement))
(noun "condition" :super experimental-condition)
(noun "fetal calf serum" :super experimental-condition)
(def-synonym fetal-calf-serum  (:noun "FCS"))

(define-category in-situ :specializes experimental-condition
  :realization  ;; could also be considered as a location
  (:adj "in situ"))

(define-category in-vivo :specializes experimental-condition
  :mixins (post-adj)
  :realization
  (:adj "in vivo"))
(define-category in-vitro :specializes experimental-condition
  :mixins (post-adj)
  :realization
  (:adj "in vitro"))

(noun "natural growth conditions" :super experimental-condition)
(define-category presence :specializes experimental-condition
  :binds ((measurement (:or measurement bio-scalar)))
  :realization
  (:noun "presence"
	 :of measurement))
(noun "radioactivity" :super experimental-condition
      :binds ((material molecule))
      :realization
      (:noun "radioactivity" :adj "radioactive"
             :of material))
(noun "serum" :super experimental-condition) 

(noun "setting" :super bio-context)
(noun "trial" :super bio-context)

;;;------------------------
;;; molecular states and variants
;;;------------------------

(adj "active" :super molecule-state
     :binds ((activated
              (:or molecule pathway bio-state))) ;; allow "the conformation is active"
     :realization 
     (:adj "active"
           :s activated))
(adj "inactive" :super molecule-state
     :binds ((molecule molecule))
     :realization 
     (:adj "inactive"
           :s molecule))
(noun "transition state intermediate" :super molecule-state)

(noun "allele" :super variant)
(noun "analog" :super variant)
(noun "class" :super variant  ;;NOT SURE THIS IS RIGHT
      )
(noun "isoform" :super variant)
(noun "type" :super variant)
(noun "variety" :super variant)


;;;------------------------
;;; miscellaneous
;;;------------------------

(define-category bio-reagent :specializes bio-entity) ;; not really
(noun "gel" :super bio-reagent)


(define-category bio-preparation :specializes bio-entity)
(noun "slice" :super bio-preparation) ;; brain slices
(noun "networking" :super bio-mechanism) ;; unsure of this -- "receptor networking"

(noun ("stimulus" :plural "stimuli") :super other-bio-process)
;; not sure if this is ontologically correc, but I think it might be close

(noun "consequence" :super bio-quality)

                 

(define-category aspect :specializes bio-mechanism
  :binds ((whole bio-mechanism))
  :realization
  (:noun "aspect"
         :of whole))

(define-adverb "at baseline")
(noun "model" :super biological) ;; almost never used as a verb

(noun "gain" :super positive-bio-control)

(noun "tumor formation" :super named-bio-process)
