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

(defparameter *potential-proteins-from-articles*
  '("Ran" ;; the small GTPase RN
    "Polβ" "hbam1" "hbam2" "mbam1" "mbam2" "HBAM1" "HBAM2" "hBam1" "hBam2" "Nox1" "NoxA1" "FRS-2/SNT1" "c-Met" "NKRF" "PknF" "PknD" "PknH" "Bfl/A1" "p300/CREB-binding protein" "CD19" "BMP" "E3b1" "AccD4" "FLAG" "Gads" "phospholipase C–γ1" "calponin-3" "CsA" "4EBP" "c-Fos" "C/EBP" "Ets" "Egr" "Blnk" "Rab" "pStat3" "Stat3α" "ephrinB2/Fc" "TIF2" "CLK" "tropomyosin" "SUMO2" "LMNA" "HSP60" "PIPKIγ87" "H2B2E"  "Wnt ligand" "LDH-B" "SLC20A1" "CD22" "TβR-II" "Smad6N" "acetyltransferase" "GCN5" "Y4F" "Rac-GEF""p55γ" "PTPMEG" "αIIb" "PknG" "MviN" "FadD32" "GroS" "γ-GCSh" "ΔN-RILP" "phospholipase C-γ2" "phalloidin" "p85β" "meIF3f" "ZDHHC7" "XDshΔDEP" "Smad6C" "NHP2L1" "ISG15" "IRF7" "IRF-7""HT1080" "HSP10" "HDAC3" "DLG3" "FRS-2" "TrkB" "CFM-1""CD72" "CBP/Ep300" "CBP/p300" "Abeta" "PRB" "PAK6" "PAK4" "PknA" "PknB" "14-3-3ζ" "14-3-3ε" "14-3-3τ" "6 –RILP" "ABIN2" "ACK" "ACK2" "AHR" "AICD" "AMSH" "AP-2" "APH1" "ARNT" "ATP" "AXIN2" "Abi1wt" "Abl" "Ac-YVAD-CHO" "Ack" "Ack1" "Ack1-HA" "B/AKT" "B56γ-PP2A" "B56γ1" "B56γ3" "BRCC36" "BRMS1" "Btk" "CAT-D" "CCT1" "CCT3" "CD38" "CD4/CXCR4" "CD40" "CD95" "CDK3" "CFM-4" "CFM-5" "CL100" "CLEC17A" "COMMD1" "CRM-1" "CSF-1" "CSF-1R" "CSN5" "Cas" "Cef" "Co-Smads" "Cos7" "Crk" "Csr" "Cyr61" "Cyropyrin" "C–γ1" "DAPI" "DDX3" "DH" "DKK1" "DLD1" "DLG1" "DMPK" "DTX" "E3b1" "ECC-1" "ECC1" "EEA1" "EPS15" "ETH" "Epo" "Evl-1" "F-actin" "FBP1" "FGF" "FOXO" "FRS-2" "FUSE-binding protein 1" "FhaA" "Filopodia" "Fos" "Freud1/Aki1" "Fz" "Fzs" "GAT" "GATA4" "GCHM" "GD25" "GSK-3β" "GSK3β" "GST-PAK-Cdc42" "GW9662" "GroEL2" "H2AX" "H2B1L" "HDAC1" "HDAC2" "HEK293N" "HIF-1α" "HIPK3" "HLA" "HNF4α" "HSP70" "HT-1080" "I-Smads" "IFN" "IFNβ" "IKKε" "IL-1" "IRF" "IRF-3" "IRF3" "ITGB1#2" "ITGB3#2" "ITGB5#2" "Icam1" "IκB" "JNK/ SAPK" "JNK/SAPK" "JNK1/2" "K-ras" "KCl" "KIAA0323" "KIAA1217" "KLESS" "KMTs" "KPC1/2" "KRT5" "KasA" "KasB" "LAPC-4" "LIMK" "LRP6" "LY/PDBu" "LY292004" "Lactacystin" "M-CSF" "MAP4" "MDA" "MICAL1" "MRCK" "MRF4" "MUC5" "MYSM1" "Med1" "Met" "MmpS3" "Mtb" "Muc5AC" "Muc5AC/B" "Muc5B" "Myosin" "NDFIP2" "NEDD8" "NES" "NIC" "NKCC2" "NPHP1" "NPHP4" "NQO1" "Nod-1" "Nox1-dependent" "NoxA1" "ORP1L" "PAK" "PAK1/2" "PAK5" "PC-3" "PC12" "PCK1" "PDBu" "PDLIM5" "PEN2" "PIPKIγ90" "PIX" "PKC’s" "PLC-γ2" "PP1" "PP2" "PP2AA" "PP2AC" "PPARγ" "PR-1" "PRIP" "PSA" "PSTPIP1" "PTPH1" "Pen-2" "Pim" "PknA" "PknB" "Pool" "PstP" "PtdIns4P" "RBM10" "RIG-I" "RILP" "RNF4" "RPA14" "RPS27" "Rac" "Rad3" "RanGAP" "Rfz2" "Rho" "RhoA" "S1333A-ATR" "SB203580" "SFKs" "SGK1-CA." "SGK2" "SLPI" "SMYD3" "SPI-2" "SRRM2" "SSH1L" "STAM-2" "STEAP1" "STPKs" "SYNJ1" "SYNJ2" "Sendai" "Shb" "Shugosin" "Smad6/7" "Smad7/6" "Smad7C" "Smad7N" "Snell" "SrcKM" "SrcYF" "Stat-3" "TAK1" "TBK1" "TCA3" "TCF4" "TCR→" "TEPA" "TGF-β" "TGII" "TJAP1" "TLR" "TLR3" "TLR7" "TLRs" "TNFα" "TRAF2" "TRAF3" "TTR" "Tks5/Fish" "TrkC" "TβR-I" "UBXD8" "UIM" "UQCRC2" "USP54" "Vav-1" "WNK1" "WNK2" "Wnt" "Wnt-11" "Wnt-4" "Wnt–β" "XDshΔDEP" "XDshΔPDZ" "XWnt-5A" "Xenopus Fz-7" "Xfz7"  "arrestin-2" "arrestin-2/3" "bcl-x" "bombesin" "calyculin" "cathepsin-D" "cdkn2a" "cdkn2b" "ced-3" "ced-9" "chondroitin" "condensaton" "cytohesin-1" "dok4/5" "ephrinB2" "estrogen" "exocrine" "exoproteases" "glutathione-S-transferase" "gonadotropin" "hemolysin" "hepatocyte nuclear factor 4α" "heregulin" "hyp-RPA"  "kinesin" "lactacystin"  "mRFP" "mUbRas" "mot-2" "mut" "myosin" "nectin-1" "nmMLCK" "nuclease" "oestrogen" "p110β" "p120" "p120RasGAP" "p16" "p21Rac1" "p27 1–170" "p300" "p35/Cdk5 and 32 P" "p35/Cdk5" "p38 MAPK" "p50" "p53−/−" "p62 DOK" "p62 dok" "p70 s6k" "p70S6K" "p70s6k" "p75NTR" "p80" "p85α" "p97/Gab2" "pERK5" "pT" "pVV16:" "phorbol" "phosphoSer-9" "phosphoprofilin" "phosphorylation-mediated" "plasma membrane–binding" "platelet" "polyvalent antigen" "pp60src" "pp60src" "proteasome" "proteasomes" "rPP2A" "rad-3-related" "rrnAP1" "steroid receptor coactivator-1" "synuclein" "talin" "trkB" "tyrosine-kinase" "ΔRIG-I" "α-Syn" "α-syn" "β-actin" "β-adaptin" "βIII"
    ))

