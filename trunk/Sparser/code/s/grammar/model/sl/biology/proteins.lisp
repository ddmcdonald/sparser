;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014 SIFT LLC. All Rights Reserved
;;;
;;;    File: "proteins"
;;;  Module: "grammar/model/sl/biology/
;;; version: December 2014

;; initiated 9/8/14 lifting from other files
;; Made some of the proteins lower case, becasue both 
;; capitalized and lower case versions occur
;; 1/1/2015 attempt to fix problem with MEK not being defined as a word
;;  -- allow for members to be added to family after family is defined
;; attempt to get around order dependency for MEK1 and MEK -- BUT THAT WAS NOT THE BUG
;; OVER TO YOU, <<DAVID>>

(in-package :sparser)

;;--- Convience accesor

(defmethod get-protein ((pname string))
  ;; conventient syntactic sugar. Motivated by explicitly
  ;; constructed pathways. 
  (let ((word (resolve pname)))
    (unless word "The word ~a isn't defined, so it can't ~
                  name a protein." pname)
    (get-protein word)))

(defmethod get-protein ((name word))
  (find-individual 'protein :name name))

(defmethod get-protein ((name polyword))
  (find-individual 'protein :name name))


;;--- Families

(defmacro def-family (name &key type species members ;; for family
                           long identifier synonyms) ;; for def-bio
                           
  (unless (stringp name) (error "Name argument should be a string"))
  `(define-family 
     ,name :type ',type :species ',species :members ',members
     :long ',long :identifier ',identifier :synonyms ',synonyms))

(defun define-family (name &key type species members
                           long identifier synonyms)
  (unless members 
    (error "It doesn't make sense to define a family without members"))
  (unless type
    (setq type (category-named 'protein)))
  (unless species
    (setq species (find-individual 'species :name "human")))
  (let ((i (def-bio/expr name 'human-protein-family
             :long long :identifier identifier :synonyms synonyms)) )
    (if
     (consp members)
     (set-family-members i members))))

(defun set-family-members (i members) 
  ;;(print `(the individual which has added members is ,i))
  (let
      (proteins)
    (dolist (name members)
      (let ((protein (get-protein name)))
        (unless protein
          (break "Can't retrieve protein from the name ~s" name))
        (push protein proteins)))
    (let ((set-of-proteins (create-collection proteins 'protein))
        (count (find-number (length members))))
      (bind-variable 'members set-of-proteins i)
      (bind-variable 'count count i)
      ;; If we didn't use such a speciic category these would matter.
      i)))

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


;;;------------------------
;;; GTP, GDP, GEFs & GAPs
;;;------------------------

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


;; These two are families, but haven't read about particular members
(def-bio "RasGEF" protein
  :synonyms ("Ras-GEF" "Ras GEF")) ;; should do that automagically
 
(def-bio "RasGAP" protein
  :synonyms ("Ras-GAP" "Ras GAP") );; ditto, or beef up morphology




;;;----------------------------------------------------
;;; for the September 4th Reactome supporting abstract
;;;----------------------------------------------------

#| Need a coordinated model of a family of proteins that 
appreciates they are all of a kind, that numbers and other
filligre may be used to distinguish them, etc.
|#

;;--- the Ras family

(def-bio "kras" protein 
  :synonyms ("k-ras" "K-RAS")
  :identifier "PR:0000009442") ;; gene is "PR:P01116" 

(def-bio "hras" protein
  :synonyms ("h-ras" "H-RAS")
  :identifier "PR:000029705") ;; gene is "PR:P01112")

(def-bio "nras" protein
  :synonyms ("n-ras" "N-RAS")
  :identifier "PR:000011416") ;; gene is "PR:P01111"

(def-family "Ras" ;;//// need capitalization hacks
  :members ("kras" "hras" "nras")
  :identifier "GO:0003930"
  :synonyms ("RAS")
  :long "GTPase") ;; RAS small monomeric GTPase activity


;;--- the RAF family

(def-bio "braf" protein 
  :identifier "PR:000004801"
  :synonyms ("b-raf" "B-RAF"))

(def-bio "craf" protein
  :synonyms ("c-raf" "C-RAF"))

(def-family "raf" 
  :members ("braf" "craf")
  :identifier "RAF" ;; denotes a family -- not sure there is a formal identifier (need help from UCD)
  :synonyms ("RAF"))


;;--- the MAPK family
;; These are specific to serine, threonine, and tyrosine
;; says the Wikipedia

(def-bio "ERK1" protein 
  :identifier "PR:000000104"
  :synonyms ("ERK1 kinase" "MAPK3"
             "erk1" "mapk3"))

(def-bio "ERK2" protein
  :synonyms ("erk2" "MAPK1" "mapk1"))

;; and many more: ERK3 (MAPK6) and ERK4 (MAPK4), etc.
;; I don't understand the Wikipedia write up well enough

(def-family "MAPK"
  :members ("ERK1" "ERK2")
  :long "mitogen activated protein kinase" 
  :synonyms ("ERK" "extracellular signal-regulated kinase"
             "mapk" "erk"))


;;--- The MEK family
;; This is part of an attempt to get a word rule attached to the string "MEK"
;; define the family before the conflicting lexical items MEK1 and MEK2 are defined
;;  and then add them as family members later
(def-family "MEK" 
  :members "Dummy")

(def-bio "MEK1" protein)

(def-bio "MEK2" protein)

;;/// Is this a reference to both of them? We could have
;; it denote a collection without too much work, especially
;; if we had a second case
;(def-bio "MEK1/2" protein)

;; This is part of an attempt to get a word rule attached to the string "MEK"
;; but it still leaves "MEK" with out a form value
(set-family-members
 (find-individual 'human-protein-family :name "MEK")
 '("MEK1" "MEK2"))

(def-bio "V600EBRAF" protein ;; need to figure out how to represent this variant in the ontology
  :synonyms ("B-RAFV600E" "V600EB-RAF" "BRAFV600E"))


;;------------- From here on down it's miscelany that
;;  I don't know how to codify

(def-bio "MAP" protein)


(def-bio "COT/TPL2" protein) ;; see if defining this leads to sentence 53 working consistently when run twice.
(def-bio "cot" protein
  :synonyms ("COT"))

(def-bio "growth factor" protein)


(def-bio "mek1dd" protein)
(def-bio "brafv" protein)


(def-bio "PIK3CA" protein
  :identifier "PR:000012719")


;; http://en.wikipedia.org/wiki/Growth_factor
;; Again, it's a family, not a particular
(def-bio "growth factors" protein)

