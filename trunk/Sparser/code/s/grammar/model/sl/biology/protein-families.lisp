;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "protein-families"
;;;  Module: "grammar/model/sl/biology/
;;; version: June 2015

;; initiated 06/16/15 migrating from other files 

(in-package :sparser)




;; Protein families
(noun  "catenin" :super protein-family)

(def-family "ASPP"
  :members ("ASPP1" "ASPP2")
  :synonyms ("apoptosis-stimulating protein of p53"))

(def-family "cadherin" :members ("CADH1_HUMAN"))
(def-family "GST" :members ("GSTP1_HUMAN")) ;; actually, very many more

(def-family "MEK" 
  :members ("MEK1" "MEK2")
  :synonyms ("MEK1/2"))

(def-family "NF-AT" :members ("NFAT5_HUMAN")) 
(def-family "poly(ADP–ribose)" :members ("PARP1_HUMAN" "PARP2_HUMAN" "PARP3_HUMAN"))

(def-family "Raf" 
  :members ("ARaf" "BRaf" "CRaf")
  :identifier "RAF" ;;/// maybe use the Mitre choice?
  :synonyms ("RAF"))

(def-family "Ras" ;;//// need capitalization hacks
  :members ("KRas" "HRas" "NRas")
  :identifier "GO:0003930"
  :synonyms ("RAS")
  :long "GTPase")

(def-family "MAPK"
  :members ("ERK1" "ERK2")
  :long "mitogen activated protein kinase"
  :synonyms ("ERK" "extracellular signal-regulated kinase"
             "erk" "mapk"
             "mitogen-activated protein kinase"))

(def-family  "cyclooxygenase" :members ("PGH2_HUMAN"))


;; http://en.wikipedia.org/wiki/Growth_factor
;; Again, it's a family, not a particular
(def-bio "growth factor" protein-family)
(def-bio "growth-factor" protein-family)
(def-bio "growth receptor" protein-family)
