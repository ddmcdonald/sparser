;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "protein-families"
;;;  Module: "grammar/model/sl/biology/
;;; version: June 2015

;; initiated 06/16/15 migrating from other files 
;; 03/2017 -- added protein types and IDed protein families

(in-package :sparser)

;;;--------------
;;; protein-types
;;;--------------

(define-category effector :specializes protein ;; NOT SURE WHAT THE RIGHT SUPER is
  :binds ((for-process bio-process))
  :realization
  (:noun "effector" 
         :for for-process
         :in for-process))



(noun "receptor" :super protein)
(noun "receptor protein" :super protein)
(noun "receptor protein-tyrosine kinase" :super kinase)
(noun "scaffold" :super protein) 

(noun "isomerase" :super enzyme)
(noun "ligase" :super enzyme)
(noun "ubiquitinase" :super enzyme)
(noun "deubiquitinase" :super enzyme)


;;;-----------------
;;; protein-families
;;;-----------------
;;bad (def-family "GST" :members ("GSTP1_HUMAN")) ;; actually, very many more

;; Protein families

	
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
(def-family "MEK" :members ("MEK1" "MEK2") :synonyms ("MEK1/2" "MAPKK"))
(def-family "MNK" :synonyms ("MAPK interacting serine/threonine protein kinases" "MKNK") :members ("MNK1" "MNK2")) ;; couldn't find pfam or other ID for family
(def-family "NF-AT" :members ("NFAT5_HUMAN")) 
(def-family "PI3-kinase" :synonyms ("PI3K" "phosphatidylinositol-4,5-bisphosphate 3-kinase" "phosphatidylinositide 3-kinase"  "phosphatidylinositol 3-kinase" "phosphatidylinositol-3-kinase" "PI 3-kinase" "PI(3)K" "PI-3K"))
(def-family "PKC" :members ("PKC-alpha" "PKC-delta" "nPKC-epsilon"))
(def-family "PTK")
(def-family "RAS GAP")
(def-family "Raf" :members ("ARaf" "BRaf" "CRaf") :identifier "RAF" :synonyms ("RAF")) ;;/// maybe use the Mitre choice? 
(def-family "Ras" :members ("KRas" "HRas" "NRas") :identifier "XFAM:PF00071" :synonyms ("RAS") :long "Ras family") ;;//// need capitalization hacks, also previously had "GTPase" as long which is incorrect
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

;;;--------------------------
;;; protein families with IDs
;;;--------------------------

(def-ided-family "AMPKα" "NCIT:C116019" :name "5-AMP-activated protein kinase catalytic subunit alpha") 
(def-ided-family "BET" "XFAM:PF17035.3" :name "BET") 
(def-ided-family "BTG family" "XFAM:PF07742") 
(def-ided-family "CART" "FA:00467" :name "CART family") 
(def-ided-family "CREB binding" "XFAM:PF09030") 
(def-ided-family "Connexin43" "XFAM:PF03508.11" :name "connexin43") 
(def-ided-family "DIRAS" "FA:03660" :name "Di-Ras family") 
(def-ided-family "E2 enzyme" "XFAM:PF00179" :name "E2 ubiquitin conjugating enzyme" :synonyms ("UbcH5") :members ("UbcH5a" "UbcH5b" "UbcH5c""UbcH5d")) ;; manually added, based on "E2 ubiquitin conjugating enzyme UbcH5a, -b, -c and -d,"
(def-ided-family "E3 ubiquitin ligase" "XFAM:PF12483") 
(def-ided-family "EF-hand" "XFAM:PF09068") 
(def-ided-family "FLIM" "XFAM:PF02154.13" :name "FliM") 
(def-ided-family "Fibroblast growth factor" "XFAM:PF00167") 
(def-ided-family "Galpha" "FA:01401" :name "G-alpha family") 
(def-ided-family "Homer" "FA:01786" :name "homer family") 
(def-ided-family "Humanin" "FA:04811" :name "humanin family") 
(def-ided-family "IF3" "FA:01810" :name "IF-3 family") 
(def-ided-family "JAs" "XFAM:PF16135.3" :name "jas") 
(def-ided-family "KRAB" "XFAM:PF01352.25" :name "KRAB") 
(def-ided-family "MAGE family" "XFAM:PF01454") 
(def-ided-family "MGPC" "XFAM:PF05220.10" :name "MgpC") 
(def-ided-family "MRFs" "FA:02356" :name "MRF family") 
(def-ided-family "Mas" "FA:01426" :name "mas subfamily")
(def-ided-family "NKA" "EC:3.6.3.9" :name  "Na+,K+-ATPase") ;; manually added, pfam and interpro only have subunits, so went  with enzyme commission
(def-ided-family "P450" "XFAM:PF00067") 
(def-ided-family "PAE" "XFAM:PF03283.11" :name "PAE") 
(def-ided-family "PAF" "XFAM:PF15715.3" :name "PAF") 
(def-ided-family "PAP-2" "XFAM:PF01569.19" :name "PAP2") 
(def-ided-family "PP2B" "FA:03002" :name "PP-2B subfamily") 
(def-ided-family "PPE" "XFAM:PF00823.17" :name "PPE") 
(def-ided-family "PSK" "XFAM:PF06404.10" :name "PSK") 
(def-ided-family "R-spondin" "FA:03208" :name "R-spondin family") 
(def-ided-family "SIVA" "XFAM:PF05458.10" :name "siva") 
(def-ided-family "SMCs" "FA:03684" :name "SMC family") 
(def-ided-family "SOD" "XFAM:PF00080" :name "Superoxide dismutase") ;; manually added
(def-ided-family "Spt20" "FA:05167" :name "SPT20 family") 
(def-ided-family "TCF/LEF" "FA:03943" :name "TCF/LEF family") 
(def-ided-family "WNKs" "FA:03108" :name "WNK subfamily") 
(def-ided-family "adipokinetic hormone" "XFAM:PF06377") 
(def-ided-family "alkaline phosphatase" "XFAM:PF00245") 
(def-ided-family "amino acid synthesis" "XFAM:PF06684") 
(def-ided-family "bacterial lipoprotein" "XFAM:PF12182") 
(def-ided-family "clamp" "XFAM:PF14769") 
(def-ided-family "cullin family" "XFAM:PF00888") 
(def-ided-family "cytochrome P450" "XFAM:PF00067") 
(def-ided-family "eIF2alpha" "FA:01067" :name "eIF-2-alpha family") 
(def-ided-family "eukaryotic initiation factor 4E" "XFAM:PF01652") 
(def-ided-family "glycogen synthase" "XFAM:PF05693") 
(def-ided-family "il12" "XFAM:PF03039") 
(def-ided-family "interleukin 31" "XFAM:PF15209") 
(def-ided-family "ion channel" "XFAM:PF07885") 
(def-ided-family "janus" "FA:01933" :name "janus family") 
(def-ided-family "neur" "XFAM:PF00064.16" :name "neur") 
(def-ided-family "nucleoside diphosphate kinase" "XFAM:PF00334") 
(def-ided-family "prion" "FA:03015" :name "prion family") 
(def-ided-family "second mitochondria derived activator of caspase" "XFAM:PF09057") 
(def-ided-family "transcriptional activator" "XFAM:PF04949") 
(def-ided-family "transcriptional regulator" "XFAM:PF02082") 
(def-ided-family "tribbles" "FA:03081" :name "tribbles subfamily") 
(def-ided-family "ubiquitin conjugating enzyme" "XFAM:PF00179") 
(def-ided-family "virulence factor" "XFAM:PF13769") 