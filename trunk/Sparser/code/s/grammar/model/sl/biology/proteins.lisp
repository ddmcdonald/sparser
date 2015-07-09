;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "proteins"
;;;  Module: "grammar/model/sl/biology/
;;; version: June 2015

;; initiated 9/8/14 lifting from other files
;; Made some of the proteins lower case, becasue both 
;; capitalized and lower case versions occur
;; 1/1/2015 attempt to fix problem with MEK not being defined as a word
;;  -- allow for members to be added to family after family is defined
;; attempt to get around order dependency for MEK1 and MEK -- BUT THAT WAS NOT THE BUG
;; OVER TO YOU, <<DAVID>>
;; 1/7/2015 added new "proteins" -- ubiquitin, hormone and histone, and stubs for mUbRAS and SAPK
;; new rule for protein --> (protein point-mutation) for "ubiquitin C77G"
;; 5/16/2015 add all of the protein information that is safe (does not redefine parens and brackets or defined words)
;;  about 1400 new proteins with several synonyms each
;; 5/30/2015 Give the MITRE-LINK the right UniProt: prefix,
;; add definitions for cadherin, Src, BCR-ABL and "poly(ADP–ribose)"
;; 6/28/15 un-ignored p53
;; 7/6/2015 Support for macro def-ras2-protein to mark proteins that are mentioned in the MITRE RAS 2-hop model


(in-package :sparser)

;;;--------------------------------------------
;;; for (some of) the abstract in the proposal
;;;--------------------------------------------

;; found in the article set



(def-bio "BCR-ABL" protein)
(define-protein "PARP1_HUMAN" ("poly(ADP–ribose) 1"))
(define-protein "PARP2_HUMAN" ("poly(ADP–ribose) 2"))
(define-protein "PARP3_HUMAN" ("poly(ADP–ribose) 3"))


(DEFINE-PROTEIN "NFAT5_HUMAN" ("NFAT5" "Nuclear factor of activated T-cells 5"))

(define-protein "PKNA_MYCTU" ("pknA")) ;; bacterial protein -- have to look at why it shows up in the articles
(define-protein "GSTP1_HUMAN" ("Glutathione S-transferase P"))


;; from June test
(define-protein "TGS1_HUMAN" ("PIMT" "TGS1" "HCA137" "NCOA6IP"))
(noun  "actin" :super protein)



#+ignore
(def-bio "Akt" protein
  :long "Protein kinase B"
  :synonyms ("PKB")
  :identifier "PR:31749")

#+ignore
(def-bio "IGF" protein
  :long "Insulin-Like Growth Factor"
  :identifier "PR:05019")

#+ignore
(def-bio "nfkappab2" protein 
  :identifier "PR:000011178" 
  :greek "kappa")

(def-bio "NF-kappab" protein 
  :identifier "GO:0071159" 
  :greek "kappa")

(def-bio "p100" protein :identifier "PR:000011178")

#+ignore
(def-bio "p120" protein :synonyms ("p120 GAP" "p120GAP"))

(def-bio "p52" protein)  ;; :identifier ??

(def-bio "p53" protein
  :mitre-link "Uniprot:P04637")

(def-bio "p38 SAPK" protein)


;;(define-protein "EGFR" ("ERBB1"))
;;(def-bio "ERBB2" kinase)
;;(def-bio "ERBB3" kinase)


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


#+ignore
(def-bio "APC" protein) 
;; n.b. could be mouse APC for all we know w/o context

;;(def-bio "GSK-3" protein)




;;;------------------------
;;; GTP, GDP, GEFs & GAPs
;;;------------------------

(def-bio "GTP" nucleotide
  :identifier "CHEBI:15996"
  :mitre-link "PubChem:6830")

(def-bio "GDP" nucleotide 
  :identifier "CHEBI:17552"
  :mitre-link "PubChem:8977")

;; "GO:0006184" "GTP loading and deactivated upon hydrolysis" ?????
;;  or "GTP hydrolysis"

;; Guanine "CHEBI:16235"
;; nucleotide "CHEBI:36976"
(def-bio "GEF" protein :synonyms ("guanine nucleotide exchange factors"))



;;(def-bio "GAP" protein :synonyms ("GTPase activating proteins"))
;; "pproteins" to avoid a literal on "proteins"

;; compositional version of the long forms would be better
;;/// are these small molecules like GDP or are the larger? -- protein
;; And these are families of particulars, not the particulars that are
;;  actually doing participating in the reactions

(def-bio "RasGRF1" protein :synonyms ( "RASGRF1") :mitre-link "Uniprot:Q13972")

(def-bio "RapGEF2" protein :synonyms ( "RAPGEF2") :mitre-link "Uniprot:Q17RH5")

(def-bio "RapGEF3" protein :synonyms ("RAPGEF3") :mitre-link "Uniprot:O95398")

(def-bio "RapGEF4" protein
  :synonyms ("RAPGEF4")
  :mitre-link "Uniprot:Q8WZA2")

(def-bio "RAPGEF5" protein
  :synonyms ("RAPGEF5")
  :mitre-link "Uniprot:Q92565")

(def-bio "RapGEF6" protein
  :synonyms ( "RAPGEF6")
  :mitre-link "Uniprot:Q8TEU7")

;;(def-bio "RasGAP" protein :synonyms ("Ras-GAP" "Ras GAP"));; ditto, or beef up morphology



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
#+ignore
(def-bio "KRas" protein 
  :synonyms ("K-Ras" "K-RAS")
  :identifier "PR:0000009442" ;; gene is "PR:P01116" 
  :mitre-link "Uniprot:P01116")

#+ignore
(def-bio "HRas" protein      ;; Harvey Ras
  :synonyms ("H-Ras" "H-RAS" "HRAS")
  :identifier "PR:000029705" ;; gene is "PR:P01112")
  :mitre-link "Uniprot:P01112:")
#+ignore
(def-bio "NRas" protein
  :synonyms ("N-Ras" "N-RAS" "NRAS")
  :identifier "PR:000011416" ;; gene is "PR:P01111"
  :mitre-link "Uniprot:P01111")


 ;; RAS small monomeric GTPase activity


(def-bio "Raf CAAX" protein)

;;(def-bio "RasA1" protein :synonyms ("RASA1") :mitre-link "Uniprot:P20936")
;;(def-bio "RasA2" protein  :synonyms ("RASA2")  :mitre-link "Uniprot:Q15283")
;;(def-bio "RASA4" protein :mitre-link "Uniprot:O43374")	
;;(def-bio "RASAL1" protein  :mitre-link "Uniprot:O95294")
;;(def-bio "RASAL2" protein  :mitre-link "Uniprot:Q9UJF2")



(def-bio "RASA3" protein
  :synonyms ("RASA3")
  :mitre-link "Uniprot:Q14644")

;; and many more: ERK3 (MAPK6) and ERK4 (MAPK4), etc.
;; I don't understand the Wikipedia write up well enough



(def-bio "ERK1-4" protein) ;; mutated form of ERK




;;--- These are in Matt's list, but I don't
;;  know anything about them

