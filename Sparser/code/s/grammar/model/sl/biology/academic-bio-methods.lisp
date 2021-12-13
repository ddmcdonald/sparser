;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2021 SIFT LLC. All Rights Reserved
;;;
;;;    File: "academic-bio-methods"
;;;  Module: "grammar/model/sl/biology/
;;; version: October 2021

;; Broken out from terms bio-methods


(define-category elute :specializes bio-method
    :binds ((source biological))
    :realization
    (:verb "elute" ;; keyword: ENDS-IN-ED 
	   :noun "elution"
	   :etf (svo-passive)
           ;;:from source
           :with agent)) ;; from/onto column (?)

(define-category lyse :specializes bio-method
  :realization
  (:verb "lyse" :etf (svo-passive)))

(define-category hydrolyze :specializes chemical-reaction
  :realization            
  (:verb "hydrolyze" :noun "hydrolysis"
   :etf (svo-passive) 
   ))
(def-synonym hydrolyze
    (:verb "hydrolyse"
           :etf (svo-passive)))

(define-category transfect :specializes bio-method
  :binds ((genetic-material biological))
  :realization 
  (:verb "transfect" :noun "transfection"
         :etf (svo-passive)
         :with genetic-material))
(def-indiv-with-id bio-method "Transfection" "EFO:0000726" :name "transfection") 


(def-indiv-with-id bio-method "recombination" "EFO:0004293" :name "recombination")
(def-indiv-with-id bio-method "Passage" "NCIT:C54573" :name "passage") 

(define-category precipitate :specializes bio-method
  :binds ((co-precipitant protein))
  :realization 
  (:verb "precipitate"  :noun "precipitation"
         :etf (svo-passive) 
	 :with co-precipitant))

;; immune-methods
(define-category immunoprecipitate :specializes immune-method
  :binds ((origin bio-location)) ;; should this mixin precipitate?
  :realization 
  (:verb "immunoprecipitate" :noun "immunoprecipitate"
         :etf (svo-passive)
         :from origin))
(def-synonym immunoprecipitate (:noun "IP"))

(define-category coimmunoprecipitate :specializes immunoprecipitate
  :binds ((co-precipitant protein))
  :realization 
  (:verb "co-immunoprecipitate" :noun "co-immunoprecipitation"
         :etf (svo-passive) 
	 :with co-precipitant))
(def-synonym coimmunoprecipitate (:noun "co-IP"))
(def-synonym coimmunoprecipitate
    (:noun "coimmunoprecipitation"
	   :verb "coimmunoprecipitate" :etf (svo-passive)))

(define-category immunoblot :specializes immune-method
  :binds ((object bio-entity)
	  (tested-for bio-chemical-entity))
  :realization
  (:verb ("immunoblot" :present-participle "immunoblotting"
                       :past-tense "immunoblotted")
         :etf (svo-passive)
         :for tested-for))
(def-synonym immunoblot (:verb ("blot" :past-tense "blotted")))

(noun "immunofluorescence" :super immune-method) ;; maybe mixin fluorescence


;; back to general
(def-indiv-with-id bio-method "SILAC" "NCIT:C161804" :name "stable isotope labeling with amino acids in cell culture" :synonyms ("SILAC labeling")) 

(noun "ipegal" :super bio-method) ;; actually a detergent used to lyse cells, but we don't really care
;; this should avoid an error in parsing the folloiwng in the first CURE article
;;"Cells were lysed in a buffer containing 50 mM Tris-HCl (pH 7.4), 150 mM NaCl, 2.5 mM EDTA, 1% Triton X-100, and 0.25% IPEGAL." which seems to be a typo for IGEPAL

(noun "copy number analysis" :super bio-method)
(noun "mutation profiling" :super bio-method)
(noun "whole cell extract" :super bio-method)

(noun "pipetting" :super bio-method)

(noun "microimaging" :super imaging)
(noun "microarray" :super bio-method) ;; maybe under array?

(def-indiv-with-id experimental-condition "ROI" "NCIT:C85402" :name "region of interest")
(def-indiv-with-id experimental-condition "FBS" "NCIT:C113696" :name "fetal bovine serum" :plural "fetal bovine sera" :synonyms ("fetal calf serum" "FCS"))

