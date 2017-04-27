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

(def-bio "BCR-ABL" protein);;  a constitutively activated version, MEK1S219D,S223D (MEK1DD)
(def-bio "type IV collagen" protein) ;; a very generic term -- can't find an identifier TO-DO
;;;------------------------
;;; GTP, GDP, GEFs & GAPs
;;;------------------------
(def-bio "GTP" nucleotide :identifier "CHEBI:15996" :mitre-link "PubChem:6830")
(def-bio "GDP" nucleotide  :identifier "CHEBI:17552" :mitre-link "PubChem:8977")

(noun ("GEF" "guanine nucleotide exchange factor" "guanyl-nucleotide-exchange factor") :super nucleotide-exchange-factor)
(noun "growth factor" :super protein) ;; actually, either a protein or hormone, but occasionally some other molecule

(define-protein "Ras-GDP" ()) ;; not really a "protein" but a complex, but for now...
(define-protein "Ras-GTP" ()) ;; not really a "protein" but a complex, but for now...
(define-protein "p52" () ) 
(define-protein "RasGEF" ("Ras-GEF" "Ras GEF")) 
(define-protein "ERK1-4" ())
(define-protein "GST-ASPP2" ())
(define-protein "MAP" ())
(define-protein "Raf CAAX" ())
(define-protein "RasG12V" ()) ;; this is a variant
(define-protein "V600EBRAF" ()) ;; need to figure out how to represent this variant in the ontology :synonyms ("B-RAFV600E" "V600EB-RAF" "BRAFV600E"))
(define-protein "brafv" ())
(define-protein "mek1dd" ())
(define-protein "trypsin" ())
(define-protein "histone 2B"  ())
(define-protein "histone" ())

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

      
  
