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
;; 1/7/2015 added new "proteins" -- ubiquitin, hormone and histone, and stubs for mUbRAS and SAPK

(in-package :sparser)

;;--- Convience accesor

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

(def-bio "p53" protein
  :mitre-link "Uniprot:P04637")

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
  :identifier "CHEBI:15996"
  :mitre-link "PubChem:6830")

(def-bio "GDP" small-molecule 
  :identifier "CHEBI:17552"
  :mitre-link "PubChem:8977")

;; "GO:0006184" "GTP loading and deactivated upon hydrolysis" ?????
;;  or "GTP hydrolysis"

;; Guanine "CHEBI:16235"
;; nucleotide ""CHEBI:36976"
(def-bio "GEF" protein :synonyms ("guanine nucleotide exchange factors"))



(def-bio "GAP" protein :synonyms ("GTPase activating proteins"))

;; compositional version of the long forms would be better
;;/// are these small molecules like GDP or are the larger? -- protein
;; And these are families of particulars, not the particulars that are
;;  actually doing participating in the reactions

(def-bio "RasGRF1" protein
  :synonyms ( "RASGRF1" )
  :mitre-link "Uniprot:Q13972")

(def-bio "RapGEF2" protein
  :synonyms ( "RAPGEF2")
  :mitre-link "Uniprot:Q17RH5")

(def-bio "RapGEF3" protein
  :synonyms ("RAPGEF3")
  :mitre-link "Uniprot:O95398")

(def-bio "RapGEF4" protein
  :synonyms ("RAPGEF4")
  :mitre-link "Uniprot:Q8WZA2")

(def-bio "RAPGEF5" protein
  :synonyms ("RAPGEF5")
  :mitre-link "Uniprot:Q92565")

(def-bio "RapGEF6" protein
  :synonyms ( "RAPGEF6" )
  :mitre-link "Uniprot:Q8TEU7")


	

(def-bio "RasGAP" protein
  :synonyms ("Ras-GAP" "Ras GAP") );; ditto, or beef up morphology

(def-bio "RAPGEFL1" protein
  :mitre-link "Uniprot:Q9UHV5")

(def-bio "RasGEF1A" protein
  :synonyms ("RASGEF1A")
  :mitre-link "Uniprot:Q8N9B8")

(def-bio "RasGEF1B" protein
  :synonyms ("RASGEF1B")
  :mitre-link "Uniprot:Q0VAM2")

(def-bio "RasGEF1C" protein
  :synonyms ("RASGEF1C")
  :mitre-link "Uniprot:Q8N431")


(def-bio "RasGEF" protein
  :synonyms ("Ras-GEF" "Ras GEF")) ;; should do that automagically




;;;----------------------------------------------------
;;; for the September 4th Reactome supporting abstract
;;;----------------------------------------------------

#| Need a coordinated model of a family of proteins that 
appreciates they are all of a kind, that numbers and other
filligre may be used to distinguish them, etc.
|#

;;--- the Ras family

(def-bio "KRas" protein 
  :synonyms ("K-Ras" "K-RAS")
  :identifier "PR:0000009442" ;; gene is "PR:P01116" 
  :mitre-link "Uniprot:P01116")

(def-bio "HRas" protein
  :synonyms ("H-Ras" "H-RAS")
  :identifier "PR:000029705" ;; gene is "PR:P01112")
  :mitre-link "Uniprot:P01112:")

(def-bio "NRas" protein
  :synonyms ("N-Ras" "N-RAS")
  :identifier "PR:000011416" ;; gene is "PR:P01111"
  :mitre-link "Uniprot:P01111")

(def-family "Ras" ;;//// need capitalization hacks
  :members ("KRas" "HRas" "NRas")
  :identifier "GO:0003930"
  :synonyms ("RAS")
  :long "GTPase") ;; RAS small monomeric GTPase activity


;;--- the RAF family

(def-bio "ARaf" protein
  :synonyms ("ARAF" "A-Raf")
  :mitre-link "Uniprot:P10398")
	
(def-bio "BRaf" protein 
  :identifier "PR:000004801"
  :synonyms ("B-Raf" "B-RAF")
  :mitre-link "Uniprot:P15056")

(def-bio "CRaf" protein
  :synonyms ("C-Raf" "C-RAF")
  :mitre-link "Uniprot:P04049")

(def-family "Raf" 
  :members ("ARaf" "BRaf" "CRaf")
  :identifier "RAF" ;;/// maybe use the Mitre choice?
  :synonyms ("RAF"))


(def-bio "RasA1" protein
  :synonyms ("RASA1")
  :mitre-link "Uniprot:P20936")

(def-bio "RasA2" protein
  :synonyms ("RASA2")
  :mitre-link "Uniprot:Q15283")

(def-bio "RASA3" protein
  :synonyms ("RASA3")
  :mitre-link "Uniprot:Q14644")

	
	
(def-bio "RASAL1" protein
  :mitre-link "Uniprot:O95294")

(def-bio "RASAL2" protein
  :mitre-link "Uniprot:Q9UJF2")

(def-bio "RASA4" protein
  :mitre-link "Uniprot:O43374")
	
	
	
;;--- the MAPK family
;; These are specific to serine, threonine, and tyrosine
;; says the Wikipedia

(def-bio "ERK1" protein 
  :identifier "PR:000000104"
  :synonyms ("ERK1 kinase" "MAPK3"
             "erk1" "mapk3")
  :mitre-link "Uniprot:P27361")

(def-bio "ERK2" protein
  :synonyms ("erk2" "MAPK1" "mapk1")
  :mitre-link "Uniprot:P28482")

