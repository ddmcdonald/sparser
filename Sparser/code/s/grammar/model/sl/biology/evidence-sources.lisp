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
                 
