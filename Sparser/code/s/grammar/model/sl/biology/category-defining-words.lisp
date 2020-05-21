;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2016-2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "category-defining-words"
;;;  Module: "grammar/model/sl/biology/
;;; version: April 2020


;;;;;;;; These are definitions for words that have the same spelling as defined categories, and which
;;;;;;;;     should be defined in terms of those categories, rather than using
;;;;;;;;     the category produced by distinguish-category

(in-package :sp)          

(def-synonym achievement (:noun "achievement"))
(def-synonym accomplishment (:noun "accomplishment"))
(def-synonym acknowledgement (:noun "acknowledgement")) 
(def-synonym adaptor (:noun "adaptor")) 
(def-synonym additive (:adj "additive"))
(def-synonym adjective (:noun "adjective"))
(def-synonym adjunct (:noun "adjunct")) 
(def-synonym anonymous (:adj "anonymous")) 
(def-synonym apology (:noun ("apology" :plural "apologies"))) 
(def-synonym background (:noun "background")) 
(def-synonym beagle (:noun "beagle")) 
(def-synonym candidate (:noun "candidate" :adj "candidate")) 
(def-synonym category (:noun ("category" :plural "categories"))) 

(def-synonym company (:noun ("company" :plural "companies"))) 
(def-synonym comparative (:noun "comparative")) 
(def-synonym conjunction (:noun "conjunction")) 
(def-synonym container (:noun "container")) 

(def-synonym definite (:noun "definite")) 
(def-synonym demonstrative (:noun "demonstrative")) 
(def-synonym dimension (:noun "dimension")) 
(def-synonym great (:adj ("great" :comparative "greater" :superlative "greatest")))
(def-synonym imperative (:noun "imperative")) 
(def-synonym indefinite (:noun "indefinite")) 
(def-synonym interval (:noun "interval")) 
(def-synonym ion (:noun "ion")) 
(def-synonym modal (:adj "modal")) 
(def-synonym modality (:noun ("modality" :plural "modalities"))) 
(def-synonym multiplier (:noun "multiplier"))
(def-synonym musical (:noun "musical" :adj "musical"))
(def-synonym new (:adj "new")) 
(def-synonym noun (:noun "noun")) 
(def-synonym nucleus (:noun "nucleus" :adj "nuclear")) 
(def-synonym ordinal (:adj "ordinal")) 
(def-synonym orientation (:noun "orientation")) 
;;(def-synonym paragraph (:noun "paragraph")) NOW EXPLICITLY DEFINED
(def-synonym pathogen (:noun "pathogen")) 
(def-synonym percent (:noun "percent")) 
(def-synonym person (:noun "person"))
(def-synonym plural (:noun "plural" :adj "plural")) 
(def-synonym poor (:adj "poor")) 
(def-synonym predication (:noun "predication")) 
(def-synonym progressive (:adj "progressive")) 
(def-synonym punctuation (:noun "punctuation")) 
(def-synonym quantity (:noun ("quantity" :plural "quantities")))
(def-synonym quotation (:noun "quotation"))
(def-synonym scalar (:noun "scalar" :adj "scalar")) 
(def-synonym subsequence (:noun "subsequence")) 
(def-synonym thematic (:adj "thematic")) 
(def-synonym title (:noun "title")) 
(def-synonym trajectory (:noun ("trajectory" :plural "trajectories")))
(def-synonym verb (:noun "verb")) 
(def-synonym weekday (:noun ("weekday" :plural "weekdays"))) 
