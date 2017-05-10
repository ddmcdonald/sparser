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
      :binds ((substrate bio-entity))
      :realization 
      (:noun "dna binding"
             :of substrate))
(noun "fate" :super bio-process)

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

;;;------------------------
;;; caused, named, and other bio-processes
;;;------------------------
;; these came from TRIPS, but we need to make them caused-bio-processes to get the "of" and "by" postmods right

(define-category chemosensitization :specializes caused-bio-process :bindings (uid "NCIT:C15463") :realization (:noun "chemo-sensitization"))
(define-category detoxification :specializes caused-bio-process :bindings (uid "GO:0098754") :realization (:noun "detoxification")) 
(define-category regeneration :specializes caused-bio-process :bindings (uid "NCIT:C17083") :realization (:noun "regeneration")) 
(define-category transduction :specializes caused-bio-process :bindings (uid "GO:0009293") :realization (:noun "trans-duction")) 
(define-category |CHEMICAL CLEAVAGE| :specializes caused-bio-process :bindings (uid "NCIT:C73482") :realization (:noun "cleavage")) 

(noun ("stimulus" :plural "stimuli") :super other-bio-process)
;; not sure if this is ontologically correc, but I think it might be close

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
(noun "tumor formation" :super named-bio-process)
