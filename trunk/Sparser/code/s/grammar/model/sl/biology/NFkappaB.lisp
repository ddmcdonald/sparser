;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014 SIFT LLC. All Rights Reserved
;;;
;;;    File: "NFkappaB"
;;;  Module: "grammar/model/sl/biology/
;;; version: March 2014

;; Initiated 3/2/14, adding items through 3/5/14

(in-package :sparser)


;;--- entities

;; nuclear factor NF-kappa-B p100 subunit
(def-bio "nfkappab2" nil 'protein ;; ???
  :identifier "PR:000011178" :greek "kappa")

(def-bio "p100" nil 'protein :identifier "PR:000011178")

(def-bio "p52" nil 'protein)  ;; :identifier ??


;;--- "p100 processing" "the processing of p100"
;;/// abstract and add to shortcuts
(define-category protein-processing ;; GO:0016485	
  :specializes event
  ;; could mix in has-UID, but might be simpler to do it
  ;; in a second pass afterwards
  :instantiates event ;; vs :self and look it up/
  :binds ((protein . protein))
  :index (:permanent :key protein)
  :realization (:tree-family of/genitive/self-base/no-poss-marker
                :mapping ((bound . protein)
                          (result-type . :self)
                          (np . :self)
                          (base-np . :self)
                          (possessive . bio-entity)
                          (complement . bio-entity))
                :common-noun "processing"))




;; "by NF-κB-inducing kinase (NIK)"

;;  How to we do this with the NF-kappaB as an entity?
;(def-bio "NIK" "NF-kappaB-inducing" 'kinase :greek "kappa")




;; two specific amino acid residues, serine 866 and serine 870, of p100

;(np-head "residue" :super 'molecule) ;; odd interaction with next.
;; but it's more like a 'residue of' than a thing in itself

; (amino acid residue) of protein
;;/// but this loses the composition
(np-head/of "amino acid residue" :super 'molecule :of 'bio-entity)
;;/// This would be better
;; (def-subtype 'amino-acid 'residue :of 'protein)

;/// waiting on resolution of variable/word in realization
;(find-or-make-individual 'amino-acid :name "serine")

;; Additional realization on aa residue to create instance with numbers
;; for "serine 866"


;;--- induction 
;; GO:0048518  BP  positive regulation of biological process  Not exactly, but close enough for government work. ;)
;  "NF-κB-inducing kinase"
;  "IKKα induce p100 processing"
;  "for inducible processing of p100"
;  "overexpression of IKKα ... fails to induce p100 processing"

(svo/nominal/adjective "induce" "induction" "inducible"
                       :subject 'bio-entity :theme 'event) ;; processing of p100
;;/// want subtypes, want to understand the syntax of "-inducing"


;;--- phosphorylation
;; GO:0016310	
;  "activated IKKα phosphorylates specific serines"
;  "The phosphorylation of these specific serines"

(svo/nominal "phosphorylate" "phosphorylation" 
             :subject 'bio-entity :theme 'bio-entity)



