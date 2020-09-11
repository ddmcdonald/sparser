;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2019 SIFT LLC. All Rights Reserved
;;;
;;;    File: "bio-methods-processes"
;;;  Module: "grammar/model/sl/biology/
;;; version: May 2019

;; Broken out from terms 4/27/17
;;; Sections: bio-methods, bio-methods with IDs, knock-out types,
;;; experimental-conditions, miscellaneous

(in-package :sparser)

;;;-------------
;;; bio-methods
;;;-------------

;; verbs moved from verbs.lisp
(define-category assess :specializes bio-method
  :mixins (bio-thatcomp)
  :realization
  (:verb "assess" ;; keyword: ENDS-IN-ED 
         :noun "assessment"
         :etf (svo-passive)))

(define-category precipitate :specializes bio-method
  :binds ((co-precipitant protein))
  :realization 
  (:verb "precipitate"  :noun "precipitation"
         :etf (svo-passive) 
	 :with co-precipitant))

(define-category coimmunoprecipitate :specializes immune-method
  :binds ((co-precipitant protein))
  :realization 
  (:verb "co-immunoprecipitate" :noun "co-immunoprecipitation"
         :etf (svo-passive) 
	 :with co-precipitant))

(def-synonym coimmunoprecipitate
    (:noun "co-IP"))

(def-synonym coimmunoprecipitate
    (:noun "coimmunoprecipitation"
	   :verb "coimmunoprecipitate" :etf (svo-passive) ))

(define-category culture :specializes bio-method
  :realization
  (:verb "culture" ;; keyword: ENDS-IN-ED
         :etf (svo-passive)
         :noun "culture"))

;; new, from *comlex-category-names*
(define-category clone :specializes bio-method
                 )




(define-category digest ;; as in a chemical process for breaking down proteins
  :specializes bio-method
  :realization
  (:verb   "digest" :noun "digestion"
           :etf (svo-passive)))

(define-category dissect 
  :specializes bio-method 
  :realization 
  (:verb "dissect" 
   :noun "dissection" 
   :etf (svo-passive)))



(define-category elute :specializes bio-method
    :binds ((source biological))
    :realization
    (:verb "elute" ;; keyword: ENDS-IN-ED 
	   :noun "elution"
	   :etf (svo-passive)
           ;;:from source
           :with agent)) ;; from/onto column (?)

(define-category bio-fraction :specializes bio-method ;; avoid conflict with core category FRACTION
  :binds ((basis bio-entity)) ;; this should be for genes and proteins
  :realization
  (:verb ("fractionXX" :past-participle "fractioned" :past-tense "fractioned")
         ;; bizarre, but needed to handle the conflict between "fractioned" and the noun
         :etf (svo-passive)
         :o basis
         :on instrument))

(define-category immortalize :specializes bio-method
                 :bindings (uid "NCIT:C82424")
                 :restrict ((object cell-entity)) ; covers both cell-line and cell-type
                 :realization
                 (:verb "immortalize" :noun "immortalization"
                       :etf (svo-passive)
                       ))

(define-category immunoblot :specializes immune-method
  :binds ((object bio-entity)
	  (tested-for bio-chemical-entity))
  :realization
  (:verb ("immunoblot" :present-participle "immunoblotting"
                       :past-tense "immunoblotted")
         :etf (svo-passive)
         :for tested-for
	 ))

(def-synonym immunoblot (:verb ("blot" :past-tense "blotted")))

(define-category immunoprecipitate :specializes immune-method
  :binds ((origin bio-location))
  :realization 
  (:verb "immunoprecipitate" :noun "immunoprecipitate"
         :etf (svo-passive)
         :from origin))

(def-synonym immunoprecipitate
    (:noun "IP"))





(define-category lyse :specializes bio-method
  :realization
  (:verb "lyse" :etf (svo-passive)))

