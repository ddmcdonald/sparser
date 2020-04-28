;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2019 SIFT LLC. All Rights Reserved
;;;
;;;    File: "evidence-sources"
;;;  Module: "grammar/model/sl/biology/
;;; version: May 2019

;;; For defining evidence sources like database names that come up in
;;; biocuration

(in-package :sparser)

;; because currently our only good way of defining individuals is with
;; UIDs, I'm going to make these with spurious UIDs

(def-indiv-with-id database "reactome" "Reactome" :name "Reactome")
(def-indiv-with-id database "kegg" "KEGG" :name "KEGG")
(def-indiv-with-id database "wikipathways" "wikipathway" :name "WikiPathways" :synonyms ("WikiPathway" "wikipathway"))
(def-indiv-with-id database "humancyc" "humancyc" :name "HumanCyc")
(def-indiv-with-id database "disgenet" "disgenet" :name "DisGeNET")
(def-indiv-with-id database "smpdb" "SMPDB" :name "SMPDB" :synonyms ("Small Molecule Pathway Database"))
(def-indiv-with-id database "ctd" "ctd" :name "CTD" :synonyms ("Comparative Toxicogenomics Database"))
(def-indiv-with-id database "msigdb" "msigdb" :name "MSigDB" :synonyms ("Molecular Signatures Database"))
(def-indiv-with-id database "pharmgkb" "pharmgkb" :name "PharmGKB" :synonyms ("Pharmacogenomics Knowledgebase"))
(def-indiv-with-id database "biocarta" "biocarta" :name "BioCarta")
(def-indiv-with-id database "MeSH" "MESH" :name "MeSH" :maintain-case t)


;; note: this is based on a question in
;; all-bioagent-capability-sentences but googling I can't actually
;; find a DB with this name -- there's the "GEO" (Gene Expression
;; Omnibus" https://www.ncbi.nlm.nih.gov/geo/ a "functional genomics
;; data repository") and "GenomeRNAi" (http://www.genomernai.org/)
;; not sure which was meant
;; turns out it's from Enrichr's dataset of "Kinase_Perturbations_from_GEO"
;; listed here: https://amp.pharm.mssm.edu/Enrichr/#stats
(def-indiv-with-id database "GEO RNAi" "GEO-RNAi" :name "GEO RNAi database")

;; these have UIDs and came up in covid papers
(def-indiv-with-id database "Unigene" "NCIT:C43563" :name "uniGene")
(def-indiv-with-id database "uniprotkb" "NCIT:C47851" :name "uniProtKB")
(def-indiv-with-id database "refseq" "NCIT:C45335" :name "refSeq")
(def-indiv-with-id database "PFam" "NCIT:C43580" :name "protein families database")
(def-indiv-with-id database "pubchem" "NCIT:C54563" :name "pubChem")
(def-indiv-with-id database "ensembl" "NCIT:C45763" :name "ENSEMBL")
(def-indiv-with-id database "entrez" "NCIT:C45764" :name "Entrez")

(def-indiv-with-id database "2019nCoVR" "2019nCoVR" :name "2019 Novel Coronavirus Resource")

;;; Functions to allow for "domain adjunct" PPs -- PPs which can attach to
;;   general (non-domain) NPs, but which only make sense in some domain
;; e.g. "any relations in the literature" where "relation" is a general NP
;;  but "in the literature" (only?} makes sense in the context of bio-curation, etc.

(define-category in-the-literature :specializes bio-predication)

(add-domain-adjunctive-pp-rule "in" 'literature '(:or relation factor
                                                  bio-process bio-entity)
                               'add-literature-adjunct)
(add-domain-adjunctive-pp-rule "from" 'literature '(:or relation factor
                                                    bio-process bio-entity)
                               'add-literature-adjunct)
(define-lambda-variable 'in-the-literature
    nil 'top)

(defun add-literature-adjunct (head pp-edge)
  (bind-variable 'in-the-literature (identify-pobj pp-edge)
                 head))
                 
;; same but for databases (e,g, "which pathways from the KEGG database use SRF?"
;; making duplicate rules for now in case there are subtle differences in the
;; patterning that we want to capture later

(define-category in-the-database :specializes bio-predication)

(add-domain-adjunctive-pp-rule "in" 'database '(:or relation factor
                                                  bio-process bio-entity)
                               'add-database-adjunct)
(add-domain-adjunctive-pp-rule "from" 'database '(:or relation factor
                                                    bio-process bio-entity)
                               'add-database-adjunct)
(define-lambda-variable 'in-the-database
    nil 'top)

(defun add-database-adjunct (head pp-edge)
  (bind-variable 'in-the-database (identify-pobj pp-edge)
                 head))
