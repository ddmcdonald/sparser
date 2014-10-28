;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014 SIFT LLC. All Rights Reserved
;;;
;;;    File: "proteins"
;;;  Module: "grammar/model/sl/biology/
;;; version: September 2014

;; initiated 9/8/14 lifting from other files

(in-package :sparser)

;;;--------------------------------------------
;;; for (some of) the abstract in the proposal
;;;--------------------------------------------

(def-bio "nfkappab2" protein 
  :identifier "PR:000011178" 
  :greek "kappa")

(def-bio "NF-kappab" protein 
  :identifier "GO:0071159" 
  :greek "kappa")

(def-bio "p100" protein :identifier "PR:000011178")

(def-bio "p52" protein)  ;; :identifier ??

(def-bio "NIK" kinase 
  :long "NF-kappaB-inducing kinase" 
  :identifier "GO:0004704"
  :greek "kappa")

(def-bio "IKKalpha" kinase 
  :long "IkappaB kinase alpha" 
  :identifier "PR:000001775"
  :greek ("kappa" "alpha"))


;;;-----------------------------------
;;; for an example in the starter kit
;;;-----------------------------------

(def-bio "APC" protein) 
;; n.b. could be mouse APC for all we know w/o context

(def-bio "GSK-3" protein)



;;;-------------------------
;;; for the August 15th set
;;;-------------------------

;;/// gene/product/generalizations, UCD uses PR identifier
(def-bio "KRAS" gene
  :identifier "PR:000009442")
(def-bio "PIK3CA" gene
  :identifier "PR:000012719")
(def-bio "BRAF" gene
  :identifier "PR:000004801")

(def-bio "GTP" small-molecule
  :identifier "CHEBI:15996")
(def-bio "GDP" small-molecule
  :identifier "CHEBI:17552")

;; "GO:0006184" "GTP loading and deactivated upon hydrolysis" ?????
;;  or "GTP hydrolysis"

;; Guanine "CHEBI:16235"
;; nucleotide ""CHEBI:36976"
(def-bio "GEF" protein :synonyms ("guanine nucleotide exchange factors" "GEFs"))
(def-bio "GAP" protein :synonyms ("GTPase activating proteins" "GAPs"))
;; compositional version of the long forms would be better
;;/// are these small molecules like GDP or are the larger? -- protein
;; And these are families of particulars, not the particulars that are
;;  actually doing participating in the reactions

;; http://en.wikipedia.org/wiki/Growth_factor
;; Again, it's a family, not a particular
(def-bio "growth factors" protein)

(def-bio "ras" protein ;; to accomodate all the variant capitalization
  :identifier "GO:0003930"
  :long "GTPase" ;; RAS small monomeric GTPase activity
  ;; Are we going to see that in texts?
  )
;; GTPase "GO:0003924"
;; "GTPase activity"  "GO0003924"


;;;----------------------------------------------------
;;; for the September 4th Reactome supporting abstract
;;;----------------------------------------------------

#| Need a coordinated model of a family of proteins that 
appreciates they are all of a kind, that numbers and other
filligre may be used to distinguish them, etc.
|#
;; These can be ripped out of pro.obo once we figure out
;; the simplest mechanism 

(def-bio "ERK" protein) ;; general term not obviously in an OBO

(def-bio "ERK1" protein :synonyms ("ERK1 kinase"))
;; it's 'extracellular signal' related kinase but tactically it's
;; better to hack the first part as a polyword rather than compositionally

(def-bio "MAP" protein)

(def-bio "MEK" protein)

(def-bio "MEK1" protein)

(def-bio "MEK2" protein)
