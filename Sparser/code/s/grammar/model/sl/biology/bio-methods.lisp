;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2019 SIFT LLC. All Rights Reserved
;;; copyright (c) 2025  David D. McDonald  -- all rights reserved
;;;
;;;    File: "bio-methods-processes"
;;;  Module: "grammar/model/sl/biology/
;;; version: February 2025

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
  :binds ((quality top)) ;; assessed X on <quality> or for <quality>
  :realization
  (:verb "assess" ;; keyword: ENDS-IN-ED 
   :noun "assessment"
   :on quality
   :for quality
   :etf (svo-passive)))



(define-category culture :specializes bio-method
  :realization
  (:verb "culture" ;; keyword: ENDS-IN-ED
         :etf (svo-passive)
         :noun "culture"))

;; new, from *comlex-category-names*
(define-category clone :specializes bio-method
                 )
(def-indiv-with-id bio-method "cloning" "NCIT:C16442" :name "cloning") 

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
#+ignore
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


(noun "vector" :super bio-method) ;; need a class for experimental materials
(noun "incubation" :super bio-method)

(define-category bio-observation :specializes bio-method
  :binds ((observed biological))
  :restrict ((object blocked-category))
  :realization (:of observed))
;; not really, but what is it
(noun "band" :super bio-observation)

(noun "positioning" :super bio-method)
(noun "thresholding" :super bio-method)
(noun "blotting" :super bio-method)

(noun  "processing" :super bio-method
       :binds ((object bio-entity))
       :realization
       (:noun "processing"
       :by agent
       :of object))
(noun  "stripping" :super bio-method)
(noun  "uncapping" :super bio-method)


(noun "spectroscopy" :super bio-method)
(noun "microscope" :super bio-method)
(noun "microscopy" :super bio-method) ;; this ought to be related to above

(define-category fluorescence :specializes bio-method
  :realization
  (:noun "fluorescence"))

(define-category chromatography :specializes bio-method
                 :bindings (uid "NCIT:C16431")
                 :realization
                 (:noun "chromatography") )
(noun "spectrometry" :super bio-method)
(def-indiv-with-id bio-method "spectrophotometry" "NCIT:C116701" :name "spectrophotometry") 
(def-indiv-with-id bio-method "crystallography" "NCIT:C16476" :name "crystallography") 
(def-indiv-with-id bio-method "co-crystallization" "NCIT:C19558" :name "cocrystallography")
(def-indiv-with-id bio-method "fluorimetry" "NCIT:C62322" :name "fluorimetry") 

(def-indiv-with-id bio-method "centrifugation" "NCIT:C16410" :name "centrifugation")
(def-indiv-with-id bio-method "densitometry" "NCIT:C86063" :name "densitometry") 
(def-indiv-with-id bio-method "dosimetry" "NCIT:C15312" :name "radiation dosimetry")
(def-indiv-with-id bio-method "genotype" "EFO:0000750" :name "genotyping") 
(def-indiv-with-id bio-method "g-banding" "NCIT:C19478" :name "G-banding") 
(def-indiv-with-id bio-method "nephelometry" "NCIT:C111281" :name "nephelometry") 
(def-indiv-with-id bio-method "oscillometry" "NCIT:C154788" :name "oscillometry") 
(def-indiv-with-id bio-method "manometry" "NCIT:C16820" :name "manometry") 
(def-indiv-with-id bio-method "nanolithography" "NCIT:C62316" :name "nanolithography") 
(def-indiv-with-id bio-method "refractometry" "NCIT:C111304" :name "refractometry")
(def-indiv-with-id bio-method "turbidimetry" "NCIT:C111328" :name "turbidimetry") 
(def-indiv-with-id bio-method "immunoturbidimetry" "NCIT:C106536" :name "immunoturbidimetry") 
(def-indiv-with-id bio-method "potentiometry" "NCIT:C142343" :name "potentiometry")
(def-indiv-with-id bio-method "protonation" "NCIT:C54165" :name "protonation")

(def-indiv-with-id bio-method "inv" "EFO:0004017" :name "inversion") 
(def-indiv-with-id bio-method "sedimentation" "NCIT:C54178" :name "sedimentation") 
(def-indiv-with-id bio-method "transposition" "EFO:0004021" :name "transposition") 
(def-indiv-with-id bio-method "unmixing" "NCIT:C84381" :name "spectral unmixing") 

;; probably should be a bio-predication or something other than a method
(def-indiv-with-id bio-method "transgenic" "EFO:0004020" :name "transgenic") 


(define-category PCR :specializes bio-method
                 :bindings (uid "NCIT:C17003")
                 :realization
                 (:noun ("PCR" "polymerase chain reaction"
                               "Polymerase Chain Reaction")) )

(noun "imaging" :super bio-method)

(noun  "array" :super bio-method)
(noun  "well" :super bio-method)
(noun  "plate" :super bio-method)

(noun "algorithm" :super bio-method)

;; bio-method doesn't inherit from a category
;; that binds 'object'
#|
(noun "means" :super bio-method
      :restrict ((object over-ridden))
      :binds ((process bio-process))
      :realization
      (:noun "means"
       :of process))

(noun "way" :super bio-method
      :restrict ((object over-ridden))
      :binds ((process bio-process))
      :realization
      (:noun "way"
             :of process))

(noun "panel" :super bio-method
      :restrict ((object over-ridden))
      :binds ((component molecule)) ;; this should be for genes and proteins
      :realization
      (:noun "panel"
             :of component))
|#
(noun "work" :super bio-method)

(def-indiv-with-id bio-method "pellet" "NCIT:C45813" :name "pellet formation")


(def-indiv-with-id bio-method "UV" "NCIT:C17231" :name "ultraviolet radiation")




;; epidemiology related
(noun "FluTrackers" :super bio-method) ;; forum about infections diseases
(noun "MiTAP" :super bio-method) ;; Mitre Text and Audio Processing,  "for monitoring infectious disease outbreaks and other global events."
(noun "NextStrain" :super bio-method) ;; open source tools for looking at genetics of viral outbreaks
(noun "FluWatch" :super bio-method) ;; surveillance systems in Maryland and Canada


(noun ("POCOVIDScreen" "PocovidScreen") :super bio-method) ;; ai to detect covid on ultrasounds

(noun "RNAaemia" :super medical-method) ;; measure of (viral) rna in blood
 




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



(define-category aspect :specializes bio-mechanism
  :binds ((whole bio-mechanism))
  :realization
  (:noun "aspect"
         :of whole))


(noun "gain" :super positive-bio-control)


