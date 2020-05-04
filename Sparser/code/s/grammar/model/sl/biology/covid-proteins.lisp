(in-package :sparser)

;; because these are recent Uniprot additions and possibly more in flux, I'm keeping this file separate



;; CVH22
(define-protein "UP:P0C6U2" ("R1A_CVH22")) ;; "PP1a" "replicase polyprotein 1a" ;; family/covid def
(define-protein "UP:P0C6X1" ("R1AB_CVH22")) ;; "ORF1ab polyprotein" "pp1ab" "replicase polyprotein 1ab")) 

;; MERS
(define-protein "UP:K9N643" ("ORF4b" "Non-structural protein ORF4b"))

;; CVHSA (SARS)
(define-protein "UP:P0C6U8" ("R1A_CVHSA" "SARS PP1a" "SARS replicase polyprotein 1a" "SARS pp1a" "SARS ORF1a polyprotein")) 
(define-protein "UP:P0C6X7" ("R1AB_CVHSA" "SARS PP1ab" "SARS replicase polyprotein 1ab" "SARS pp1ab" "SARS ORF1ab polyprotein"))
(define-protein "UP:P59594" ("SPIKE_CVHSA"));; "Spike glycoprotein" "S glycoprotein" "Spike protein S1" "Spike protein S2" "peplomer protein"))
(define-protein "UP:P59595" ("NCAP_CVHSA"));; "nucleoprotein" "nucleocapsid protein")) ;; add to family
(define-protein "UP:P59596" ("VME1_CVHSA")) ;; "membrane protein" "M protein" "m protein" "E1 glycoprotein" "matrix glycoprotein" "membrane glycoprotein" "Mprotein"))
(define-protein "UP:P59632" ("AP3A_CVHSA"));; "protein 3A" "protein 3a" "accessory protein 3a" "protein U274" "protein X1"))
(define-protein "UP:P59633" ("NS3B_CVHSA" "non-structural protein 3b" "ns3b" "accessory protein 3b" "protein X2")) ;; so far there isn't a SARS2 equivalent for this one
(define-protein "UP:P59634" ("NS6_CVHSA"));; "non-structural protein 6" "ns6" "accessory protein 6" "protein X3"))
(define-protein "UP:P59635" ("NS7A_CVHSA"));; "protein 7A" "protein 7a" "accessory protein 7a" "protein U122" "protein X4"))
(define-protein "UP:P59636" ("ORF9B_CVHSA"));; "protein 9B" "protein 9b" "accessory protein 9b" "ORF-9b" "ORF9b" "ORF 9b"))
(define-protein "UP:P59637" ("VEMP_CVHSA"));; "envelope small membrane protein" "E protein" "sM protein"))
(define-protein "UP:Q7TFA1" ("NS7B_CVHSA"));; "non-structural protein 7b" "ns7b" "accessory protein 7b"))
(define-protein "UP:Q7TFA0" ("NS8A_CVHSA" "non-structural protein 8a" "ns8a" "accessory protein 8a" "protein non-structural 8a"))
(define-protein "UP:Q80H93" ("NS8B_CVHSA" "non-structural protein 8b" "ns8b" "accessory protein 8b")) ;; there is a SARS2 8 but not 8a 8b
(define-protein "UP:Q7TLC7" ("Y14_CVHSA" "Uncharacterized protein 14" "ORF14"))

