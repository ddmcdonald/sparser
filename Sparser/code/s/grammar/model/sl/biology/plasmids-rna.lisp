;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "plasmids-rna"
;;;  Module: "grammar/model/sl/biology/
;;; version: May 2017

;; Broken out from terms 5/10/17

(in-package :sparser)

;;; Bacteriophage attachment sites for dna  recombination:
(noun "attB" :super molecular-location) ; bacteria site
(noun "attP" :super molecular-location) ; phage site
(noun "attL" :super molecular-location) ; Left side once attached
(noun "attR" :super molecular-location) ; Right side once attached


;;;------------------
;;; RNA and microRNAs
;;;------------------

(noun "saRNA" :super rna)
(def-synonym saRNA (:noun "small activating RNA")) ;; no findable ontology ID yet but wiki article with sources https://en.wikipedia.org/wiki/SaRNA

(noun "vRNA" :super rna)
(def-synonym vRNA (:noun "viral RNA")) ;; can also be vaultRNA but viral is more likely but has no uid

(noun "UTR" :super rna-region)
(def-synonym UTR (:noun "untranslated region"))

(noun "3′-UTR" :super utr)
(def-synonym 3′-UTR (:noun "3′ -UTR"))
;; three prime untranslated region of mRNA -- comes up as "CRAF 3′-UTR" in article 3522295
(noun "5′-UTR" :super utr)
(def-synonym 5′-UTR (:noun "5′ -UTR"))

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
(def-indiv-with-id micro-rna "MIR10B" "NCIT:C81878" :name "miR-10b" :synonyms ("mIR10b" "mir-10b")) 
(def-indiv-with-id micro-rna "MIR17" "NCIT:C81888" :name "miR-17" :synonyms ("MiR-17" "miRNA17" "miRs-17" "mir-17")) 
(def-indiv-with-id micro-rna "MIR29B2" "NCIT:C81915" :name "miR-29b-2" :synonyms ("miR-29b2" "miR29b2" "mir-29b-2")) 
(def-indiv-with-id micro-rna "MIR29C" "NCIT:C81917" :name "miR-29c" :synonyms ("mir-29c")) 
(def-indiv-with-id micro-rna "MIR106A" "NCIT:C82052" :name "miR-106a" :synonyms ("miRs-106a" "mir-106a")) 
(def-indiv-with-id micro-rna "MIR106B" "NCIT:C82053" :name "miR-106b" :synonyms ("MiR-106b" "miRs-106b" "mir-106b")) 
(def-indiv-with-id micro-rna "MIR107" "NCIT:C82055" :name "miR-107" :synonyms ("MiR-107" "mir-107")) 
(def-indiv-with-id micro-rna "MIR130A" "NCIT:C82077" :name "miR-130a" :synonyms ("mir-130a")) 
(def-indiv-with-id micro-rna "MIR132" "NCIT:C82080" :name "miR-132" :synonyms ("mir-132")) 
(def-indiv-with-id micro-rna "MIR146B" "NCIT:C82099" :name "miR-146b" :synonyms ("mir-146b")) 
(def-indiv-with-id micro-rna "MIR200B" "NCIT:C82156" :name "miR-200b" :synonyms ("mir-200b")) 
(def-indiv-with-id micro-rna "MIR203" "NCIT:C82158" :name "miR-203" :synonyms ("MiR203" "mir-203")) 
(def-indiv-with-id micro-rna "MIR221" "NCIT:C82171" :name "miR-221" :synonyms ("mir-221" "miRNA221" "miRs-221")) 
(def-indiv-with-id micro-rna "MIR222" "NCIT:C82172" :name "miR-222" :synonyms ("mir-222")) 
(def-indiv-with-id micro-rna "MIR196A2" "NCIT:C82211" :name "miR-196a-2" :synonyms ("hsa-miR-196a2" "miR-196a2" "miR196a2" "mir-196a-2")) 

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
(noun "pCEP-ERK2" :super plasmid)
(noun "pCEP" :super plasmid)
(noun "pGL3B" :super plasmid) ; luciferase reporter plasmid
(noun "pEGFP-N1" :super plasmid)