(def-bio "p38 SAPK" protein)

;; and many more: ERK3 (MAPK6) and ERK4 (MAPK4), etc.
;; I don't understand the Wikipedia write up well enough

(def-family "MAPK"
  :members ("ERK1" "ERK2")
  :long "mitogen activated protein kinase" 
  :synonyms ("ERK" "extracellular signal-regulated kinase"
             "erk"))


;;--- The MEK family
;; This is part of an attempt to get a word rule attached to the string "MEK"
;; define the family before the conflicting lexical items MEK1 and MEK2 are defined
;;  and then add them as family members later

(def-bio "MEK1" protein
  :mitre-link  "Uniprot:Q02750")

(def-bio "MEK2" protein
  :mitre-link "Uniprot:P36507")

(def-family "MEK" 
  :members ("MEK1" "MEK2")
  :synonyms ("MEK1/2"))



;;--- These are in Matt's list, but I don't
;;  know anything about them

(def-bio "ASPP2" protein
  :long "Apoptosis-stimulating of p53 protein 2"
  :synonyms ("Bbp" ;; Bcl2-binding protein
             "p53BP2") ;; tumor suppressor p53-binding protein 2
  ;; gene is TP53BP2
  :mitre-link "Uniprot:Q13625")
;; "ASPP2 plays a central role in regulation of apoptosis
;; and cell growth via its interactions. 
;; ASPP2 regulates TP53 by enhancing the DNA binding 
;; and transactivation function of TP53 on the promoters
;; of proapoptotic genes in vivo. 
;;ASPP2 binds to wild-type p53 
;; but fails to bind to mutant p53, 
;; suggesting that ASPP2 may be involved in the ability of 
;; wild-type p53 to suppress transformation. 
;; ASPP2 induces apoptosis but no cell cycle arrest.

;; in the text, but not Matt's list
(def-bio "ASSP1" protein)

(def-family "ASPP"
  :members ("ASSP1" "ASPP2"))


(def-bio "ATG5" protein
  :mitre-link "Uniprot:Q9H1Y0")	

(def-bio "RapGEF1" protein
  :synonyms ("RAPGEF1")
  :mitre-link "Uniprot:Q91ZZ2")

(def-bio "RALGPS2" protein
  :synonyms ("RALGPS2")
  :mitre-link "Uniprot:Q86X27")

(def-bio "RALGPS1" protein
  :mitre-link "Uniprot:Q5JS13")

(def-bio "Q12967" protein
  :mitre-link "Uniprot:RALGDS")

(def-bio "Q9P212" protein
  :mitre-link "Uniprot:PLCE1")

(def-bio "Q76NI1" protein
  :mitre-link "Uniprot:KNDC1")
	

(def-bio "RGL1" protein
  :mitre-link "Uniprot:Q9NZL6")
	

(def-bio "RasGRP1" protein
  :synonyms ("RASGRP1")
  :mitre-link "Uniprot:O95267")

(def-bio "RasGRP2" protein
  :synonyms ("RASGRP2")
  :mitre-link "Uniprot:Q7LDG7")

(def-bio "RasGRP3" protein
  :synonyms ("RASGRP3")
  :mitre-link "Uniprot:Q8IV61")

(def-bio "RasGRP4" protein
  :synonyms ("RASGRP4")
  :mitre-link "Uniprot:Q8TDF6")

(def-bio "RasGRF2" protein
  :synonyms ("RASGRF2")
  :mitre-link "Uniprot:O14827")
	
	
	
(def-bio "SOS1" protein
  :mitre-link "Uniprot:Q07889")
	

(def-bio "RGL2" protein
  :mitre-link "Uniprot:O15211")

(def-bio "RGL3" protein
  :mitre-link "Uniprot:Q3MIN7")

(def-bio "RGL4" protein
  :mitre-link "Uniprot:Q8IZJ4")
	
	
	

(def-bio "NF1" protein
  :mitre-link "Uniprot:P21359")
	

(def-bio "IQGAP1" protein
  :mitre-link "Uniprot:P46940")

(def-bio "IQGAP2" protein
  :mitre-link "Uniprot:Q13576")

(def-bio "IQGAP3" protein
  :mitre-link "Uniprot:Q86VI3")
	
	
	

(def-bio "GAPVD1" protein
  :mitre-link "Uniprot:Q14C86")

(def-bio "DAB2IP" protein
  :mitre-link "Uniprot:Q7VWQ8")

(def-bio "SOS2" protein
  :mitre-link "Uniprot:Q07890")
	
	

(def-bio "SYNGAP1" protein
  :mitre-link "Uniprot:Q96PV0")
	



;;-------------- well known mutated protein


(def-bio "V600EBRAF" protein ;; need to figure out how to represent this variant in the ontology
  :synonyms ("B-RAFV600E" "V600EB-RAF" "BRAFV600E"))

(def-bio "RasG12V" protein ;; this is a variant
  )

;;------------- From here on down it's miscelany that
;;  I don't know how to codify

(def-bio "MAP" protein)


(def-bio "COT/TPL2" protein) ;; see if defining this leads to sentence 53 working consistently when run twice.
(def-bio "cot" protein
  :synonyms ("COT"))



(def-bio "mek1dd" protein)
(def-bio "brafv" protein)


(def-bio "PIK3CA" protein
  :identifier "PR:000012719")


;; http://en.wikipedia.org/wiki/Growth_factor
;; Again, it's a family, not a particular
(def-bio "growth factors" protein)
(def-bio "growth factor" protein)


(noun "hormone" :super protein)
(noun "histone" :super protein)


(def-bio "SAPK" protein) ;; class of stress activated proteins
