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
