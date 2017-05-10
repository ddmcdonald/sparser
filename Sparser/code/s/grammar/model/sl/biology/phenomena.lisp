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


;;"It is interesting that various stimuli provoke EGF receptor tyrosine phosphorylation by two distinct means.")
(define-category post-translational-modification :specializes caused-biochemical-process
  :binds ((substrate (:or protein variant bio-complex bio-entity)) ;; allow variant to pick up "phosphorylated fraction"
	  (site molecular-location)
          (amino-acid amino-acid)) ;; which is attached here
  :restrict ((agent (:or protein bio-complex bio-mechanism bio-activate molecule)) ;;bio-process
	     (object s)) ;; trying to BLOCK object by giving it an impossible class
  :realization 
  (:noun "post-translational modification"
         :o substrate
	 :o site
         :m amino-acid
         :m substrate
         :m site
         :m agent ;;somehow this overrides the ones below
         :of :object
         :at amino-acid
	 :on amino-acid ;;"BRAF that is phosphorylated on serine and tyrosine."
	 :at site
	 :in site
	 :m site
	 :on site))


				    

(def-synonym post-translational-modification
     (:noun "post-transcriptional modification"))  
(def-synonym post-translational-modification
     (:noun "post-transcriptional fate"))  

#+ignore ;; not sure if this is a post-translational process or a cellular-process
(define-category transformation
  :specializes  post-translational-modification
  :realization
  (:verb "transform" :noun "transformation" 
  :etf (svo-passive)))

(define-category phosphorylation-modification :specializes post-translational-modification)

(define-category acetylation
  :specializes post-translational-modification
  :realization
  (:verb "acetylate" :noun "acetylation"
         :etf (svo-passive)))

(define-category de-acetylation
  :specializes post-translational-modification
  :realization
  (:verb "de-acetylate" :noun "de-acetylation"
   :etf (svo-passive)))

(def-synonym de-acetylation
    (:verb "deacetylate" :noun "deacetylation"))

;; manually added from TRIPS
(define-category de-acylation
  :specializes post-translational-modification
  :bindings (uid  "GO:0035601")
  :realization
  (:verb "de-acylate" :noun "de-acylation"
   :etf (svo-passive)))
;; manually added from TRIPS
(def-synonym de-acylation
    (:verb "deacylate" :noun "deacylation"))

;; manually added from TRIPS
(define-category lipidation
  :specializes post-translational-modification
  :bindings (uid  "GO:0006497")
  :realization
  (:verb "lipidate" :noun "lipidation"
   :etf (svo-passive)))

;; manually added from TRIPS
(define-category delipidation
  :specializes post-translational-modification
  :bindings (uid  "GO:0051697")
  :realization
  (:verb "delipidate" :noun "delipidation"
   :etf (svo-passive)))

;; manually added from TRIPS
(define-category myristoylation
  :specializes lipidation ;; based on wikipedia for lipidation
  :bindings (uid  "GO:0018377")
  :realization
  (:verb "myristoylate" :noun "myristoylation"
   :etf (svo-passive)))

;; manually added from TRIPS
(define-category palmitoylation
  :specializes lipidation ;; based on wikipedia for lipidation
  :bindings (uid  "GO:0018345")
  :realization
  (:verb "palmitoylate" :noun "palmitoylation"
   :etf (svo-passive)))

;; manually added from TRIPS
(define-category depalmitoylation
  :specializes delipidation ;; based on wikipedia for lipidation
  :bindings (uid  "GO:0002084")
  :realization
  (:verb "depalmitoylate" :noun "depalmitoylation"
   :etf (svo-passive)))

;; manually added from TRIPS
(define-category prenylation
  :specializes lipidation ;; based on wikipedia for lipidation
  :bindings (uid  "GO:0018342")
  :realization
  (:verb "prenylation" :noun "prenylation"
   :etf (svo-passive)))


(define-category farnesylation 
  :specializes prenylation ;; based on wikipedia for lipidation
  :realization 
  (:verb "farnesylate"
         :noun "farnesylation"
         :etf (svo-passive) ))


;; manually added from TRIPS
(define-category geranyl-geranylation 
 :specializes prenylation ;; based on wikipedia for lipidation
 :bindings (uid  "GO:0018344") 
  :realization 
    (:verb "geranyl-geranylate" 
     :noun "geranyl-geranylation"
     :etf (svo-passive)))