(defun define-potential-proteins ()
  (lsp-break "define-potential-proteins")
  (loop for w in *potential-proteins-from-articles*
     do
       (eval `(noun ,w  :super protein))))

;;;--------------------------------------------
;;; for (some of) the abstract in the proposal
;;;--------------------------------------------



;; from Ben Gyori
;; from MITRE example
;; found in the article set
 ;; actually NRG1_HUMAN is the "pro-form" of neuregulin-1, which is obtained by cleaving
 




(def-bio "BCR-ABL" protein);;  a constitutively activated version, MEK1S219D,S223D (MEK1DD)
(def-bio "type IV collagen" protein) ;; a very generic term -- can't find an identifier TO-DO
(def-bio "NIK" kinase  :long "NF-kappaB-inducing kinase"  :identifier "GO:0004704" :greek "kappa")
(def-bio "IKKalpha" kinase  :long "IkappaB kinase alpha"  :identifier "PR:000001775" :greek ("kappa" "alpha"))
;;;------------------------
;;; GTP, GDP, GEFs & GAPs
;;;------------------------
(def-bio "GTP" nucleotide :identifier "CHEBI:15996" :mitre-link "PubChem:6830")
(def-bio "GDP" nucleotide  :identifier "CHEBI:17552" :mitre-link "PubChem:8977")

(noun ("GEF" "guanine nucleotide exchange factor" "guanyl-nucleotide-exchange factor") :super nucleotide-exchange-factor)
(define-protein "Ras-GDP" ()) ;; not really a "protein" but a complex, but for now...
(define-protein "Ras-GTP" ()) ;; not really a "protein" but a complex, but for now...
(noun "growth factor" :super protein) ;; actually, either a protein or hormone, but occasionally some other molecule


(define-protein "NF-kappab" ())
(define-protein "p52" () ) 
(define-protein "p38 SAPK" ())
(define-protein "RasGEF"  ("Ras-GEF" "Ras GEF")) 
(define-protein "ERK1-4" ())
(define-protein "GST-ASPP2" ())
(define-protein "MAP" ())
(define-protein "Raf CAAX" ())
(define-protein "RasG12V" ()) ;; this is a variant
(define-protein "SAPK" ()) ;; class of stress activated ()s
(define-protein "V600EBRAF" ()) ;; need to figure out how to represent this variant in the ontology :synonyms ("B-RAFV600E" "V600EB-RAF" "BRAFV600E"))
(define-protein "brafv" ())
(define-protein "cot" ("COT" "MAP3K8"))
(define-protein "mek1dd" ())
(define-protein "phospho-ASPP2" ())
(define-protein "trypsin" ())
(define-protein "histone 2B"  ())
(define-protein "histone" ())

(define-protein "ACTA1" ("HGNC:129" "actin" "alpha 1" "skeletal muscle" "ACTA" "NEM3" "nemaline myopathy type 3" "P68133"))
(define-protein "ACTG2" ("HGNC:145" "actin" "gamma 2" "smooth muscle" "enteric" "ACTL3" "ACTA3" "ACTSG" "P63267"))
(define-protein "ATG5" ( "Uniprot:Q9H1Y0"))
(define-protein "GAPVD1"( "Uniprot:Q14C86"))
(define-protein "GFP"( "Uniprot:P42212"))
(define-protein "IQGAP1"( "Uniprot:P46940"))
(define-protein "IQGAP2"( "Uniprot:Q13576"))
(define-protein "IQGAP3"( "Uniprot:Q86VI3"))
(define-protein "Q12967"( "Uniprot:RALGDS"))
(define-protein "Q76NI1"( "Uniprot:KNDC1"))
(define-protein "Q9P212"( "Uniprot:PLCE1"))
(define-protein "RALGPS1"( "Uniprot:Q5JS13"))
(define-protein "RALGPS2"  ("RALGPS2"  "Uniprot:Q86X27"))
(define-protein "RAPGEF5"  ("RAPGEF5"  "Uniprot:Q92565"))
(define-protein "RAPGEFL1" ("Uniprot:Q9UHV5"))
(define-protein "RASA3"  ("RASA3" "Uniprot:Q14644"))
(define-protein "RGL3"( "Uniprot:Q3MIN7"))
(define-protein "RGL4"( "Uniprot:Q8IZJ4"))
(define-protein "RapGEF2"  ( "RAPGEF2"  "Uniprot:Q17RH5"))
(define-protein "RapGEF3"  ("RAPGEF3"  "Uniprot:O95398"))
(define-protein "RapGEF4"  ("RAPGEF4"  "Uniprot:Q8WZA2"))
(define-protein "RapGEF6"  ( "RAPGEF6"  "Uniprot:Q8TEU7"))
(define-protein "RasGEF1A"  ("RASGEF1A"  "Uniprot:Q8N9B8"))
(define-protein "RasGEF1B"  ("RASGEF1B"  "Uniprot:Q0VAM2"))
(define-protein "RasGEF1C"  ("RASGEF1C"  "Uniprot:Q8N431"))
(define-protein "RasGRF1"  ( "RASGRF1"  "Uniprot:Q13972"))
(define-protein "green fluorescent ()"( "Uniprot:P42212"))
(define-protein "p100" ("PR:000011178"))

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

(defparameter pht (make-hash-table :test #'equal))
(defparameter *new-proteins* nil)
(defun merge-proteins ()
  (declare (special *proteins*))
  (setq *new-proteins* nil)
  (clrhash pht)
  (loop for p in *proteins* do 
    (when
        (eq (car p) 'define-protein) ;; also some other things like (delete-noun-cfr ...)
      (let* ((primary (second p))
             (previous (gethash primary pht)))
        (if previous 
            (setf (third previous) 
                  (remove-duplicates  
                   (append (third previous) (third p))
                   :test #'equal))
            (setf (gethash primary pht) p)))
      ))
  (loop for p in *proteins* do 
    (cond
     ((eq (car p) 'define-protein) ;; also some other things like (delete-noun-cfr ...)
      (let* ((primary (second p))
             (entry (gethash primary pht))) 
        (when entry 
          (push entry *new-proteins*)
          (setf (gethash primary pht) nil))))
     (t (push p *new-proteins*))))
  (length (setq *new-proteins* (reverse *new-proteins*))))

(defparameter *new-ras2-proteins* nil)
(defun merge-ras2-proteins ()
  (declare (special *ras2-proteins*))
  (setq *new-ras2-proteins* nil)
  (clrhash pht)
  (loop for p in *ras2-proteins* do 
    (when
        (eq (car p) 'define-protein) ;; also some other things like (delete-noun-cfr ...)
      (let* ((primary (second p))
             (previous (gethash primary pht)))
        (if previous 
            (setf (third previous) 
                  (remove-duplicates  
                   (append (third previous) (third p))
                   :test #'equal))
            (setf (gethash primary pht) p)))
      ))
  (loop for p in *ras2-proteins* do 
    (cond
     ((eq (car p) 'define-protein) ;; also some other things like (delete-noun-cfr ...)
      (let* ((primary (second p))
             (entry (gethash primary pht))) 
        (when entry 
          (push entry *new-ras2-proteins*)
          (setf (gethash primary pht) nil))))
     (t (push p *new-ras2-proteins*))))
  (length (setq *new-ras2-proteins* (reverse *new-ras2-proteins*))))

(defparameter *overlap* nil)

(defun merge-into-ras2 ()
  (declare (special *ras2-proteins*))
  (clrhash pht)
  (let ((np nil))
    (loop for p in *ras2-proteins* do 
      (let* ((primary (second p)))
        (setf (gethash primary pht) p)))
    (loop for p in *new-proteins* 
      do
      (let* ((primary (second p))
             (previous (gethash primary pht)))
        (declare (special previous primary))
        (cond
         (previous 
          (push primary *overlap*)
          (setf (third previous) 
                (remove-duplicates  
                 (append (third previous) (third p))
                 :test #'equal))
          (print primary)
          nil)
         (t (push p np)))))
    (reverse np)))

      
  
