;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "plasmids-rna"
;;;  Module: "grammar/model/sl/biology/
;;; version: May 2017

;; Broken out from terms 5/10/17

(in-package :sparser)

;;;------------------
;;; RNA and microRNAs
;;;------------------



(noun "miR-26A" :super micro-rna)
(noun "miR-26A2" :super micro-rna)
(def-synonym miR-26A2
             (:noun "MIR26A2"))
(noun "miR-26A1" :super micro-rna)
(def-synonym miR-26A1
             (:noun "MIR26A1"))

;;;---------------------------
;;; RNA and microRNAs with IDs
;;;---------------------------

;; manually looked these up to add:
(def-indiv-with-id rna "mRNA" "NCIT:C813" :name "messenger RNA" :maintain-case t)
(def-indiv-with-id rna "tRNA" "NCIT:C816" :name "transfer RNA" :maintain-case t)

(def-indiv-with-id micro-rna "MIRLET7E" "NCIT:C81859" :synonyms ("mirlet7e")) 
(def-indiv-with-id micro-rna "MIR10B" "NCIT:C81878" :synonyms ("mIR10b")) 
(def-indiv-with-id micro-rna "MIR17" "NCIT:C81888" :synonyms ("MiR-17" "miRNA17" "miRs-17")) 
(def-indiv-with-id micro-rna "MIR29B2" "NCIT:C81915" :synonyms ("miR-29b2" "miR29b2")) 
(def-indiv-with-id micro-rna "MIR29C" "NCIT:C81917" :synonyms ("miR-29c")) 
(def-indiv-with-id micro-rna "MIR106A" "NCIT:C82052" :synonyms ("miRs-106a")) 
(def-indiv-with-id micro-rna "MIR106B" "NCIT:C82053" :synonyms ("MiR-106b" "miRs-106b")) 
(def-indiv-with-id micro-rna "MIR107" "NCIT:C82055" :synonyms ("MiR-107")) 
(def-indiv-with-id micro-rna "MIR130A" "NCIT:C82077" :synonyms ("MiR-130a")) 
(def-indiv-with-id micro-rna "MIR132" "NCIT:C82080" :synonyms ("MiR-132")) 
(def-indiv-with-id micro-rna "MIR146B" "NCIT:C82099" :synonyms ("MiR-146b")) 
(def-indiv-with-id micro-rna "MIR200B" "NCIT:C82156" :synonyms ("MiR-200b")) 
(def-indiv-with-id micro-rna "MIR203" "NCIT:C82158" :synonyms ("MiR203")) 
(def-indiv-with-id micro-rna "MIR221" "NCIT:C82171" :synonyms ("MiR-221" "miRNA221" "miRs-221")) 
(def-indiv-with-id micro-rna "MIR222" "NCIT:C82172" :synonyms ("MiR-222")) 
(def-indiv-with-id micro-rna "MIR196A2" "NCIT:C82211" :synonyms ("hsa-miR-196a2" "miR-196a2" "miR196a2")) 

;;;-------------
;;; plasmids
;;;-----------

#-allegro (noun "pcDNA3.1-PPARγ" :super plasmid)
(noun "pcDNA3.1-Med1" :super plasmid)
(noun "pCMX-Med1" :super plasmid)
(noun "pcDNA3.1-PIMT" :super plasmid)
(noun "pcDNA3.1-PIMT-N" :super plasmid)
(noun "pCMV-PIMT-Flag" :super plasmid)
(noun "3XPPRE-Luc" :super plasmid)
(noun "GST-PIMT-N" :super plasmid)
(noun "GST-Med1-CRAF-BXB" :super plasmid)
(noun "pCMV-ERK2-HA" :super plasmid)

