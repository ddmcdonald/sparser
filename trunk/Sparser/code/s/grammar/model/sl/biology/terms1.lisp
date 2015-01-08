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
(in-package :sparser)


;;;-------
;;; rules
;;;-------

(define-lambda-variable 'trailing-parenthetical
  'parentheses ;; value restriction
  category::expressible-type) ;; overly high type bound to.
;; used by knit-parens-into-neighbor 


(define-debris-analysis-rule comma-adverb-comma
  :pattern ( "," adverb "," )
  :action (:function respan-edge-around-one-word second first third))

;; (p "in the 'off' state.")
(define-no-space-pattern scare-quotes
  :acceptance-function cover-scare-quotes
  :transition-net ((:initial + "'" -> :single-quote-seen)
                   (:single-quote-seen + word -> :single-quote-word)
                   (:single-quote-word + "'" -> :both-scare-quotes-seen))
  :accept-states ( :both-scare-quotes-seen ))

(defun cover-scare-quotes (start-pos end-pos q1 word q2)
  ;; The start-pos is just before the left quote. The end-pos is
  ;; just after it. The q's are the word quote. 
  (push-debug `(,start-pos ,end-pos ,q1 ,word ,q2))
  ;; The search was over words. Now have to look for 
  ;; the strongest edge over the word.
  (let* ((word-pos (chart-position-after start-pos))
         (ev (pos-starts-here word-pos))
         (edge (highest-edge ev)))
    (respan-edge-around-one-word edge q1 q2)))
  
;;/// move somewhere else
(defun respan-edge-around-one-word (word-edge left-term right-term)
  (let ((word-category (edge-category word-edge))
        (word-form (edge-form word-edge))
        (word-referent (edge-referent word-edge))
        (new-start-pos (chart-position-before (pos-edge-starts-at word-edge)))
        (new-end-pos (chart-position-after (pos-edge-ends-at word-edge))))
    (let ((edge (make-completed-unary-edge
                 ;; We're ignoring the commas in the edge structure
                 ;;/// this is usually an interjection, how could we
                 ;; indicate that
                 (pos-starts-here new-start-pos) ;; the edge vector
                 (pos-ends-here new-end-pos)
                 :respan-edge-around-one-word ;; rule
                 word-edge ;; daughter
                 word-category 
                 word-form
                 word-referent)))
      (setf (edge-constituents edge) `(,left-term ,word-edge ,right-term))
      ;; (push-debug `(,edge)) (break "look at edge")
      edge)))


(defparameter *trap-needed-extensions-to-type-marker* nil)

(def-k-method compose ((i bio-entity) (marker type-marker))
  ;; So far triggered from noun-noun-compound with a phrase
  ;; like "the Ras protein"
  (push-debug`(,i ,marker)) ;;(break "type-marker compose")
  (let ((category (itype-of marker)))
    (or (itypep i category)
        (case (cat-symbol category)
          ;(pathway
          ; (
          (otherwise
           (unless *trap-needed-extensions-to-type-marker*
             (push-debug `(,i ,marker ,category ,(parent-edge-for-referent)))
             (error "Haven't defined a constructor for the ~
                     type-marker ~a" category)))))
    i))


;;;------------
;;; adjectives
;;;------------

(adj "able" ;; #33  -- but not working. Timing???
  :binds ((enabled bio-process))
  :realization (:to enabled))

(adj "close" :super modifier)

(adj "critical" 
  :binds ((theme bio-entity))
  :realization (:for theme))


(adj "common"
  :binds ((theme bio-entity))
  :realization (:to theme))

(adj "cultured")

(adj "deadliest") ;;//// no -- define shortcut, morphology extensions
;; to define the whole comparative paradigm


(adj "downstream"
  :binds ((theme bio-entity))
  :realization (:for theme
                :from theme
                :of theme))

(adj "enzymatic")

(adj "initial")

(adj "low" :super modifier)

(adj "molecular") ;; It's realated to molecule, but how exactly? Seems wrong to jump to "is made of molecules"


(adj "prior"
  :binds ((event . bio-process))
  :realization (:to event))

(adj "responsible" ;; adj/noun "resposibility"
  :binds ((theme bio-entity))
  :realization (:for theme))

(adj "selective"
  :binds ((theme bio-entity))
  :realization (:for theme))

(adj "potent"
  :binds ((theme bio-entity))
  :realization (:for theme))


;;------- /// stopped alpabetizing here


  
(adj "anticancer")
(adj "candidate" )
(adj "chemical") ;; keyword: (al ADJ) 
(adj "combinatorial" :super modifier) ;; keyword: (al ADJ) 
(adj "comparable" :super modifier) ;; keyword: (able ADJ) 
(adj "conserved" :super modifier) ;; virtually never used as a verb
(adj "de novo" :super modifier)
(adj "dead")
(adj "dependent" :super modifier) ;; keyword: (ent ADJ) 
(adj "ectopic" :super modifier) ;; keyword: (ic ADJ) 
(adj "effective" :super modifier) ;; keyword: (ive ADJ) 
(adj "endogenous" :super modifier) ;; keyword: (ous ADJ) 
(adj "further")
(adj "genetic") ;; keyword: (al ADJ) 
(adj "high")
(adj "in vitro" :super modifier)
(adj "inactive" :super modifier) ;; keyword: (ive ADJ) 
(adj "inducible") ;; keyword: (ible ADJ) 
(adj "ineffective" :super modifier) ;; keyword: (ive ADJ) 
(adj "integrative" :super modifier) ;; keyword: (ive ADJ) 
(adj "intriguing" :super modifier) ;; keyword: ENDS-IN-ING 
(adj "kinase-dead" :super modifier)
(adj "lon-term")
(adj "long")
(adj "measurable") ;; keyword: (able ADJ) 
(adj "mekindependent" :super modifier) ;; keyword: (ent ADJ) 
(adj "mutual" :super modifier) ;; keyword: (al ADJ) 
(adj "parallel")
(adj "pharmacological" :super modifier) ;; keyword: (al ADJ) 
(adj "present" :super modifier) ;; keyword: (ent ADJ) 
(adj "recombinant" )
(adj "refractory" :super modifier) ;; keyword: (ory ADJ) 
(adj "sensitive" :super modifier) ;; keyword: (ive ADJ) 
(adj "supplementary" :super modifier) ;; keyword: (ary ADJ) 
(adj "wild-type")

(define-adjective "physiological")
(define-adjective "prevalent")

(define-adverb "also")
(define-adverb "as a consequence")
(define-adverb "as expected") ;; not very common, but avoids a break
(define-adverb "at baseline")
(define-adverb "critically")
(define-adverb "ectopically") ;; keyword: ENDS-IN-LY 
(define-adverb "finally")
(define-adverb "in part")
(define-adverb "likely")
(define-adverb "moreover")
(define-adverb "nevertheless")
(define-adverb "nevertheless")
(define-adverb "next")
(define-adverb "notably")
(define-adverb "primarily") ;; keyword: ENDS-IN-LY 
(define-adverb "similarly")
(define-adverb "surprisingly")
(define-adverb "therefore")

(noun "conformation" :super bio-entity) ;; keyword: (ion N) 
(noun "ORF" :super bio-entity) ;; same as above -- need to figure out how to get the category spelling right
(noun "activity" :super bio-process)
;;(def-bio "agent" bio-entity)
(noun "agonist":super bio-entity) ;; keyword: (ist N) 
(noun "allele" :super bio-variant
      :binds ((basis bio-entity)) ;; this should be for genes and proteins
      :realization
      (:noun "allele"
             :of basis))
(noun "analog" :super bio-variant
      :binds ((basis bio-entity)) ;; this should be for genes and proteins
      :realization
      (:noun "analog"
             :of basis))
(noun "approach" :super bio-process)
(noun "assay" :super bio-process)
(noun "baseline" :super  bio-process)
(noun "binder" :super bio-entity)
(noun "cascade" :super bio-process)
(noun "class" :super bio-variant  ;;NOT SURE THIS IS RIGHT
      :binds ((basis bio-entity)) 
      :realization
      (:noun "class"
             :of basis))
(noun "complex" :super molecule)
(noun "condition" :super bio-condition)
(noun "context" :super bio-context) 
;;(noun "data" :super bio-entity)
(noun "cytosol" :super cellular-location)
(def-bio "data" bio-entity) ;; need something better
(noun "derivative" :super molecule)
(noun "development" :super bio-process) ;; keyword: (ment N) 
(noun "domain" :super bio-location)
(noun "et al." :super bib-reference)
(noun "effector" :super protein) ;; NOT SURE WHAT THE RIGHT SUPER is
(noun "exchange" :super bio-process)
(noun "factor" :super bio-entity) ;; keyword: (or N) 
(noun "fig" :super article-figure) 
(noun "figure" :super article-figure)
(noun "finding" :super bio-entity) ;; like data(noun "paradigm" :super bio-entity)
(noun "form" :super bio-variant
      :binds ((basis bio-entity)) ;; this should be for genes and proteins
      :realization
      (:noun "form"
             :of basis))
(noun "function" :super bio-process)
(noun "heterodimer" :super molecule)
(noun "human" :super species)
(noun "inhibitor" :super bio-entity) ;; keyword: (or N) 
(noun "isoform" :super bio-variant
      :binds ((basis bio-entity)) ;; this should be for genes and proteins
      :realization
      (:noun "isoform"
             :of basis))
(noun "knockdown" :super bio-process)
(noun "manner" :super bio-process) ;; by chemical or genetic means
(noun "mass spectrometry" :super bio-process)
(noun "means" :super bio-process) ;; by chemical or genetic means
(noun "mechanism" :super bio-process)
(noun "membrane" :super cellular-location)
(noun "NMR" :super bio-process)

(noun "nucleus" :super cellular-location)
(noun "method" :super bio-process)
(noun "mitogen" :super molecule)
(noun "open reading frame" :super bio-entity)
(noun "open reading frames" :super bio-entity)
;;(noun ("order of magnitude" :plural "orders of magnitude") :super abstract)
(noun "order of magnitude" :super abstract)
(noun "panel" :super bio-process
      :binds ((component molecule)) ;; this should be for genes and proteins
      :realization
      (:noun "panel"
             :of component))
(noun "panel" :super bio-process)
(noun "paradox" :super bio-entity)
(noun "patient" :super bio-entity)
(noun "phenotype" :super bio-entity)
(noun "plasma" :super cellular-location)
(noun "range" :super measurement)
(noun "rate" :super measurement
      :binds ((process bio-process) (components biological))
      :realization 
      (:noun "rate"
             :of process ; 
             :for components))
(noun "ratio" :super measurement)
(noun "region" :super bio-location)
(noun "rna" :super molecule)
(noun "rnai" :super bio-process)
(noun "scaffold" :super protein) 
(noun "screen" :super  bio-process)
(noun "setting" :super bio-entity)
(noun "signalling" :super bio-process)  ;; this is an alternate spelling for "signaling"
(noun "site" :super bio-location)
(noun "state" :super bio-entity)
(noun "strategy" :super bio-process)
(noun "surface area" :super bio-location)
(noun "table" :super article-table)
(noun "target" :super bio-entity)
(noun "throughput" :super measurement)
(noun "tissue" :super bio-context)
(noun "tumor formation" :super bio-process)
(noun "tumor formation" :super bio-process)
(noun "tumor" :super bio-location)
(noun "variety" :super bio-variant
      :binds ((basis bio-entity)) ;; this should be for genes and proteins
      :realization
      (:noun "allele"
             :of basis))

;;; using 'abstract' here as a standin for a better taxonomic treatment
(noun "component" :super abstract)
(noun "effect" :super bio-process
      :binds ((effector biological)(effectee biological))
      :realization
      (:noun "effect" 
             :of effector
             :on effectee))
(noun "exclusivity" :super abstract) ;; keyword: (ity N) 
(noun "fate" :super abstract)
(noun "group" :super abstract)
(noun "model" :super biological) ;; almost never used as a verb
(noun "modeling" :super biological) ;; but modeling is a nominal that is used
(noun "mortality" :super abstract) ;;/// relationship to "mortal" ??
(noun "paradigm" :super abstract)
(noun "partner" :super abstract)
(noun "possibility" :super abstract) ;; keyword: (ity N) 
(noun "presence" :super bio-context
      :binds ((context biological))
      :realization 
      (:noun "presence" 
             :of context)) ;; keyword: (ence N) 
(noun "sensitivity" :super abstract) ;; keyword: (ity N) 
(noun "stoichiometry" :super abstract)
(noun "success" :super abstract)
(noun "therapeutics" :super abstract) ;; keyword: (ics N) 
(noun "treatment":super abstract) ;; keyword: (ment N) 
(noun "trial" :super abstract)


;;--- ddm 12/18/14 hacked phrases to 'get through' more text
(adj "least-selective")
(adj "long-term") ;; #51 "effective long-term treatment strategies"
(noun "serine/threonine") ;; want to get NG from "the serine/threonine kinase"
;; not sure of this -- was def-bio, but that now fails
(noun "C-RAF:B-RAF" :super heterodimer)

;; UGLY -- but avoids a break
(adj "our")


(noun "G-domain" :super protein-segment) ;; somehow (def-bio "G-domain" protein-segment) di not work

(def-bio "g1" bio-entity)
(def-bio "g2" bio-entity)
(def-bio "g3" bio-entity)
(def-bio "g4" bio-entity)
(def-bio "g5" bio-entity)



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


;;;------------------
;;; Units of measure
;;;------------------

;;-- see model/dossiers/units-of-measure.lisp for more forms.
(define-unit-of-measure "nM")
(define-unit-of-measure "nm")
(define-unit-of-measure "cm")
(define-unit-of-measure "mm")
#+ccl (define-unit-of-measure "μm")
;;(define-unit-of-measure "µm") this fails
(define-unit-of-measure "mL")
(define-unit-of-measure "ml")
(define-unit-of-measure "kb")
(define-unit-of-measure "dalton")

(def-form-rule (that vg)
  :form relative-clause
  :referent (:daughter right-edge))

(def-form-rule (that vp)
  :form relative-clause
  :referent (:daughter right-edge))

(def-cfr rate-of-process (rate-of-process-of release)
  ;;//// The semantic-composition based on 'release' being 
  ;; a subtype of 'process' is not working. This is an
  ;; expedient in the meantime. 
  ;; See rules in measurements.lisp that want to be in 
  ;; a fancy ETF.
  :form np
  :referent (:head left-edge
             :bind (process right-edge)))

(find-or-make-individual 'qualitative-rate :name "slow")

;;;-------------------------------------------------------
;;; Hacked up to 'get through' the 9/4/14 target abstract
;;;-------------------------------------------------------

#+ignore
(define-category signal-transduction ;;// same flaw as small molecule
  :specializes bio-process
  :lemma (common-noun "signal transduction"))

(def-cfr enzyme (bio-process enzyme)
  :form n-bar
  :referent (:head right-edge :function passive-premodifier left-edge right-edge patient))


(def-cfr adverb (adverb comma)
  :form adverb
  :referent (:head left-edge))

;; Not quite right -- DAVID -- how do I make "et al." be a word that is the head of a bibliographic reference
(define-category bib-reference 
  :specializes abstract)

(def-cfr semicolon (";")
  :form punctuation)



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
  :specializes abstract)
(define-category article-table
  :specializes abstract)

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
"express";;ambiguous between (ADJECTIVE ADVERB NOUN VERB)
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
"complex";;ambiguous between (ADJECTIVE NOUN)
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
"model";;ambiguous between (NOUN VERB)
"engender"
"target";;ambiguous between (NOUN VERB)
"observation"
"assay";;ambiguous between (NOUN VERB)


;; nouns and adjectives from January test
(adj "biophysical" :super modifier)
(adj "identical" :super modifier)
(adj "insensitive" :super modifier)
(adj "kinetic" :super modifier)
(adj "native" :super modifier)
(adj "putative" :super modifier)
(adj "relative" :super modifier)
(adj "suitable" :super modifier)
(adj "unclear" :super modifier)
(adj "unmodified" :super modifier)
 
(adj "ability" :super abstract)
(noun "absence" :super abstract)
(noun ("analysis" :plural "analyses")
  :super bio-process) 
(noun "fragment" :super bio-entity)
(noun "position" :super bio-location)
(noun "tumorigenesis" :super bio-process)
(noun "influence" :super bio-process)
(noun "proportion" :super measurement)
(noun "population" :super bio-entity)

(noun ("analysis" :plural "analyses")
  :super bio-process)