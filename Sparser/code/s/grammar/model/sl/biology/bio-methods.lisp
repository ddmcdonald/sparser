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
(noun "LSM" :super bio-method)
(def-synonym LSM (:noun "laser scanning microscope"))
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
(define-category fluorescence :specializes bio-method
  :realization
  (:noun "fluorescence"))
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
(def-synonym mass-spectrometry (:noun ("mass spectrometry" "MS")))
(noun "IP-MS" :super bio-method) ;; added to get rid of erroneous TRIPS def that was plural of "IPM"
(def-synonym ip-ms (:noun "immunoprecipitation mass spectrometry"))

(noun "means" :super bio-method
      :restrict ((object over-ridden))
      :binds ((process bio-process))
      :realization
      (:noun "means"
             :of process))

(noun "method" :super bio-method)

(noun "mode" :super bio-method)
(noun "modeling" :super bio-method) ;; but modeling is a nominal that is used
(noun ("mutagenesis" :plural "mutageneses") :super bio-method)
(noun "mutagenic approaches" :super mutagenesis)

(noun "NMR" :super bio-method)
(def-synonym NMR (:noun "NMR analyses"))

(noun "panel" :super bio-method
      :restrict ((object over-ridden))
      :binds ((component molecule)) ;; this should be for genes and proteins
      :realization
      (:noun "panel"
             :of component))

;; polymerase chain reaction
(noun "PCR" :super bio-method)
(noun "RT-PCR" :super PCR)
(noun "qRT/PCR" :super PCR)

;; unrelated PCR - defining this partly to block a bad trips def
(noun "ePCR" :super bio-method)
(def-synonym ePCR (:noun "electronic Patient Care Reporting"))

;; "detection of regulatory elements using GRO-Seq"
(noun "dREG" :super bio-method)
;; Broad-platform Evolutionary Analysis General Likelihood Evaluator
(noun "BEAGLE" :super bio-method) 


(noun "QCT" :super bio-method)
(def-synonym QCT (:noun "quantitative computed tomography"))
(noun "pQCT" :super QCT)
(def-synonym pQCT  (:noun "peripheral quantitative computed tomography"))
(noun "rnai" :super bio-method)
(noun "SDS-PAGE"  :super bio-method)
(noun "spectrometry" :super bio-method)

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
(define-category absence :specializes experimental-condition
  :binds ((measurement (:or measurement bio-scalar)))
  :realization
  (:noun "absence"
	 :of measurement))
;;(noun "condition" :super experimental-condition) OBE -- in taxonomy
;(noun "fetal calf serum" :super experimental-condition)
;(def-synonym category::fetal-calf-serum  (:noun "FCS")) ; added with id now in new-bio-meths

  
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
  :binds ((measurement
           (:or biological ;; can be "in the presence of of HRAS V12"
                measurement bio-scalar)))
  :realization
  (:noun "presence"
	 :of measurement))
(noun "radioactivity" :super experimental-condition
      :binds ((material molecule))
      :realization
      (:noun "radioactivity" :adj "radioactive"
             :of material))
; moved serum to substance rather than experimental condition because it can be used to activate proteins

(noun "setting" :super bio-context)
(noun "trial" :super bio-context)
(noun "pilot" :super bio-context)
(def-synonym pilot (:noun "pilot study"))

;;;------------------------
;;; miscellaneous
;;;------------------------


(define-category bio-reagent :specializes bio-entity) ;; not really
(noun "gel" :super bio-reagent)


(define-category bio-preparation :specializes bio-entity)
(noun "slice" :super bio-preparation) ;; brain slices
(noun "networking" :super bio-mechanism) ;; unsure of this -- "receptor networking"

(noun "consequence" :super bio-quality)
(noun "role" :super bio-quality
      :binds ((process bio-process))
      :realization
      (:in process))

(define-category aspect :specializes bio-mechanism
  :binds ((whole bio-mechanism))
  :realization
  (:noun "aspect"
         :of whole))

(define-adverb "at baseline")

(noun "gain" :super positive-bio-control)

(define-category paradigm :specializes process
   :mixins (biological)
  ;; not sure this is the correct term, but intended for things like "forms of ras" 
  :binds ((basis bio-process)) ;; can be a gene or protein, or something else
  :instantiates :self
  :realization
  (:noun "paradigm"
         :m basis
         :of basis
         :for basis))
