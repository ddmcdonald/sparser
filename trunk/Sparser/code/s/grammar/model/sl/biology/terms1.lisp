;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014 SIFT LLC. All Rights Reserved
;;;
;;;    File: "terms"
;;;  Module: "grammar/model/sl/biology/
;;; version: December 2014

;; Initiated 7/23/14 by lifting proteins from NFkappaB experiment.
;; Moved proteins out to their own file 9/8/14
;;; temporary home for rules
;;; gene  --> mutate gene
;;; enzyme --> bio-process enzyme
;;; move out oncoogene to taxonomy, and mutate to be a verb (so mutated is a past participle)
;; 11/9/14 hack for ', in part,' and terms for g1,...,g5, 'as a consequence' and .exchange' as a bio-process
;; added critical, common, "tumor formation", first stab at "form", revised "condition", revised "G-domain"
;; 12/8/14 Starting cell lines and drugs
;; RJB 12/13/2014 ugly handling of variety, form and analog <<DAVID-- we have to talk about this>>
;; also ugly handling of "et al." to start making it a signal for references, 
;; and get rid of the interpretation of "al." as a bio-entity (couldn't even find where that cam from)
;; RJB 12/14/2014 Added a bunchof stand-in definitions for words that were primed by COMLEX, added cell-line definitions (some) -- need help from <<DAVID>>
;; add MEK/ERK and ERK/MEK as pathway designators, try to define S338 as a residue
;; add form rule for relative-clause --> (that vp)
;; diverse vocabulary hacking
;; 02/18/15 alphabetized terms

(in-package :sparser)

(noun "32P" :super molecule) ;; actually an isotope -- need to adjust taxonomy 
(noun "ability" :super bio-process
      :binds ((agent biological)(result biological))
      :realization
      (:noun "ability" :adj "able"
             :s agent
             :to result
             :of agent))

(noun "absence" :super bio-condition
      :binds ((absent biological)) 
      :realization
      (:noun "absence"
             :of absent))


(adj "active" :super molecule-state
     :binds ((molecule molecule))
     :realization 
     (:adj "active"
           :s molecule))

(noun "activity" :super bio-process
      :binds ((agent biological))
      :realization
      (:noun "activity"
             :of agent))
(def-bio "adenine" nucleotide)
(noun :advance :super bio-process
      :binds ((advancement bio-process))
      :realization 
      (:noun "advancement" 
             :in advancement))

;;(def-bio "agent" bio-entity)
(noun "agonist":super bio-entity) ;; keyword: (ist N) 
(noun "allele" :super bio-variant
      :binds ((basis bio-entity)) ;; this should be for genes and proteins
      :realization
      (:noun "allele"
             :of basis))
(define-adverb "also")
(noun "analog" :super bio-variant
      :binds ((basis bio-entity)) ;; this should be for genes and proteins
      :realization
      (:noun "analog"
             :of basis))
(noun ("analysis" :plural "analyses")
  :super bio-process)


(adj "anticancer" :super predicate)

(noun "approach" :super bio-process)

(define-adverb "as a consequence")
(define-adverb "as expected") ;; not very common, but avoids a break
(noun "assay" :super bio-process)
(define-adverb "at baseline")
(adj "background" :super predicate)
(noun "baseline" :super  bio-process)
(noun "bifc" :super bio-process)
(noun "binder" :super bio-entity)

(adj "biophysical" :super predicate)

(adj "candidate" :super predicate )

(noun "cascade" :super bio-process)

(adj "chemical" :super predicate) ;; keyword: (al ADJ) 


(noun "class" :super bio-variant  ;;NOT SURE THIS IS RIGHT
      :binds ((basis bio-entity)) 
      :realization
      (:noun "class"
             :of basis))

;; This should be made more general
(adj "class I" :super predicate)
(adj "class II" :super predicate)

(adj "close" :super predicate)
(define-unit-of-measure "cm")
(adj "cognate" :super predicate)

(adj "combinatorial" :super predicate) ;; keyword: (al ADJ) 

(adj "common" :super predicate
  :binds ((theme bio-entity))
  :realization (:to theme))

;;; using 'bio-abstract' here as a standin for a better taxonomic treatment
(noun "component" :super bio-abstract)
(noun "concentration" :super bio-scalar
      :binds ((measurable biological))
      :realization 
      (:noun "concentration"
             :of measurable)) ;;levels of incorporated 32P (January sentence 34)
(noun "condition" :super bio-condition)
(noun "conformation" :super bio-entity) ;; keyword: (ion N) 
(adj "conserved" :super predicate) ;; virtually never used as a verb
(define-adverb "constitutively")
(noun "context" :super bio-context) 


(adj "critical" :super predicate
  :binds ((theme bio-entity))
  :realization (:for theme))
(define-adverb "critically")

(adj "cultured" :super predicate)
(adj "current" :super predicate)
(def-bio "cytosine" nucleotide)
(noun "cytosol" :super cellular-location)
(define-unit-of-measure "dalton")
;;(noun "data" :super bio-entity)
(def-bio "data" bio-entity) ;; need something better

(adj "de novo" :super predicate)

(adj "dead" :super predicate)

(adj "deadliest" :super predicate) ;;//// no -- define shortcut, morphology extensions
;; to define the whole comparative paradigm

(noun "defect" :super predicate
      :binds ((defective biological))
      :realization 
      (:NOUN "defect"
             :in defective))
(adj "dependent" :super predicate) ;; keyword: (ent ADJ) 


(noun "derivative" :super molecule)
(noun "development" :super bio-process) ;; keyword: (ment N) 


(noun "difference" :super biological ;;THIS IS DONE SIMPLY TO ALLOW THE VERB ALTER TO TAKE DIFFERENCE AS A SUBJECT
      ;; see sentence 7 of January test "...the differences between the enzymatic and chemical ubiquitination linkers (seven bonds and five bonds, respectively) do not alter GAP–responsiveness..."
      :binds ((compared biological))
      :realization
      (:noun "difference"
             :between compared))


(noun "domain" :super bio-location
      :binds ((substrate bio-entity))
      :realization 
      (:noun "domain"
             :of substrate))
(adj "downstream" :super predicate
  :binds ((theme bio-entity))
  :realization (:for theme
                :from theme
                :of theme))
(noun "dynamics" :super bio-abstract)
(adj "ectopic" :super predicate) ;; keyword: (ic ADJ) 
(define-adverb "ectopically") ;; keyword: ENDS-IN-LY 
(noun "effect" :super bio-process
      :binds ((effector biological)(effectee biological))
      :realization
      (:noun "effect" 
             :of effector
             :on effectee))
(adj "effective" :super predicate
     :binds ((against biological))
     :realization 
     (:adj "effective"
           :against against)) ;; keyword: (ive ADJ) 

(noun "effector" :super protein) ;; NOT SURE WHAT THE RIGHT SUPER is
(noun "EGF" :super protein)
(adj "endogenous" :super predicate) ;; keyword: (ous ADJ) 


(adj "enzymatic" :super predicate)
(noun "et al." :super bib-reference)
(define-adverb "even")
(noun "exchange" :super bio-process)
(noun "exclusivity" :super bio-abstract) ;; keyword: (ity N)
(noun "factor" :super bio-entity) ;; keyword: (or N) 
(noun "fate" :super bio-abstract)
(noun "FCS"  :super bio-entity)
(noun "fetal calf serum" :super bio-entity)
(noun "fig" :super article-figure) 
(noun "figure" :super article-figure)

(define-adverb "finally")
(noun "finding" :super bio-entity) ;; like data(noun "paradigm" :super bio-entity)
(noun "form" :super bio-variant
      :binds ((basis bio-entity)) ;; this should be for genes and proteins
      :realization
      (:noun "form"
             :of basis))

(noun "fragment" :super bio-entity
      :binds ((whole bio-entity))
      :realization
      (:noun "fragment"
             :of whole))

(noun "function" :super bio-process
      :binds ((functional bio-entity)) ;; this should be for genes and proteins
      :realization
      (:noun "function"
       :of functional))
(adj "further" :super predicate)
(define-adverb "furthermore")
(noun "G-domain" :super protein-segment) ;; somehow (def-bio "G-domain" protein-segment) did not work

(def-bio "g1" bio-entity)
(def-bio "g2" bio-entity)
(def-bio "g3" bio-entity)
(def-bio "g4" bio-entity)
(def-bio "g5" bio-entity)
(adj "genetic" :super predicate) ;; keyword: (al ADJ) 
(noun "group" :super bio-abstract)
(def-bio "guanine" nucleotide)
(noun "heterodimer" :super molecule)
(adj "high" :super predicate)
(noun "high performance liquid chromatography" :super bio-method)
(define-adverb "however")
(noun "human" :super species)
(adj "identical" :super predicate
     :binds ((basis biological)
             (comparator biological))
     :realization
     (:adj "identical"
           :s basis
           :to comparator))

(define-adverb "in part")
(adj "in vivo" :super bio-context)
(adj "in vitro" :super bio-context)
(adj "inactive" :super molecule-state
     :binds ((molecule molecule))
     :realization 
     (:adj "inactive"
           :s molecule))
(adj "inducible" :super predicate) ;; keyword: (ible ADJ) 
(adj "ineffective" :super predicate
     :binds ((against biological))
     :realization 
     (:adj "ineffective"
           :against against)) ;; keyword: (ive ADJ) 
(noun "inhibitor" :super bio-entity) ;; keyword: (or N) 

(adj "initial" :super predicate)
(adj "insensitive" :super predicate
      :binds ((subject biological)(cause biological))
      :realization
      (:adj "insensitive"
             :s subject
             :to cause))
   
(noun "insensitivity" :super bio-scalar
      :binds ((subject biological)(cause biological))
      :realization
      (:noun "insensitivity"
             :of subject
             :to cause))
(adj "integrative" :super predicate) ;; keyword: (ive ADJ) 
(adj "intriguing" :super predicate) ;; keyword: ENDS-IN-ING 
(noun "isoform" :super bio-variant
      :binds ((basis bio-entity)) ;; this should be for genes and proteins
      :realization
      (:noun "isoform"
             :of basis))
(adj "kinase-dead" :super predicate)
(adj "kinetic" :super predicate)
(noun "knockdown" :super bio-method)
(noun "length" :super bio-scalar)
(noun "level" :super bio-scalar
      :binds ((measurable biological))
      :realization 
      (:noun "level"
             :of measurable)) ;;levels of incorporated 32P (January sentence 34)
(define-adverb "likely")
(noun "linker" :super molecule) ;; not sure if it is a protein or short stretch of DNA in the case used
(noun "liquid chromatography" :super bio-method)
(adj "long" :super predicate)
(adj "long-term" :super predicate)
(adj "low" :super predicate)
(noun "manner" :super bio-process) ;; by chemical or genetic means
(noun "mass" :super measurement)
(noun "mass spectrometry" :super bio-method)
(noun "means" :super bio-process) ;; by chemical or genetic means

(adj "measurable" :super predicate) ;; keyword: (able ADJ) 
(noun "mechanism" :super bio-process
      :binds ((process bio-process))
      :realization
      (:noun "mechanism"
             :of process))
(define-adverb "mechanistically")
(delete-adj-cfr (resolve/make "independent"))
(adj "independent" :super predicate) ;; keyword: (ent ADJ) 
(noun "membrane" :super cellular-location)
(noun "method" :super bio-process)
(noun "mitogen" :super molecule)
(define-unit-of-measure "mL")
(define-unit-of-measure "ml")
(noun "mode" :super bio-process
      :binds ((process bio-process))
      :realization
      (:noun "mode"
             :of process))
(noun "model" :super biological) ;; almost never used as a verb
(noun "modeling" :super biological) ;; but modeling is a nominal that is used
(adj "molecular" :super predicate) ;; It's realated to molecule, but how exactly? Seems wrong to jump to "is made of molecules"
(define-adverb "moreover")
(noun "mortality" :super bio-abstract) ;;/// relationship to "mortal" ??
(adj "mutual" :super predicate) ;; keyword: (al ADJ) 

(adj "native" :super predicate)
(define-adverb "nevertheless")
(define-adverb "next")
(define-unit-of-measure "nM")
(define-unit-of-measure "nm")
(noun "NMR" :super bio-method)

(define-adverb "notably")
(noun "nucleus" :super cellular-location)

;; These three want to be synonyms
(noun "open reading frame" :super bio-entity)
(noun "open reading frames" :super bio-entity)
(noun "ORF" :super bio-entity) ;; same as above -- need to figure out how to get the category spelling right

(noun "order of magnitude" :super bio-abstract)

(noun "panel" :super bio-process
      :binds ((component molecule)) ;; this should be for genes and proteins
      :realization
      (:noun "panel"
             :of component))
(noun "paradigm" :super bio-abstract)
(noun "paradox" :super bio-entity)

(adj "parallel" :super predicate)
(noun "partner" :super bio-abstract)
(noun "patient" :super bio-entity)
(adj "pharmacological" :super predicate) ;; keyword: (al ADJ) 

(adj "physiological" :super predicate)

(noun "phenotype" :super bio-entity)
(noun "plasma" :super cellular-location)
(noun "plasma membrane" :super cellular-location)
(adj "polyclonal" :super predicate)
(noun "population" :super bio-entity
      :binds ((element biological))
      :realization
      (:noun "population"
             :of element))  
(noun "possibility" :super bio-abstract) ;; keyword: (ity N) 
(adj "potent" :super predicate
  :binds ((theme bio-entity))
  :realization (:for theme))
  
(noun "presence" :super bio-context
      :binds ((context biological))
      :realization 
      (:noun "presence" 
             :of context)) ;; keyword: (ence N) 
(adj "present" :super predicate) ;; keyword: (ent ADJ) 
(adj "prevalent" :super predicate)
(define-adverb "primarily") ;; keyword: ENDS-IN-LY 
(adj "prior" :super predicate
  :binds ((event . bio-process))
  :realization (:to event))
(noun "proportion" :super bio-scalar
      :binds ((basis bio-entity)) ;; this should be for genes and proteins
      :realization
      (:noun "proportion"
             :of basis))
(adj "putative" :super predicate)
(noun "radioactivity" :super bio-abstract
      :binds ((material molecule))
      :realization
      (:noun "radioactivity" :adj "radioactive"
             :of material))
(noun "range" :super bio-scalar)
(noun "RBD" :super protein-segment
      :binds ((substrate bio-entity))
      :realization 
      (:noun "RBD"
             :of substrate)) ;; somehow (def-bio "G-domain" protein-segment) did not work
(adj "recombinant" :super predicate)
(adj "refractory" :super predicate
     :binds ((treatment bio-process))
     :realization
     (:to treatment))
     ;; keyword: (ory ADJ)
(noun "region" :super bio-location
      :binds ((bounds biological))
      :realization
      (:noun "region"
             :between bounds))
(adj "relative" :super predicate
     :binds ((comparator biological))
     :realization
     (:to comparator))

(noun "response" :super bio-process
    :binds ((beneficiary biological)(agent biological))
    :realization
    (;; :verb "respond" cant get the right :etf for verbs
     :noun "response"
     :of beneficiary
     :to agent))

(adj "responsible" :super predicate ;; adj/noun "resposibility"
  :binds ((theme bio-entity))
  :realization (:for theme))
(noun "responsiveness" :super bio-scalar)
(noun "rna" :super molecule)
(noun "rnai" :super bio-process)

(noun "scaffold" :super protein) 
(noun "scale" :super bio-scalar)     
(noun "screen" :super  bio-process)
(adj "selective" :super predicate
  :binds ((agent biological)(theme bio-entity))
  :realization
  (:s agent
      :for theme))

(adj "sensitive" :super predicate
      :binds ((subject biological)(cause biological))
      :realization
      (:adj "sensitive"
             :s subject
             :to cause))
(noun "sensitivity" :super bio-scalar
      :binds ((subject biological)(cause biological))
      :realization
      (:noun "sensitivity"
             :of subject
             :to cause)) ;; keyword: (ity N)
(noun "serum" :super bio-entity) 
(noun "setting" :super bio-entity)
(adj "short-lived" :super predicate)

(adj "similar" :super predicate
  :binds ((item biological)(compared-to biological))
  :realization 
  (:s item
      :to compared-to))
(define-adverb "similarly")
 
;; Jan 29 "two MAPK phosphorylation sites in ASPP1 and ASPP2."
;; Jan 14 "mutation of the primary site of monoubiquitination"
;; 16 "mUbRas, modified at a single site, "
(noun "site" :super bio-location
  :binds ((process bio-process))
  :realization
     (:noun "site"
      :etf pre-mod
      :m process
      :of process))

(find-or-make-individual 'qualitative-rate :name "slow")
(adj "specific" :super predicate :super bio-abstract
     :binds ((theme biological)(situation biological)(beneficiary biological))
     :realization
     (:adj "specific"
           :s theme
           :to situation
           :for beneficiary))


(noun "state" :super bio-entity)

(noun "stoichiometry" :super bio-abstract)
(noun "strategy" :super bio-process)
(noun "substrate" :super bio-entity)
(noun "success" :super bio-abstract)
(adj "suitable" :super predicate)
(adj "supplementary" :super predicate) ;; keyword: (ary ADJ)
(noun "surface area" :super bio-location)
(define-adverb "surprisingly")
(adj "synthetic" :super predicate)
(noun "table" :super article-table)
(noun "therapeutics" :super bio-abstract) ;; keyword: (ics N) 
(define-adverb "therefore")
(define-adverb "thereby")
(noun "throughput" :super measurement)
(define-adverb "thus")
(noun "tissue" :super bio-context)
(define-adverb "to this end")
(adj "transient" :super predicate)
(noun "treatment":super bio-abstract) ;; keyword: (ment N) 
(noun "trial" :super bio-abstract)
(noun "tumor" :super bio-location)
(noun "tumor formation" :super bio-process)
(noun "tumorigenesis" :super bio-process)
(adj "unclear" :super predicate)
(adj "unmodified" :super predicate)
(define-adverb "until now")
(noun "upstream" :super bio-context
      :binds ((relative-to biological))
      :realization
      (:noun "upstream"
             :of relative-to))
(adj "useful" :super predicate
     :binds ((purpose bio-process))
     :realization
     (:adj "useful"
           :for purpose))
(noun "variety" :super bio-variant
      :binds ((basis bio-entity)) ;; this should be for genes and proteins
      :realization
      (:noun "variety"
             :of basis))
(noun "variation" :super bio-variant
      :binds ((basis biological)(scale bio-scalar)) ;; this should be for genes and proteins
      :realization
      (:noun "variation"
             :of basis
             :in basis
             :on scale))

(adj "wild-type" :super predicate)





;;--- ddm 12/18/14 hacked phrases to 'get through' more text
(adj "least-selective" :super predicate)
(adj "long-term" :super predicate) ;; #51 "effective long-term treatment strategies"
(noun "serine/threonine") ;; want to get NG from "the serine/threonine kinase"
;; not sure of this -- was def-bio, but that now fails
(noun "C-RAF:B-RAF" :super heterodimer)





;;;------------
;;; cell lines
;;;------------
; were expressed in HEK293T cells
; BRAF mutant thyroid cell lines
; HER2-amplified breast cancer cell lines
; breast carcinoma cell lines
; all six BRAF-mutant thyroid cancer cell lines
; increased basal HER3 in 8505C cells
; confirmed in a second cell line
; our panel of cancer cell lines (Figure 6A).
; the HCC827 NSCLC cell line

(noun "cell" :super cell-line)
(noun "line" :super cell-line)
(noun "cell line" :super cell-line)

(defun def-cell-line (line)
  (def-bio/expr line 'cell-line :takes-plurals nil))

(def-cell-line "A375")
(def-cell-line "D04")
(def-cell-line "D25")
(def-cell-line "MM415")
(def-cell-line "MM485")
(def-cell-line "OUMS-23")
(def-cell-line "RPMI-7951")
(def-cell-line "SkMel24")
(def-cell-line "SkMel28")
(def-cell-line "WM266.4")
(def-cell-line "WM852")
(def-cell-line "HEK293T")
(def-cell-line "HKe3 ER:HRASV12")
(def-cell-line "HKe3")
(def-cell-line "Saos2")


;;;------------------
;;; Units of measure
;;;------------------

;;-- see model/dossiers/units-of-measure.lisp for more forms.


(define-unit-of-measure "mm")
#+ccl (define-unit-of-measure "μm")
;;(define-unit-of-measure "µm") this fails in ACL. Reading in UTF-8 ?

(define-unit-of-measure "kb")



;;;-------------------------------------------------------
;;; Hacked up to 'get through' the 9/4/14 target abstract
;;;-------------------------------------------------------



;; Not quite right -- DAVID -- how do I make "et al." be a word that is the head of a bibliographic reference
(define-category bib-reference 
  :specializes bio-abstract)



;;;------------------------------------------------------------------
;;; all remaining (including overlap with the nouns and verbs above)
;;;------------------------------------------------------------------
 
"articulate" 
"assay" 
"auto" 
"binder"
"effect" 
"fate" 
"fig" 
"groups" 
"insights" 
"manner" 
"trials" 

(define-category article-figure
  :specializes bio-abstract)
(define-category article-table
  :specializes bio-abstract)

; a {wide, large, extensive, big} variety of ..
;; "variety" is an "of quantifier" like "many" or "some"
;; Def-bio doesn't appreciate part of speech, so hacked the
;; Needs a whole model
;; activated forms of the Ras proteins
;; cellular "GO:0005623"
;; cytosolic "GO:0005829"
;; presenting plural version here. #52
;; these adverbs are added to make the simple subj+verb test succeed in the island-driving phase
;; we need better semantics for these <<DAVID>>
;;(noun "formation")
;;--- j5
;;--- j8
;;; new words to be defined -- were primed bhy COMLEX
;;adjective
;;adverb
;;need prep cases
;;noun
;;;POTENTIAL AMBIGUITIES TO BE SUPPRESSED
"express";;ambiguous between (ADJECTIVE :super predicate ADVERB NOUN VERB)
"show";;ambiguous between (NOUN VERB)
"describe"
"paradigm"
"maintain"
"keep";;ambiguous between (NOUN VERB)
"approach";;ambiguous between (NOUN VERB)
"elucidate"
"escape";;ambiguous between (NOUN VERB)
"fate";;ambiguous between (NOUN VERB)
"membrane"
"complex";;ambiguous between (ADJECTIVE :super predicate NOUN)
"scaffold"
"know";;ambiguous between (NOUN VERB)
"component";;ambiguous between (ADJECTIVE NOUN)
"wild";;ambiguous between (ADJECTIVE ADVERB)
"type";;ambiguous between (NOUN VERB)
"dead";;ambiguous between (ADJECTIVE ADVERB)
"derivative";;ambiguous between (ADJECTIVE NOUN)
"effect";;ambiguous between (NOUN VERB)
"resistance"
"candidate"
"screen";;ambiguous between (NOUN VERB)
"group";;ambiguous between (NOUN VERB)
"constitute"
"response"
"high";;ambiguous between (ADJECTIVE ADVERB)
"engender"
"target";;ambiguous between (NOUN VERB)
"observation"
"assay";;ambiguous between (NOUN VERB)


;; nouns and adjectives from January test



;; overnight

(define-category affinity :specializes bio-process
     :binds ((object bio-entity))
     :realization
     (:noun "affinity"
            :for object))

(define-category complementation :specializes bio-process
  :binds ((complement bio-entity))
  :realization
  (:noun "complementation"
         :for complement))

(define-category fluorescence :specializes bio-process
  :realization
  (:noun "fluorescence"))

(define-category action :specializes bio-process
  :binds ((actor biological))
  :realization
  (:noun "action"
         :of actor))


(define-category evidence :specializes bio-abstract
  :binds ((fact biological))
  :realization
  (:noun "evidence"
         :for fact))

  






(define-category efficacy :specializes predicate
  :binds ((item biological))
  :realization
  (:noun "efficacy"
         :of item))

(define-category antibody :specializes protein
  :binds ((antigen molecule))
  :realization
  (:noun "antibody"
         :to antigen
         :for antigen))

(define-category knockdown :specializes bio-process
  :binds ((antigen molecule))
  :realization
  (:noun "knockdown"
         :to antigen
         :for antigen))

(define-category stable :specializes bio-abstract
     :binds ((agent biological)(context bio-context))
     :realization
     (:adj "stable" 
           :s agent
           :in context))







