;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013-2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "molecules"
;;;  Module: "grammar/model/sl/biology/
;;; version: May 2017

;; Initiated 11/5/13
;; 5/10/17 only had nucleotides originally -- have added nucleobases,
;; peptides, lipids, general types (e.g., "agonist"), and other
;; miscellaneous molecules

(in-package :sparser)

;; Stand-in just to avoid collision with word in Comlex that
;; have the same spelling, e.g. "camp" -- as in the outdoors.
;; It also makes them nouns with noun brackets. 
;; Gratuitously it gives them plurals, which they don't take
#+ignore
(define-category small-named-molecule
  :instantiates self
  :binds ((name :primitive word))
  :realization (:common-noun name))

;; These should be spelled out and more precisely categorized.
;; In some way that looks plausible if we read it.
;;was (find-or-make-individual 'small-named-molecule :name "cAMP")

;;;-------------
;;; nucleobases
;;;-------------

(def-bio "adenine" nucleobase)
(def-bio "cytosine" nucleobase)
(def-bio "guanine" nucleobase)
(def-bio "thymine" nucleobase)
(def-bio "uracil" nucleobase)

;;;-------------
;;; nucleotides
;;;-------------

(noun "GTP" :super nucleotide)
(noun "dGTP" :super nucleotide)
(noun "GDP" :super nucleotide)
(noun "dGDP" :super nucleotide)

(noun ("AMP" "adenosine 3',5'-monophosphate") :super nucleotide)
(noun ("cAMP" "cyclic adenosine 3',5'-monophosphate") :super nucleotide)

(noun "dAMP" :super nucleotide)
(noun "ATP" :super nucleotide)
(noun "dATP" :super nucleotide)
(noun "ADP" :super nucleotide)
(noun "dADP" :super nucleotide)


(noun "dCDP" :super nucleotide)
(noun "CDP" :super nucleotide)
(noun "dUDP" :super nucleotide)
(noun "UDP" :super nucleotide)
(noun "dGMP" :super nucleotide)
(noun "GMP" :super nucleotide)
(noun "CMP" :super nucleotide)
(noun "dCMP" :super nucleotide)
(noun "dUMP" :super nucleotide)
(noun "UMP" :super nucleotide)
(noun "TDP" :super nucleotide)
(noun ("TMP" "(deoxy)thymidine monophosphate" "thymidine monophosphate") :super nucleotide) 
;; the same according to wikipedia
(noun "cytidine monophosphate" :super nucleotide)
(noun "uridine monophosphate" :super nucleotide)


(noun "(deoxy)cytidine monophosphate" :super nucleotide)
(noun "(deoxy)uridine monophosphate" :super nucleotide)

;;;-------------
;;; peptides
;;;-------------

(noun "bradykinin" :super peptide)
(noun "Abeta" :super peptide)
(noun "AICAR" :super peptide)
(def-synonym abeta (:noun "amyloid beta"))
;; to be reviewed -- from Localization

(noun "MLC" :super peptide) ;; couldn't find ontological ID
(def-synonym mlc (:noun "myosin light chain"))

;;;-------------
;;; lipids
;;;-------------

;;lipids
;; in EGFR signaling comments
(noun ("DAG" "diacylglycerol") :super lipid)
(noun "Sphingosine" :super lipid)
(noun ("IP3" "inositol 1,4,5-triphosphate") :super phospholipid) 
(noun ("PIP2" "phosphatidylinositol 4,5-bisphosphate" "phosphatidylinositol-4,5-bisphosphate" "phosphoinositol 4,5-bisphosphate") :super phospholipid)
(noun ("PIP3" "phosphatidylinositol 3,4,5-triphosphate" "phosphatidylinositol-3,4,5-trisphosphate") :super phospholipid)
(noun "LPA" :super phospholipid)
(def-synonym lpa (:noun "lysophosphatidic acid"))

;;;-------------
;;; types
;;;-------------

(noun "chemical product" :super bio-chemical-entity)
(noun "carcinogen" :super bio-agent)

(define-category activator :specializes molecule
  :binds ((activated molecule))
  :realization
  (:noun "activator"
         :of activated))

(noun "agonist":super molecule) ;; keyword: (ist N) ;; 
(noun "anchor" :super molecule) ;; "cytoplasmic anchor"
(noun "derivative" :super molecule)
(noun "linker" :super molecule) ;; not sure if it is a protein or short stretch of DNA in the case used
(noun "mitogen" :super molecule)

;;In biochemistry, a protein ligand is an atom, a molecule or an ion that can bind to a specific site (the binding site) on a protein. 
(noun "ligand" :super bio-chemical-entity)
(define-category lysate :specializes bio-entity
  :realization
  (:noun "lysate"))

(noun "binder" :super bio-entity)
(noun "bond" :super bio-entity) ;; chemical bond -- not 

(define-category effector :specializes protein ;; NOT SURE WHAT THE RIGHT SUPER is
  :binds ((for-process bio-process))
  :realization
  (:noun "effector" 
         :for for-process
         :in for-process))

(define-category fragment :specializes protein ;; not sure, but perhaps is always a protein -- can be phospohorylated
      :binds ((whole bio-entity)
              ;; bio-scalar is for "a  fragment of the same mass as ..."
              (measure (:or measurement bio-scalar)))
      :realization
      (:noun ("fragment" "subunit")
             :of whole
             :of measure))

(define-category substrate :specializes bio-chemical-entity
      :binds ((enzyme protein))
  :realization
  (:noun "substrate"
         :of enzyme
         :for enzyme))

;;;-------------
;;; miscellaneous
;;;-------------

(noun "dextran" :super polysaccharide)

#-allegro (noun "O2˙-" :super molecule) ;; :synonyms ("superoxide anion")
(noun "MeHg" :super molecule)
(def-synonym MeHg (:noun "methyl mercury"))

(noun "lactate" :super molecule)
(noun "32P" :super molecule) 
;; actually an isotope -- need to adjust taxonomy 
