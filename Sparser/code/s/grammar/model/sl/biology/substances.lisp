;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "substances"
;;;  Module: "grammar/model/sl/biology/
;;; version: November 2021

;; For items identified as substances from TRIPS
;; moved new-defs here

(in-package :sparser)

(define-category serum :specializes experimental-condition
 :mixins (substance)
 :realization (:noun ("serum" :plural "sera")))

(define-category buffer :specializes experimental-condition
 :mixins (substance)
 :realization (:noun "buffer")) ;maybe add verb?

(noun ("HPB" "high phosphate buffer") :super buffer)

(noun "air" :super substance) ;; could be better but replaces the spurious definition where it was a name for a random chemical

(def-indiv-with-id substance "Fluid" "NCIT:C25278" :name "fluid") 
(def-indiv-with-id substance "Liquid" "NCIT:C45298" :name "liquid") 
(def-indiv-with-id substance "Oil" "NCIT:C66934" :name "oil") 
(def-indiv-with-id substance "admixture" "NCIT:C19384" :name "admixture") 
(def-indiv-with-id substance "conjugate" "NCIT:C61533" :name "conjugate") 
(def-indiv-with-id substance "colloid" "NCIT:C32345" :name "colloid") 
(def-indiv-with-id substance "granule" "NCIT:C61363" :name "granule") 
(def-indiv-with-id substance "gas" "NCIT:C45299" :name "gas" :plural ("gases" "gasses")) 
(def-indiv-with-id substance "suspension" "NCIT:C45304" :name "suspension") 
(def-indiv-with-id substance "sol" "NCIT:C73489" :name "sol") 
(def-indiv-with-id substance "MIST" "NCIT:C45303" :name "mist") 
(def-indiv-with-id substance "build-up" "NCIT:C94553" :name "buildup") 
(def-indiv-with-id substance "contaminant" "NCIT:C84280" :name "contaminant") 
(def-indiv-with-id substance "crystal" "NCIT:C61303" :name "crystal") 
(def-indiv-with-id substance "stationary-phase" "NCIT:C70673" :name "stationary phase") ;;yes this is a substance
(def-indiv-with-id substance "dust" "NCIT:C84281" :name "dust") 
