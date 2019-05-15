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

(def-bio "GTP" nucleotide :identifier "CHEBI:15996" :mitre-link "PubChem:6830")
(noun "dGTP" :super nucleotide)
(def-bio "GDP" nucleotide  :identifier "CHEBI:17552" :mitre-link "PubChem:8977")
(noun "dGDP" :super nucleotide)

(def-indiv-with-id nucleotide "adenosine monophosphate" "PCID:6083" :synonyms ("AMP" "adenosine 3',5'-monophosphate" "adenosine monophosphate"))

(def-indiv-with-id nucleotide "cyclic-AMP" "CHEBI:17489" :name "3',5'-cyclic AMP" :synonyms ("cAMP" "cyclic adenosine 3',5'-monophosphate" "cyclic adenosine monophosphate" "c-AMP"))
(noun "dAMP" :super nucleotide)

(def-indiv-with-id nucleotide "ATP"  "PCID:5957" :name "adenosine triphosphate")
(noun "dATP" :super nucleotide)
(noun ("ADP" "adenosine diphosphate") :super nucleotide)
(noun "dADP" :super nucleotide)


(noun "dCDP" :super nucleotide)
(noun "CDP" :super nucleotide)
(noun "dUDP" :super nucleotide)
(noun "UDP" :super nucleotide)
(noun "dGMP" :super nucleotide)
(def-indiv-with-id nucleotide "GMP"  "PCID:6804" :name "guanosine monophosphate") 
(noun "CMP" :super nucleotide)
(noun "dCMP" :super nucleotide)
(noun "dUMP" :super nucleotide)
(noun "UMP" :super nucleotide)
(def-indiv-with-id nucleotide "UTP" "CHEBI:15713" :name "uridine triphosphate") ;; also PCID:6133
(def-indiv-with-id nucleotide "dUTP" "CHEBI:17625" :name "deoxyuridine triphosphate") ;; also "PCID:65070"


(def-indiv-with-id nucleotide "TDP" "CHEBI:18075" :name "thymidine diphosphate" :synonyms ("dTDP" "deoxythymidine diphosphate" "dTPP")) ; in this case the deoxy is the same thing
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
(noun "D-peptide" :super peptide) ; d-enantiomers of peptides -- came up in article 3640864
(noun ("AP" "activating peptide") :super peptide)
;;;-------------
;;; lipids
;;;-------------

;;lipids
;; in EGFR signaling comments
;; added uids and moved to new-molecules
;(noun ("DAG" "diacylglycerol") :super lipid)
;(noun "Sphingosine" :super lipid)
;(noun ("IP3" "inositol 1,4,5-triphosphate") :super phospholipid) 
;(noun ("PIP2" "phosphatidylinositol 4,5-bisphosphate" "phosphatidylinositol-4,5-bisphosphate" "phosphoinositol 4,5-bisphosphate") :super phospholipid)
;;(noun ("PIP3" "phosphatidylinositol 3,4,5-triphosphate" "phosphatidylinositol-3,4,5-trisphosphate") :super phospholipid)

(noun "LPA" :super phospholipid)
(def-synonym lpa (:noun "lysophosphatidic acid"))

;;;-------------------
;;; types and variants
;;;-------------------

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
(noun "mitogen" :super molecule)

;;In biochemistry, a protein ligand is an atom, a molecule or an ion that can bind to a specific site (the binding site) on a protein. 
(noun "ligand" :super bio-chemical-entity)
(define-category lysate :specializes bio-entity
  :realization
  (:noun "lysate"))

(noun "binder" :super bio-entity)
(noun "bond" :super bio-entity) ;; chemical bond -- not 


(define-category fragment :specializes protein ;; not sure, but perhaps is always a protein -- can be phospohorylated
      :binds ((whole bio-entity)
              ;; bio-scalar is for "a  fragment of the same mass as ..."
              (measure (:or measurement bio-scalar)))
      :realization
      (:noun "fragment"
             :of whole
             :of measure))

(def-synonym fragment (:noun  "subunit"))

(define-category substrate :specializes bio-chemical-entity
      :binds ((enzyme protein))
  :realization
  (:noun "substrate"
         :of enzyme
         :for enzyme))


(noun "class" :super variant  ;;NOT SURE THIS IS RIGHT
      )
(noun "type" :super variant)

(noun "allele" :super variant)
(noun "analog" :super variant)
(noun "isoform" :super variant)
(noun "variety" :super variant)

(noun "transition state intermediate" :super molecule-state)

;;;-------------
;;; miscellaneous
;;;-------------

(noun "acid" :super molecule) ;; could be in more of a hierarchy and have things under it, but at least this replaces the spurious defintion we previously had where we had it as just a synonym "acotinic acid"

(noun "dextran" :super polysaccharide)

#-allegro (noun "O2˙-" :super molecule) ;; :synonyms ("superoxide anion")
(noun "MeHg" :super molecule)
(def-synonym MeHg (:noun "methyl mercury"))

(noun "lactate" :super molecule)
(noun "32P" :super molecule) 
;; actually an isotope -- need to adjust taxonomy 

;; note: calcium and calcium ion are defined in bio-complexes

;;;-------------
;;; miscellaneous with IDs
;;;-------------

(def-indiv-with-id molecule "enoyl" "CHEBI:23916") ;; acyl group -- mostly comes up in Enoyl-CoA hydratase, and was previously defined erroneously as the name for that protein
(def-indiv-with-id molecule "stearoyl" "CHEBI:26753") ;; mostly comes up in Stearoyl-CoA enzyme, and was previously defined erroneously as the name for that protein
(def-indiv-with-id molecule "citrate" "CHEBI:30769" :name "citric acid")
(def-indiv-with-id molecule "ice" "NCIT:C67342" :name "ice") ;; while there's a protein with a gene name ICE, it's much more likely that the lowercase "ice" is referring to frozen water not the protein