(define-category label :specializes bio-method
                 ;; e.g. "SILAC labeling" ; n.b. this is explicitly defined somewhere
  :bindings (uid "EFO:0000562")
  :realization
  (:verb ("label" :present-participle ("labeling" "labelling")
                  :past-tense ("labeled" "labelled"))
         :etf (svo-passive))) ;; how to add single-l version for "labeling"?
;; cf. the designator, noun "label" in mid-level/things.lisp
;; That sort of label is the result of the processing of labeling
;; in this category


;; not really relevant, but the existence of "replating" caused an error -- no  edge between positions
(define-category replate :specializes bio-method
  :realization
  (:verb   "replate"
   :etf (svo-passive)))



(define-category bio-sequence :specializes bio-method
    :binds ((method bio-method))
    :realization
    (:verb "sequence" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
           :with method))

(define-category starve :specializes bio-method
    :binds ((nutrient biological))
    :realization
    (:verb "starve" 
           :noun "starvation"
	   :etf (svo-passive)))

(define-category tag :specializes bio-method
    :binds ((molecular-location molecular-location))    ;; :mixins (has-location)
    ;; :restrict ((location bio-location))
    :realization
    (:verb "tag" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
           :at molecular-location
           :with agent))

(define-category transfer :specializes bio-method
  :realization 
  (:verb "transfer"
         :etf (svo-passive)))

(define-category transfect :specializes bio-method
  :binds ((genetic-material biological))
  :realization 
  (:verb "transfect" :noun "transfection"
         :etf (svo-passive)
         :with genetic-material))

(define-category trap :specializes bio-method
  :realization 
  (:verb "trap"
         :etf (svo-passive)))

;; exchange


(define-category generate :specializes caused-bio-process
  :binds ((bio biological))
  :realization 
  (:verb "generate" :noun "generation"
         :etf (svo-passive) 
         :from bio
         :in bio))

;; formation "GO:0009058"
;;--- hydrolysis
;; http://en.wikipedia.org/wiki/Hydrolysis
;; j3  "upon hydrolysis of GTP to GDP"
;;  The phosphate is removed/cleaved from the GTP (ATP)
;;  and GDP (di-phosphate) is the result.
;;  "gtp hydrolysis on ras"
;; "GO:0019514"
(define-category hydrolyze :specializes chemical-reaction
  :realization            
  (:verb "hydrolyze" :noun "hydrolysis"
   :etf (svo-passive) 
   ))

(def-synonym hydrolyze
    (:verb "hydrolyse"
           :etf (svo-passive)))


(define-category purify :specializes bio-method
  :binds ((bio biological))
  :realization 
  (:verb "purify" :noun "purification" 
         :etf (svo-passive)
         :from bio
         :with agent))

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
  :restrict ((object blocked-category))
  :realization (:of observed))
;; not really, but what is it
(noun "band" :super bio-observation)

(noun "positioning" :super bio-method)
(noun "thresholding" :super bio-method)
(noun "whole cell extract" :super bio-method)

(noun  "blotting" :super bio-method)

(noun  "pipetting" :super bio-method)
(noun  "processing" :super bio-method
       :binds ((object bio-entity))
       :realization
       (:noun "processing"
       :by agent
       :of object))
(noun  "stripping" :super bio-method)
(noun  "uncapping" :super bio-method)
(noun  "spectroscopy" :super bio-method)
(noun  "microscopy" :super bio-method)
(noun  "microscope" :super bio-method)
(noun "LSM" :super microscope)
(def-synonym LSM (:noun "laser scanning microscope"))
(noun ("cryoEM" "cryo-EM" "cryo-electron microscopy" "cryogenic electron microscopy")
      :super microscopy)
(noun  "microimaging" :super bio-method)
(noun  "microarray" :super bio-method)
(noun  "array" :super bio-method)
(noun  "well" :super bio-method)
(noun  "plate" :super bio-method)
(noun "sequential immunoblotting" :super bio-method)
(noun "immunofluorescence" :super bio-method)
(noun "bifc" :super bio-method)
(noun "denaturing gel electrophoresis" :super bio-method)
(define-category fluorescence :specializes bio-method
  :realization
  (:noun "fluorescence"))
