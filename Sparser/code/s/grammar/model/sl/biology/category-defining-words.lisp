;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2020-2021 SIFT LLC. All Rights Reserved
;;;
;;;    File: "category-defining-words"
;;;  Module: "grammar/model/sl/biology/
;;; version: October 2021


;;;;;;;; These are definitions for words that have the same spelling as defined categories, and which
;;;;;;;;     should be defined in terms of those categories, rather than using
;;;;;;;;     the category produced by distinguish-category

(in-package :sp)

;;-- in upper-model, which loads before morphology does
(assign-lemma quality (:common-noun "quality"))
(assign-lemma abstract (:common-noun "abstract"))
(assign-lemma relation (:common-noun "relation"))
(assign-lemma linguistic (:adjective "linguistic"))
(assign-lemma scalar (:adjective "scalar"))

;;-- kinds/tense-aspect -- also load before crucial morph. files
(assign-lemma negative (:adjective "negative"))
(assign-lemma plural (:adjective "plural"))
(assign-lemma progressive (:adjective "progressive"))

;;-- kinds/things -- define-adjective needs a 'no comparative' option
(assign-lemma physical (:adjective "physical"))

(when (current-script :biology)
  (def-synonym adaptor (:noun "adaptor"))
  (def-synonym additive (:adj "additive")))

(when (current-script :biology)
  (def-synonym background (:noun "background"))
  (def-synonym beagle (:noun "beagle"))
  (def-synonym candidate (:noun "candidate" :adj "candidate")))

(when (current-script :biology)
  (def-synonym great (:adj ("great" :comparative "greater" :superlative "greatest"))))

(when (current-script :biology) (def-synonym ion (:noun "ion")))

(def-synonym modality (:noun ("modality" :plural "modalities"))) 
(def-synonym new (:adj "new")) 

(when (current-script :biology)
  (def-synonym nucleus (:noun "nucleus" :adj "nuclear")))
(when (current-script :biology)
  (def-synonym pathogen (:noun "pathogen")))

(def-synonym poor (:adj "poor")) 

(def-synonym quotation (:noun "quotation"))
