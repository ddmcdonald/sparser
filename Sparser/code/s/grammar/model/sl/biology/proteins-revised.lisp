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



;; from Ben Gyori
;; from MITRE example
;; found in the article set
 ;; actually NRG1_HUMAN is the "pro-form" of neuregulin-1, which is obtained by cleaving

;added to other def
;(def-bio "BCR-ABL" protein);;  a constitutively activated version, MEK1S219D,S223D (MEK1DD)
;(def-bio "type IV collagen" protein) ;; a very generic term -- can't find an identifier TO-DO ;; got FPLX ID

#| folded into new std-prot-defs
(define-protein "P06926" ("E1-E4"))
(define-protein "Q9T1U2" ("E2F4-6"))
(define-protein "Q96PP8" ("GBP-5"))
(define-protein "Q8TE85" ("Grhl3")) 
(define-protein "P01112" ( "H-RasV12"))
(define-protein "P98177" ("flag-FOXO4" "HA-FOXO4"))
(define-protein "Q99814" ("HIF-2alpha protein"))
(define-protein "P10277" ("HIF-alpha"))
(define-protein "P55789" ("Hippo"))
(define-protein "P04792" ("Hsp27"))
(define-protein "Q7Z6Z7" ("Huwe1"))
(define-protein "P12314" ("IGF-R1"))
(define-protein "P08069" ("IGF1 receptor"))
(define-protein "O76070" ("IkappaB super repressor"))
(define-protein "P06213" ("InsR"))
(define-protein "P07476" ("Involucrin"))
(define-protein "P78504" ("Jagged1"))
(define-protein "P01116" ("K-ras"))
(define-protein "P13645" ("Keratin 10"))
(define-protein "O36417" ("Ki-67"))
(define-protein "Q8N4N8" ("Kif2b"))
(define-protein "P04233" ("MHC-II" "LC3B-II"))
(define-protein "P03679" ("TAPI-1"))
(define-protein "P19256" ("LFA-3"))
(define-protein "P21964" ("MB-COMT"))
(define-protein "P03657" ("MHC-I"))
(define-protein "P40692" ("MLH-1"))
(define-protein "Q03111" ("MLL-ENL"))
(define-protein "Q92565" ("mr-gef" "MR-GEF"))
(define-protein "P36952" ("Maspin"))
(define-protein "Q9Y316" ("Memo"))
(define-protein "O95140" ("Mfn2"))
(define-protein "Q12879" ("NMDA receptor"))
(define-protein "P04839" ("NOX-2"))
(define-protein "Q99801" ("Nkx3.1"))
(define-protein "Q9UM47" ("Notch3"))
(define-protein "P58400" ("Nrxn1"))
(define-protein "P16234" ("PDGF receptors"))
(define-protein "P83099" ("PKCeta"))
(define-protein "Q19266" ("PKCzeta"))
(define-protein "P23760" ("Pax3"))
(define-protein "P40763" ("Stat3C" "Phospho-STAT3"))
(define-protein "O95365" ("Pokemon"))
(define-protein "Q06330" ("RBP-jkappa"))
(define-protein "P20339" ("Rab5Q79L" "Rab5CA" "Rab5"))
(define-protein "Q9P2R3" ("Rabankyrin-5"))
(define-protein "P04049" ("Raf1"))
(define-protein "P42685" ("Rak"))
(define-protein "Q8WZ75" ("Robo4"))
(define-protein "O15105" ("Smad7"))
(define-protein "P36897" ("TGFbetaR1"))
(define-protein "P07996" ("TSP-1 protein"))
(define-protein "Q13207" ("Tbx2"))
(define-protein "Q02763" ("Tie-2"))
(define-protein "P05135" ("VN-ITSN1-S"))
(define-protein "P19563" ("Vif"))
(define-protein "P56704" ("Wnt3A"))
(define-protein "P04004" ("alphaVbeta3"))
(define-protein "P34722" ("cPKC"))
(define-protein "P08134" ("dnRhoC" "caRhoC"))
(define-protein "O60220" ("dDp"))
(define-protein "Q9NQB0" ("dnTCF"))
(define-protein "P09466" ("gD"))
(define-protein "G5EGD2" ("hypoxia-inducible factor 1"))
(define-protein "O14746" ("mTERT"))
(define-protein "P42336" ("p110CAAX"))
(define-protein "P04637" ("wtTP53" "p53DD"))
|#
;;;------------------------
;;; GTP, GDP, GEFs & GAPs
;;;------------------------

;; these same definitions exist in molecules
;(def-bio "GTP" nucleotide :identifier "CHEBI:15996" :mitre-link "PubChem:6830")
;(def-bio "GDP" nucleotide  :identifier "CHEBI:17552" :mitre-link "PubChem:8977")
;(noun ("GEF" "guanine nucleotide exchange factor" "guanyl-nucleotide-exchange factor") :super nucleotide-exchange-factor) moved to protein-fam-with-id

;(define-protein "Ras-GDP" ()) ;; not really a "protein" but a complex, but for now...
;(define-protein "Ras-GTP" ()) ;; not really a "protein" but a complex, but for now...
;(define-protein "RasGEF" ("Ras-GEF" "Ras GEF")) 
(define-protein "ERK1-4" ())
(define-protein "GST-ASPP2" ())
(define-protein "Raf CAAX" ())
(define-protein "RasG12V" ()) ;; this is a variant
(define-protein "V600EBRAF" ()) ;; need to figure out how to represent this variant in the ontology :synonyms ("B-RAFV600E" "V600EB-RAF" "BRAFV600E"))
(define-protein "brafv" ())
(define-protein "mek1dd" ())
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

      
  