(def-indiv-with-id bio-method "electrophoresis" "NCIT:C16536" :name "electrophoresis")
(def-indiv-with-id bio-method "Spe" "NCIT:C129763" :name "serum protein electrophoresis") 
(noun "gel electrophoresis" :super bio-method)
(noun "denaturing gel electrophoresis" :super gel-electrophoresis)
(def-indiv-with-id gel-electrophoresis "PAGE" "NCIT:C16539" :name "polyacrylamide gel electrophoresis" :maintain-case t) 
(def-indiv-with-id gel-electrophoresis "SDS-PAGE" "NCIT:C18150"
     :name "sodium dodecylsulfate-polyacrylamide gel electrophoresis"
     :synonyms ("Sodium Dodecylsulfate-Polyacrylamide Gel Electrophoresis"
                "Sodium Dodecyl Sulfate-Polyacrylamide Gel Electrophoresis"
                "Sodium Dodecylsulfate-Polyacrylamide Gel Electrophoresis"))
(def-indiv-with-id gel-electrophoresis "DIGE" "NCIT:C70654" :name "differential In-gel electrophoresis")
(noun "two-dimensional isoelectric focussing" :super gel-electrophoresis)


(noun ("bifc" "BiFC" "Bimolecular fluorescence complementation")
      :super bio-method) ;; maybe should be fluorescence?

(noun ("LSM" "laser scanning microscope") :super microscope)
(noun ("cryoEM" "cryo-EM" "cryo-electron microscopy"
                "cryogenic electron microscopy")
      :super microscopy)
(noun "fluorescence microscopy" :super microscopy)

(noun ("FFS" "fluorescence fluctuation spectroscopy") :super spectroscopy)
(noun "fluorescence correlation spectroscopy" :super spectroscopy)
(noun "fluorescence correlation spectroscopy measurements" :super bio-method)
(def-indiv-with-id spectroscopy "XpS" "NCIT:C78871" :name "X-ray photoelectron spectroscopy")
(def-indiv-with-id bio-method "EDX" "NCIT:C78869" :name "energy dispersive spectroscopy") 
(def-indiv-with-id spectroscopy "DLS" "NCIT:C62329" :name "photon correlation spectroscopy" :synonyms ("Dynamic Light Scattering" "Quasi-Elastic Light Scattering"))
(def-indiv-with-id bio-method "Light-Scattering" "NCIT:C62323" :name "light scattering")
(def-indiv-with-id bio-method "MALLS" "NCIT:C62324" :name "multi-angle laser light scattering" :maintain-case t) 


(def-indiv-with-id chromatography "SCX" "NCIT:C161774" :name "strong cation exchange chromatography" :synonyms ("Strong-Cation-Exchange Chromatography"))
(def-indiv-with-id chromatography "immunochromatography" "NCIT:C154792" :name "immunochromatography") 
(noun "liquid chromatography" :super chromatography) ;; NCIT:C16435
(def-indiv-with-id liquid-chromatography "HPLC" "NCIT:C16434" :name "high performance liquid chromatography")
(def-indiv-with-id liquid-chromatography "FPLC" "NCIT:C80368" :name "fast protein liquid chromatography") 
(def-indiv-with-id liquid-chromatography "RP-HPLC" "NCIT:C161770" :name "reversed-phase liquid chromatography")
(def-indiv-with-id liquid-chromatography "HpRP" "NCIT:C161771" :name "basic reversed-phase liquid chromatography" :synonyms ("High pH Reversed-Phase Chromatography" "Hp-RP" "bRPLC")) 

(noun ("mass-spectrometry" "mass spectrometry" "MS") :super spectrometry)
(noun ("LCMS" "Liquid Chromatography Mass Spectrometry")
      :super mass-spectrometry) ; maybe also liquid-chromatography
