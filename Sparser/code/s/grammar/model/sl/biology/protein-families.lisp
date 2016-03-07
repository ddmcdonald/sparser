;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "protein-families"
;;;  Module: "grammar/model/sl/biology/
;;; version: June 2015

;; initiated 06/16/15 migrating from other files 

(in-package :sparser)




;; Protein families
(noun "PTK" :super protein-family
      ;;:synonyms ("protein tyrosine kinase")
      )

(noun "HSP90"  :super protein-family) ;; heat-shock proteins
(noun  "catenin" :super protein-family)
(noun "integrin" :super protein-family)
(noun "RAS GAP" :super protein-family)
(noun "GAP" :super protein-family)
(noun "tyrphostin" :super protein-family) ;; Tyrosine-kinase inhibitor -- actually a drug?
(noun "CD3" :super protein-family)
(noun "HLA class I molecule" :super protein-family)

(noun ("CaMK" "CaM kinase" "CAMK" "CaM-kinase") :super protein-family)
(noun "arrestin" :super protein-family) ;; lots of family members -- put them in some day
(def-family "IQGAP"
            :members ("IQGAP1" "IQGAP2" "IQGAP3"))
(def-family "Jnk"
               :members ("JNK1" "JNK3A"))

(def-family "ASPP"
  :members ("ASPP1" "ASPP2")
  :synonyms ("apoptosis-stimulating protein of p53"))

(def-family "PKC"
            :members ("PKC-alpha" "PKC-delta" "PKC-epsilon"))

(def-family "Cam-PDE 1"
            :members ("PDE1A_HUMAN" "PDE1B_HUMAN""PDE1C_HUMAN"))

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
             "ERK1/2"
             "erk" "mapk"
             "MAP kinase"
             "mitogen-activated protein kinase"))

(def-family "MAP2K"
  :members ("MAP2K1" "MAP2K2" "MAP2K3" "MAP2K4" "MAP2K5" "MAP2K6" "MAP2K7")
  :synonyms ("mitogen activated protein kinase" "MAP kinase kinase")
  )


(def-family "PI3-kinase"
            :members ("PI3K")
  :synonyms ("phosphatidylinositol-4,5-bisphosphate 3-kinase"
             "phosphatidylinositide 3-kinase"
             "phosphatidylinositol-3-kinase"
             "PI 3-kinase"
             "PI(3)K"
             "PI-3K"))

(def-family  "cyclooxygenase" :members ("PGH2_HUMAN"))


;; http://en.wikipedia.org/wiki/Growth_factor
;; Again, it's a family, not a particular
(def-family "growth-factor" :members ("EGF_HUMAN")
  :long "growth factor")

(def-bio "growth receptor" protein-family)
(def-bio "endophilin" protein-family)
