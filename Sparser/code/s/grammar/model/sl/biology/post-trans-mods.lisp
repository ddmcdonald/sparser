;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "post-trans-mod"
;;;  Module: "grammar/model/sl/biology/
;;; version: May 2017

;; Broken out from phenomena 5/10/17
;; Contains post-translational modifications; phosphorylation; ubiquitination; and post-translational modifications with IDs 

(in-package :sparser)

;;;---------------------------------
;;; post-translational-modification
;;;---------------------------------

;;"It is interesting that various stimuli provoke EGF receptor tyrosine phosphorylation by two distinct means.")
(define-category post-translational-modification :specializes caused-biochemical-process
  :bindings (uid  "GO:0043687")
  :mixins (on-substrate with-specified-amino-acid capable-of-being-measured)               
  :binds (;; allow variant to pick up "phosphorylated fraction"
	  (site (:or molecular-location residue))) ;; which is attached here
  :restrict ((agent (:or protein gene bio-complex bio-mechanism bio-activate peptide component;; this is for "fraction of ..."
                         )) ;;bio-process
	     (object blocked-category)) ;; trying to BLOCK object by giving it an impossible class
  :realization 
  (:noun ("post-translational modification" "PTM" 
          "post-transcriptional modification" "post-transcriptional fate")
         :o substrate
	 :o site
         :o amino-acid
         :m amino-acid
         :m substrate
         :m site
         :verb-premod site
         :verb-premod amino-acid
         :m agent ;;somehow this overrides the ones below
         :of substrate
         :of site
         :at amino-acid
	 :on amino-acid ;;"BRAF that is phosphorylated on serine and tyrosine."
	 :at site
	 :in site
         :in substrate
         :on substrate ;; the tyrosine residues hyperphosphorylated on p130 CAS
	 :m site
	 :on site))	    

#+ignore ;; not sure if this is a post-translational process or a cellular-process
(define-category transformation
  :specializes  post-translational-modification
  :realization
  (:verb "transform" :noun "transformation" 
  :etf (svo-passive)))

(define-category phosphorylation-modification :specializes post-translational-modification)

(define-category acetylation
  :specializes post-translational-modification
  :bindings (uid  "GO:0006473")
  :realization
  (:verb "acetylate" :noun "acetylation"
         :etf (svo-passive)))

(define-category de-acetylation
  :specializes post-translational-modification
  :bindings (uid  "GO:0006476")
  :realization
  (:verb ("de-acetylate" "deacetylate")
   :noun ("de-acetylation" "deacetylation")
   :etf (svo-passive)))

(define-category hyper-acetylation
  :specializes post-translational-modification
  :bindings (uid  "GO:0006476")
  :realization
  (:verb ("hyper-acetylate" "hyperacetylate")
   :noun ("hyper-acetylation" "hyperacetylation")
   :etf (svo-passive)))

(define-category hypo-acetylation
  :specializes post-translational-modification
  :bindings (uid  "GO:0006476")
  :realization
  (:verb ("hypo-acetylate" "hypoacetylate")
   :noun ("hypo-acetylation" "hypoacetylation")
   :etf (svo-passive)))

;; manually added from TRIPS
(define-category acylation
  :specializes post-translational-modification
  :bindings (uid  "GO:0043543")
  :realization
  (:verb "acylate"
   :noun "acylation"
   :etf (svo-passive)))

;; manually added from TRIPS
(define-category de-acylation
  :specializes post-translational-modification
  :bindings (uid  "GO:0035601")
  :realization
  (:verb ("de-acylate" "deacylate")
   :noun ("de-acylation" "deacylation")
   :etf (svo-passive)))

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
  (:verb ("delipidate" "de-lipidate")
   :noun ("delipidation" "de-lipidation")
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
  (:verb "prenylate" 
         :noun "prenylation"
   :etf (svo-passive)))

(define-category isoprenylation
;; can't find a go:id, but the past tense came up for a protein definition
  :specializes prenylation 
  :realization
  (:verb "isoprenylate" 
         :noun "isoprenylation"
   :etf (svo-passive)))

(define-category farnesylation 
  :specializes prenylation ;; based on wikipedia for lipidation
  :bindings (uid  "GO:0018343")
  :realization 
  (:verb "farnesylate"
         :noun "farnesylation"
         :etf (svo-passive) ))

;; manually added from TRIPS
(define-category geranyl-geranylation 
 :specializes prenylation ;; based on wikipedia for lipidation
 :bindings (uid  "GO:0018344") 
  :realization 
    (:verb ("geranyl-geranylate" "geranyl–geranylate") ;; different hyphen type 
     :noun ("geranyl-geranylation" "geranyl–geranylation")
     :etf (svo-passive)))

