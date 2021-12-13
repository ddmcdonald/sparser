;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "bio-methods-processes"
;;;  Module: "grammar/model/sl/biology/
;;; version: May 2017

;; Broken out from terms 5/10/17
;;; Sections: bio-processes, bio-processes with IDs, and caused, named, and other bio-processes

(in-package :sparser)

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

(noun "dna binding" :super bio-process
   :mixins (on-substrate)
   :realization 
   (:noun "dna binding"
          :of substrate))

(noun "fate" :super bio-process)
(noun "manner" :super bio-process
      :realization
      (:noun "manner"))
(noun "outcome" :super bio-process
      :binds ((process bio-process))
      :realization
      (:noun "outcome"
       :of process))

;; bio-process is ultimate super (nucleotide-exchange -> bio-movement -> bio-process)
(define-category guanyl-nucleotide-exchange :specializes nucleotide-exchange
  :realization
  (:noun "guanyl-nucleotide exchange"))

(noun ("PPI" "protein-protein interaction") :super bio-process)
(noun ("HC-PPI" "High-confidence protein-protein interaction") :super bio-process)

;;;------------------------
;;; caused, named, and other bio-processes
;;;------------------------
;; these came from TRIPS, but we need to make them caused-bio-processes to get the "of" and "by" postmods right

(define-category chemosensitization :specializes caused-bio-process :bindings (uid "NCIT:C15463") :realization (:noun "chemo-sensitization"))
(define-category detoxification :specializes caused-bio-process :bindings (uid "GO:0098754") :realization (:noun "detoxification")) 
(define-category regeneration :specializes caused-bio-process :bindings (uid "NCIT:C17083") :realization (:noun "regeneration")) 
(define-category transduction :specializes caused-bio-process :bindings (uid "GO:0009293") :realization (:noun "trans-duction")) 
(define-category chemical-cleavage :specializes caused-bio-process :bindings (uid "NCIT:C73482") :realization (:noun "cleavage")) 

(noun ("stimulus" :plural "stimuli") :super other-bio-process)
;; not sure if this is ontologically correc, but I think it might be close


(noun "tumor formation" :super named-bio-process)

;; clearly non-academic terms moved from new-bio-proc

(def-indiv-with-id bio-process "cognition" "GO:0050890" :name "cognition" :adj "cognitive")

(def-indiv-with-id bio-process "meiosis" "NCIT:C16834" :name "meiosis" :adj "meiotic")
(def-indiv-with-id bio-process "spermatogenesis" "GO:0007283" :name "spermatogenesis") 
(def-indiv-with-id bio-process "ovulation" "GO:0030728" :name "ovulation") 
(def-indiv-with-id bio-process "oogenesis" "GO:0048477" :name "oogenesis")
(def-indiv-with-id bio-process "conception" "NCIT:C16465" :name "conception") 
(def-indiv-with-id bio-process "reproduction" "NCIT:C17087" :name "reproduction" :adj "reproductive")
(def-indiv-with-id bio-process "mating" "GO:0007618" :name "mating")
(def-indiv-with-id bio-process "gestation" "NCIT:C25742" :name "pregnancy") 
(def-indiv-with-id bio-process "fertilization" "GO:0009566" :name "fertilization") 
(def-indiv-with-id bio-process "embryogenesis" "NCIT:C16649" :name "embryogenesis")
(def-indiv-with-id bio-process "gastrulation" "GO:0007369" :name "gastrulation") 
(def-indiv-with-id bio-process "lactation" "GO:0007595" :name "lactation") 
(def-indiv-with-id bio-process "ageing" "GO:0007568" :name "aging")

(def-indiv-with-id bio-process "neurogenesis" "GO:0022008" :name "neurogenesis")
(def-indiv-with-id bio-process "corticogenesis" "GO:0021987" :name "cerebral cortex development") 
(def-indiv-with-id bio-process "myelination" "GO:0042552" :name "myelination") 
(def-indiv-with-id bio-process "innervation" "GO:0060384" :name "innervation") 

(def-indiv-with-id bio-process "degenerate" "NCIT:C61557" :name "degeneration" :adj "degenerative")

(def-indiv-with-id bio-process "auto-immune" "NCIT:C16313" :name "autoimmune process") 
(def-indiv-with-id bio-process "tolerance" "NCIT:C17712" :name "immunologic tolerance") 
(def-indiv-with-id bio-process "sensitization" "GO:0046960" :name "sensitization") 
(def-indiv-with-id bio-process "hypersensitivity" "GO:0002524" :name "hypersensitivity") 

(def-indiv-with-id bio-process "coagulation" "GO:0050817" :name "coagulation") 
(def-indiv-with-id bio-process "infarct" "NCIT:C25738" :name "infarction") 
(def-indiv-with-id bio-process "broncho-constriction" "NCIT:C40942" :name "bronchoconstriction") 
(def-indiv-with-id bio-process "diastole" "NCIT:C62109" :name "diastole" :adj "diastolic") 
(def-indiv-with-id bio-process "systole" "NCIT:C62110" :name "systole" :adj "systolic")

(def-indiv-with-id bio-process "locomotion" "GO:0040011" :name "locomotion") 
(def-indiv-with-id bio-process "muscle contraction" "NCIT:C30085" :name "muscle contraction" :adj "contractile") 
(def-indiv-with-id bio-process "grip" "NCIT:C78654" :name "grip") 
(def-indiv-with-id bio-process "touch" "NCIT:C38535" :name "touch") 

(def-indiv-with-id bio-process "parasitism" "GO:0072519" :name "parasitism") 
(def-indiv-with-id bio-process "pathogenesis" "GO:0009405" :name "pathogenesis" :plural ("pathogenesises" "pathogeneses"))

(def-indiv-with-id bio-process "biogenesis" "NCIT:C17702" :name "biosynthesis") 
(def-indiv-with-id bio-process "oncogenesis" "NCIT:C18121" :name "tumorigenesis" :adj "oncogenic")
(def-indiv-with-id bio-process "tumorigenesis" "NCIT:C18121" :name "tumorigenesis" :adj "tumorigenic")
(def-indiv-with-id bio-process "carcinogenesis" "NCIT:C18078" :name "carcinogenesis" :adj "carcinogenic")
(def-indiv-with-id bio-process "melanogenesis" "NCIT:C20628" :name "melanogenesis") 
