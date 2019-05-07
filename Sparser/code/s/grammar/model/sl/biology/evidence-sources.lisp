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

;; note: this is based on a question in
;; all-bioagent-capability-sentences but googling I can't actually
;; find a DB with this name -- there's the "GEO" (Gene Expression
;; Omnibus" https://www.ncbi.nlm.nih.gov/geo/ a "functional genomics
;; data repository") and "GenomeRNAi" (http://www.genomernai.org/)
;; not sure which was meant
(def-indiv-with-id database "GEO RNAi" "GEO-RNAi" :name "GEO RNAi database")