(noun ("IP-MS" "immunoprecipitation mass spectrometry") :super mass-spectrometry) ;; added to get rid of erroneous TRIPS def that was plural of "IPM"
;; maybe add immune-method
(def-indiv-with-id mass-spectrometry "MALDI-TOF" "NCIT:C19935" :name "MALDI-TOF mass spectrometry") 
(def-indiv-with-id mass-spectrometry "MALDI" "NCIT:C48040" :name "matrix-assisted laser desorption ionization mass spectrometry") 
(def-indiv-with-id mass-spectrometry "SELDI-TOF-MS" "NCIT:C62672" :name "surface-enhanced laser desorption/Ionization-time of flight mass spectrometry" :synonyms ("SELDI-TOF"))
(def-indiv-with-id mass-spectrometry "IDMS" "NCIT:C99492" :name "isotope dilution mass spectrometry") 

(noun ("FRET" "fluorescence resonance energy transfer") :super bio-method)
(noun ("forster resonance energy transfer"
       "Forster Resonance Energy Transfer"
       "Förster Resonance Energy Transfer"):super bio-method)

(noun "isoelectric focussing" :super bio-method)

(noun ("CLx" "Odyssey CLx") :super imaging) ;; imager technology, blocking bad protein

(noun ("PME" "particle mesh ewald" "particle mesh Ewald") :super algorithm) ;; algorithm used in comp bio

(noun ("MAPE" "mean absolute percentage error" "Mean Absolute Percentage Error")
      :super measurement) ;; block bad gene def of MAPE

(noun ("MSA" "Multiple Sequence Alignment") :super bio-method)

(noun ("mutagenesis" :plural "mutageneses") :super bio-method)
(noun "mutagenic approaches" :super mutagenesis)

(noun ("NMR" "Nuclear Magnetic Resonance" "NMR analyses")
      :super bio-method)

;; PCR = polymerase chain reaction
(define-category PCR :specializes bio-method
                 :bindings (uid "NCIT:C17003")
                 :realization
                 (:noun ("PCR" "polymerase chain reaction"
                               "Polymerase Chain Reaction")))
(def-indiv-with-id PCR "qPCR" "NCIT:C51962" :name "real time PCR"
     :synonyms ("Molecular Real-Time Quantitative Polymerase Chain Reaction"
                "Quantitative PCR" "q-PCR" "Quantitative Real Time PCR"
                "Quantitative Real Time Polymerase Chain Reaction"
                "Real Time Polymerase Chain Reaction" "Real Time-PCR"
                "Real-Time PCR" "Quantitative Real-Time PCR")) 
(def-indiv-with-id PCR "rt–PCR" "NCIT:C18136" :name "reverse transcriptase-PCR"
     :synonyms ("reverse transcriptase-polymerase chain reaction"
                "Reverse Transcriptase-Polymerase Chain Reaction"
                "RT-PCR" "Reverse Transcription Polymerase Chain Reaction"
                "RTPCR" "Reverse Transcription-Polymerase Chain Reaction"
                "Reverse Transcription PCR"))
;; technically qrt-pcr should inherit from both qpcr and rt-pcr
(def-indiv-with-id PCR "QRT-PCR" "NCIT:C28408"
     :name "quantitative reverse transcriptase PCR"
     :synonyms ("qRT/PCR" "qRT-PCR" "q-RT-PCR" "RTqPCR" "qRTPCR" "rRTPCR"
                          "Quantitative Reverse Transcriptase PCR"
                          "Quantitative Reverse Transcriptase-PCR"
                          "Quantitative RTPCR" "Quantitative RT-PCR"
                          "Real-Time Reverse Transcriptase PCR"
                          "Real-Time Reverse Transcriptase-PCR" "RT-qPCR"
                          "reverse transcription quantitative real-time PCR"
                          "reverse transcriptase quantitative real-time PCR"))
(def-indiv-with-id PCR "mPCR" "NCIT:C158250" :name "multiplex PCR"
     :synonyms ("multiplex polymerase chain reaction"
                "multiplex Polymerase Chain Reaction"
                "Multiplex Real-time Polymerase Chain Reaction Assay"
                "Multiplex Real-time Polymerase Chain Reaction"))
(def-indiv-with-id PCR "digital PCR array" "NCIT:C116158" :name "digital array"
                    :synonyms ("digital Polymerase Chain Reaction array")) 
(def-indiv-with-id PCR "dPCR" "NCIT:C166063" :name "digital PCR"
                   :synonyms ("digital Polymerase Chain Reaction"))