;; manually added from TRIPS
(def-synonym geranyl-geranylation 
             (:verb "geranyl–geranylate" ;; different hyphen type
                    :etf (svo-passive)
                    :noun "geranyl–geranylation"))

;; manually added from TRIPS
(define-category s-nitrosylation
  :specializes post-translational-modification
  :bindings (uid  "NCIT:C120476")
  :realization
  (:verb "s-nitrosylate" :noun "s-nitrosylation"
   :etf (svo-passive)))

;; manually added from TRIPS
(define-category neddylation
  :specializes post-translational-modification
  :bindings (uid  "GO:0045116")
  :realization
  (:verb "neddylate" :noun "neddylation"
   :etf (svo-passive)))

;; manually added from TRIPS
(define-category deneddylation
  :specializes post-translational-modification
  :bindings (uid  "GO:0000338")
  :realization
  (:verb "deneddylate" :noun "deneddylation"
   :etf (svo-passive)))

;; manually added from TRIPS
(define-category biotinylation
  :specializes post-translational-modification
  :bindings (uid  "GO:0009305")
  :realization
  (:verb "biotinylate" :noun "biotinylation"
   :etf (svo-passive)))

;; manually added from TRIPS
(define-category amidation
  :specializes post-translational-modification
  :bindings (uid  "GO:0018032")
  :realization
  (:verb "amidate" :noun "amidation"
   :etf (svo-passive)))

;; manually added from TRIPS
(define-category alkylation
  :specializes post-translational-modification
  :bindings (uid  "GO:0008213")
  :realization
  (:verb "alkylate" :noun "alkylation"
   :etf (svo-passive)))

;; manually added from TRIPS
(define-category carboxylation
  :specializes post-translational-modification
  :bindings (uid  "GO:0018214")
  :realization
  (:verb "carboxylate" :noun "carboxylation"
   :etf (svo-passive)))

;; manually added from TRIPS
(define-category deamination
  :specializes post-translational-modification
  :bindings (uid  "GO:0018277")
  :realization
  (:verb "deaminate" :noun "deamination"
   :etf (svo-passive)))

;; manually added from TRIPS
(define-category glutathionylation
  :specializes post-translational-modification
  :bindings (uid  "GO:0010731")
  :realization
  (:verb "glutathionylate" :noun "glutathionylation"
   :etf (svo-passive)))

;; manually added from TRIPS
(define-category formylation
  :specializes post-translational-modification
  :bindings (uid  "GO:0018256")
  :realization
  (:verb "formylate" :noun "formylation"
   :etf (svo-passive)))

;; manually added from TRIPS
(define-category esterification
  :specializes post-translational-modification
  :bindings (uid  "GO:0018350")
  :realization
  (:verb "esterificate" :noun "esterification"
   :etf (svo-passive)))

;; manually added from TRIPS
(define-category mannosylation
  :specializes post-translational-modification
  :bindings (uid  "GO:0035268")
  :realization
  (:verb "mannosylate" :noun "mannosylation"
   :etf (svo-passive)))

;; manually added from TRIPS
(define-category sulfation
  :specializes post-translational-modification
  :bindings (uid  "GO:0006477")
  :realization
  (:verb "sulfate" :noun "sulfation"
   :etf (svo-passive)))

;; manually added from TRIPS
(define-category succinylation
  :specializes post-translational-modification
  :bindings (uid  "GO:0018335")
  :realization
  (:verb "succinylate" :noun "succinylation"
   :etf (svo-passive)))

;; manually added from TRIPS
(define-category oxidation
  :specializes post-translational-modification ;; note: not necessarily post-trans-mod, could be general bio-process, but basing on trips for now
  :bindings (uid  "GO:0018158")
  :realization
  (:verb "oxidate" :noun "oxidation"
   :etf (svo-passive)))

(define-category glycosylation 
 :specializes post-translational-modification 
  :realization 
    (:verb "glycosylate"
     :noun "glycosylation"
     :etf (svo-passive)))

(define-category de-glycosylation 
 :specializes post-translational-modification 
  :realization 
    (:verb "deglycosylate"
     :noun "deglycosylation"
     :etf (svo-passive)))