(noun "fluorescence correlation spectroscopy" :super bio-method)
(noun "fluorescence correlation spectroscopy measurements" :super bio-method)
(noun "FFS" :super bio-method)
(def-synonym FFS (:noun "fluorescence fluctuation spectroscopy"))
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
(def-synonym mass-spectrometry (:noun ("mass spectrometry" "MS")))
(noun "LCMS" :super bio-method)
(def-synonym LCMS (:noun "Liquid Chromatography Mass Spectrometry"))

(noun "IP-MS" :super bio-method) ;; added to get rid of erroneous TRIPS def that was plural of "IPM"
(def-synonym ip-ms (:noun "immunoprecipitation mass spectrometry"))

(noun "CLx" :super bio-method)
(def-synonym clx (:noun "Odyssey CLx")) ;; imager technology, blocking bad protein
(noun "PME" :super bio-method)
(def-synonym PME (:noun "particle mesh ewald")) ;; algorithm used in comp bio

(noun "MAPE" :super bio-measurement) ;; block bad gene def
(def-synonym MAPE (:noun "mean absolute percentage error"))
(def-synonym MAPE (:noun "Mean Absolute Percentage Error"))
(noun "MSA" :super bio-method)
(def-synonym MSA (:noun "Multiple Sequence Alignment"))

(noun "means" :super bio-method
      :restrict ((object over-ridden))
      :binds ((process bio-process))
      :realization
      (:noun "means"
             :of process))

(noun ("mutagenesis" :plural "mutageneses") :super bio-method)
(noun "mutagenic approaches" :super mutagenesis)

(noun "NMR" :super bio-method)
(def-synonym NMR (:noun "NMR analyses"))
(noun "nPCR" :super bio-method)
(def-synonym nPCR (:noun "normalized protein catabolic rate"))

(noun "panel" :super bio-method
      :restrict ((object over-ridden))
      :binds ((component molecule)) ;; this should be for genes and proteins
      :realization
      (:noun "panel"
             :of component))




;; polymerase chain reaction
(noun "PCR" :super bio-method)
(def-synonym PCR (:noun ("polymerase chain reaction" "Polymerase Chain Reaction")))
(noun "RT-PCR" :super PCR)
(noun "qRT/PCR" :super PCR)
(noun "mPCR" :super PCR)
(def-synonym mPCR (:noun ("multiplex PCR" "multiplex polymerase chain reaction" "multiplex Polymerase Chain Reaction")))
    
;; unrelated PCR - defining this partly to block a bad trips def
(noun "ePCR" :super bio-method)
(def-synonym ePCR (:noun "electronic Patient Care Reporting"))

;; "detection of regulatory elements using GRO-Seq"
(noun "dREG" :super bio-method)
;; Broad-platform Evolutionary Analysis General Likelihood Evaluator
(noun "BEAGLE" :super bio-method) 
(noun "CIGAR" :super bio-method)
(def-synonym CIGAR (:noun "Compact Idiosyncratic Gapped Alignment Report"))
(noun "dUST" :super bio-method)
(def-synonym dUST (:noun "deoxyuridine suppression test"))

(noun "QCT" :super bio-method)
(def-synonym QCT (:noun "quantitative computed tomography"))
(noun "pQCT" :super QCT)
(def-synonym pQCT  (:noun "peripheral quantitative computed tomography"))
(noun "rnai" :super bio-method)
(noun "SDS-PAGE"  :super bio-method)
(noun "spectrometry" :super bio-method)

(noun "two-dimensional isoelectric focussing" :super bio-method)

(noun ("ViroChip" "virochip") :super bio-method) ;; a panviral DNA microarray assay
(noun "TBDev" :super bio-method) ;; a file sharing/torrent system which has an offshoot called BioTorrents for scientific data
(noun "BioTorrents" :super bio-method)