;; manually added from TRIPS
(define-category nitrosylation
  :specializes post-translational-modification
  :bindings (uid  "GO:0017014")
  :realization
  (:verb "nitrosylate" :noun "nitrosylation"
         :etf (svo-passive)))

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
  :specializes post-translational-modification ;; note: not necessarily post-trans-mod, could be general bio-process, but basing on trips for now, and many article examples are the post-trans-mod
  :bindings (uid  "GO:0018158")
  :realization
  (:verb "oxidate" :noun "oxidation"
   :etf (svo-passive)))

(define-category glycosylation 
 :specializes post-translational-modification 
  :bindings (uid  "GO:0006486")
  :realization 
    (:verb "glycosylate"
     :noun "glycosylation"
     :etf (svo-passive)))

(define-category de-glycosylation 
 :specializes post-translational-modification 
  :bindings (uid  "GO:0006517")
  :realization 
    (:verb ("deglycosylate" "de-glycosylate")
     :noun ("deglycosylation" "de-glycosylation")
     :etf (svo-passive)))

(define-category fucosylation
    :specializes glycosylation
    :bindings (uid  "GO:0036065")
  :realization 
    (:verb "fucosylate"
     :noun "fucosylation"
     :etf (svo-passive)))

(define-category hydroxylation 
 :specializes post-translational-modification 
 :bindings (uid  "GO:0018126")
  :realization 
    (:verb "hydroxylate"
     :noun "hydroxylation"
     :etf (svo-passive)))

(define-category methylation 
  :specializes post-translational-modification ;; uid for protein methylation: GO:0006479
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
  (:verb ("de-methylate" "demethylate")
   :noun ("de-methylation" "demethylation")
   :etf (svo-passive)))

(define-category hyper-methylation 
  :specializes post-translational-modification
  :bindings (uid "NCIT:C20102")
  :restrict ((substrate (:or protein variant dna gene)))
  :realization 
  (:verb ("hyper-methylate" "hypermethylate")
   :noun ("hyper-methylation" "hypermethylation")
   :etf (svo-passive)))

(define-category hypo-methylation 
  :specializes post-translational-modification
  :bindings (uid "NCIT:C121521")
  :restrict ((substrate (:or protein variant dna gene)))
  :realization 
  (:verb ("hypo-methylate" "hypomethylate")
   :noun ("hypo-methylation" "hypomethylation")
   :etf (svo-passive)))

(define-category ribosylation 
 :specializes post-translational-modification 
  :realization 
    (:verb "ribosylate"
     :noun "ribosylation"
     :etf (svo-passive)))

;; manually added from TRIPS
(define-category adp-ribosylation 
 :specializes ribosylation 
  :bindings (uid  "GO:0006471") ;; manually added from TRIPS
  :realization 
    (:verb ("adp-ribosylate" "ADP-ribosylate") 
     :noun ("adp-ribosylation" "ADP-ribosylation")
     :etf (svo-passive)))

;; manually added from TRIPS
(define-category mono-adp-ribosylation 
 :specializes adp-ribosylation 
  :bindings (uid  "GO:0140289") ;; manually added from TRIPS
  :realization 
    (:verb ("mono-adp-ribosylate" "mono-ADP-ribosylate") 
     :noun ("mono-adp-ribosylation" "mono-ADP-ribosylation")
     :etf (svo-passive)))

;; manually added from TRIPS
(define-category poly-adp-ribosylation 
 :specializes adp-ribosylation 
  :bindings (uid  "GO:0070212") ;; manually added from TRIPS
  :realization 
    (:verb ("poly-adp-ribosylate" "poly-ADP-ribosylate")
     :noun ("poly-adp-ribosylation" "poly-ADP-ribosylation")
     :etf (svo-passive)))

(define-category sumoylation 
    :specializes post-translational-modification
    :bindings (uid  "GO:0016925")
  :realization 
    (:verb "sumoylate"
     :noun "sumoylation"
     :etf (svo-passive)))

;; manually added from TRIPS
(define-category desumoylation 
 :specializes post-translational-modification
 :bindings (uid  "GO:0016926") 
  :realization 
    (:verb ("desumoylate" "de-sumoylate")
     :noun ("desumoylation" "de-sumoylation")
     :etf (svo-passive)))

;; manually added from TRIPS
(define-category poly-adenylation 
 :specializes ribosylation 
  :bindings (uid  "NCIT:C18947") ;; manually added from TRIPS
  :realization 
    (:verb ("poly-adenylate" "polyadenylate")
     :noun ("poly-adenylation" "polyadenylation" "RNA polyadenylation")
     :etf (svo-passive)))

;;;---------------
;;; phosphorylate
;;;---------------