(def-indiv-with-id PCR "MLPA" "NCIT:C116161" :name "multiplex ligation-dependent probe amplification")
(def-indiv-with-id PCR "RAPD" "EFO:0004167" :name "RAPD"
                   :synonyms ("Random amplification of polymorphic DNA")) 


;; surprisingly not related to the above PCR
(noun ("nPCR" "normalized protein catabolic rate") :super bio-method)
(noun ("ePCR" "electronic Patient Care Reporting") :super bio-method)


;; case-senstitive techniques that don't have IDs but want to be individuals
;; because currently our only good way of defining individuals is with
;; UIDs, I'm going to make these with spurious UIDs

;; "detection of regulatory elements using GRO-Seq"
 ;; used repeatedly by one lab it seems
(def-indiv-with-id bio-method "dREG" "dREG" :maintain-case t)
(def-indiv-with-id bio-method "BEAGLE" "BEAGLE" :maintain-case t
                   :name "Broad-platform Evolutionary Analysis
                   General Likelihood Evaluator") ;; API for stat phylogenetics
;; compression format for representing gene alignments
(def-indiv-with-id bio-method "CIGAR" "CIGAR" :maintain-case t
                   :name "Compact Idiosyncratic Gapped Alignment Report")

(def-indiv-with-id bio-method "RNAi" "NCIT:C20153" :name "RNA Interference"
     :synonyms ("RNA Silencing" "Post-Transcriptional Gene Silencing"))

(def-indiv-with-id bio-method "hybridization" "NCIT:C16924" :name "nucleic acid hybridization") 
(def-indiv-with-id bio-method "CGH" "NCIT:C18084" :name "Comparative Genomic Hybridization") 
(def-indiv-with-id bio-method "ISH" "NCIT:C23022" :name "In situ hybridization staining method" :synonyms ("in-situ hybridization"))

(def-indiv-with-id bio-method "microtechnique" "NCIT:C20369" :name "microtechnique") 
(def-indiv-with-id bio-method "microdissection" "NCIT:C18124" :name "microdissection")
(def-indiv-with-id bio-method "LMD" "NCIT:C19263" :name "laser capture microdissection") 

(def-indiv-with-id bio-method "EMSA" "NCIT:C19362" :name "electrophoretic mobility shift assay")
(def-indiv-with-id bio-method "penia" "NCIT:C125952" :name "particle-enhanced nephelometric immunoassay")
(def-indiv-with-id bio-method "ELISPOT" "NCIT:C102632" :name "enzyme-linked immunosorbent spot assay")
(def-indiv-with-id bio-method "ELISA" "NCIT:C16553" :name "enzyme-linked immunosorbent assay")
(def-indiv-with-id bio-method "PETIA" "NCIT:C125953" :name "particle-enhanced turbidimetric immunoassay")

(def-indiv-with-id bio-method "IGRA" "NCIT:C128363" :name "interferon-gamma release assay") 
(def-indiv-with-id bio-method "Ife" "NCIT:C54536" :name "immunofixation") 
(def-indiv-with-id bio-method "IHC" "NCIT:C23020" :name "immunohistochemistry staining method")
(def-indiv-with-id bio-method "CID" "NCIT:C48061" :name "collision-induced dissociation")
(def-indiv-with-id bio-method "ETD" "NCIT:C161781" :name "electron-transfer dissociation") 
(def-indiv-with-id bio-method "LSC" "NCIT:C122170" :name "liquid scintillation counting") 
(def-indiv-with-id bio-method "MACS" "NCIT:C116641" :name "magnetic affinity cell sorting")
(def-indiv-with-id bio-method "CrI" "NCIT:C123799" :name "cell response index")
(def-indiv-with-id bio-method "ESI" "NCIT:C19363" :name "electrospray ionization")
(def-indiv-with-id bio-method "FFF" "NCIT:C62321" :name "field flow fractionation") 
(def-indiv-with-id bio-method "HCS" "EFO:0007550" :name "high content screen" :plural ("HCSes" "HCSs"))
(def-indiv-with-id bio-method "CAGE" "EFO:0004181" :name "cap analysis gene expression" :maintain-case t)
(def-indiv-with-id bio-method "GWAS" "NCIT:C93020" :name "whole genome association study" :synonyms ("WGAS" "genome wide association study"))
(def-indiv-with-id bio-method "Roma" "NCIT:C40211" :name "representational oligonucleotide microarray analysis") 
(def-indiv-with-id bio-method "NAAT" "NCIT:C20055" :name "nucleic acid amplification test")
(def-indiv-with-id bio-method "RDA" "NCIT:C18114" :name "representational difference analysis") ;; pcr technique, though RDA might also be nutritional
(def-indiv-with-id bio-method "VAF" "NCIT:C154665" :name "variant allele frequency") 
(def-indiv-with-id bio-method "MNase" "EFO:0004177" :name "Micrococcal Nuclease digestion") 

(def-indiv-with-id bio-method "cDNA" "EFO:0004187" :name "cDNA library construction") 

(def-indiv-with-id immunoprecipitate "ChIP" "NCIT:C106048" :name "chromatin immunoprecipitation" :synonyms ("Chromatin immunoprecipipation")) 
(def-indiv-with-id immunoprecipitate "ChIP-chip" "EFO:0000748" :name "ChIP-Chip" :synonyms ("ChIP-On-Chip")) 

;; ---sequencing
(noun "sequencing" :super bio-method)
(def-indiv-with-id sequencing "DNAseq" "EFO:0002693" :name "DNA-seq" :synonyms ( "DNA sequencing")) 
(def-indiv-with-id sequencing "RNA-seq" "EFO:0002770" :name "transcription profiling by high throughput sequencing" :synonyms ("RNAseq" "RNA sequencing"))
(def-indiv-with-id sequencing "miRNASeq" "NCIT:C156057" :name "microRNA sequencing" :synonyms ("miRNA-seq" "miRNA sequencing")) 

(def-indiv-with-id sequencing "ChipSeq" "EFO:0002692" :name "ChIP-seq" :synonyms ("Chromatin Immunoprecipitation Sequencing"))
(def-indiv-with-id sequencing "CLIPseq" "EFO:0003143" :name "CLIP-seq" :synonyms ("Cross-linking Immunoprecipitation High-throughput Sequencing" "CLIP sequencing")) 
(def-indiv-with-id sequencing "ATAC-seq" "EFO:0007045" :name "ATAC-seq" :synonyms ("ATACseq" "ATAC sequencing" "Assay for Transposase Accessible Chromatin with High-Throughput Sequencing" "Assay for Transposase-Accessible Chromatin Sequencing")) 

(def-indiv-with-id sequencing "Heliscope" "NCIT:C146816" :name "helicos sequencing")
(def-indiv-with-id sequencing "WxS" "NCIT:C101295" :name "whole exome sequencing") 
(def-indiv-with-id sequencing "First-stranded" "NCIT:C150428" :name "first-strand library sequencing" :synonyms ("firststrand")) 
(def-indiv-with-id sequencing "second-strand" "NCIT:C150426" :name "second-strand library sequencing" :synonyms ("secondstrand"))
(def-indiv-with-id sequencing "pyro-sequencing" "NCIT:C99481" :name "pyrosequencing")
(def-indiv-with-id sequencing "sbt" "NCIT:C130180" :name "sequence-based typing")(def-indiv-with-id sequencing "MNase sequencing" "NCIT:C106056" :name "MNase sequencing")  
(def-indiv-with-id sequencing "sequencer" "EFO:0003739") ;; not quite right


(noun "AmpSeq" :super sequencing) 
(noun "MiniSeq" :super sequencing)
(noun "ampliSeqRNA" :super bio-method)

(noun "MinION" :super bio-method) ;; seq devices -- need to maintain capitalization
(noun "NovaSeq" :super bio-method) 
(noun "OptiClust" :super algorithm) ;; seq clustering alg
(noun ("QuickAlign" "Quickalign") :super bio-method) ;; software for sequence
(noun "DEGSeq" :super bio-method) ;; r package for RNA-seq
(noun "SeqBuilder" :super bio-method) 
(noun "Sequencher" :super bio-method) 
(noun "TruSeq" :super bio-method) 

;; likely bio-methods/software but not all have been vetted - might be companies and drugs as well
(noun ("ViroChip" "virochip") :super bio-method) ;; a panviral DNA microarray assay
(noun "TBDev" :super bio-method) ;; a file sharing/torrent system which has an offshoot called BioTorrents for scientific data
(noun "BioTorrents" :super bio-method)

(noun "AccessQuick" :super bio-method) ;; rt-pcr system
(noun "AcroPrep" :super bio-method) 
(noun "ApopTag" :super bio-method) 
(noun "ArrayScan" :super bio-method) 
(noun "BacRep" :super bio-method) ;; viral vector
(noun "BioCaster" :super bio-method) 
(noun "BioFX" :super bio-method) 
(noun "BioFire" :super bio-method) 
(noun "BioID" :super bio-method) 
(noun "BioMax" :super bio-method) 
(noun "BioSpin" :super bio-method) 
(noun "Biofire" :super bio-method) 
(noun "CellProfiler" :super bio-method) 
(noun "ChipLC" :super bio-method) 
(noun "CliqueSNV" :super bio-method) ;; viral variant reconstruction
(noun "CyQuant" :super bio-method) ;; cell count
(noun "DapMap" :super bio-method) ;; tissue sample processor
(noun "DeepFam" :super bio-method) ;; deep learning protein fam prediction
(noun "EuropaBio" :super bio-method) 
(noun "FIREPol" :super bio-method) ;; a DNA polymerase
(noun "FiberCell" :super bio-method) 
(noun "GelCode" :super bio-method) 
(noun "GenBody" :super bio-method) 
(noun "GenMark" :super bio-method) 
(noun "GeneQuant" :super bio-method) 
(noun "GeneSnap" :super bio-method) 
(noun "HotstarTaq" :super bio-method) 
(noun "ISBiotech" :super bio-method) 
(noun "ImmSim" :super bio-method) 
(noun ("Jackson ImmunoResearch" "Jackson ImmuoResearch") :super bio-method) ;; company
(noun ("InvivoGen" "Invivogen") :super bio-method) ;;company
(noun "IsoPlane" :super bio-method) ;; spectrometer
(noun "LoFreq" :super bio-method) ;; finds variants
(noun "LongAmp" :super bio-method) ;; polymerase
(noun "MaxQuant" :super bio-method) ;; proteomics software
(noun "NanoLuc" :super bio-method) ;; luciferase enzyme 
(noun "NetPicoRNA" :super bio-method) 
(noun "NovaBlot" :super bio-method) 
(noun "NucBlue" :super bio-method) 
(noun "NucleoPrepII" :super bio-method) 
(noun "OptEIA" :super bio-method) ;; immune assay
(noun "OptiMEM" :super bio-method) ;; growth medium
(noun "OptiPro" :super bio-method) ;; growth medium
(noun "ShineGene" :super bio-method) 
(noun "SimPlotß" :super bio-method) ; some genetic analysis only in 2 papers 
(noun "SimRel" :super bio-method) ;;  functional similarity measure for comparing two GO terms
(noun "TempliPhi" :super bio-method) ;; dna seq template amplification
(noun ("TransGen" "Transgen") :super bio-method) 
(noun "TwinHelix" :super bio-method) 
(noun "UVItec" :super bio-method) ;; molec imaging
(noun "UniFrac" :super bio-method) 
(noun "VetScan" :super bio-method) ;; pet urine analysis
(noun "VirusSeeker" :super bio-method) ;; comp pipeline for virus discovery
(noun "WestPico" :super bio-method) ;; western blot kit
 
(noun "iBio" :super bio-method) 
(noun "iPrep" :super bio-method) ;; cheek swab kit
(noun "iProof" :super bio-method) ;; polymerase
(noun "iSelect" :super bio-method) 
(noun "iTaqTM" :super bio-method) 
(noun "iVtL" :super bio-method) 
(noun "miniMACS" :super bio-method) ;; mass spectrometry separator
(noun "mirVana" :super bio-method) 
(noun "nQuery" :super bio-method) ;; clinical trial design software

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

(define-category knockout-pattern :specializes bio-predication
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