;; SARS2
(define-protein "UP:P0DTC1" ("R1A_SARS2" "SARS2 PP1a" "SARS2 replicase polyprotein 1a" "SARS2 pp1a" "SARS2 ORF1a polyprotein" "PP1a" "replicase polyprotein 1a" "pp1a" "ORF1a polyprotein" "ORF1a" "ORF-1a" "Orf1a" #|cleaved into this and almost everything in R1AB_SARS2|# "non-structural protein 11" "nsp11" "wNsp11")) 
(define-protein "UP:P0DTD1" ("R1AB_SARS2" "SARS2 PP1ab" "SARS2 replicase polyprotein 1ab" "SARS2 pp1ab" "SARS ORF1ab polyprotein" "PP1ab" "replicase polyprotein 1ab" "pp1ab" "ORF1ab polyprotein" "ORF1ab" "ORF-1ab" "Orf1ab" "Orf1a/b" "nsp1-16" "wNsp1" #|cleaved into|# "host translation inhibitor nsp1" "non-structural protein 1" "nsp1" "Leader protein" "non-structural protein 2" "nsp2" "wNsp2" "p65 homolog" "papain-like proteinase" "papain-like protease" "PL-PRO" "PLpro" "non-structural protein 3" "nsp3" "wNsp3" "PL2-PRO" "PL2 pro" "SARS coronavirus main proteinase" "coronavirus main proteinase" "coronavirus main protease" "SARS coronavirus papain like protease" "SARS coronavirus papain-like protease" "non-structural protein 4" "nsp4" "wNsp4" "3C-like proteinase" "3C-like protease" "3CL-PRO" "3CLp" "3CLpro" "non-structural protein 5" "nsp5" "wNsp5" "Non-structural protein 6" "nsp6" "wNsp6" "non-structural protein 7" "nsp7" "wNsp7" "Non-structural protein 8" "nsp8" "wNsp8" "non-structural protein 9" "nsp9" "wNsp9" "non-structural protein 10" "nsp10" "wNsp10" "growth factor-like peptide" "RNA-directed RNA polymerase" "RdRp" "RdRP" "RdRPs" "rdrp" "Pol" "nsp12" "non-structural protein 12" "wNsp12" "helicase" "Hel" "nsp13" "non-structural protein 13" "wNsp13" "guanine-N7 methyltransferase" "ExoN" "nsp14" "non-structural protein 14" "wNsp14" "uridylate-specific endoribonuclease" "NendoU" "nsp15" "non-structural protein 15" "wNsp15" "wNsp16"))
(define-protein "UP:P0DTC2" ("SPIKE_SARS2" "Spike glycoprotein" "S glycoprotein" "Spike protein S1" "S1 subunit" "Spike protein S2" "S2 subunit" "peplomer protein" "S protein" "S proteins" "Sprotein" "wS" "ORF2" "ORF-2" "wORF2" "orf2" "spike protein" "spike glycoprotein" "envelope spike protein" "spike envelope protein" "envelope spike glycoprotein" "spike envelope glycoprotein" "spike (S) protein" "peplomer glycoprotein"))
(define-protein "UP:P0DTC9" ("NCAP_SARS2" "nucleoprotein" "nucleoprotein N" "nucleocapsid protein" "N protein" "n protein" "NC protein" "nucleo-protein" "Nprotein" "wN" "nucleoproteins")) 
(define-protein "UP:P0DTC5" ("VME1_SARS2" "membrane protein" "M protein" "m protein" "E1 glycoprotein" "matrix glycoprotein" "membrane glycoprotein" "Mprotein" "wM" "ORF5" "ORF-5" "Orf5" "protein M"))
(define-protein "UP:P0DTC3" ("AP3A_SARS2" "protein 3A" "protein 3a" "accessory protein 3a" "protein U274" "protein X1" "ORF3a" "wORF3a" "ORF-3a" "wORF-3a" "Orf3a"))
;; no SARS2 equivalent yet (define-protein "UP:P59633" ("NS3B_CVHSA" "non-structural protein 3b" "ns3b" "accessory protein 3b" "protein X2"))
(define-protein "wORF3b" ("wORF-3b" "Orf3b")) ;; not yet in uniprot - based on one paper
(define-protein "UP:P0DTC6" ("NS6_SARS2" "non-structural protein 6" "ns6" "accessory protein 6" "protein X3" "ORF6" "wORF6" "ORF-6" "wORF-6" "Orf6"))
(define-protein "UP:P0DTD7" ("NS7A_SARS2" "protein 7A" "protein 7a" "accessory protein 7a" "protein U122" "protein X4" "ORF7a" "wORF7a" "ORF-7a" "wORF-7a" "orf7a"))
(define-protein "UP:P0DTD2" ("ORF9B_SARS2" "protein 9B" "protein 9b" "accessory protein 9b" "ORF-9b" "ORF9b" "ORF 9b" "wORF9b" "Orf9b"))
(define-protein "wORF9c" ("wORF-9c" "Orf9c")) ;; not yet in uniprot - based on one paper
(define-protein "UP:P0DTC4" ("VEMP_SARS2" "envelope small membrane protein" "E protein" "sM protein" "sm protein" "wE protein" "wE" "ORF4" "ORF-4" "Envelope protein" "Orf4"))
(define-protein "UP:P0DTD8" ("NS7B_SARS2" "protein non-structural 7b" "non-structural protein 7b" "ns7b" "accessory protein 7b" "ORF7b" "wORF7b" "Orf7b"))
(define-protein "UP:P0DTC8" ("NS8_SARS2" "non-structural protein 8" "ns8" "NS8" "ORF8" "wORF8" "Orf8"))
;; no 8a/8b just 8 for SARS2
;;(define-protein "UP:Q80H93" ("NS8B_CVHSA" "non-structural protein 8b" "ns8b" "accessory protein 8b"))
(define-protein "UP:P0DTD3" ("Y14_SARS2" "Uncharacterized protein 14" "ORF14" "Orf14"))
(define-protein "UP:A0A663DJA2" ("A0A663DJA2_SARS2" "ORF10 protein" "wORF10" "Orf10")) ;; unreviewed