;; GO:0016310	
;; "activated IKKα phosphorylates specific serines"
;;  "The phosphorylation of these specific serines"
(if (eq (script) :bio)
    (define-category phosphorylate
      :specializes phosphorylation-modification
      :instantiates self
      :realization
      (:verb ("phosphorylate" :past-participle ("p" "p-" "phosphorylated"))
       :noun "phosphorylation"
       :adj "phospho"
       ;; :etf (svo-passive) <-- messed up the mapping
       :mumble ("phosphorylate" svo :s agent :o substrate)))
    (define-category phosphorylate
      :specializes phosphorylation-modification
      :instantiates self
      :realization
      (:verb ("phosphorylate" :past-participle ("phosphorylated"))
       :noun "phosphorylation"
       :adj "phospho"
       ;; :etf (svo-passive) <-- messed up the mapping
       :mumble ("phosphorylate" svo :s agent :o substrate))))

(define-category auto-phosphorylate
  :specializes phosphorylation-modification
  :realization
  (:verb ("auto-phosphorylate" "autophosphorylate" "autophosphosphorylate")
   :noun ("auto-phosphorylation" "autophosphorylation")
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
  (:verb ("trans-auto-phosphorylate" "trans-autophosphosphorylate")
   :noun ("trans-auto-phosphorylation" "trans-autophosphorylation")
   :etf (sv)))

(define-category dephosphorylate
  :specializes post-translational-modification
  :realization
  (:verb ("dephosphorylate" "de-phosphorylate")
   :noun ("dephosphorylation" "de-phosphorylation" "dephophosphorylation") ;; mispelling from comments
   :etf (svo-passive)))

(define-category diphosphorylate
  :specializes post-translational-modification
  :realization
  (:verb ("diphosphorylate" "di-phosphorylate")
   :noun ("diphosphorylation" "di-phosphorylation" ) ;; mispelling from comments
   :etf (svo-passive)))

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

(define-category hypophosphorylate
  :specializes phosphorylation-modification
  :instantiates self
  :realization
  (:verb ("hypophosphorylate" "hypo-phosphorylate")
         :noun ("hypophosphorylation" "hypo-phosphorylation")
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

;;;---------------
;;; ubiquitination
;;;---------------

; monoubiquitination increases the population 
;;  this process has this effect
; the enzymatic and chemical ubiquitination linkers 
; the monoubiquitinated and unmodified fractions of Ras
; the sensitivity of mUbRas
; our ability to easily generate mUbRas
; the c–terminus of Ubiquitin (Ubiquitin C77)
; Ras ligated to Ubiquitin C77
; ligated to Ubiquitin G76C. <--- point mutation
;;(def-bio "ubiquitin" protein) defined elsewhere with ID
;; not strictly true, but a reasonable approximation. 

(define-category ubiquitination
 :specializes post-translational-modification 
  :realization 
    (:verb ("ubiquitinate" "ubiquitylate" "ubiquinate")
     :noun ("ubiquitination" "ubiquitylation")
     :etf (svo-passive)))

(define-category auto-ubiquitinate
  :specializes ubiquitination
  :realization
  (:verb ("auto-ubiquitinate" "autoubiquitinate"
                              "auto-ubiquitylate" "autoubiquitylate")
   :noun ("auto-ubiquitination" "autoubiquitination"
                                "auto-ubiquitylation" "autoubiquitylation")
   :etf (sv)))

(define-category poly-ubiquitination :specializes ubiquitination
  :bindings (uid  "GO:0000209") ;; manually added from TRIPS
  :realization
  (:verb ("poly-ubiquitinate" "polyubiquitinate" "poly-ubiquitylate" "polyubiquitylate")
  :etf (svo-passive)
  :noun ("poly-ubiquitination" "polyubiquitination" "poly-ubiquitylation" "polyubiquitylation"))) ;; manually added from TRIPS

;; manually added from TRIPS
(define-category de-ubiquitination :specializes post-translational-modification
  :bindings (uid  "GO:0016579") 
  :realization
  (:verb ("de-ubiquitinate" "deubiquitinate" "deubiquinate"
                            "de-ubiquitylate" "deubiquitylate")
   :etf (svo-passive)
   :noun ("de-ubiquitination" "deubiquitination"
                              "de-ubiquitylation" "deubiquitylation")))

;;;------------------------------
;;; mUbRas, monoubiquitinated Ras
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
    (:verb ("monoubiquitinate" "mono-ubiquitinate" "mono-ubiquitylate" "monoubiquitylate")
     :noun ("monoubiquitination" "mono-ubiquitination" "mono-ubiquitylation" "monoubiquitylation")
     :etf (svo-passive)))
