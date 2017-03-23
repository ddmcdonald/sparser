;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "loader"
;;;  Module: "grammar/model/sl/biology/
;;; version: February 2017

;; Broken out from phenomena 3/1/17

(in-package :sparser)

(define-realization-scheme pre-mod premodifier-adds-property 
  ;; used in quarter -- as are a number of other np patterns
  :head :common-noun
  :mapping ((property . modifier-slot)
            (np-head . :self)
            (modifier . modifier-v/r)))
;///// This is here because it was "forgotten" by the time we needed
; to use it (e.g. in signaling. Maybe the symbol was overwritten ?
;; note: 3/1/17 it says "e.g. in signaling," but it's not used in
;; signaling -- I only find it used in protein C- and N-terminals

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

;; not clear that we need a proper handling
;; of the molecule configuration, etc. that
;; differentiates N from C

;;;-------------------
;;; protein domains
;;;-------------------

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

(define-category hypervariable-region :specializes protein-domain ;;not always protein domain, but that's where it's more likely to come up
                 :realization
                 (:noun "hypervariable region"))
(def-synonym hypervariable-region (:noun "HVR"))

;;;-------------------------
;;; protein domains with IDs
;;;-------------------------

(def-ided-indiv protein-domain "AAA" "XFAM:PF00004.27" :name "AAA") 
(def-ided-indiv protein-domain "BH-3" "XFAM:PF15285.4" :name "BH3") 
(def-ided-indiv protein-domain "Bro1" "XFAM:PF03097.16" :name "BRO1") 
(def-ided-indiv protein-domain "C-X-C" "XFAM:PF03638.13" :name "TCR") 
(def-ided-indiv protein-domain "C1q" "XFAM:PF00386.19" :name "C1q") 
(def-ided-indiv protein-domain "CNF1" "XFAM:PF05785.10" :name "CNF1") 
(def-ided-indiv protein-domain "CRISPR" "XFAM:PF08798.9" :name "CRISPR assoc") ;; protein domain is a little dubious 
(def-ided-indiv protein-domain "CTD" "XFAM:PF12815.5" :name "CTD") 
(def-ided-indiv protein-domain "CUB" "XFAM:PF00431.18" :name "CUB") 
(def-ided-indiv protein-domain "Cdc24" "XFAM:PF06395.9" :name "CDC24") 
(def-ided-indiv protein-domain "DED" "XFAM:PF01335.19" :name "DED") 
(def-ided-indiv protein-domain "DMA" "XFAM:PF03474.12" :name "DMA") 
(def-ided-indiv protein-domain "DbpA" "XFAM:PF03880.13" :name "DbpA") 
(def-ided-indiv protein-domain "EF-hand domain" "XFAM:PF08976") 
(def-ided-indiv protein-domain "EKR" "XFAM:PF10371.7" :name "EKR") 
(def-ided-indiv protein-domain "F-box domain" "XFAM:PF00646") 
(def-ided-indiv protein-domain "F-box" "XFAM:PF00646.31" :name "F-box") 
(def-ided-indiv protein-domain "HMG-box" "XFAM:PF00505.17" :name "HMG box") 
(def-ided-indiv protein-domain "Hma" "XFAM:PF00403.24" :name "HMA") 
(def-ided-indiv protein-domain "I-SET" "XFAM:PF07679.14" :name "I-set") 
(def-ided-indiv protein-domain "ITAM" "XFAM:PF02189.13" :name "ITAM") 
(def-ided-indiv protein-domain "LTD" "XFAM:PF00932.17" :name "LTD") 
(def-ided-indiv protein-domain "M-G1" "XFAM:PF11974.6" :name "MG1") 
;;(def-ided-indiv protein-domain "MenSCs" "XFAM:PF07502.12" :name "MANEC") wrong -- MANSC is a synonym for MANEC, but MenSC is not -- TRIPS must have overgeneralized from "man" -> "men"... "MenSC" is menstrual stem cell, which for some reason isn't in either cellosaurus or cell ontology for some reason, but it's clearly the correct interpretation in context
(def-ided-indiv protein-domain "O-HA" "XFAM:PF14418.4" :name "OHA") 
(def-ided-indiv protein-domain "PAM2" "XFAM:PF07145.13" :name "PAM2") 
(def-ided-indiv protein-domain "PDZ" "XFAM:PF00595.22" :name "PDZ") 
(def-ided-indiv protein-domain "PGI" "XFAM:PF00342.17" :name "PGI") 
(def-ided-indiv protein-domain "PHD-finger" "XFAM:PF00628.27" :name "PHD") 
(def-ided-indiv protein-domain "PR-C" "XFAM:PF05239.14" :name "PRC") 
(def-ided-indiv protein-domain "PRP19" "XFAM:PF08606.9" :name "prp19") 
(def-ided-indiv protein-domain "Pro-Q" "XFAM:PF04352.11" :name "ProQ") 
(def-ided-indiv protein-domain "SAB" "XFAM:PF04382.11" :name "SAB") 
(def-ided-indiv protein-domain "SHD1" "XFAM:PF03983.10" :name "SHD1") 
(def-ided-indiv protein-domain "T-box" "XFAM:PF00907.20" :name "T-box") 
(def-ided-indiv protein-domain "TIMP" "XFAM:PF00965.15" :name "TIMP") 
(def-ided-indiv protein-domain "U-box" "XFAM:PF04564.13" :name "U-box") 
(def-ided-indiv protein-domain "WD-40" "XFAM:PF00400.30" :name "WD40") 
(def-ided-indiv protein-domain "bromodomain" "XFAM:PF00439.23" :name "bromodomain") 
(def-ided-indiv protein-domain "cadherin-like" "XFAM:PF12733.5" :name "cadherin-like") 
(def-ided-indiv protein-domain "furin-like" "XFAM:PF00757.18" :name "furin-like") 
(def-ided-indiv protein-domain "helix-turn-helix" "XFAM:PF00126.25" :name "HTH 1") 
(def-ided-indiv protein-domain "interferon-gamma" "XFAM:PF00714.15" :name "IFN-gamma") 
(def-ided-indiv protein-domain "protein kinase domain" "XFAM:PF00069") 
(def-ided-indiv protein-domain "rad4" "XFAM:PF03835.13" :name "rad4") 
(def-ided-indiv protein-domain "ubiquitin-like" "XFAM:PF13019.4" :name "telomere Sde2") 
(def-ided-indiv protein-domain "zinc-finger" "XFAM:PF15269.4" :name "zf-C2H2 7") 