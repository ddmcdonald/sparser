;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "phenomena"
;;;  Module: "grammar/model/sl/biology/
;;; version: May 2015

;; Initiated 12/28/14 to handle moderately complicated notions
;; like cell line and mutation. Conformation and isoform and such
;; would go here. Reorganizes some items in terms. Incremental
;; extensions through 1/6/15
;; 1/9/2015 give ubiquitinate a site variable, and define "pro-apoptotic" as a subclass of "apoptotoic"
;; 1/14/2015 tweaks on N and C-terminus
;; 2/15/15 trying to make some headway with ubiquitination
;; 4/23/15 Pulled in dimer material from other files
;; 5/29/15 Added the rest of the Mitre-designated modification features

(in-package :sparser)

(define-realization-scheme pre-mod premodifier-adds-property 
  ;; used in quarter -- as are a number of other np patterns
  :head :common-noun
  :mapping ((property . modifier-slot)
            (np-head . :self)
            (modifier . modifier-v/r)))
;///// This is here because it was "forgotten" by the time we needed
; to use it (e.g. in signaling. Maybe the symbol was overwritten ?



;;---------- signalling 












;;--- wrapper



;;;-------------------
;;; protein terminals
;;;-------------------

#|The convention for writing peptide sequences is 
to put the N-terminus on the left and write 
the sequence from N- to C-terminus. When the 
protein is translated from messenger RNA, 
it is created from N-terminus to C-terminus.|#

; There are two terminals, N and C, and they only make
; sense in a technical article when they're tied to 
; a particular protein.
; Semantically these are 'regions' in that they talk about
; things happening in these places. "region" is defined in
; dossiers/location-kinds.lisp as a region-type


; "located in both N- and C-terminal regions of p100"
; "via the ASPP2 N-terminus"
; the amino terminus of β-catenin

(define-category protein-terminus
  :specializes protein-domain
  :instantiates :self
  :lemma (:common-noun ("terminus" :plural ("termini" "terminuses")))
  :realization
  (:noun "terminal"))

(def-synonym protein-terminus
    (:noun "very end"))

(def-synonym protein-terminus
    (:noun "taild"))

;;//////////// These two are essentially identical definitions
;; Meed a macro or something 
(define-category N-terminal ;; amino-terminus
  :specializes protein-terminus
  :realization
  (:etf (pre-mod)
        :noun ("n-terminal" "n-terminus" "N-terminal" "N-terminus"
                            "N-tail"
          "n-termini"
          "amino terminus"
          "NtA") ;; n-terminal acidic
        :premod context ;; NEEDS TO BE CHANGED -- only here because need :etf (pre-mod), to get synonyms
         ))

(define-category C-terminal ;; carboxyl-terminus
  :specializes protein-terminus
  :realization
  (:etf (pre-mod)
        :noun ("c-terminal" "c-terminus" "C-terminal" "C-terminus"
          "c-termini" "C-tail" "c-tail")
        :premod context ;; NEEDS TO BE CHANGED -- only here because need :etf (pre-mod), to get synonyms
        ))

(define-category t-loop :specializes protein-domain
  :realization (:noun "t-loop"))

(define-category s-motif :specializes protein-domain
  :realization (:noun "s-motif"))

(define-category binding-domain :specializes protein-domain
  :binds ((bound-item bio-chemical-entity))
  :realization
  (:noun ("binding domain" "binding region")
         :m bound-item))

(def-synonym binding-domain ;; as in "metal-binding center"    
    (:noun ("center" "centre")))

(define-category linker-region :specializes region-of-molecule
  :realization
  (:noun ("linker region" "linker segment" "linker")))

(define-category bc-domain ;; as in "ACC2 BC domain"
    :specializes protein-domain
    :realization
    (:noun ("BC domain")))

(define-category metal-binding-domain :specializes binding-domain
      :realization 
      (:noun ("metal-binding center" "metal center" "metal-binding centre" "metal centre")))

(define-category RBD :specializes binding-domain
      :realization 
      (:noun "RBD"))
(noun "Raf-RBD" :super RBD)
(noun "G-domain" :super binding-domain) ;; somehow (def-bio "G-domain" protein-segment) did not work
(noun ("BRCT" "BRCT domain") :super protein-domain)
(noun ("BRCT1" "BRCT1 domain") :super protein-domain)
(noun ("BRCT2" "BRCT2 domain") :super protein-domain)

(noun ("SH2" "SH2 domain") :super protein-domain)
(noun ("SH3" "SH3 domain") :super protein-domain)
(noun "PTB domain" :super protein-domain)

(noun ("g1" "g1 domain") :super protein-domain)
(noun ("g2" "g2 domain") :super protein-domain)
(noun ("g3" "g3 domain") :super protein-domain)
(noun ("g4" "g4 domain") :super protein-domain)
(noun ("g5" "g5 domain") :super protein-domain)
(noun ("pleckstrin-homology domain" "pleckstrin homology domain" "PH domain" "pleckstrin-homology" "pleckstrin homology (PH) domain" "Pleckstrin Homology (PH) domain" ) :super protein-domain)

(define-category DBD :specializes binding-domain
      :binds ((substrate bio-entity))
      :realization 
      (:noun "DBD"
             :of substrate))
(def-synonym DBD (:noun "DNA binding domain"))

(define-category molecular-loop :specializes protein-domain
      :realization
      (:noun "loop"))

(define-category activation-loop :specializes protein-domain
      :realization
      (:noun "activation loop"))

(define-category shuttling-domain :specializes protein-domain
  :realization
  (:noun "shuttling domain"))

(define-category protein-targeting-domain :specializes protein-domain
    :binds ((target (:or cellular-location molecular-location protein))
	    (substrate protein))
   :realization
   (:noun "targeting domain"
	  :m target
	  :of substrate))

(define-category NtA-region :specializes protein-domain
  :realization
  (:noun "NtA region"))

(def-synonym NtA-region
             (:noun "N-terminal acidic region"))

(def-synonym NtA-region
             (:noun "N-terminal acidic domain"))

(def-synonym NtA-region
             (:noun "N-terminal acidic motif"))

(noun "ring finger domain" :super protein-domain)

(define-category regulatory-subunit :specializes protein-domain
  :realization
  (:noun "regulatory subunit"))

(def-synonym regulatory-subunit
             (:noun "regulatory sub-unit"))

;; not clear that we need a proper handling
;; of the molecule configuration, etc. that
;; differentiates N from C












;;;-------------------------------
;;; transcription and its control
;;;-------------------------------
; the ZFN217 transcription factor
; Wikipedia for 'transcription factor'
;    factor – a substance, such as a protein, that contributes to 
;      the cause of a specific biochemical reaction or bodily process
; and CtBP1/CtBP2 corepressors, CtBPs
; the HER3 promoter
; expression of HER3
; inhibition of HER3 transcription
; "enhances the transcription function of p53"




;;; accumulation 

; that ERK1 nuclear accumulation increased
; ERK1-4 ... accumulated in the nucleus to the same level as ...



;; Cellular processes

;;;-----------
;;; Apoptosis
;;;-----------
