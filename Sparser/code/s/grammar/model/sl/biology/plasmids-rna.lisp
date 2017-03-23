;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "loader"
;;;  Module: "grammar/model/sl/biology/
;;; version: February 2017

;; Broken out from terms 3/1/17

;;;-------------
;;; RNA and microRNAs
;;;-------------
(noun "rna" :super molecule)

(noun "miR-26A" :super micro-rna)
(noun "miR-26A2" :super micro-rna)
(def-synonym miR-26A2
             (:noun "MIR26A2"))
(noun "miR-26A1" :super micro-rna)
(def-synonym miR-26A1
             (:noun "MIR26A1"))

;;;-------------
;;; RNA and microRNAs with IDs
;;;-------------

;; manually looked these up to add:
(def-ided-indiv rna "mRNA" "NCIT:C813" :name "messenger RNA")
(def-ided-indiv rna "tRNA" "NCIT:C816" :name "transfer RNA")

;;from TRIPS
(def-ided-indiv rna "pri-miRNA" "NCIT:C25967" :name "pri-miRNA") 
(def-ided-indiv rna "hsa-let-7" "NCIT:C48183" :name "let-7") 
(def-ided-indiv rna "LncRNA" "NCIT:C88924" :name "lincRNA") 
(def-ided-indiv rna "pre-mRNA" "NCIT:C111298" :name "precursor mRNA") 

;;;-------------
;;; plasmids
;;;-------------

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