#+ignore
(def-bio "ASPP2" protein
  ;;  :long "Apoptosis-stimulating of p53 protein 2"
  ;; This will form a literal on "protein" that blocks its
  ;; proper run for reason frustrating but as yet undiagnozed
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
;;(def-bio "ASPP1" protein)




(def-bio "ATG5" protein
  :mitre-link "Uniprot:Q9H1Y0")	

(def-bio "GFP" protein
  :mitre-link "Uniprot:P42212")	

(def-bio "green fluorescent protein" protein
  :mitre-link "Uniprot:P42212")	

;;(def-bio "RapGEF1" protein :synonyms ("RAPGEF1") :mitre-link "Uniprot:Q91ZZ2")

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
	

;;(def-bio "RGL1" protein :mitre-link "Uniprot:Q9NZL6")
	

;;(def-bio "RasGRP1" protein :synonyms ("RASGRP1") :mitre-link "Uniprot:O95267")
;;(def-bio "RasGRP2" protein :synonyms ("RASGRP2") :mitre-link "Uniprot:Q7LDG7")
;;(def-bio "RasGRP3" protein :synonyms ("RASGRP3") :mitre-link "Uniprot:Q8IV61")
;;(def-bio "RasGRP4" protein :synonyms ("RASGRP4") :mitre-link "Uniprot:Q8TDF6")
;;(def-bio "RasGRF2" protein :synonyms ("RASGRF2") :mitre-link "Uniprot:O14827")
;;(def-bio "SOS1" protein :mitre-link "Uniprot:Q07889")
	

;;(def-bio "RGL2" protein :mitre-link "Uniprot:O15211")

(def-bio "RGL3" protein
  :mitre-link "Uniprot:Q3MIN7")

(def-bio "RGL4" protein
  :mitre-link "Uniprot:Q8IZJ4")
	
	
	

;;(def-bio "NF1" protein :mitre-link "Uniprot:P21359")
	

#+ignore
(def-bio "IQGAP1" protein
  :mitre-link "Uniprot:P46940")

(def-bio "IQGAP2" protein
  :mitre-link "Uniprot:Q13576")

(def-bio "IQGAP3" protein
  :mitre-link "Uniprot:Q86VI3")
	
	
	

(def-bio "GAPVD1" protein
  :mitre-link "Uniprot:Q14C86")

;;(def-bio "DAB2IP" protein :mitre-link "Uniprot:Q7VWQ8")
;;(def-bio "SOS2" protein :mitre-link "Uniprot:Q07890")
;;(def-bio "SYNGAP1" protein :mitre-link "Uniprot:Q96PV0")
	



;;-------------- well known mutated protein


(def-bio "V600EBRAF" protein ;; need to figure out how to represent this variant in the ontology
  :synonyms ("B-RAFV600E" "V600EB-RAF" "BRAFV600E"))

(def-bio "RasG12V" protein ;; this is a variant
 )

;;------------- From here on down it's miscelany that
;;  I don't know how to codify

(def-bio "MAP" protein)

#+ignore
(def-bio "COT/TPL2" protein) ;; see if defining this leads to sentence 53 working consistently when run twice.

(DEFINE-PROTEIN "COT/TPL2" ("M3K8_HUMAN" "Mitogen-activated protein kinase kinase kinase 8"))

(def-bio "cot" protein
  :synonyms ("COT" "MAP3K8"))
(def-bio "trypsin" protein)



(def-bio "mek1dd" protein)
(def-bio "brafv" protein)





;;(def-bio "PIK3CA" protein :identifier "PR:000012719")






(noun "hormone" :super protein)
(noun "histone" :super protein)
(noun "histone 2B" :super protein)


(def-bio "SAPK" protein) ;; class of stress activated proteins
;;(def-bio "ASPP2" protein),nameprotein 
(def-bio "GST-ASPP2" protein)
(def-bio "phospho-ASPP2" protein)



(def-bio "Ras17N" protein)

(define-protein "14-3-3" NIL) 
(define-protein "2A5A_HUMAN" ("PPP2R5A" "PR61alpha")) 
(define-protein "2A5B_HUMAN" ("PPP2R5B")) 
(define-protein "2A5D_HUMAN" ("PPP2R5D")) 
(define-protein "2A5E_HUMAN" ("PPP2R5E")) 
(define-protein "2A5G_HUMAN" ("PPP2R5C" "KIAA0044")) 
(define-protein "2AAA_HUMAN" ("PPP2R1A")) 
(define-protein "2AAB_HUMAN" ("PPP2R1B")) 
(define-protein "2ABA_HUMAN" ("PPP2R2A")) 
(define-protein "2ABB_HUMAN" ("PPP2R2B")) 
(define-protein "2ABD_HUMAN" ("PPP2R2D" "KIAA1541")) 
(define-protein "2ABG_HUMAN" ("PPP2R2C" "IMYPNO1")) 
(define-protein "3BP1_HUMAN" ("SH3BP1" "3BP-1")) 
(define-protein "4EBP1_HUMAN" ("4EBP1_HUMAN" "4EBP1")) 
(define-protein "A9YLD1_MEDTR" ("AA8")) 
(define-protein "AAKB1_HUMAN" ("AMPKb" "AMPK" "PRKAB1")) 
(define-protein "AAKG1_HUMAN" ("AMPKg" "PRKAG1")) 
(define-protein "AAPK1_HUMAN" ("AMPK1" "PRKAA1")) 
(define-protein "AB1IP_HUMAN" ("RIAM" "APBB1IP" "PREL1" "RARP-1" "RARP1" "PREL-1")) 
(define-protein "ABL2-RIN1" NIL) 
(define-protein "ACADV_HUMAN" ("ACADVL" "VLCAD")) 
(define-protein "ACAP2_HUMAN" ("Cnt-b2" "CENTB2" "Centaurin-beta-2" "KIAA0041" "ACAP2")) 
(define-protein "ACBD5_HUMAN" ("ACBD5" "KIAA1996")) 
(define-protein "ACO11_HUMAN" ("ACOT11" "KIAA0707" "BFIT" "THEA")) 
(define-protein "ACSF2_HUMAN" ("ACSF2")) 
(define-protein "ACSL3_HUMAN" ("ACSL3" "ACS3" "FACL3" "LACS3")) 
(define-protein "ACSL5_HUMAN" ("ACSL5" "ACS5" "FACL5")) 
(define-protein "ACTB_HUMAN" ("ACTB" "Beta-actin")) 
(define-protein "ACTN4_HUMAN" ("ACTN4")) 
(define-protein "ADAS_HUMAN" ("AGPS")) 
(define-protein "ADDA_HUMAN" ("ADD1" "ADDA")) 
(define-protein "ADDG_HUMAN" ("ADDL" "ADD3")) 
(define-protein "ADH6_HUMAN" ("ADH6")) 
(define-protein "ADRM1_HUMAN" ("Gp110" "hRpn13" "GP110" "ADRM1" "ARM-1")) 
(define-protein "AF-6" ("Afadin")) 
(define-protein "AFAD_HUMAN" ("MLLT4" "AF6")) 
(define-protein "AGK_HUMAN" ("hAGK" "AGK" "HsMuLK" "MuLK" "MULK")) 
(define-protein "AGR2_HUMAN" ("AG2" "hAG-2" "AG-2" "AGR2" "HPC8")) 
(define-protein "AHNK_HUMAN" ("PM227" "Desmoyokin" "AHNAK")) 
(define-protein "AIDA_HUMAN" ("AIDA" "C1orf80")) 
(define-protein "AIP_HUMAN" ("XAP2" "AIP" "XAP-2")) 
(define-protein "AKTS1_HUMAN" ("PRAS40" "ECO:0000303|PubMed:16174443}" "AKT1S1")) 
(define-protein "AL1B1_HUMAN" ("ALDH5" "ALDH1B1" "ALDHX")) 
(define-protein "AMERL_HUMAN" ("AMMECR1L")) 
(define-protein "ANAG_HUMAN" ("NAG" "UFHSD1" "NAGLU" "N-acetyl-alpha-glucosaminidase")) 
(define-protein "ANFY1_HUMAN" ("Rank-5" "KIAA1255" "ANKFY1" "ANKHZN")) 
(define-protein "ANR11_HUMAN" ("ANKRD11" "ANCO1")) 
(define-protein "ANX11_HUMAN" ("Annexin-11" "CAP-50" "ANX11" "ANXA11")) 
(define-protein "ANXA1_HUMAN" ("p35" "Chromobindin-9" "LPC1" "ANXA1" "ANX1" "Annexin-1" "Calpactin-2")) 
(define-protein "ANXA2_HUMAN" ("p36" "CAL1H" "Chromobindin-8" "LPC2D" "ANXA2" "PAP-IV" "ANX2" "Annexin-2" "ANX2L4")) 
(define-protein "ANXA3_HUMAN" ("Annexin-3" "ANX3" "ANXA3" "PAP-III")) 
(define-protein "ANXA4_HUMAN" ("P32.5" "ANXA4" "Chromobindin-4" "PP4-X" "ANX4" "Annexin-4" "PAP-II")) 
(define-protein "ANXA5_HUMAN" ("PAP-I" "CBP-I" "ENX2" "PP4" "ANXA5" "ANX5" "Annexin-5" "VAC-alpha")) 
(define-protein "ANXA6_HUMAN" ("Annexin-6" "p68" "ANXA6" "Chromobindin-20" "ANX6" "p70" "Calphobindin-II" "CPB-II")) 
(define-protein "ANXA7_HUMAN" ("Annexin-7" "ANXA7" "SNX" "Synexin" "ANX7")) 
(define-protein "ANXA9_HUMAN" ("ANXA9" "ANX31" "Annexin-31" "Pemphaxin" "Annexin-9")) 
(define-protein "AP1B1_HUMAN" ("ADTB1" "Beta-1-adaptin" "AP1B1" "CLAPB2" "BAM22")) 
(define-protein "AP1G1_HUMAN" ("AP1G1" "ADTG" "Gamma1-adaptin" "CLAPG1")) 
(define-protein "AP1M2_HUMAN" ("AP1M2" "Mu1B-adaptin")) 
(define-protein "AP1S1_HUMAN" ("AP1S1" "AP19" "CLAPS1" "Sigma1A-adaptin")) 
(define-protein "AP2A1_HUMAN" ("Alpha1-adaptin" "CLAPA1" "ADTAA" "AP2A1")) 
(define-protein "AP2A2_HUMAN" ("HIP9" "KIAA0899" "ADTAB" "CLAPA2" "HYPJ" "HIP-9" "Alpha2-adaptin" "AP2A2")) 
(define-protein "AP2B1_HUMAN" ("ADTB2" "AP105B" "Beta-adaptin" "Beta-2-adaptin" "CLAPB1" "AP2B1")) 
(define-protein "AP2M1_HUMAN" ("KIAA0109" "CLAPM1" "Adaptin-mu2" "AP2M1")) 
(define-protein "AP3B1_HUMAN" ("Beta-3A-adaptin" "AP3B1" "ADTB3A")) 
(define-protein "AP3D1_HUMAN" ("Delta-adaptin" "AP3D1")) 
(define-protein "AP3M1_HUMAN" ("AP3M1" "Mu3A-adaptin")) 
(define-protein "AP3S1_HUMAN" ("Sigma-3A-adaptin" "CLAPS3" "AP3S1" "Sigma3A-adaptin")) 
(define-protein "APC15_HUMAN" ("APC15" "ANAPC15" "C11orf51")) 
(define-protein "APC7_HUMAN" ("APC7" "ANAPC7")) 
(define-protein "APEX1_HUMAN" ("APEX1" "APE" "APE1" "APEX" "APX" "HAP1" "REF1")) 
(define-protein "ARAP1_HUMAN" ("KIAA0782" "Centaurin-delta-2" "ARAP1" "Cnt-d2" "CENTD2")) 
(define-protein "ARF3_HUMAN" ("ARF3")) 
(define-protein "ARFRP_HUMAN" ("ARP" "ARFRP1" "ARP1")) 
(define-protein "ARHGQ_HUMAN" ("ARHGEF26" "SGEF")) 
(define-protein "ARL15_HUMAN" ("ARL15" "ARFRP2")) 
(define-protein "ARL1_HUMAN" ("ARL1")) 
(define-protein "ARL2_HUMAN" ("ARL2")) 
(define-protein "ARL5A_HUMAN" ("ARL5" "ARL5A" "ARFLP5")) 
(define-protein "ARL8A_HUMAN" ("GIE2" "ARL10B" "ARL8A")) 
(define-protein "ARL8B_HUMAN" ("ARL8B" "GIE1" "ARL10C")) 
(define-protein "ASAH1_HUMAN" ("ASAH" "ACDase" "PHP32" "AC" "ASAH1")) 
(define-protein "ASNA_HUMAN" ("ARSA" "hASNA-I" "TRC40" "hARSA-I" "ASNA1")) 
(define-protein "ASPC1_HUMAN" ("RCC17" "ASPL" "UBXN9" "UBXD9" "TUG" "ASPSCR1")) 
(define-protein "ASXL1_HUMAN" ("ASXL1" "KIAA0978")) 
(define-protein "AT1B3_HUMAN" ("CD298" "ATP1B3" "ATPB-3")) 
(define-protein "ATG3_HUMAN" ("APG3-like" "hApg3" "ATG3" "APG3" "APG3L")) 
(define-protein "ATG5_HUMAN" ("APG5L" "ATG5" "APG5-like" "ASP")) 
(define-protein "ATG7_HUMAN" ("hAGP7" "ATG7" "APG7-like" "APG7L")) 
(define-protein "ATM_HUMAN" ("ATM")) 
(define-protein "AURKA_HUMAN" ("AYK1" "ARK-1" "STK6" "AURA" "AURKA" "AIK" "IAK1" "AIRK1" "ARK1" "hARK1" "STK15" "BTAK")) 
(define-protein "B3GA3_HUMAN" ("GlcUAT-I" "GlcAT-I" "B3GAT3")) 
(define-protein "BAIP2_HUMAN" ("IRS-58" "BAIAP2" "FLAF3" "IRSp53/58" "IRSp53")) 
(define-protein "BAP29_HUMAN" ("BCAP29" "BAP29" "Bap29")) 
(define-protein "BAP31_HUMAN" ("BCAP31" "Bap31" "p28" "DXS1357E" "BAP31")) 
(define-protein "BAZ1A_HUMAN" ("hACF1" "ACF1" "WCRF180" "hWALp1" "BAZ1A")) 
(define-protein "BAZ1B_HUMAN" ("WBSCR10" "hWALp2" "WBSCR9" "WBSC10" "BAZ1B" "WSTF")) 
(define-protein "BCCIP_HUMAN" ("TOK1" "BCCIP")) 
(define-protein "BCL2_HUMAN" ("BCL2")) 
(define-protein "BET1_HUMAN" ("hBET1" "BET1")) 
(define-protein "BIG1_HUMAN" ("ARFGEF1" "ARFGEP1" "BIG1")) 
(define-protein "BIG2_HUMAN" ("ARFGEF2" "ARFGEP2" "BIG2")) 
(define-protein "BIN1_HUMAN" ("AMPHL" "BIN1")) 
(define-protein "BL1S1_HUMAN" ("GCN5L1" "BLOC1S1" "RT14" "BLOS1")) 
(define-protein "BL1S2_HUMAN" ("CEAP" "BLOC1S2" "BLOS2")) 
(define-protein "BL1S4_HUMAN" ("BLOC1S4" "CNO")) 
(define-protein "BL1S5_HUMAN" ("BLOC1S5" "MUTED")) 
(define-protein "BL1S6_HUMAN" ("Pallidin" "BLOC1S6" "PA" "PLDN")) 
(define-protein "BPNT1_HUMAN" ("PIP" "BPNT1")) 
(define-protein "BRAP_HUMAN" ("RNF52" "BRAP" "IMP" "BRAP2")) 
(define-protein "BZW1_HUMAN" ("KIAA0005" "BZAP45" "BZW1")) 
(define-protein "BZW2_HUMAN" ("BZW2")) 
(define-protein "C42S2_HUMAN" ("SPEC2" "CDC42SE2")) 
(define-protein "CAB39_HUMAN" ("CAB39" "MO25" "MO25alpha")) 
(define-protein "CAB45_HUMAN" ("CAB45" "SDF-4" "SDF4" "Cab45")) 
(define-protein "CALR_HUMAN" ("CALR" "ERp60" "CRTC" "CRP55" "Calregulin" "grp60" "HACBP")) 
(define-protein "CALU_HUMAN" ("Crocalbin" "CALU")) 
(define-protein "CALX_HUMAN" ("p90" "CANX" "IP90")) 
(define-protein "CAND1_HUMAN" ("KIAA0829" "CAND1" "TIP120A" "TIP120")) 
(define-protein "CAPS2_HUMAN" ("KIAA1591" "CADPS2" "CAPS2" "CAPS-2")) 
(define-protein "CAPZB_HUMAN" ("CAPZB")) 
(define-protein "CASP_HUMAN" ("CUX1" "CUTL1")) 
(define-protein "CAV1_HUMAN" ("CAV" "CAV1")) 
(define-protein "CAZA1_HUMAN" ("CAPZA1")) 
(define-protein "CC28A_HUMAN" ("C6orf80" "CCRL1AP" "CCDC28A")) 
(define-protein "CCAR2_HUMAN" ("CCAR2" "DBC1" "DBC.1" "DBC-1" "KIAA1967")) 
(define-protein "CCD50_HUMAN" ("C3orf6" "CCDC50")) 
(define-protein "CCNB3_HUMAN" ("CYCB3" "CCNB3")) 
(define-protein "CCNG1_HUMAN" ("Cyclin-G" "CYCG1" "CCNG1" "CCNG")) 
(define-protein "CD11A_HUMAN" ("CDC2L3" "CDC2L2" "CDK11A" "PITSLREB")) 
(define-protein "CD2AP_HUMAN" ("CD2AP")) 
(define-protein "CD63_HUMAN" ("TSPAN30" "LAMP-3" "Tetraspanin-30" "Tspan-30" "MLA1" "OMA81H" "Granulophysin" "CD63")) 
(define-protein "CD9_HUMAN" ("Tspan-29" "MRP-1" "Tetraspanin-29" "MIC3" "TSPAN29" "p24" "CD9")) 
(define-protein "CDC23_HUMAN" ("ANAPC8" "CDC23" "APC8")) 
(define-protein "CDC5L_HUMAN" ("KIAA0432" "CDC5L" "PCDC5RP")) 
(define-protein "CDCP1_HUMAN" ("CDCP1" "TRASK" "SIMA135" "CD318")) 
(define-protein "CDIPT_HUMAN" ("PIS" "CDIPT" "PIS1")) 
(define-protein "CDK1_HUMAN" ("CDK1" "Cdk1" "P34CDC2" "CDC2" "CDKN1" "CDC28A")) 
(define-protein "CDK4_HUMAN" ("PSK-J3" "CDK4")) 
(define-protein "CDK5_HUMAN" ("CDKN5" "CDK5")) 
(define-protein "CENPV_HUMAN" ("CENP-V" "PRR6" "CENPV")) 
(define-protein "CH033_HUMAN" ("C8orf33")) 
(define-protein "CHD3_HUMAN" ("CHD-3" "hZFH" "Mi2-alpha" "CHD3")) 
(define-protein "CHD4_HUMAN" ("CHD-4" "Mi2-beta" "CHD4")) 
(define-protein "CHK2_HUMAN" ("CHEK2" "CDS1" "CHK2" "Chk2" "RAD53")) 
(define-protein "CHM1A_HUMAN" ("Vps46-1" "PCOLN3" "CHMP1a" "KIAA0047" "PRSM1" "CHMP1" "hVps46-1" "CHMP1A")) 
(define-protein "CHM1B_HUMAN" ("CHMP1b" "CHMP1.5" "Vps46-2" "CHMP1B" "C18orf2" "hVps46-2")) 
(define-protein "CHM2A_HUMAN" ("hVps2-1" "CHMP2A" "CHMP2" "Vps2-1" "CHMP2a" "BC2")) 
(define-protein "CHM4B_HUMAN" ("SNF7-2" "CHMP4b" "C20orf178" "SHAX1" "hSnf7-2" "hVps32-2" "Vps32-2" "CHMP4B")) 
(define-protein "CHMP5_HUMAN" ("hVps60" "Vps60" "SNF7DC2" "C9orf83" "CHMP5")) 
(define-protein "CHMP6_HUMAN" ("VPS20" "Vps20" "hVps20" "CHMP6")) 
(define-protein "CHP1_HUMAN" ("CHP1" "CHP")) 
(define-protein "CI009_HUMAN" ("C9orf9")) 
(define-protein "CIB1_HUMAN" ("CIBP" "CIB" "KIP" "Calmyrin" "CIB1" "PRKDCIP" "SIP2-28")) 
(define-protein "CISD2_HUMAN" ("Miner1" "ZCD2" "CISD2" "NAF-1" "CDGSH2" "ERIS")) 
(define-protein "CKAP5_HUMAN" ("Ch-TOG" "CKAP5" "KIAA0097")) 
(define-protein "CL045_HUMAN" ("C12orf45")) 
(define-protein "CLAP2_HUMAN" ("hOrbit2" "KIAA0627" "CLASP2")) 
(define-protein "CLCA_HUMAN" ("Lca" "CLTA")) 
(define-protein "CLCN7_HUMAN" ("CLCN7" "ClC-7")) 
(define-protein "CLH1_HUMAN" ("KIAA0034" "CLH-17" "CLTC" "CLH17" "CLTCL2")) 
(define-protein "CLIC1_HUMAN" ("hRNCC" "NCC27" "CLIC1" "G6")) 
(define-protein "CLIP4_HUMAN" ("CLIP4" "RSNL2")) 
(define-protein "CLN5_HUMAN" ("CLN5")) 
(define-protein "CND3_HUMAN" ("CAPG" "NYMEL3" "hCAP-G" "NCAPG")) 
(define-protein "CNN2_HUMAN" ("CNN2")) 
(define-protein "CNOT8_HUMAN" ("CAF2" "CNOT8" "CALIF" "POP2" "CALIFp" "Caf1b")) 
(define-protein "CNPY3_HUMAN" ("CNPY3" "ERDA5" "TNRC5" "CTG4A" "PRAT4A")) 
(define-protein "COBL1_HUMAN" ("COBLL1" "KIAA0977")) 
(define-protein "COF1_HUMAN" ("CFL1" "p18" "CFL")) 
(define-protein "COG4_HUMAN" ("COG4")) 
(define-protein "COG5_HUMAN" ("GTC-90" "GTC90" "COG5" "GOLTC1")) 
(define-protein "COMD3_HUMAN" ("C10orf8" "COMMD3" "BUP")) 
(define-protein "COPA_HUMAN" ("COPA" "Xenin" "Proxenin" "HEP-COP" "HEPCOP" "Alpha-COP")) 
(define-protein "COPB2_HUMAN" ("p102" "Beta'-COP" "COPB2")) 
(define-protein "COPB_HUMAN" ("Beta-COP" "COPB1" "COPB")) 
(define-protein "COPD_HUMAN" ("ARCN1" "Archain" "Delta-COP" "COPD")) 
(define-protein "COPE_HUMAN" ("Epsilon-COP" "COPE")) 
(define-protein "COPG1_HUMAN" ("COPG1" "Gamma-1-COP" "COPG")) 
(define-protein "COPZ1_HUMAN" ("COPZ1" "COPZ")) 
(define-protein "CPLX1_HUMAN" ("Synaphin-2" "CPLX1")) 
(define-protein "CPNE1_HUMAN" ("CPNE1" "CPN1")) 
(define-protein "CPNE3_HUMAN" ("CPNE3" "KIAA0636" "CPN3")) 
(define-protein "CPT1A_HUMAN" ("CPT1-L" "CPTI-L" "CPT1" "CPT1A")) 
(define-protein "CQ085_HUMAN" ("C17orf85")) 
(define-protein "CSK22_HUMAN" ("CSNK2A2" "CK2A2")) 
(define-protein "CSKP_HUMAN" ("hCASK" "CASK" "LIN2")) 
(define-protein "CUL3_HUMAN" ("KIAA0617" "CUL3" "CUL-3")) 
(define-protein "CYBP_HUMAN" ("SIP" "hCacyBP" "S100A6BP" "CACYBP" "CacyBP")) 
(define-protein "CYFP1_HUMAN" ("p140sra-1" "CYFIP1" "Sra-1" "KIAA0068")) 
(define-protein "CYTA_HUMAN" ("STF1" "STFA" "CSTA" "Stefin-A" "Cystatin-AS")) 
(define-protein "CYTSA_HUMAN" ("SPECC1L" "KIAA0376" "CYTSA")) 
(define-protein "CYTS_HUMAN" ("CST4" "Cystatin-4" "Cystatin-SA-III")) 
(define-protein "DC1I1_HUMAN" ("DYNC1I1" "DNCI1" "DNCIC1")) 
(define-protein "DC1I2_HUMAN" ("DYNC1I2" "DNCI2" "DNCIC2")) 
(define-protein "DC1L1_HUMAN" ("DLC-A" "DNCLI1" "DYNC1LI1" "LIC1")) 
(define-protein "DC1L2_HUMAN" ("LIC-2" "DNCLI2" "DYNC1LI2" "LIC2" "LIC53/55")) 
(define-protein "DCTN2_HUMAN" ("DCTN-50" "DCTN50" "DCTN2")) 
(define-protein "DCTN3_HUMAN" ("DCTN22" "DCTN3" "p22")) 
(define-protein "DDX47_HUMAN" ("DDX47")) 
(define-protein "DDX50_HUMAN" ("Gu-beta" "DDX50")) 
(define-protein "DDX55_HUMAN" ("DDX55" "KIAA1595")) 
(define-protein "DEAF1_HUMAN" ("ZMYND5" "Suppressin" "DEAF1" "SPN" "NUDR")) 
(define-protein "DEN6B_HUMAN" ("DENND6B" "FAM116B")) 
(define-protein "DEXI_HUMAN" ("DEXI" "MYLE")) 
(define-protein "DGKK_HUMAN" ("DGKK" "DGK-kappa")) 
(define-protein "DGKQ_HUMAN" ("DGKQ" "DAGK4" "DGK-theta")) 
(define-protein "DGKZ_HUMAN" ("DAGK6" "DGKZ" "DGK-zeta")) 
(define-protein "DIDO1_HUMAN" ("DIDO1" "C20orf158" "DIO-1" "DATF-1" "hDido1" "KIAA0333" "DATF1")) 
(define-protein "DLRB1_HUMAN" ("BITH" "DNCL2A" "ROBLD1" "DYNLRB1" "BLP" "DNLC2A")) 
(define-protein "DNJA3_HUMAN" ("hTid-1" "DNAJA3" "TID1" "HCA57")) 
(define-protein "DNJB1_HUMAN" ("hDj-1" "HDJ1" "DNAJ1" "HSP40" "HSPF1" "DNAJB1")) 
(define-protein "DNJC8_HUMAN" ("SPF31" "DNAJC8")) 
(define-protein "DNLI3_HUMAN" ("LIG3" "Lig III" "LIG III")) 
(define-protein "DNM1L_HUMAN" ("Dymple" "DNM1L" "DLP1" "HdynIV" "DRP1" "DVLP")) 
(define-protein "DOCK5_HUMAN" ("DOCK5")) 
(define-protein "DOP2_HUMAN" ("KIAA0933" "C21orf5" "DOPEY2")) 
(define-protein "DP13B_HUMAN" ("APPL2" "Dip13-beta" "DIP13B")) 
(define-protein "DPOLB_HUMAN" ("POLB")) 
(define-protein "DRG1_HUMAN" ("NEDD3" "NEDD-3" "DRG1" "DRG-1")) 
(define-protein "DTBP1_HUMAN" ("BLOC1S8" "DTNBP1" "Dysbindin-1")) 
(define-protein "DUS23_HUMAN" ("LDP-3" "DUSP23" "VHZ" "LDP3")) 
(define-protein "DUS3_HUMAN" ("VHR" "DUSP3")) 
(define-protein "DUX3_HUMAN" ("DUX3")) 
(define-protein "DYHC1_HUMAN" ("KIAA0325" "DYNC1H1" "DHC1" "DNCL" "DYHC" "DNECL" "DNCH1")) 
(define-protein "DYL1_HUMAN" ("DYNLL1" "DNCL1" "HDLC1" "PIN" "DNCLC1" "DLC8" "DLC1")) 
(define-protein "DYST_HUMAN" ("DST" "DMH" "DT" "BPA" "KIAA0728" "BP230" "BPAG1" "BP240")) 
(define-protein "E41L1_HUMAN" ("KIAA0338" "EPB41L1")) 
(define-protein "E41L2_HUMAN" ("EPB41L2")) 
(define-protein "E41L5_HUMAN" ("KIAA1548" "EPB41L5")) 
(define-protein "E41LA_HUMAN" ("EPB41L4A" "EPB41L4")) 
(define-protein "ECHA_HUMAN" ("TP-alpha" "HADH" "HADHA")) 
(define-protein "ECHB_HUMAN" ("HADHB" "Beta-ketothiolase" "TP-beta")) 
(define-protein "ECHP_HUMAN" ("PBFE" "EHHADH" "PBE" "ECHD")) 
(define-protein "ECM29_HUMAN" ("ECM29" "KIAA0368" "Ecm29")) 
(define-protein "ECSIT_HUMAN" ("ECSIT")) 
(define-protein "EF1A1_HUMAN" ("EEF1A" "EF1A" "LENG7" "EF-1-alpha-1" "eEF1A-1" "EEF1A1" "EF-Tu")) 
(define-protein "EGLN1_HUMAN" ("HIF-PH2" "HPH-2" "SM-20" "C1orf12" "EGLN1" "PHD2")) 
(define-protein "EHD1_HUMAN" ("EHD1" "Testilin" "hPAST1" "PAST" "PAST1")) 
(define-protein "EHD4_HUMAN" ("EHD4" "HCA11" "HCA10" "PAST4")) 
(define-protein "EI2BA_HUMAN" ("EIF2B1" "EIF2BA")) 
(define-protein "EI2BB_HUMAN" ("EIF2B2" "S20I15" "EIF2BB" "S20III15")) 
(define-protein "EI2BD_HUMAN" ("EIF2BD" "EIF2B4")) 
(define-protein "EI2BE_HUMAN" ("EIF2BE" "EIF2B5")) 
(define-protein "EI2BG_HUMAN" ("EIF2B3")) 
(define-protein "EIF2D_HUMAN" ("EIF2D" "HCA56" "eIF2d" "LGTN" "Ligatin")) 
(define-protein "EIF3B_HUMAN" ("eIF3b" "EIF3S9")) 
(define-protein "EIF3M_HUMAN" ("EIF3M" "hFL-B5" "PCID1" "HFLB5" "eIF3m")) 
(define-protein "ELAF_HUMAN" ("PI3" "WAP3" "WFDC14")) 
(define-protein "ELAV1_HUMAN" ("HuR" "HUR" "ELAVL1")) 
(define-protein "ELK1_HUMAN" ("Elk-1")) 
(define-protein "ELMO3_HUMAN" ("ELMO3")) 
(define-protein "ELOF1_HUMAN" ("ELOF1")) 
(define-protein "ENOA_HUMAN" ("MBPB1" "MPB-1" "NNE" "ENO1" "ENO1L1" "MPB1" "MBP-1")) 
(define-protein "EPB42_HUMAN" ("EPB42" "P4.2" "E42P")) 
(define-protein "EPCAM_HUMAN" ("EPCAM" "hEGP314" "Ep-CAM" "EGP314" "KSA" "M4S1" "CD326" "TACSTD1" "GA733-2" "M1S2" "EGP" "TROP1" "MIC18")) 
(define-protein "ERAP1_HUMAN" ("APPILS" "A-LAP" "KIAA0525" "PILS-AP" "ARTS-1" "ERAP1" "ARTS1")) 
(define-protein "ERGI1_HUMAN" ("KIAA1181" "ERGIC1" "ERGIC-32" "ERGIC32")) 
(define-protein "ERGI2_HUMAN" ("ERV41" "PTX1" "ERGIC2")) 
(define-protein "ERGI3_HUMAN" ("SDBCAG84" "ERV46" "ERGIC3" "C20orf47")) 
(define-protein "ERLN1_HUMAN" ("ERLIN1" "KEO4" "C10orf69" "KE04" "SPFH1")) 
(define-protein "ERLN2_HUMAN" ("ERLIN2" "C8orf2" "SPFH2")) 
(define-protein "ES8L2_HUMAN" ("EPS8R2" "EPS8L2")) 
(define-protein "ES8L3_HUMAN" ("EPS8R3" "EPS8L3")) 
(define-protein "ESX1_HUMAN" ("ESX1L" "ESX1" "ESX1R")) 
(define-protein "ESYT1_HUMAN" ("FAM62A" "KIAA0747" "E-Syt1" "ESYT1" "MBC2")) 
(define-protein "ETHE1_HUMAN" ("HSCO" "ETHE1")) 
(define-protein "EXOC1_HUMAN" ("SEC3L1" "EXOC1" "SEC3")) 
(define-protein "EXOC2_HUMAN" ("SEC5" "EXOC2" "SEC5L1")) 
(define-protein "EXOC3_HUMAN" ("SEC6L1" "SEC6" "EXOC3")) 
(define-protein "EXOC4_HUMAN" ("SEC8L1" "SEC8" "EXOC4" "KIAA1699")) 
(define-protein "EXOC5_HUMAN" ("SEC10" "SEC10L1" "EXOC5" "hSec10")) 
(define-protein "EXOC6_HUMAN" ("EXOC6" "SEC15A" "SEC15L1" "SEC15L")) 
(define-protein "EXOC7_HUMAN" ("EXOC7" "KIAA1067" "EXO70")) 
(define-protein "EXOC8_HUMAN" ("EXOC8")) 
(define-protein "EXPH5_HUMAN" ("EXPH5" "SlaC2-b" "SLAC2B" "KIAA0624")) 
(define-protein "EZRI_HUMAN" ("EZR" "Cytovillin" "p81" "VIL2" "Villin-2")) 
(define-protein "F126B_HUMAN" ("FAM126B")) 
(define-protein "FA21A_HUMAN" ("FAM21A")) 
(define-protein "FA71C_HUMAN" ("FAM71C")) 
(define-protein "FACR2_HUMAN" ("FAR2" "MLSTD1")) 
(define-protein "FANCI_HUMAN" ("KIAA1794" "FANCI")) 
(define-protein "FBP1L_HUMAN" ("C1orf39" "FNBP1L" "Toca-1" "TOCA1")) 
(define-protein "FBW1A_HUMAN" ("BTRCP" "BTRC" "FBW1A" "FBXW1A" "E3RSIkappaB")) 
(define-protein "FCHO2_HUMAN" ("FCHO2")) 
(define-protein "FDFT_HUMAN" ("FDFT1" "SQS" "SS")) 
(define-protein "FERM1_HUMAN" ("Kindlin-1" "C20orf42" "FERMT1" "Kindlerin" "KIND1" "URP1")) 
(define-protein "FGF12_HUMAN" ("FGF12B" "FGF12" "FGF-12" "FHF-1" "FHF1")) 
(define-protein "FHOD1_HUMAN" ("FHOS1" "FHOS" "FHOD1")) 
(define-protein "FIG4_HUMAN" ("KIAA0274" "FIG4" "SAC3")) 
(define-protein "FKB1B_HUMAN" ("FKBP1B" "FKBP12.6" "FKBP1L" "FKBP9" "OTK4")) 
(define-protein "FLII_HUMAN" ("FLIL" "FLII")) 
(define-protein "FLNB_HUMAN" ("Fh1" "TABP" "FLN3" "Beta-filamin" "FLN-B" "FLNB" "FLN1L" "TAP" "Filamin-3" "ABP-278")) 
(define-protein "FLNC_HUMAN" ("FLN2" "FLN-C" "FLNC" "ABPL" "ABP-L" "FLNc" "Filamin-2" "Gamma-filamin")) 
(define-protein "FLOT1_HUMAN" ("FLOT1")) 
(define-protein "FNTA_HUMAN" ("GGTase-I-alpha" "FTase-alpha" "FNTA")) 
(define-protein "FNTB_HUMAN" ("FNTB" "FTase-beta")) 
(define-protein "FOS_HUMAN" ("FOS" "G0S7")) 
(define-protein "FRPD3_HUMAN" ("KIAA1817" "FRMPD3")) 
(define-protein "G3BP1_HUMAN" ("G3BP-1" "G3BP" "G3BP1")) 
(define-protein "G3P_HUMAN" ("GAPDH" "GAPD")) 
(define-protein "G45IP_HUMAN" ("PRG6" "MRP-L59" "MRPL59" "PLINP-1" "CRIF1" "PLINP1" "GADD45GIP1" "PLINP")) 
(define-protein "G6PD_HUMAN" ("G6PD")) 
(define-protein "GALC_HUMAN" ("GALC" "GALCERase" "Galactosylceramidase")) 
(define-protein "GAPD1_HUMAN" ("GAPEX5" "GAPex-5" "KIAA1521" "RAP6" "GAPVD1")) 
(define-protein "GAPR1_HUMAN" ("GAPR-1" "C9orf19" "GAPR1" "GLIPR2")) 
(define-protein "GBB3_HUMAN" ("GNB3")) 
(define-protein "GBF1_HUMAN" ("KIAA0248" "GBF1")) 
(define-protein "GBG10_HUMAN" ("GNGT10" "GNG10")) 
(define-protein "GBG12_HUMAN" ("GNG12")) 
(define-protein "GBG3_HUMAN" ("GNGT3" "GNG3")) 
(define-protein "GBG4_HUMAN" ("GNGT4" "GNG4")) 
(define-protein "GBG5_HUMAN" ("GNGT5" "GNG5")) 
(define-protein "GBG7_HUMAN" ("GNGT7" "GNG7")) 
(define-protein "GBG8_HUMAN" ("GNGT9" "GNG9" "GNG8" "Gamma-9")) 
(define-protein "GCC1_HUMAN" ("GCC1")) 
(define-protein "GCN1L_HUMAN" ("KIAA0219" "GCN1L1" "HsGCN1")) 
(define-protein "GCP2_HUMAN" ("GCP2" "hGrip103" "h103p" "TUBGCP2" "hSpc97" "GCP-2" "hGCP2")) 
(define-protein "GDIB_HUMAN" ("GDI-2" "RABGDIB" "GDI2")) 
(define-protein "GLCM_HUMAN" ("Beta-glucocerebrosidase" "GLUC" "Alglucerase" "Beta-GC" "GBA" "Imiglucerase" "GC")) 
(define-protein "GLP3L_HUMAN" ("GPP34R" "GOLPH3L")) 
(define-protein "GLYR1_HUMAN" ("HIBDL" "NP60" "GLYR1")) 
(define-protein "GNPAT_HUMAN" ("DHAP-AT" "DAPAT" "GNPAT" "DAP-AT" "Acyl-CoA:dihydroxyacetonephosphateacyltransferase" "DHAPAT")) 
(define-protein "GOGA7_HUMAN" ("GCP16" "GOLGA7")) 
(define-protein "GOLI4_HUMAN" ("GIMPc" "GPP130" "GOLIM4" "GIMPC" "GOLPH4")) 
(define-protein "GOLP3_HUMAN" ("GOLPH3" "GPP34" "MIDAS")) 
(define-protein "GOPC_HUMAN" ("PIST" "CAL" "FIG" "GOPC")) 
(define-protein "GOSR1_HUMAN" ("GOS-28" "GOSR1" "GS28")) 
(define-protein "GOSR2_HUMAN" ("Membrin" "GOSR2" "GS27")) 
(define-protein "GOT1B_HUMAN" ("hGOT1a" "GOLT1B" "GOT1A" "GCT2")) 
(define-protein "GPA33_HUMAN" ("GPA33")) 
(define-protein "GPSM2_HUMAN" ("GPSM2" "LGN")) 
(define-protein "GRAP1_HUMAN" ("GRIPAP1" "GRASP-1" "KIAA1167")) 
(define-protein "GRB10_HUMAN" ("KIAA0207" "GRB10" "GRBIR")) 
(define-protein "GRTP1_HUMAN" ("TBC1D6" "GRTP1")) 
(define-protein "GSK3B_HUMAN" ("GSK3B")) 
(define-protein "GTPB1_HUMAN" ("GP-1" "GP1" "GTPBP1")) 
(define-protein "GTR14_HUMAN" ("GLUT3" "SLC2A14" "GLUT14" "GLUT-14")) 
(define-protein "GTR3_HUMAN" ("GLUT3" "GLUT-3" "SLC2A3")) 
(define-protein "Galphaq" NIL) 
(define-protein "Gbetagamma" NIL) 
(define-protein "Grb7" NIL) 
(define-protein "HAUS1_HUMAN" ("HAUS1" "HEI-C" "CCDC5" "HEIC")) 
(define-protein "HAUS3_HUMAN" ("HAUS3" "C4orf15")) 
(define-protein "HAX1_HUMAN" ("HAX-1" "HS1BP1" "HAX1" "HSP1BP-1")) 
(define-protein "HCFC1_HUMAN" ("HFC1" "HCF-1" "HCF" "VCAF" "HCF1" "HCFC1" "CFF")) 
(define-protein "HDGR3_HUMAN" ("HDGFRP3" "HRP-3" "HDGF-2" "HDGF2")) 
(define-protein "HD_HUMAN" ("HTT" "IT15" "HD")) 
(define-protein "HGS_HUMAN" ("HGS" "HRS" "Hrs")) 
(define-protein "HIP1R_HUMAN" ("HIP-12" "HIP1R" "KIAA0655" "HIP12")) 
(define-protein "HIP1_HUMAN" ("HIP1" "HIP-I" "HIP-1")) 
(define-protein "HLAH_HUMAN" ("HLA-12.4" "HLA-H" "HLA-AR" "HLAH")) 
(define-protein "HMGB2_HUMAN" ("HMG2" "HMG-2" "HMGB2")) 
(define-protein "HMGN3_HUMAN" ("HMGN3" "TRIP7" "TRIP-7")) 
(define-protein "HNF4A_HUMAN" ("TCF-14" "TCF14" "HNF4" "HNF4A" "HNF-4-alpha" "NR2A1")) 
(define-protein "HNRPC_HUMAN" ("HNRPC" "HNRNPC")) 
(define-protein "HOOK1_HUMAN" ("HOOK1" "hHK1" "h-hook1")) 
(define-protein "HOOK2_HUMAN" ("HOOK2" "hHK2" "h-hook2")) 
(define-protein "HSDL2_HUMAN" ("HSDL2" "C9orf99")) 
(define-protein "HSP71_HUMAN" ("HSP70-1/HSP70-2" "HSPA1A" "HSPA1B" "HSP70.1/HSP70.2" "HSPA1" "HSX70")) 
(define-protein "ICMT_HUMAN" ("PPMT" "pcCMT" "PCCMT" "ICMT")) 
(define-protein "IF1AY_HUMAN" ("eIF-4C" "EIF1AY")) 
(define-protein "IF2B2_HUMAN" ("VICKZ2" "IMP-2" "IGF2BP2" "IMP2")) 
(define-protein "IFNG_HUMAN" ("IFN-gamma" "IFNG")) 
(define-protein "IFRD2_HUMAN" ("IFRD2")) 
(define-protein "IGS21_HUMAN" ("IGSF21" "IgSF21")) 
(define-protein "IL1B_HUMAN" ("IL1B" "Catabolin" "IL1F2")) 
(define-protein "ILF3_HUMAN" ("NF-AT-90" "TCP80" "DRBF" "ILF3" "NF90" "MPHOSPH4" "MPP4" "DRBP76" "NFAR")) 
(define-protein "ILKAP_HUMAN" ("ILKAP")) 
(define-protein "IMA1_HUMAN" ("KPNA2" "RCH1" "SRP1")) 
(define-protein "IMB1_HUMAN" ("NTF97" "KPNB1" "Importin-90" "PTAC97")) 
(define-protein "IQGA2_HUMAN" ("IQGAP2")) 
(define-protein "IQGA3_HUMAN" ("IQGAP3")) 
(define-protein "IRAK1_HUMAN" ("IRAK1" "IRAK-1" "IRAK")) 
(define-protein "IRAK2_HUMAN" ("IRAK2" "IRAK-2")) 
(define-protein "IRF9_HUMAN" ("IRF-9" "ISGF3G" "IRF9")) 
(define-protein "IST1_HUMAN" ("hIST1" "IST1" "KIAA0174")) 
(define-protein "ITA2_HUMAN" ("CD49B" "ITGA2" "GPIa" "CD49b")) 
(define-protein "ITA3_HUMAN" ("GAPB3" "CD49c" "MSK18" "ITGA3" "FRP-2")) 
(define-protein "ITB5_HUMAN" ("ITGB5")) 
(define-protein "IWS1_HUMAN" ("IWS1" "IWS1L")) 
(define-protein "JIP3_HUMAN" ("JIP-3" "JIP3" "MAPK8IP3" "KIAA1066")) 
(define-protein "K1C18_HUMAN" ("Cytokeratin-18" "Keratin-18" "K18" "KRT18" "CK-18" "CYK18")) 
(define-protein "KANL2_HUMAN" ("NSL2" "C12orf41" "KANSL2")) 
(define-protein "KAP2_HUMAN" ("PRKAR2" "PRKAR2A" "PKR2")) 
(define-protein "KBRS2_HUMAN" ("KBRAS2" "NKIRAS2" "KappaB-Ras2")) 
(define-protein "KC1A_HUMAN" ("CSNK1A1" "CK1" "CKI-alpha")) 
(define-protein "KC1D_HUMAN" ("CKId" "CSNK1D" "HCKID" "CKI-delta")) 
(define-protein "KDM4D_HUMAN" ("KDM4D" "JMJD2D" "JHDM3D")) 
(define-protein "KHDR1_HUMAN" ("p68" "SAM68" "KHDRBS1" "Sam68")) 
(define-protein "KI20B_HUMAN" ("KRMP1" "MPHOSPH1" "MPP1" "KIF20B" "CT90")) 
(define-protein "KIF11_HUMAN" ("TRIP-5" "EG5" "KIF11" "TRIP5" "KNSL1")) 
(define-protein "KIF1A_HUMAN" ("hUnc-104" "ATSV" "KIF1A" "C2orf20")) 
(define-protein "KIF2A_HUMAN" ("KNS2" "KIF2A" "hK2" "KIF2" "Kinesin-2")) 
(define-protein "KIF4A_HUMAN" ("KIF4" "KIF4A" "Chromokinesin-A")) 
(define-protein "KIFC1_HUMAN" ("KIFC1" "KNSL2" "HSET")) 
(define-protein "KINH_HUMAN" ("UKHC" "KIF5B" "KNS1" "KNS")) 
(define-protein "KLC1_HUMAN" ("KNS2" "KLC1" "KLC")) 
(define-protein "KLC2_HUMAN" ("KLC2")) 
(define-protein "KLC4_HUMAN" ("KNSL8" "KLC4")) 
(define-protein "KLF3_HUMAN" ("TEF-2" "BKLF" "KLF3")) 
(define-protein "KNTC1_HUMAN" ("HsROD" "KIAA0166" "hRod" "Rod" "KNTC1")) 
(define-protein "KS6A1_HUMAN" ("MAPKAPK-1a" "S6K-alpha-1" "p90S6K" "RSK1" "MAPKAPK1A" "RSK-1" "RPS6KA1" "p90RSK1")) 
(define-protein "KS6A3_HUMAN" ("pp90RSK2" "MAPKAPK-1b" "RPS6KA3" "S6K-alpha-3" "ISPK1" "RSK2" "MAPKAPK1B" "ISPK-1" "RSK-2" "p90RSK3")) 
(define-protein "KS6A4_HUMAN" ("RSKB" "MSK2" "RPS6KA4" "S6K-alpha-4")) 
(define-protein "KS6A5_HUMAN" ("RSKL" "MSK1" "S6K-alpha-5" "RPS6KA5")) 
(define-protein "LAMP1_HUMAN" ("LAMP1" "LAMP-1" "CD107a")) 
(define-protein "LAMP2_HUMAN" ("LAMP2" "LAMP-2" "CD107b")) 
(define-protein "LAP2_HUMAN" ("ERBIN" "Erbin" "LAP2" "ERBB2IP" "KIAA1225")) 
(define-protein "LBR_HUMAN" ("LMN2R" "LBR")) 
(define-protein "LDHA_HUMAN" ("LDHA" "LDH-M" "LDH-A")) 
(define-protein "LEG4_HUMAN" ("Gal-4" "LGALS4" "L36LBP")) 
(define-protein "LGMN_HUMAN" ("PRSC1" "LGMN")) 
(define-protein "LGR5_HUMAN" ("GPR49" "GPR67" "LGR5")) 
(define-protein "LIN7C_HUMAN" ("Veli-3" "LIN7C" "Lin-7C" "MALS-3" "VELI3" "MALS3")) 
(define-protein "LMO7_HUMAN" ("LMO7" "LOMP" "FBX20" "LMO-7" "KIAA0858" "FBXO20")) 
(define-protein "LRBA_HUMAN" ("LRBA" "BGL" "CDC4L" "LBA")) 
(define-protein "LRCH4_HUMAN" ("LRCH4" "LRRN4" "LRRN1" "LRN")) 
(define-protein "LRP10_HUMAN" ("LRP-10" "LRP10")) 
(define-protein "LSG1_HUMAN" ("hLsg1" "LSG1")) 
(define-protein "LTOR3_HUMAN" ("MAPKSP1" "Mp1" "MAP2K1IP1" "LAMTOR3")) 
(define-protein "LYAG_HUMAN" ("GAA")) 
(define-protein "M2OM_HUMAN" ("OGCP" "SLC20A4" "SLC25A11")) 
(define-protein "MAGG1_HUMAN" ("MAGEG1" "NDNL2" "HCA4")) 
(define-protein "MAN1_HUMAN" ("LEMD3" "MAN1")) 
(define-protein "MAP1S_HUMAN" ("MAP-1S" "VCY2IP-1" "C19orf5" "MAP1S" "MAP8" "BPY2IP1" "VCY2IP1")) 
(define-protein "MAPK2_HUMAN" ("MAPKAPK-2" "MK-2" "MK2" "MAPKAP-K2" "MAPKAPK2")) 
(define-protein "MAPK3_HUMAN" ("MAPKAPK-3" "MK-3" "MAPKAPK3" "3pK" "MAPKAP-K3")) 
(define-protein "MAPK5_HUMAN" ("MK-5" "MAPKAP-K5" "MAPKAPK-5" "MAPKAPK5" "PRAK" "MK5")) 
(define-protein "MARE1_HUMAN" ("MAPRE1" "EB1")) 
(define-protein "MARK2_HUMAN" ("MARK2" "EMK1" "Par1b" "EMK-1" "Par-1b")) 
(define-protein "MB12A_HUMAN" ("CFBP" "MVB12A" "FAM125A")) 
(define-protein "MCM2_HUMAN" ("CCNL1" "KIAA0030" "CDCL1" "MCM2" "BM28")) 
(define-protein "MD2L1_HUMAN" ("MAD2" "HsMAD2" "MAD2L1")) 
(define-protein "MDM2_HUMAN" ("MDM2" "Hdm2")) 
(define-protein "MERL_HUMAN" ("Neurofibromin-2" "NF2" "Schwannomerlin" "SCH" "Schwannomin")) 
(define-protein "MIF_HUMAN" ("MMIF" "GIF" "MIF" "GLIF")) 
(define-protein "MIRO1_HUMAN" ("ARHT1" "MIRO-1" "hMiro-1" "RHOT1")) 
(define-protein "MIRO2_HUMAN" ("ARHT2" "MIRO-2" "C16orf39" "RHOT2" "hMiro-2")) 
(define-protein "MK07_HUMAN" ("ERK5" "PRKM7" "ERK-5" "MAPK7" "BMK1" "BMK-1")) 
(define-protein "MK13_HUMAN" ("MAPK13" "PRKM13" "SAPK4")) 
(define-protein "MK14_HUMAN" ("CSBP2" "SAPK2A" "MAPK14" "CSPB1" "CSBP1" "SAPK2a" "CSBP" "MXI2")) 
(define-protein "ML12A_HUMAN" ("MYL12A" "HEL-S-24" "MLC-2B" "MRLC3" "RLC" "MLCB")) 
(define-protein "MMTA2_HUMAN" ("C1orf35" "MMTAG2" "hMMTAG2")) 
(define-protein "MOB1B_HUMAN" ("MOB1B" "MOBKL1A" "Mob1B" "Mob1A" "MOB4A")) 
(define-protein "MOES_HUMAN" ("MSN")) 
(define-protein "MOGS_HUMAN" ("GCS1" "MOGS")) 
(define-protein "MON2_HUMAN" ("SF21" "KIAA1040" "MON2")) 
(define-protein "MPCP_HUMAN" ("SLC25A3" "PHC" "PTP")) 
(define-protein "MPIP1_HUMAN" ("CDC25A")) 
(define-protein "MPIP2_HUMAN" ("CDC25HU2" "CDC25B")) 
(define-protein "MRCKB_HUMAN" ("CDC42BPB" "KIAA1124" "CDC42BP-beta")) 
(define-protein "MRCKG_HUMAN" ("DMPK2" "CDC42BPG" "MRCKG")) 
(define-protein "MRI_HUMAN" ("MRI" "C7orf49")) 
(define-protein "MRP_HUMAN" ("MARCKSL1" "Mac-MARCKS" "MRP" "MLP" "MacMARCKS")) 
(define-protein "MS3L1_HUMAN" ("MSL3L1" "MSL3")) 
(define-protein "MSPD2_HUMAN" ("MOSPD2")) 
(define-protein "MTAP2_HUMAN" ("MAP2" "MAP-2")) 
(define-protein "MUC13_HUMAN" ("MUC-13" "RECC" "MUC13" "DRCC1")) 
(define-protein "MUC18_HUMAN" ("MCAM" "MUC18" "CD146")) 
(define-protein "MVP_HUMAN" ("MVP" "LRP")) 
(define-protein "MX1_HUMAN" ("IFI-78K" "MX1")) 
(define-protein "MY18A_HUMAN" ("MYSPDZ" "KIAA0216" "MYO18A" "MAJN")) 
(define-protein "MYH14_HUMAN" ("MYH14" "KIAA2034")) 
(define-protein "MYH9_HUMAN" ("NMMHC-A" "MYH9" "NMMHC-IIA")) 
(define-protein "MYL6B_HUMAN" ("MLC1sa" "MLC1SA" "MYL6B")) 
(define-protein "MYL6_HUMAN" ("MLC-3" "LC17" "MYL6")) 
(define-protein "MYO1A_HUMAN" ("MYO1A" "BBMI" "MIHC" "MYHL" "BBM-I")) 
(define-protein "MYO1E_HUMAN" ("MYO1E" "Myosin-Ic" "MYO1C")) 
(define-protein "MYO6_HUMAN" ("MYO6" "KIAA0389")) 
(define-protein "MYO7B_HUMAN" ("MYO7B")) 
(define-protein "MYOF_HUMAN" ("KIAA1207" "MYOF" "FER1L3")) 
(define-protein "MYOME_HUMAN" ("KIAA0454" "MMGL" "PDE4DIP" "KIAA0477" "CMYA2")) 
(define-protein "NAA15_HUMAN" ("NARG1" "NAA15" "TBDN100" "Tbdn100" "NATH" "GA19")) 
(define-protein "NAAA_HUMAN" ("NAAA" "ASAHL" "PLT")) 
(define-protein "NACA_HUMAN" ("NAC-alpha" "Alpha-NAC" "NACA")) 
(define-protein "NC2A_HUMAN" ("NC2-alpha" "DRAP1")) 
(define-protein "NEB2_HUMAN" ("Neurabin-II" "Spinophilin" "PPP1R9B" "PPP1R6")) 
(define-protein "NEDD1_HUMAN" ("NEDD1" "NEDD-1")) 
(define-protein "NEDD8_HUMAN" ("Neddylin" "NEDD-8")) 
(define-protein "NEK6_HUMAN" ("NEK6")) 
(define-protein "NEK9_HUMAN" ("NEK9" "NEK8" "NERCC" "KIAA1995" "Nek8")) 
(define-protein "NEUL1_HUMAN" ("NEURL1" "NEURL1A" "RNF67" "NEURL" "h-neu")) 
(define-protein "NEUL2_HUMAN" ("NEURL2" "C20orf163")) 
(define-protein "NEUL4_HUMAN" ("KIAA1787" "NEURL4")) 
(define-protein "NEUR1_HUMAN" ("NANH" "NEU1")) 
(define-protein "NIBL1_HUMAN" ("FAM129B" "MINERVA" "Meg-3" "C9orf88")) 
(define-protein "NICA_HUMAN" ("NCSTN" "KIAA0253")) 
(define-protein "NIPS1_HUMAN" ("NipSnap1" "NIPSNAP1")) 
(define-protein "NIPS2_HUMAN" ("NipSnap2" "GBAS" "NIPSNAP2")) 
(define-protein "NLTP_HUMAN" ("SCP2" "SCP-chi" "SCP-2" "NSL-TP" "SCPX" "SCP-X")) 
(define-protein "NOC2L_HUMAN" ("NOC2L" "NIR")) 
(define-protein "NOL7_HUMAN" ("NOP27" "C6orf90" "NOL7")) 
(define-protein "NOP16_HUMAN" ("NOP16")) 
(define-protein "NO_VALUE" NIL) 
(define-protein "NPM_HUMAN" ("NPM1" "Numatrin" "NPM")) 
(define-protein "NR4A1_HUMAN" ("NAK1" "Nur77" "NR4A1" "HMR" "ST-59" "GFRP1")) 
(define-protein "NRBP_HUMAN" ("NRBP" "NRBP1" "BCON3")) 
(define-protein "NRF1_HUMAN" ("Alpha-pal" "NRF-1" "NRF1")) 
(define-protein "NSDHL_HUMAN" ("H105E3" "NSDHL")) 
(define-protein "NSF_HUMAN" ("NSF")) 
(define-protein "NTKL_HUMAN" ("TEIF" "CVAK90" "GKLP" "SCYL1" "TAPK" "TRAP" "NTKL")) 
(define-protein "NTPCR_HUMAN" ("C1orf57" "NTPase" "NTPCR")) 
(define-protein "NUDC_HUMAN" ("NUDC")) 
(define-protein "NUDT4_HUMAN" ("DIPP-2" "NUDT4" "DIPP2" "KIAA0487")) 
(define-protein "NUP50_HUMAN" ("NPAP60L" "NUP50")) 
(define-protein "Neuralized" NIL) 
(define-protein "OSB10_HUMAN" ("ORP10" "OSBP9" "ORP-10" "OSBPL10")) 
(define-protein "OSB11_HUMAN" ("OSBP12" "ORP11" "ORP-11" "OSBPL11")) 
(define-protein "OSBL3_HUMAN" ("ORP3" "ORP-3" "OSBPL3" "KIAA0704" "OSBP3")) 
(define-protein "OSBL8_HUMAN" ("ORP-8" "OSBP10" "KIAA1451" "OSBPL8" "ORP8")) 
(define-protein "OSBP1_HUMAN" ("OSBP1" "OSBP")) 
(define-protein "OTU6B_HUMAN" ("DUBA5" "DUBA-5" "OTUD6B")) 
(define-protein "OXSR1_HUMAN" ("KIAA1101" "OXSR1" "OSR1")) 
(define-protein "P2R3B_HUMAN" ("PPP2R3B" "PPP2R3L")) 
(define-protein "P4R3A_HUMAN" ("SMEK1" "KIAA2010" "PPP4R3A" "PP4R3A")) 
(define-protein "P73_HUMAN" ("P73" "TP73")) 
(define-protein "P85B_HUMAN" ("PIK3R2")) 
(define-protein "PA24A_HUMAN" ("cPLA2" "CPLA2" "PLA2G4A" "Lysophospholipase" "PLA2G4")) 
(define-protein "PA24B_HUMAN" ("PLA2G4B" "cPLA2-beta")) 
(define-protein "PACN2_HUMAN" ("PACSIN2" "Syndapin-2" "Syndapin-II")) 
(define-protein "PAK2-PAK4" NIL) 
(define-protein "PAK3_HUMAN" ("Oligophrenin-3" "PAK-3" "OPHN3" "Beta-PAK" "PAK3")) 
(define-protein "PAK4_HUMAN" ("PAK-4" "KIAA1142" "PAK4")) 
(define-protein "PCAT2_HUMAN" ("LPCAT-2" "AGPAT11" "AYTL1" "LysoPAFAT" "LPAAT-alpha" "LPCAT2")) 
(define-protein "PCLO_HUMAN" ("KIAA0559" "Aczonin" "PCLO" "ACZ")) 
(define-protein "PCTL_HUMAN" ("StARD10" "PCTP-L" "SDCCAG28" "STARD10")) 
(define-protein "PCYOX_HUMAN" ("PCL1" "PCYOX1" "KIAA0908")) 
(define-protein "PDC10_HUMAN" ("CCM3" "TFAR15" "PDCD10")) 
(define-protein "PDCD4_HUMAN" ("H731" "PDCD4")) 
(define-protein "PDCD6_HUMAN" ("ALG2" "PDCD6")) 
(define-protein "PDE6D_HUMAN" ("PDE6D" "PDED")) 
(define-protein "PDS5A_HUMAN" ("PDS5A" "SCC-112" "PDS5" "KIAA0648")) 
(define-protein "PDS5B_HUMAN" ("PDS5B" "APRIN" "KIAA0979" "AS3")) 
(define-protein "PDZD8_HUMAN" ("PDZK8" "PDZD8")) 
(define-protein "PEBP1_HUMAN" ("PBP" "HCNPpp" "PEBP1" "PEBP" "HCNP" "RKIP" "PEBP-1")) 
(define-protein "PEBP4_HUMAN" ("CORK1" "hPEBP4" "PEBP4" "PEBP-4")) 
(define-protein "PERQ2_HUMAN" ("GIGYF2" "KIAA0642" "PERQ2" "TNRC15")) 
(define-protein "PFKAL_HUMAN" ("ATP-PFK" "PFK-B" "PFK-L" "Phosphohexokinase" "PFKL")) 
(define-protein "PFKAP_HUMAN" ("PFKF" "PFK-C" "ATP-PFK" "Phosphohexokinase" "PFKP" "PFK-P")) 
(define-protein "PGAM1_HUMAN" ("PGAMA" "PGAM-B" "PGAM1")) 
(define-protein "PGAM5_HUMAN" ("PGAM5")) 
(define-protein "PGTB1_HUMAN" ("PGGT1B" "GGTase-I-beta")) 
(define-protein "PHAR4_HUMAN" ("PHACTR4")) 
(define-protein "PHB2_HUMAN" ("BAP" "D-prohibitin" "PHB2" "REA")) 
(define-protein "PHB_HUMAN" ("PHB")) 
(define-protein "PHLA2_HUMAN" ("PHLDA2" "BWR1C" "p17-BWR1C" "HLDA2" "TSSC3" "IPL")) 
(define-protein "PHLA3_HUMAN" ("PHLDA3" "TIH1")) 
(define-protein "PHLB1_HUMAN" ("PHLDB1" "KIAA0638" "LL5A")) 
(define-protein "PI3R4_HUMAN" ("PIK3R4")) 
(define-protein "PICK1_HUMAN" ("PRKCABP" "PICK1")) 
(define-protein "PIGS_HUMAN" ("PIGS")) 
(define-protein "PIN1_HUMAN" ("PIN1")) 
(define-protein "PIN4_HUMAN" ("hPar17" "Par14" "hPar14" "Parvulin-17" "Par17" "Parvulin-14" "hEPVH" "PIN4")) 
(define-protein "PIPNB_HUMAN" ("PI-TP-beta" "PITPNB")) 
(define-protein "PIP_HUMAN" ("gp17" "GCDFP-15" "SABP" "PIP" "GPIP4" "GCDFP15")) 
(define-protein "PITM1_HUMAN" ("NIR-2" "PITPNM" "PITPNM1" "NIR2" "DRES9")) 
(define-protein "PKHA1_HUMAN" ("PLEKHA1" "TAPP1" "TAPP-1")) 
(define-protein "PKHA2_HUMAN" ("PLEKHA2" "TAPP2" "TAPP-2")) 
(define-protein "PKHA5_HUMAN" ("KIAA1686" "PEPP2" "PLEKHA5" "PEPP-2")) 
(define-protein "PKHA7_HUMAN" ("PLEKHA7")) 
(define-protein "PKHF2_HUMAN" ("EAPF" "PLEKHF2" "ZFYVE18" "Phafin-2" "Phafin2")) 
(define-protein "PKHG3_HUMAN" ("KIAA0599" "PLEKHG3")) 
(define-protein "PKHH1_HUMAN" ("KIAA1200" "PLEKHH1")) 
(define-protein "PLEC_HUMAN" ("Plectin-1" "PLTN" "PCN" "PLEC" "PLEC1" "HD1")) 
(define-protein "PLEK2_HUMAN" ("PLEK2")) 
(define-protein "PLIN3_HUMAN" ("TIP47" "M6PRBP1" "PP17" "PLIN3")) 
(define-protein "PLLP_HUMAN" ("PMLP" "PLLP" "TM4SF11")) 
(define-protein "PLSI_HUMAN" ("I-plastin" "PLS1")) 
(define-protein "PMF1_HUMAN" ("PMF1" "PMF-1")) 
(define-protein "PML_HUMAN" ("Promyelocytic leukemia protein" "RING finger protein")) 
(define-protein "POTEE_HUMAN" ("A26C1A" "POTE2" "POTEE" "POTE-2")) 
(define-protein "PP1A_HUMAN" ("PP-1A" "PPP1CA" "PPP1A")) 
(define-protein "PP1B_HUMAN" ("PP-1B" "PPP1CB" "PPP1CD")) 
(define-protein "PP1R7_HUMAN" ("SDS22" "PPP1R7")) 
(define-protein "PP2A" NIL) 
(define-protein "PP2AA_HUMAN" ("RP-C" "PPP2CA" "PP2A-alpha")) 
(define-protein "PP2AB_HUMAN" ("PP2A-beta" "PPP2CB")) 
(define-protein "PPAC_HUMAN" ("LMW-PTP" "LMW-PTPase" "ACP1")) 
(define-protein "PPARG_HUMAN" ("PPAR-gamma" "PPARG" "NR1C3")) 
(define-protein "PPCT_HUMAN" ("STARD2" "StARD2" "PC-TP" "PCTP")) 
(define-protein "PPGB_HUMAN" ("CTSA" "PPCA" "PPGB")) 
(define-protein "PPM1A_HUMAN" ("PPM1A" "PPPM1A" "PP2C-alpha")) 
(define-protein "PPM1B_HUMAN" ("PP2C-beta" "PP2CB" "PPM1B")) 
(define-protein "PPP5_HUMAN" ("PP-T" "PP5" "PPP5" "PPP5C" "PPT")) 
(define-protein "PPT1_HUMAN" ("PPT1" "PPT-1" "PPT")) 
(define-protein "PRAF1_HUMAN" ("RABAC1" "PRA1" "PRAF1")) 
(define-protein "PRAF2_HUMAN" ("PRAF2")) 
(define-protein "PRKDC_HUMAN" ("DNA-PK" "HYRC" "DNPK1" "p460" "PRKDC" "DNA-PKcs" "HYRC1")) 
(define-protein "PRR15_HUMAN" ("PRR15")) 
(define-protein "PSB2_HUMAN" ("PSMB2")) 
(define-protein "PSMD4_HUMAN" ("ASF" "MCB1" "AF" "PSMD4")) 
(define-protein "PSN1_HUMAN" ("AD3" "PS-1" "PS1-CTF12" "PSEN1" "PS1" "PSNL1")) 
(define-protein "PTN9_HUMAN" ("PTPN9")) 
(define-protein "PTTG_HUMAN" ("PTTG1IP" "PBF" "C21orf3" "C21orf1")) 
(define-protein "R51A1_HUMAN" ("RAD51AP1" "PIR51")) 
(define-protein "RAB10_HUMAN" ("RAB10")) 
(define-protein "RAB12_HUMAN" ("RAB12")) 
(define-protein "RAB13_HUMAN" ("RAB13")) 
(define-protein "RAB14_HUMAN" ("RAB14")) 
(define-protein "RAB15_HUMAN" ("RAB15")) 
(define-protein "RAB17_HUMAN" ("RAB17")) 
(define-protein "RAB18_HUMAN" ("RAB18")) 
(define-protein "RAB19_HUMAN" ("RAB19B" "RAB19")) 
(define-protein "RAB1A_HUMAN" ("RAB1A" "RAB1")) 
(define-protein "RAB1B_HUMAN" ("RAB1B")) 
(define-protein "RAB20_HUMAN" ("RAB20")) 
(define-protein "RAB21_HUMAN" ("RAB21" "KIAA0118")) 
(define-protein "RAB23_HUMAN" ("RAB23")) 
(define-protein "RAB25_HUMAN" ("CATX8" "RAB25" "CATX-8")) 
(define-protein "RAB2A_HUMAN" ("RAB2A" "RAB2")) 
(define-protein "RAB35_HUMAN" ("RAB35" "RAB1C" "RAY")) 
(define-protein "RAB43_HUMAN" ("RAB41" "RAB43")) 
(define-protein "RAB5B_HUMAN" ("RAB5B")) 
(define-protein "RAB5C_HUMAN" ("L1880" "RABL" "RAB5L" "RAB5C")) 
(define-protein "RAB6A_HUMAN" ("RAB6" "RAB6A" "Rab-6")) 
(define-protein "RAB7A_HUMAN" ("RAB7A" "RAB7")) 
(define-protein "RAB8A_HUMAN" ("RAB8" "MEL" "RAB8A")) 
(define-protein "RAB9A_HUMAN" ("RAB9A" "RAB9")) 
(define-protein "RABE1_HUMAN" ("RABPT5" "RABPT5A" "RABEP1" "Rabaptin-5alpha" "Rabaptin-5" "Rabaptin-4" "RAB5EP")) 
(define-protein "RABL3_HUMAN" ("RABL3")) 
(define-protein "RABL6_HUMAN" ("RBEL1" "RABL6" "PARF" "C9orf86")) 
(define-protein "RADI_HUMAN" ("RDX")) 
(define-protein "RAGP1_HUMAN" ("SD" "RanGAP1" "RANGAP1" "KIAA1835")) 
(define-protein "RAI3_HUMAN" ("RAI3" "RAIG-1" "GPRC5A" "GPCR5A" "RAIG1")) 
(define-protein "RAIN_HUMAN" ("Rain" "RASIP1")) 
(define-protein "RANG_HUMAN" ("RanBP1" "RANBP1")) 
(define-protein "RAN_HUMAN" ("ARA24" "RAN")) 
(define-protein "RAP2B_HUMAN" ("RAP2B")) 
(define-protein "RASF1_HUMAN" ("RASSF1" "RDA32")) 
(define-protein "RASF2_HUMAN" ("RASSF2" "KIAA0168")) 
(define-protein "RASF5_HUMAN" ("NORE1" "RASSF5" "RAPL")) 
(define-protein "RB11A_HUMAN" ("RAB11" "RAB11A" "YL8" "Rab-11")) 
(define-protein "RB33B_HUMAN" ("RAB33B")) 
(define-protein "RB3GP_HUMAN" ("KIAA0066" "RAB3GAP" "Rab3-GAP" "RAB3GAP1")) 
(define-protein "RBGPR_HUMAN" ("Rab3-GAP150" "KIAA0839" "RGAP-iso" "RAB3GAP2")) 
(define-protein "RBL2A_HUMAN" ("RABL2A")) 
(define-protein "RBP17_HUMAN" ("RANBP17")) 
(define-protein "RB_HUMAN" ("pp110" "Rb" "pRb" "p105-Rb" "RB1")) 
(define-protein "RCAS1_HUMAN" ("RCAS1" "EBAG9")) 
(define-protein "RCD1_HUMAN" ("CNOT9" "RCD1" "RQCD1" "Rcd-1")) 
(define-protein "REPS1_HUMAN" ("REPS1")) 
(define-protein "RGAP1_HUMAN" ("RACGAP1" "MGCRACGAP" "CYK4" "MgcRacGAP" "HsCYK-4" "KIAA1478")) 
(define-protein "RGDSR_HUMAN" ("RGL4" "hRGR" "RGR")) 
(define-protein "RGS12_HUMAN" ("RGS12")) 
(define-protein "RGS14_HUMAN" ("RGS14")) 
(define-protein "RHEB_HUMAN" ("RHEB" "RHEB2")) 
(define-protein "RHG01_HUMAN" ("p50-RhoGAP" "CDC42GAP" "RHOGAP1" "ARHGAP1")) 
(define-protein "RHG08_HUMAN" ("ARHGAP8")) 
(define-protein "RHG17_HUMAN" ("RICH-1" "ARHGAP17" "RICH1")) 
(define-protein "RHG18_HUMAN" ("ARHGAP18" "MacGAP")) 
(define-protein "RHOD_HUMAN" ("RHOD" "ARHD" "RhoHP1")) 
(define-protein "RHOF_HUMAN" ("RIF" "RHOF" "ARHF")) 
(define-protein "RIC8A_HUMAN" ("RIC8A")) 
(define-protein "RIF1_HUMAN" ("RIF1")) 
(define-protein "RIMS1_HUMAN" ("RAB3IP2" "RIM1" "KIAA0340" "RIMS1")) 
(define-protein "RINT1_HUMAN" ("RINT1" "HsRINT-1" "RINT-1")) 
(define-protein "RKIP" NIL) 
(define-protein "RL22_HUMAN" ("EAP" "RPL22")) 
(define-protein "RL23A_HUMAN" ("RPL23A")) 
(define-protein "RL29_HUMAN" ("RPL29")) 
(define-protein "RL30_HUMAN" ("RPL30")) 
(define-protein "RL39L_HUMAN" ("RPL39L" "RPL39L1")) 
(define-protein "RMND1_HUMAN" ("C6orf96" "RMND1")) 
(define-protein "RN115_HUMAN" ("RNF115" "ZNF364")) 
(define-protein "RNAP" ("RNAPII")) 
(define-protein "RNH2B_HUMAN" ("DLEU8" "AGS2" "RNASEH2B")) 
(define-protein "RPGF2_HUMAN" ("KIAA0313" "PDZ-GEF1" "PDZGEF1" "RA-GEF-1" "RAPGEF2" "CNrasGEF" "NRAPGEP")) 
(define-protein "RPGF4_HUMAN" ("CGEF2" "RAPGEF4" "cAMP-GEFII" "EPAC2")) 
(define-protein "RPN1_HUMAN" ("RPN-I" "Ribophorin-1" "RPN1")) 
(define-protein "RPN2_HUMAN" ("RPN-II" "RIBIIR" "Ribophorin-2" "RPN2")) 
(define-protein "RS20_HUMAN" ("RPS20")) 
(define-protein "RS28_HUMAN" ("RPS28")) 
(define-protein "RSF1_HUMAN" ("RSF1" "Rsf-1" "HBXAP" "XAP8")) 
(define-protein "RSLBA_HUMAN" ("RASL11A")) 
(define-protein "RSRP1_HUMAN" ("RSRP1" "C1orf63")) 
(define-protein "RSU1_HUMAN" ("Rsu-1" "RSP1" "RSP-1" "RSU1")) 
(define-protein "RTN3_HUMAN" ("RTN3" "HAP" "NSPL2" "ASYIP" "NSPLII")) 
(define-protein "RUFY1_HUMAN" ("RABIP4" "RUFY1" "ZFYVE12")) 
(define-protein "RUXE_HUMAN" ("SmE" "Sm-E" "SNRPE" "snRNP-E")) 
(define-protein "Rassf5" NIL) 
(define-protein "S2533_HUMAN" ("BMSC-MCP" "SLC25A33" "HuBMSC-MCP")) 
(define-protein "S61A1_HUMAN" ("SEC61A1" "SEC61A")) 
(define-protein "SAP3_HUMAN" ("SAP-3" "GM2-AP" "GM2A")) 
(define-protein "SAP_HUMAN" ("SAP-2" "SAP-1" "Saposin-B" "PSAP" "Saposin-D" "Saposin-C" "Co-beta-glucosidase" "Saposin-A" "Dispersin" "Saposin-B-Val" "GLBA" "SAP1" "CSAct")) 
(define-protein "SAR1A_HUMAN" ("SARA" "SAR1A" "SAR1" "SARA1")) 
(define-protein "SARNP_HUMAN" ("SARNP" "HCC1")) 
(define-protein "SART3_HUMAN" ("TIP110" "SART3" "KIAA0156" "SART-3" "Tip110")) 
(define-protein "SBP1_HUMAN" ("SBP56" "SBP" "SELENBP1" "SP56")) 
(define-protein "SC22B_HUMAN" ("ERS-24" "SEC22L1" "SEC22B" "ERS24")) 
(define-protein "SC61B_HUMAN" ("SEC61B")) 
(define-protein "SC61G_HUMAN" ("SEC61G")) 
(define-protein "SCAM1_HUMAN" ("SCAMP" "SCAMP1")) 
(define-protein "SCAM2_HUMAN" ("SCAMP2")) 
(define-protein "SCAM3_HUMAN" ("C1orf3" "SCAMP3" "PROPIN1")) 
(define-protein "SCAM4_HUMAN" ("SCAMP4")) 
(define-protein "SCFD1_HUMAN" ("STXBP1L2" "C14orf163" "KIAA0917" "SCFD1" "Sly1p")) 
(define-protein "SCFD2_HUMAN" ("STXBP1L1" "SCFD2")) 
(define-protein "SCPDL_HUMAN" ("SCCPDH")) 
(define-protein "SCRB2_HUMAN" ("LIMPII" "LIMP2" "LGP85" "CD36L2" "CD36" "SCARB2")) 
(define-protein "SDCB1_HUMAN" ("SYCL" "SDCBP" "MDA9" "TACIP18" "MDA-9")) 
(define-protein "SEC20_HUMAN" ("NIP1" "TRG-8" "BNIP1" "SEC20L")) 
(define-protein "SEP10_HUMAN" ("SEPT10")) 
(define-protein "SEP11_HUMAN" ("SEPT11")) 
(define-protein "SEP14_HUMAN" ("SEPT14")) 
(define-protein "SEPT2_HUMAN" ("NEDD5" "NEDD-5" "KIAA0158" "DIFF6" "SEPT2")) 
(define-protein "SEPT7_HUMAN" ("SEPT7" "CDC10")) 
(define-protein "SEPT8_HUMAN" ("SEPT8" "KIAA0202")) 
(define-protein "SEPT9_HUMAN" ("KIAA0991" "SEPT9" "MSF")) 
(define-protein "SERA_HUMAN" ("PGDH3" "3-PGDH" "PHGDH")) 
(define-protein "SFT2B_HUMAN" ("SFT2D2")) 
(define-protein "SFT2C_HUMAN" ("SFT2D3")) 
(define-protein "SFXN1_HUMAN" ("TCC" "SFXN1")) 
(define-protein "SGK3_HUMAN" ("CISK" "SGKL" "SGK3")) 
(define-protein "SGMR1_HUMAN" ("SR-BP" "OPRS1" "hSigmaR1" "Sigma1-receptor" "SIG-1R" "SIGMAR1" "SRBP" "Sigma1R")) 
(define-protein "SGPL1_HUMAN" ("SGPL1" "KIAA1252" "hSPL" "S1PL")) 
(define-protein "SH23A_HUMAN" ("SH2D3A" "NSP1")) 
(define-protein "SH3G2_HUMAN" ("CNSA2" "Endophilin-1" "EEN-B1" "SH3D2A" "SH3GL2")) 
(define-protein "SH3K1_HUMAN" ("CIN85" "SH3KBP1" "HSB-1" "CD2BP3")) 
(define-protein "SHB_HUMAN" ("SHB")) 
(define-protein "SHD_HUMAN" ("SHD")) 
(define-protein "SHLB1_HUMAN" ("KIAA0491" "Bif-1" "SH3GLB1")) 
(define-protein "SHLB2_HUMAN" ("KIAA1848" "SH3GLB2")) 
(define-protein "SHOC2_HUMAN" ("SHOC2" "KIAA0862")) 
(define-protein "SIR1_HUMAN" ("SIRT1" "SIR2L1")) 
(define-protein "SKP1_HUMAN" ("SIII" "OCP-II" "OCP-2" "TCEB1L" "p19A" "EMC19" "SKP1" "OCP2" "p19skp1" "SKP1A")) 
(define-protein "SLAI2_HUMAN" ("SLAIN2" "KIAA1458")) 
(define-protein "SMAD2_HUMAN" ("Smad2" "MADH2" "hSMAD2" "JV18-1" "SMAD2" "hMAD-2" "MADR2")) 
(define-protein "SMAD4_HUMAN" ("Smad4" "DPC4" "MADH4" "hSMAD4" "SMAD4")) 
(define-protein "SMC1A_HUMAN" ("SMC1A" "SMC1" "Sb1.8" "SMC1L1" "SB1.8" "SMC-1-alpha" "SMC-1A" "DXS423E" "KIAA0178")) 
(define-protein "SMC2_HUMAN" ("SMC-2" "hCAP-E" "SMC2" "SMC2L1" "CAPE")) 
(define-protein "SMC3_HUMAN" ("BMH" "Bamacan" "CSPG6" "SMC3L1" "SMC3" "SMC-3" "hCAP" "BAM")) 
(define-protein "SMC4_HUMAN" ("SMC4L1" "SMC-4" "SMC4" "CAPC" "hCAP-C")) 
(define-protein "SMUF2_HUMAN" ("hSMURF2" "SMURF2")) 
(define-protein "SNAA_HUMAN" ("NAPA" "SNAP-alpha" "SNAPA")) 
(define-protein "SNAG_HUMAN" ("SNAPG" "SNAP-gamma" "NAPG")) 
(define-protein "SNAPN_HUMAN" ("SNAPAP" "BLOC1S7" "SNAP25BP" "SNAPIN")) 
(define-protein "SNF8_HUMAN" ("SNF8" "EAP30" "hVps22")) 
(define-protein "SNG2_HUMAN" ("SYNGR2" "Cellugyrin")) 
(define-protein "SNP23_HUMAN" ("SNAP23" "SNAP-23")) 
(define-protein "SNP29_HUMAN" ("SNAP29" "SNAP-29")) 
(define-protein "SNPH_HUMAN" ("SNPH" "KIAA0374")) 
(define-protein "SNTB2_HUMAN" ("D16S2531E" "SNTL" "SNT2B2" "SNTB2" "Syntrophin-like" "Syntrophin-3" "SNT3")) 
(define-protein "SNX12_HUMAN" ("SNX12")) 
(define-protein "SNX13_HUMAN" ("SNX13" "KIAA0713" "RGS-PX1")) 
(define-protein "SNX14_HUMAN" ("SNX14")) 
(define-protein "SNX15_HUMAN" ("SNX15")) 
(define-protein "SNX17_HUMAN" ("SNX17" "KIAA0064")) 
(define-protein "SNX1_HUMAN" ("SNX1")) 
(define-protein "SNX27_HUMAN" ("KIAA0488" "SNX27")) 
(define-protein "SNX2_HUMAN" ("SNX2" "TRG-9")) 
(define-protein "SNX3_HUMAN" ("SNX3")) 
(define-protein "SNX4_HUMAN" ("SNX4")) 
(define-protein "SNX5_HUMAN" ("SNX5")) 
(define-protein "SNX6_HUMAN" ("SNX6")) 
(define-protein "SNX7_HUMAN" ("SNX7")) 
(define-protein "SNX8_HUMAN" ("SNX8")) 
(define-protein "SNX9_HUMAN" ("SNX9" "SH3PX1" "SH3PXD3A")) 
(define-protein "SO1B3_HUMAN" ("SLCO1B3" "OATP-8" "SLC21A8" "LST2" "OATP1B3" "OATP8" "LST-2")) 
(define-protein "SORCN_HUMAN" ("V19" "SRI" "CP-22" "CP22")) 
(define-protein "SP16H_HUMAN" ("FACTp140" "FACTP140" "FACT140" "hSPT16" "SUPT16H")) 
(define-protein "SPAS2_HUMAN" ("SCR59" "p59scr" "SPATS2" "SPATA10")) 
(define-protein "SPC24_HUMAN" ("SPBC24" "hSpc24" "SPC24")) 
(define-protein "SPC25_HUMAN" ("SPBC25" "hSpc25" "SPC25")) 
(define-protein "SPE39_HUMAN" ("VIPAR" "hSPE-39" "C14orf133" "SPE39" "VIPAS39")) 
(define-protein "SPRR4_HUMAN" ("SPRR4")) 
(define-protein "SPXN4_HUMAN" ("SPANX-N4" "SPANXN4")) 
(define-protein "SPY2_HUMAN" ("Spry-2" "SPRY2")) 
(define-protein "SQRD_HUMAN" ("SQRDL" "SQOR")) 
(define-protein "SRC8_HUMAN" ("CTTN" "EMS1" "Amplaxin")) 
(define-protein "SRP09_HUMAN" ("SRP9")) 
(define-protein "SRP14_HUMAN" ("SRP14")) 
(define-protein "SRP19_HUMAN" ("SRP19")) 
(define-protein "SRP54_HUMAN" ("SRP54")) 
(define-protein "SRP72_HUMAN" ("SRP72")) 
(define-protein "SRPK1_HUMAN" ("SRPK1")) 
(define-protein "SRSF5_HUMAN" ("SFRS5" "SRSF5" "HRS" "SRP40")) 
(define-protein "SRSF9_HUMAN" ("SRSF9" "SFRS9" "SRP30C")) 
(define-protein "SRTD1_HUMAN" ("SERTAD1" "TRIP-Br1" "SEI1" "SEI-1")) 
(define-protein "SSRP1_HUMAN" ("FACTp80" "FACT80" "SSRP1" "hSSRP1" "T160")) 
(define-protein "STAG1_HUMAN" ("STAG1" "SA1")) 
(define-protein "STALP_HUMAN" ("AMSHLP" "KIAA1373" "STAMBPL1" "AMSH-LP")) 
(define-protein "STAM1_HUMAN" ("STAM1" "STAM-1" "STAM")) 
(define-protein "STAR5_HUMAN" ("STARD5" "StARD5")) 
(define-protein "STAR7_HUMAN" ("StARD7" "GTT1" "STARD7")) 
(define-protein "STK26_HUMAN" ("STK26" "MST4" "MASK" "MST-4")) 
(define-protein "STK38_HUMAN" ("NDR1" "STK38")) 
(define-protein "STK39_HUMAN" ("DCHT" "SPAK" "STK39")) 
(define-protein "STML2_HUMAN" ("SLP-2" "STOML2" "Paratarg-7" "SLP2")) 
(define-protein "STRUM_HUMAN" ("KIAA0196" "Strumpellin")) 
(define-protein "STX12_HUMAN" ("STX12")) 
(define-protein "STX16_HUMAN" ("STX16" "Syn16")) 
(define-protein "STX17_HUMAN" ("STX17")) 
(define-protein "STX18_HUMAN" ("STX18")) 
(define-protein "STX3_HUMAN" ("STX3A" "STX3")) 
(define-protein "STX4_HUMAN" ("STX4A" "STX4")) 
(define-protein "STX5_HUMAN" ("STX5" "STX5A")) 
(define-protein "STX7_HUMAN" ("STX7")) 
(define-protein "STXB2_HUMAN" ("UNC18B" "Unc18-2" "Unc-18B" "STXBP2")) 
(define-protein "STXB3_HUMAN" ("PSP" "Unc18-3" "Unc-18C" "STXBP3")) 
(define-protein "SWP70_HUMAN" ("SWAP70" "KIAA0640" "SWAP-70")) 
(define-protein "SYJ2B_HUMAN" ("SYNJ2BP" "OMP25")) 
(define-protein "SYNE2_HUMAN" ("Syne-2" "SYNE2" "NUA" "KIAA1011")) 
(define-protein "TAGL2_HUMAN" ("TAGLN2" "KIAA0120")) 
(define-protein "TAOK1_HUMAN" ("hKFC-B" "MAP3K16" "hTAOK1" "PSK2" "MARKK" "TAOK1" "PSK-2" "KIAA1361")) 
(define-protein "TAOK3_HUMAN" ("TAOK3" "DPK" "JIK" "MAP3K18" "hKFC-A" "KDS")) 
(define-protein "TAP1_HUMAN" ("Y3" "ABCB2" "APT1" "PSF1" "TAP1" "RING4" "PSF-1")) 
(define-protein "TAP2_HUMAN" ("Y1" "ABCB3" "APT2" "RING11" "PSF2" "TAP2" "PSF-2")) 
(define-protein "TB10B_HUMAN" ("TBC1D10B" "Rab27A-GAP-beta")) 
(define-protein "TB22B_HUMAN" ("C6orf197" "TBC1D22B")) 
(define-protein "TBC15_HUMAN" ("TBC1D15" "Rab7-GAP")) 
(define-protein "TBC17_HUMAN" ("TBC1D17")) 
(define-protein "TBC9B_HUMAN" ("TBC1D9B" "KIAA0676")) 
(define-protein "TBCD1_HUMAN" ("TBC1D1" "KIAA1108")) 
(define-protein "TBCD4_HUMAN" ("TBC1D4" "AS160" "KIAA0603")) 
(define-protein "TCPH_HUMAN" ("CCT-eta" "CCT7" "CCTH" "TCP-1-eta" "NIP7-1")) 
(define-protein "TEC_HUMAN" ("TEC" "PSCTK4")) 
(define-protein "TELO2_HUMAN" ("TELO2" "hCLK2" "KIAA0683")) 
(define-protein "TFIP8_HUMAN" ("MDC-3.13" "NDED" "SCC-S2" "TNFAIP8")) 
(define-protein "TGFA1_HUMAN" ("TRAP-1" "TRAP1" "TGFBRAP1")) 
(define-protein "TIF1A_HUMAN" ("RNF82" "TIF1-alpha" "TRIM24" "TIF1" "TIF1A")) 
(define-protein "TIF1B_HUMAN" ("KRIP-1" "RNF96" "TRIM28" "KAP1" "KAP-1" "TIF1B" "TIF1-beta")) 
(define-protein "TLN2_HUMAN" ("TLN2" "KIAA0320")) 
(define-protein "TLR2_HUMAN" ("TIL4" "CD282" "TLR2")) 
(define-protein "TLR9_HUMAN" ("CD289" "TLR9")) 
(define-protein "TM109_HUMAN" ("Mitsugumin-23" "TMEM109" "Mg23")) 
(define-protein "TM252_HUMAN" ("TMEM252" "C9orf71")) 
(define-protein "TM9S1_HUMAN" ("TM9SF1" "hMP70")) 
(define-protein "TMA7_HUMAN" ("CCDC72" "TMA7")) 
(define-protein "TMED1_HUMAN" ("p24gamma1" "IL1RL1L" "IL1RL1LG" "Tp24" "TMED1")) 
(define-protein "TMM33_HUMAN" ("DB83" "TMEM33")) 
(define-protein "TMOD2_HUMAN" ("NTMOD" "N-Tmod" "TMOD2")) 
(define-protein "TMOD3_HUMAN" ("U-Tmod" "TMOD3")) 
(define-protein "TNFA_HUMAN" ("ICD2" "ICD1" "TNFA" "Cachectin" "NTF" "TNFSF2" "TNF-a" "TNF" "TNF-alpha")) 
(define-protein "TNK1_HUMAN" ("TNK1")) 
(define-protein "TOM1_HUMAN" ("TOM1")) 
(define-protein "TOM34_HUMAN" ("URCC3" "hTom34" "TOMM34")) 
(define-protein "TOM70_HUMAN" ("KIAA0719" "TOMM70A" "TOM70")) 
(define-protein "TPD52_HUMAN" ("TPD52")) 
(define-protein "TPD54_HUMAN" ("TPD52L2" "hD54")) 
(define-protein "TPM3_HUMAN" ("hTM5" "TPM3" "Tropomyosin-5" "Tropomyosin-3" "Gamma-tropomyosin")) 
(define-protein "TPPC3_HUMAN" ("BET3" "TRAPPC3")) 
(define-protein "TPPC4_HUMAN" ("Synbindin" "SBDN" "TRAPPC4")) 
(define-protein "TPPC5_HUMAN" ("TRAPPC5")) 
(define-protein "TPR_HUMAN" ("Megator" "TPR")) 
(define-protein "TPX2_HUMAN" ("p100" "DIL-2" "DIL2" "TPX2" "C20orf2" "C20orf1" "HCA519")) 
(define-protein "TRAF6_HUMAN" ("TRAF6" "RNF85")) 
(define-protein "TRI44_HUMAN" ("TRIM44" "DIPB")) 
(define-protein "TRRAP_HUMAN" ("TRRAP" "PAF400" "STAF40" "PAF350/400")) 
(define-protein "TS101_HUMAN" ("TSG101")) 
(define-protein "TSC1_HUMAN" ("KIAA0243" "TSC" "TSC1")) 
(define-protein "TSN8_HUMAN" ("TM4SF3" "Tspan-8" "TSPAN8")) 
(define-protein "TT39B_HUMAN" ("TTC39B" "C9orf52")) 
(define-protein "TTC19_HUMAN" ("TTC19")) 
(define-protein "TTC1_HUMAN" ("TPR1" "TTC1")) 
(define-protein "TTI1_HUMAN" ("SMG10" "TTI1" "KIAA0406")) 
(define-protein "TTLL7_HUMAN" ("TTLL7")) 
(define-protein "TXLNA_HUMAN" ("TXLNA" "TXLN")) 
(define-protein "TXLNG_HUMAN" ("TXLNG" "FIAT" "LSR5" "CXorf15" "ELRG")) 
(define-protein "TXTP_HUMAN" ("SLC20A3" "CTP" "SLC25A1")) 
(define-protein "UBC_HUMAN" ("Ubiquitin" "UBC")) 
(define-protein "UBD_HUMAN" ("FAT10" "Diubiquitin" "UBD")) 
(define-protein "UBE2N_HUMAN" ("UbcH13" "Ubc13" "UBE2N" "BLU")) 
(define-protein "UBE2S_HUMAN" ("E2-EPF" "E2EPF" "UBE2S")) 
(define-protein "UBP8_HUMAN" ("hUBPy" "KIAA0055" "UBPY" "USP8")) 
(define-protein "UBQL2_HUMAN" ("Chap1" "hPLIC-2" "UBQLN2" "PLIC-2" "PLIC2" "N4BP4")) 
(define-protein "UCHL3_HUMAN" ("UCHL3" "UCH-L3")) 
(define-protein "UD110_HUMAN" ("UGT1-10" "UGT1A10" "UGT1" "GNT1" "UGT1J" "UGT-1J" "UGT1.10" "UGT1*10")) 
(define-protein "UD11_HUMAN" ("UGT-1A" "GNT1" "UGT1.1" "UGT1" "UGT1*1" "UGT1A" "UGT1A1" "UGT1-01" "hUG-BR1")) 
(define-protein "UD13_HUMAN" ("UGT-1C" "GNT1" "UGT1.3" "UGT1" "UGT1C" "UGT1A3" "UGT1-03" "UGT1*3")) 
(define-protein "UD16_HUMAN" ("UGT-1F" "UGT1.6" "GNT1" "UGT1" "UGT1F" "UGT1A6" "UGT1-06" "UGT1*6")) 
(define-protein "UD17_HUMAN" ("UGT-1G" "UGT1.7" "GNT1" "UGT1" "UGT1G" "UGT1A7" "UGT1-07" "UGT1*7")) 
(define-protein "UD18_HUMAN" ("UGT-1H" "UGT1.8" "GNT1" "UGT1" "UGT1H" "UGT1A8" "UGT1-08" "UGT1*8")) 
(define-protein "UD19_HUMAN" ("lugP4" "UGT1.9" "GNT1" "UGT1" "UGT1I" "UGT1A9" "UGT1-09" "UGT-1I" "UGT1*9")) 
(define-protein "UDB11_HUMAN" ("UGT2B11")) 
(define-protein "UHRF1_HUMAN" ("hNp95" "hUHRF1" "NP95" "UHRF1" "HuNp95" "ICBP90" "RNF106")) 
(define-protein "ULK3_HUMAN" ("ULK3")) 
(define-protein "UN93B_HUMAN" ("UNC93B1" "hUNC93B1" "UNC93B" "UNC93" "Unc-93B1")) 
(define-protein "URGCP_HUMAN" ("URG4" "URGCP" "KIAA1507")) 
(define-protein "USE1_HUMAN" ("p31" "USE1L" "USE1")) 
(define-protein "USH1C_HUMAN" ("USH1C" "AIE75")) 
(define-protein "USO1_HUMAN" ("TAP" "USO1" "VDP")) 
(define-protein "USP9X_HUMAN" ("DFFRX" "FAM" "USP9" "USP9X" "hFAM")) 
(define-protein "VA0D1_HUMAN" ("ATP6D" "p39" "ATP6V0D1" "VPATPD")) 
(define-protein "VAMP3_HUMAN" ("VAMP-3" "VAMP3" "Synaptobrevin-3" "SYB3" "CEB" "Cellubrevin")) 
(define-protein "VAMP7_HUMAN" ("VAMP7" "SYBL1" "Ti-VAMP" "VAMP-7")) 
(define-protein "VAMP8_HUMAN" ("VAMP8" "Endobrevin" "EDB" "VAMP-8")) 
(define-protein "VAPA_HUMAN" ("VAPA" "VAP-A" "VAP-33" "VAMP-A" "VAP33")) 
(define-protein "VAPB_HUMAN" ("VAMP-B/VAMP-C" "VAP-B/VAP-C" "VAPB")) 
(define-protein "VASP_HUMAN" ("VASP")) 
(define-protein "VAT1_HUMAN" ("VAT1")) 
(define-protein "VATA_HUMAN" ("ATP6V1A1" "ATP6A1" "ATP6V1A" "VPP2")) 
(define-protein "VATB2_HUMAN" ("ATP6B2" "ATP6V1B2" "HO57" "VPP3")) 
(define-protein "VATC1_HUMAN" ("ATP6D" "ATP6C" "ATP6V1C1" "VATC")) 
(define-protein "VATC2_HUMAN" ("ATP6V1C2")) 
(define-protein "VATD_HUMAN" ("VATD" "ATP6M" "ATP6V1D")) 
(define-protein "VATE1_HUMAN" ("ATP6E2" "p31" "ATP6E" "ATP6V1E1")) 
(define-protein "VATG1_HUMAN" ("ATP6V1G1" "ATP6G1" "ATP6J" "ATP6G")) 
(define-protein "VATH_HUMAN" ("NBP1" "ATP6V1H")) 
(define-protein "VATL_HUMAN" ("ATP6C" "ATP6V0C" "ATP6L" "ATPL")) 
(define-protein "VCY1_HUMAN" ("BPY1" "VCY" "VCY1B" "VCY1A" "BPY1B")) 
(define-protein "VISL1_HUMAN" ("VILIP" "VSNL1" "VLP-1" "HLP3" "VISL1")) 
(define-protein "VP26A_HUMAN" ("VPS26A" "VPS26" "hVPS26")) 
(define-protein "VP33A_HUMAN" ("VPS33A" "hVPS33A")) 
(define-protein "VP33B_HUMAN" ("VPS33B" "hVPS33B")) 
(define-protein "VP37B_HUMAN" ("hVps37B" "VPS37B")) 
(define-protein "VPS11_HUMAN" ("hVPS11" "VPS11" "RNF108")) 
(define-protein "VPS16_HUMAN" ("hVPS16" "VPS16")) 
(define-protein "VPS18_HUMAN" ("hVPS18" "VPS18" "KIAA1475")) 
(define-protein "VPS25_HUMAN" ("hVps25" "DERP9" "EAP20" "VPS25")) 
(define-protein "VPS28_HUMAN" ("H-Vps28" "VPS28")) 
(define-protein "VPS29_HUMAN" ("hVPS29" "VPS29")) 
(define-protein "VPS35_HUMAN" ("hVPS35" "VPS35" "MEM3")) 
(define-protein "VPS36_HUMAN" ("VPS36" "EAP45" "C13orf9")) 
(define-protein "VPS39_HUMAN" ("TLP" "KIAA0770" "VAM6" "hVam6p" "VPS39")) 
(define-protein "VPS45_HUMAN" ("VPS45" "h-VPS45" "hlVps45" "VPS45B" "VPS45A")) 
(define-protein "VPS4A_HUMAN" ("VPS4" "VPS4-1" "hVPS4" "VPS4A")) 
(define-protein "VPS51_HUMAN" ("ANG2" "C11orf3" "C11orf2" "FFR" "VPS51")) 
(define-protein "VRK1_HUMAN" ("VRK1")) 
(define-protein "VTA1_HUMAN" ("VTA1" "LIP5" "DRG-1" "SBP1" "C6orf55")) 
(define-protein "VTI1A_HUMAN" ("Vti1-rp2" "VTI1A")) 
(define-protein "WASH2_HUMAN" ("WASH2P" "FAM39B")) 
(define-protein "WASH7_HUMAN" ("SWIP" "KIAA1033")) 
(define-protein "WDFY1_HUMAN" ("FENS-1" "ZFYVE17" "WDF1" "KIAA1435" "WDFY1")) 
(define-protein "WDFY3_HUMAN" ("KIAA0993" "Alfy" "WDFY3")) 
(define-protein "WDR5_HUMAN" ("WDR5" "BIG3")) 
(define-protein "WLS_HUMAN" ("GPR177" "C1orf139" "WLS" "EVI")) 
(define-protein "XPO1_HUMAN" ("CRM1" "XPO1" "Exp1")) 
(define-protein "XPO4_HUMAN" ("XPO4" "Exp4" "KIAA1721")) 
(define-protein "XPO7_HUMAN" ("KIAA0745" "RANBP16" "XPO7" "Exp7")) 
(define-protein "XRCC1_HUMAN" ("XRCC1")) 
(define-protein "YIF1A_HUMAN" ("YIF1" "54TMp" "YIF1A" "HYIF1P" "54TM")) 
(define-protein "YKT6_HUMAN" ("YKT6")) 
(define-protein "ZBT12_HUMAN" ("NG35" "ZBTB12" "C6orf46" "G10")) 
(define-protein "ZC3HF_HUMAN" ("DFRP1" "ZC3H15" "LEREPO4")) 
(define-protein "ZDH17_HUMAN" ("HIP3" "DHHC-17" "HIP14" "KIAA0946" "ZDHHC17" "HIP-14" "HYPH" "HIP-3")) 
(define-protein "ZFPL1_HUMAN" ("ZFPL1")) 
(define-protein "ZFYV1_HUMAN" ("KIAA1589" "SR3" "DFCP1" "TAFF1" "ZFYVE1" "ZNFN2A1")) 
(define-protein "ZN239_HUMAN" ("HOK2" "MOK2" "ZNF239")) 
(define-protein "ZNT9_HUMAN" ("C4orf1" "HuEL" "HUEL" "SLC30A9" "ZnT-9")) 
(define-protein "ZO1_HUMAN" ("TJP1" "ZO1")) 
(define-protein "ZO2_HUMAN" ("X104" "TJP2" "ZO2")) 
(define-protein "ZW10_HUMAN" ("ZW10")) 
(define-protein "ZWILC_HUMAN" ("ZWILCH" "hZwilch")) 
(define-protein "ZWINT_HUMAN" ("ZWINT" "Zwint-1")) 
(define-protein "b4dip2_human" ("ERBB2IP")) 
(define-protein "b4dyu4_human" NIL) 
(define-protein "b4e074_human" NIL) 
(define-protein "byr2_schpo" ("SPBC2F12.01" "ste8" "SPBC1D7.05" "byr2")) 
(define-protein "fnta_rat" ("Fnta" "FTase-alpha")) 
(define-protein "fntb_rat" ("Fntb")) 
(define-protein "mSnx27" NIL) 
(define-protein "mSnx31" NIL) 
(define-protein "p27958-pro_0000037575" NIL) 
(define-protein "praf1_mouse" ("Pra1" "Pra" "Prenylin" "Rabac1" "Praf1")) 
(define-protein "q1zyl5_human" NIL) 
(define-protein "q46342_closo" NIL) 
(define-protein "q5ebh1-2" ("Rapl" "Nore1" "Rassf5")) 
(define-protein "rasf5_mouse" ("Rapl" "Nore1" "Rassf5")) 
(define-protein "rpgf4_mouse" ("Epac2" "Cgef2" "Rapgef4")) 



(defparameter *bio-ents* nil)
(defparameter *mitre-bio-ents* nil)

(defun new-bio-entities ()
  (let ((bes 
         (loop for a in *all-sentences* 
           append 
           (loop for i in (second a) when (member category::bio-entity (indiv-type i)) collect i)))
        (bbs nil))
    (setf *bio-ents* bes)
    
    (loop for b in bes do (pushnew (mitre-string b) bbs :test #'equal))
    (length (setq *mitre-bio-ents* (sort bbs #'string<)))))