(def-synonym de-glycosylation
    (:verb "de-glycosylate"
           :noun "de-glycosylation"
           :etf (svo-passive)))

(define-category hydroxylation 
 :specializes post-translational-modification 
  :realization 
    (:verb "hydroxylate"
     :noun "hydroxylation"
     :etf (svo-passive)))

(define-category methylation 
  :specializes post-translational-modification
  :restrict ((substrate (:or protein variant dna gene)))
  :realization 
  (:verb "methylate"
	 :noun "methylation"
	 :etf (svo-passive)))

(define-category de-methylation 
  :specializes post-translational-modification
  :bindings (uid "GO:0070988")
  :restrict ((substrate (:or protein variant dna gene)))
  :realization 
  (:verb "de-methylate"
	 :noun "de-methylation"
	 :etf (svo-passive)))

(def-synonym de-methylation
    (:verb "demethylate"
           :noun "demethylation"
           :etf (svo-passive)))

;;--- "phosphorylate"
;; GO:0016310	
;; "activated IKKα phosphorylates specific serines"
;;  "The phosphorylation of these specific serines"
(define-category phosphorylate
  :specializes phosphorylation-modification
  :instantiates self
  :realization
  (:verb "phosphorylate" :noun "phosphorylation" :adj "phospho"
         :etf (svo-passive)))


(define-category auto-phosphorylate
  :specializes phosphorylation-modification
  :realization
  (:verb "auto-phosphorylate" :noun "auto-phosphorylation"
   :etf (sv)))

(def-synonym auto-phosphorylate
  (:verb "autophosphorylate" :noun "autophosphorylation"
   :etf (sv)))

(def-synonym auto-phosphorylate
             (:verb "autophosphosphorylate"
              :etf (sv)))

(define-category cis-auto-phosphorylate
  :specializes auto-phosphorylate
  :realization
  (:verb "cis-auto-phosphorylate" :noun "cis-auto-phosphorylation"
   :etf (sv)))
(def-synonym cis-auto-phosphorylate
             (:verb "cis-autophosphosphorylate"
              :etf (sv)
              :noun "cis-autophosphorylation"))

(define-category trans-auto-phosphorylate
  :specializes auto-phosphorylate
  :realization
  (:verb "trans-auto-phosphorylate" :noun "trans-auto-phosphorylation"
   :etf (sv)))
   
(def-synonym trans-auto-phosphorylate
             (:verb "trans-autophosphosphorylate"
                    :etf (sv)
                    :noun "trans-autophosphorylation"))

(define-category dephosphorylate
  :specializes post-translational-modification
  :realization
  (:verb "dephosphorylate" :noun "dephosphorylation"
   :etf (svo-passive)))

(def-synonym dephosphorylate
  (:verb "de-phosphorylate" :noun "de-phosphorylation"
   :etf (svo-passive)))

(def-synonym dephosphorylate
  (:noun "dephophosphorylation" ;; misplelling from comments
))

(define-category transphosphorylate
  :specializes phosphorylation-modification
  :instantiates self
  :realization
  (:verb "transphosphorylate" :noun "transphosphorylation"
   :etf (svo-passive)))

(define-category hyperphosphorylate
  :specializes phosphorylation-modification
  :instantiates self
  :realization
  (:verb ("hyperphosphorylate" "hyper-phosphorylate")
         :noun ("hyperphosphorylation" "hyper-phosphorylation")
   :etf (svo-passive)))

(define-category unphosphorylate
  :specializes post-translational-modification
  :realization
  (:verb "unphosphorylate"
	 :etf (svo-passive)))

(define-category double-phosphorylate
  :specializes post-translational-modification
  :realization
  (:verb "double-phosphorylate"
	 :etf (svo-passive)))

(define-category ribosylation 
 :specializes post-translational-modification 
  :realization 
    (:verb "ribosylate"
     :noun "ribosylation"
     :etf (svo-passive)))

;; manually added from TRIPS
(define-category poly-adp-ribosylation 
 :specializes ribosylation 
  :bindings (uid  "GO:0070212") ;; manually added from TRIPS
  :realization 
    (:verb " poly-adp-ribosylate"
     :noun "poly-adp-ribosylation"
     :etf (svo-passive)))