;; likely bio-methods/software but not all have been vetted - might be companies and drugs as well
(noun "AccessQuick" :super bio-method) 
(noun "AcroPrep" :super bio-method) 
(noun "AmpSeq" :super bio-method) 
(noun "ApopTag" :super bio-method) 
(noun "ArcMap" :super bio-method) 
(noun "ArrayScan" :super bio-method) 
(noun "BacRep" :super bio-method) 
(noun "BioCaster" :super bio-method) 
(noun "BioFX" :super bio-method) 
(noun "BioFire" :super bio-method) 
(noun "BioID" :super bio-method) 
(noun "BioMax" :super bio-method) 
(noun "BioSpin" :super bio-method) 
(noun "Biofire" :super bio-method) 
(noun "CTscan" :super bio-method) 
(noun "CellProfiler" :super bio-method) 
(noun "ChipLC" :super bio-method) 
(noun "CliqueSNV" :super bio-method) 
(noun "CurveExpert" :super bio-method) 
(noun "CyQuant" :super bio-method) 
(noun "DEGSeq" :super bio-method) 
(noun "DapMap" :super bio-method) 
(noun "DeepFam" :super bio-method) 
(noun "DexCom" :super bio-method) 
(noun "EndNote" :super bio-method) 
(noun "EuropaBio" :super bio-method) 
(noun "FIREPol" :super bio-method) 
(noun "FiberCell" :super bio-method) 
(noun "FlexPen" :super bio-method) 
(noun "FluTrackers" :super bio-method) 
(noun "GelCode" :super bio-method) 
(noun "GenBody" :super bio-method) 
(noun "GenMark" :super bio-method) 
(noun "GeneQuant" :super bio-method) 
(noun "GeneSnap" :super bio-method) 
(noun "GitHub" :super bio-method) 
(noun "HotstarTaq" :super bio-method) 
(noun "ISBiotech" :super bio-method) 
(noun "ImageNet" :super bio-method) 
(noun "ImmSim" :super bio-method) 
(noun "ImmuoResearch" :super bio-method) 
(noun "InvivoGen" :super bio-method) 
(noun "Invivogen" :super bio-method) 
(noun "IsoPlane" :super bio-method) 
(noun "KwikPen" :super bio-method) 
(noun "LoFreq" :super bio-method) 
(noun "LongAmp" :super bio-method) 
(noun "MaxQuant" :super bio-method) 
(noun "MinION" :super bio-method) 
(noun "MiniSeq" :super bio-method) 
(noun "MiTAP" :super bio-method) 
(noun "NanoLuc" :super bio-method) 
(noun "NetPicoRNA" :super bio-method) 
(noun "NextStrain" :super bio-method) 
(noun "NovaBlot" :super bio-method) 
(noun "NovaSeq" :super bio-method) 
(noun "NucBlue" :super bio-method) 
(noun "NucleoPrepII" :super bio-method) 
(noun "OptEIA" :super bio-method) 
(noun "OptiClust" :super bio-method) 
(noun "OptiMEM" :super bio-method) 
(noun "OptiPro" :super bio-method) 
(noun ("POCOVIDScreen" "PocovidScreen") :super bio-method) ;; ai to detect covid on ultrasounds
(noun "PacBio" :super bio-method) 
(noun "ParaFit" :super bio-method) 
(noun "PetPlan" :super bio-method) 
(noun "Petcare" :super bio-method) 
(noun "PhosSTOP" :super bio-method) 
(noun "Phosphoflow" :super bio-method) 
(noun "PolyFect" :super bio-method) 
(noun "PortaCount" :super bio-method) 
(noun "PrimerExpress" :super bio-method) 
(noun "ProClin" :super bio-method) 
(noun "ProZinc" :super bio-method) 
(noun "Promocell" :super bio-method) 
(noun "ProteOn" :super bio-method) 
(noun ("Promega" "Prpmega") :super bio-method) 
(noun "QconCAT" :super bio-method) 
(noun "QuickAlign" :super bio-method) 
(noun "Quickalign" :super bio-method) 
(noun "RNAaemia" :super bio-method) 
(noun "ScienceDirect" :super bio-method) 
(noun "SeqBuilder" :super bio-method) 
(noun "Sequencher" :super bio-method) 
(noun "ShineGene" :super bio-method) 
(noun "SigmaPlot" :super bio-method) 
(noun "SimPlotß" :super bio-method) 
(noun "SimRel" :super bio-method) 
(noun "TempliPhi" :super bio-method) 
(noun "TransGen" :super bio-method) 
(noun "Transgen" :super bio-method) 
(noun "TruSeq" :super bio-method) 
(noun "TwinHelix" :super bio-method) 
(noun "UVItec" :super bio-method) 
(noun "UniFrac" :super bio-method) 
(noun "VetPen" :super bio-method) 
(noun "VetScan" :super bio-method) 
(noun "VirusSeeker" :super bio-method) 
(noun "WeChat" :super bio-method) 
(noun "WestPico" :super bio-method) 
(noun "WhatsApp" :super bio-method) 
(noun "WorldClim" :super bio-method) 
(noun "WorldPop" :super bio-method) 
(noun "ampliSeqRNA" :super bio-method) 
(noun "iBio" :super bio-method) 
(noun "iPrep" :super bio-method) 
(noun "iProof" :super bio-method) 
(noun "iSelect" :super bio-method) 
(noun "iTaqTM" :super bio-method) 
(noun "iVtL" :super bio-method) 
(noun "miniMACS" :super bio-method) 
(noun "mirVana" :super bio-method) 
(noun "nQuery" :super bio-method) 



