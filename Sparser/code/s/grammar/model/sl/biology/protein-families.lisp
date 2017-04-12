;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "protein-families"
;;;  Module: "grammar/model/sl/biology/
;;; version: June 2015

;; initiated 06/16/15 migrating from other files 

(in-package :sparser)



;;bad (def-family "GST" :members ("GSTP1_HUMAN")) ;; actually, very many more

;; Protein families

(def-family "CDK" :synonyms ("cyclin dependent kinase" "cyclin-dependent kinase" "Cdks" "CDKs") :identifier "NCIT:C17767")	
(def-family "14-3-3")
(def-family "AMPK":synonyms ("AMP activated protein kinase"))
(def-family "ASPP" :members ("ASPP1" "ASPP2") :synonyms ("apoptosis-stimulating protein of p53"))
(def-family "CD3")
(def-family "CREB" :synonyms ("cAMP response element-binding protein"))
(def-family "CaMK" :synonyms ("CaM kinase" "CAMK" "CaM-kinase"))
(def-family "Cam-PDE 1" :members ("PDE1A_HUMAN" "PDE1B_HUMAN""PDE1C_HUMAN"))
(def-family "DUSP") ;; there are a bunch of these, but we will ignore them for the moment
(def-family "EPHB receptor":members ("EPHB1_HUMAN" "EPHB2_HUMAN" "EPHB3_HUMAN" "EPHB4_HUMAN" "EPHB5_HUMAN" "EPHB6_HUMAN"))
(def-family "GAP")
(def-family "GPCR")
(def-family "HLA class I molecule")
(def-family "HSP90") ;; heat-shock proteins
(def-family "IgG")
(def-family "IQGAP" :members ("IQGAP1" "IQGAP2" "IQGAP3"))
(def-family "Jnk" :members ("JNK1" "JNK3A"))
(def-family "MAP2K" :members ("MAP2K1" "MAP2K2" "MAP2K3" "MAP2K4" "MAP2K5" "MAP2K6" "MAP2K7") :synonyms ("mitogen activated protein kinase" "MAP kinase kinase") )
(def-family "MAPK" :members ("UP:Q5A1D3" #| "ERK1" |# "UP:Q54QB1" #| "ERK2" |# ) :long "mitogen activated protein kinase" :synonyms ("ERK" "extracellular signal-regulated kinase" "ERK1/2" "erk" "mapk" "MAP kinase" "mitogen-activated protein kinase"))
(def-family "MEK" :members ("MEK1" "MEK2") :synonyms ("MEK1/2" "MAPKK" "mitogen activated ERK kinase"))
(def-family "NF-AT" :members ("NFAT5_HUMAN")) 
(def-family "PI3-kinase" :synonyms ("PI3K" "phosphatidylinositol-4,5-bisphosphate 3-kinase" "phosphatidylinositide 3-kinase"  "phosphatidylinositol 3-kinase" "phosphatidylinositol-3-kinase" "PI 3-kinase" "PI(3)K" "PI-3K"))
(def-family "PKC" :members ("PKC-alpha" "PKC-delta" "nPKC-epsilon"))
(def-family "PTK")
(def-family "RAS GAP")
(def-family "Raf" :members ("ARaf" "BRaf" "CRaf") :identifier "RAF" :synonyms ("RAF")) ;;/// maybe use the Mitre choice? 
(def-family "Ras" :members ("KRas" "HRas" "NRas") :identifier "GO:0003930" :synonyms ("RAS")) ;; this is NOT the long name for "RAS" :long "GTPase") ;;//// need capitalization hacks
;; alternate Ras identifier "FA:03663" -- from TRIPS-proteins -- have now commented this definition out of non-upa-upm-proteins
(def-family "SMAD" );; there are a bunch of these, but we will ignore them for the moment
(def-family "TRIM")
(def-family "Wnt")
(def-family "arrestin") ;; lots of family members -- put them in some day
(def-family "cadherin" :members ("CADH1_HUMAN"))
(def-family "catenin")
(def-family "cyclooxygenase" :members ("PGH2_HUMAN"))
(def-family "endophilin")
(def-family "exportin")
(def-family "growth-factor" :members ("EGF_HUMAN") :long "growth factor")
(def-family "importin")
(def-family "integrin")
(def-family "karyopherin α" :synonyms ("karyopherin αs" "karyopherin alpha")) ;; don't have a list of proteins
(def-family "karyopherin β" :synonyms ("karyopherin βs" "karyopherin beta")) ;; don't have a list of proteins
(def-family "p38 SAPK" :members ("UP:Q16539" "UP:Q15759"))
(def-family "poly(ADP–ribose)" :members ("PARP1_HUMAN" "PARP2_HUMAN" "PARP3_HUMAN"))
(def-family "tyrphostin") ;; Tyrosine-kinase inhibitor -- actually a drug?