(define-category sumoylation 
 :specializes post-translational-modification 
  :realization 
    (:verb "sumoylate"
     :noun "sumoylation"
     :etf (svo-passive)))

;; manually added from TRIPS
(define-category desumoylation 
 :specializes post-translational-modification
 :bindings (uid  "GO:0016926") 
  :realization 
    (:verb "desumoylate"
     :noun "desumoylation"
     :etf (svo-passive)))
;; manually added from TRIPS
(def-synonym desumoylation 
             (:verb "de-sumoylate" 
                    :etf (svo-passive)
                    :noun "de-sumoylation"))


; monoubiquitination increases the population 
;;  this process has this effect
; the enzymatic and chemical ubiquitination linkers 
; the monoubiquitinated and unmodified fractions of Ras
; the sensitivity of mUbRas
; our ability to easily generate mUbRas
; the c–terminus of Ubiquitin (Ubiquitin C77)
; Ras ligated to Ubiquitin C77
; ligated to Ubiquitin G76C. <--- point mutation
(def-bio "ubiquitin" protein)
;; not strictly true, but a reasonable approximation. 

(define-category ubiquitination
 :specializes post-translational-modification 
  :realization 
    (:verb "ubiquitinate"
     :noun "ubiquitination"
     :etf (svo-passive)))

(def-synonym ubiquitination 
             (:verb "ubiquitylate" 
                    :etf (svo-passive)
                    :noun "ubiquitylation"))

(define-category auto-ubiquitinate
  :specializes ubiquitination
  :realization
  (:verb "auto-ubiquitinate" :noun "auto-ubiquitination"
   :etf (sv)))

(def-synonym auto-ubiquitinate
             (:verb "auto-ubiquitylate" 
                    :etf (sv)
                    :noun "auto-ubiquitylation"))

(def-synonym auto-ubiquitinate 
             (:verb "autoubiquitinate"
                    :etf (sv)
                    :noun "autoubiquitination"))

(define-category poly-ubiquitination :specializes ubiquitination
                 :bindings (uid  "GO:0000209") ;; manually added from TRIPS
  :realization
  (:verb "poly-ubiquitinate" 
         :etf (svo-passive)
         :noun "poly-ubiquitination")) ;; manually added from TRIPS

(def-synonym poly-ubiquitination 
             (:verb "polyubiquitinate"
                    :etf (svo-passive)
                    :noun "polyubiquitination"))

(def-synonym poly-ubiquitination 
             (:verb "polyubiquitylate"
                    :etf (svo-passive)
                    :noun "poly-ubiquitylation"))

;; manually added from TRIPS
(define-category de-ubiquitination :specializes post-translational-modification
                 :bindings (uid  "GO:0016579") 
  :realization
  (:verb "de-ubiquitinate" 
         :etf (svo-passive)
         :noun "de-ubiquitination"))
;; manually added from TRIPS
(def-synonym de-ubiquitination 
             (:verb "deubiquitinate"
                    :etf (svo-passive)
                    :noun "deubiquitination"))

;;;------------------------------
;;; mUbRas, monoubitutinated Ras
;;;------------------------------
;;///// This is a process/result pattern. This verb results
;; in a protein that has been ubiquitinated. (Has one or
;; more ubiquitin molecules attached to it.
;; Need to do this systematically

;; In Baker et al.
;; "we did not separate monoubiquitinated Ras (mUbRas) from ..."
;; Jan #1 "the effect of Ras monoubiquitination on ...
;; ... effect of Ras monoubiquitination on ...
;; Resulting version of Ras after adding one ubiquitin. 

;; strictly for the rule-label
(define-category monoubiquitination 
 :specializes post-translational-modification
  :realization 
  ;;/// only providing a realization for the result, not the process
  ;; that leads to the result
    (:verb "monoubiquitinate" 
     :noun "monoubiquitination"
     :etf (svo-passive)))

(def-synonym monoubiquitination 
             (:verb "mono-ubiquitinate" 
                    :etf (svo-passive)
                    :noun "mono-ubiquitination"))

(def-synonym monoubiquitination 
             (:verb "mono-ubiquitylate" 
                    :etf (svo-passive)
                    :noun "mono-ubiquitylation"))

(def-synonym monoubiquitination 
             (:verb "monoubiquitylate" 
                    :etf (svo-passive)
                    :noun "monoubiquitylation"))



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