(noun "way" :super bio-method
      :restrict ((object over-ridden))
      :binds ((process bio-process))
      :realization
      (:noun "way"
             :of process))
(noun "work" :super bio-method)

;; Note that in the verbs file we have the verb "knock out"
;; with the category knock-out
(define-category knockout  :specializes bio-method
  :realization
  (:noun ("knock-out" "knockout")
   :of object
   :m object))


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

(noun ("medium" :plural "media") :super experimental-condition)
(noun "unstimulated" :super experimental-condition)
;;(noun "condition" :super experimental-condition) OBE -- in taxonomy
;(noun "fetal calf serum" :super experimental-condition)
;(def-synonym category::fetal-calf-serum  (:noun "FCS")) ; added with id now in new-bio-meths
(noun ("petri dish" "petridish") :super experimental-condition)
  
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

(define-category -like :specializes bio-predication
  :mixins (post-adj)
  :realization
  (:adj "-like"))
                 

(noun "natural growth conditions" :super experimental-condition)

(noun "radioactivity" :super experimental-condition
      :binds ((material molecule))
      :realization
      (:noun "radioactivity" :adj "radioactive"
             :of material))
; moved serum to substance rather than experimental condition because it can be used to activate proteins




(noun "RCT" :super bio-method)
(def-synonym RCT (:noun "Randomized Controlled Trial")) ;; could also be radiochemotherapy
;;;------------------------
;;; miscellaneous
;;;------------------------


(define-category bio-reagent :specializes bio-entity) ;; not really
(noun "gel" :super bio-reagent)


(define-category bio-preparation :specializes bio-entity)
(noun "slice" :super bio-preparation) ;; brain slices
(noun "networking" :super bio-mechanism) ;; unsure of this -- "receptor networking"

(noun "role" :super bio-quality
      :binds ((process bio-process))
      :realization
      (:in process))

(define-category aspect :specializes bio-mechanism
  :binds ((whole bio-mechanism))
  :realization
  (:noun "aspect"
         :of whole))


(noun "gain" :super positive-bio-control)


