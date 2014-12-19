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

(in-package :sparser)



;;--- Cell lines
; were expressed in HEK293T cells
; BRAF mutant thyroid cell lines
; HER2-amplified breast cancer cell lines
; breast carcinoma cell lines
; all six BRAF-mutant thyroid cancer cell lines
; increased basal HER3 in 8505C cells
; confirmed in a second cell line
; our panel of cancer cell lines (Figure 6A).
; the HCC827 NSCLC cell line



;;--- other things with clear markers
; the ZFN217 transcription factor
; and CtBP1/CtBP2 corepressors, CtBPs
; the HER3 promoter
; expression of HER3
; inhibition of HER3 transcription


;;--- Pathways
; diverse signaling pathways
; specific effector pathways
; specific effector pathway(s)
; the Raf/MEK/ERK pathway
; MAPK pathway inhibitors / inhibition


;;;---------------------------------------------------
;;; Definitions to simplify doing the Julie sentences
;;;---------------------------------------------------

;;---- j1

(adj "deadliest") ;;//// no -- define shortcut, morphology extensions
;; to define the whole comparative paradigm

;;(np-head "cancer")

(adj "responsible" ;; adj/noun "resposibility"
  :subject 'bio-entity
  :theme 'bio-entity
  :subcategorization '((for np) (theme)))

(adj "critical" 
  :subject 'bio-entity
  :theme 'bio-entity
  ;;DAVID -- this didn't work when I supbstitued a semantic category for np -- WHY?
  :subcategorization '((for np) (theme)))

(adj "common"
  :subject 'bio-entity
  :theme 'bio-entity
  ;;DAVID -- this didn't work when I supbstitued a semantic category for np -- WHY?
  :subcategorization '((to np) (theme)))

(adj "initial"
  :subject 'bio-entity
  :theme 'bio-entity)

(adj "selective"
  :subject 'bio-entity
  :theme 'bio-entity ;; NOT SURE WHAT THEME is in this case
  :subcategorization '((for np) (theme)))

(adj "potent"
  :subject 'bio-entity
  :theme 'bio-entity ;; NOT SURE WHAT THEME is in this case
  :subcategorization '((for np) (theme)))

(adj "prior"
  :subject 'bio-entity
  :theme 'bio-entity) ;; NOT SURE WHAT THEME is in this case

(adj "downstream"
  :subject 'bio-entity
  :theme 'bio-entity ;; NOT SURE WHAT THEME is in this case
  :subcategorization '((for np) (theme))) ;; also from and of

(adj "close" :super 'modifier)
(adj "low" :super 'modifier)
(adj "de novo" :super 'modifier)
(adj "in vitro" :super 'modifier)


(def-bio "tumor formation" bio-process)

;;(np-head "human") ;;/// check people code
(def-bio "human" species)
(np-head "mortality") ;;/// relationship to "mortal" ??
(np-head "drug" :super 'molecule) 
(np-head "rna" :super 'molecule)
(np-head "rnai" :super 'bio-process)



;;--- j2

#| Importantly the signaling enzymes encoded by PIK3CA and BRAF are, in part,
regulated by direct binding to activated forms of the Ras proteins
suggesting that dysregulation of this key step in signaling is
critical for tumor formation. |#

;; "importantly"
;; An attribute of the entire fact, not the eventuallity
;; in it. All the rhetorical/status markers should go
;; in the same place. A field in the container will suffice

;; "signalling enzyme" 

(def-bio "signaling" bio-process ;; makes common nouns 
  :identifier "GO:0023052")       ;; reasonable stand-in

;;(np-head "enzyme")

(define-adverb "in part")
(define-debris-analysis-rule comma-adverb-comma
  :pattern ( "," adverb "," )
  :action (:function respan-edge-around-one-word second first third))

(define-adverb "as a consequence")
(define-adverb "as expected") ;; not very common, but avoids a break
(define-adverb "nevertheless")
(define-adverb "therefore")
(define-adverb "also")

;;--- J3
(define-adjective "molecular")
;; It's realated to molecule, but how exactly?
;; Seems wrong to jump to "is made of molecules"


;;--- J4
#| This switch mechanism is common to a wide variety of GTP-binding
proteins and is mediated by a conserved structure called the G-domain
that consists of five conserved G boxes. |#

(np-head "mechanism" :super 'bio-process)
(np-head "function" :super 'bio-process)

;; activated forms of the Ras proteins
;; Needs a whole model
(np-head "form" :super 'bio-variant)

(np-head "variety" :super 'bio-variant)

(np-head "analog" :super 'bio-variant)

(np-head "class" :super 'bio-variant)

;; "variety" is an "of quantifier" like "many" or "some"
; a {wide, large, extensive, big} variety of ..

(np-head "tumor")
;;(np-head "formation")
(def-bio "tumor formation" bio-process)

;;--- j5 
(define-adjective "physiological")
(def-bio "activity" bio-process)
(def-bio "condition" bio-condition)

(np-head "G-domain" :super 'protein-segment) ;; somehow (def-bio "G-domain" protein-segment) di not work

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

;;--- j6

;; cellular "GO:0005623"

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


;;--- j8

(def-bio "RasGEF" protein) ;; family
;;/// hypenated and separated. 
(def-bio "RasGAP" protein) ;; ditto

(def-bio "exchange" bio-process)

;; cytosolic "GO:0005829"

;; "GTP, whereas RasGAPs ... end of the sentence" GO:0006184

(define-lambda-variable 'trailing-parenthetical
  'parentheses ;; value restriction
  category::expressible-type) ;; overly high type bound to.
;; used by knit-parens-into-neighbor 

;;--- j9

(define-adjective "prevalent")

(def-bio "g1" bio-entity)
(def-bio "g2" bio-entity)
(def-bio "g3" bio-entity)
(def-bio "g4" bio-entity)
(def-bio "g5" bio-entity)

;; G1 (box) "PR:000003866"

;; G3 (box) "PR:000004651"


;;--- j10

;; G5 "PR:000004652"

;;;-------------------------------------------------------
;;; Hacked up to 'get through' the 9/4/14 target abstract
;;;-------------------------------------------------------

#+ignore
(define-category signal-transduction ;;// same flaw as small molecute
  :specializes bio-process
  :lemma (common-noun "signal transduction"))


(def-cfr gene (mutate gene)
  :form n-bar
  :referent (:head right-edge :function passive-premodifier left-edge right-edge patient))

(def-cfr enzyme (bio-process enzyme)
  :form n-bar
  :referent (:head right-edge :function passive-premodifier left-edge right-edge patient))

;;-- see model/dossiers/units-of-measure.lisp for more forms.
(define-unit-of-measure "nM")
(define-unit-of-measure "nm")
(define-unit-of-measure "cm")
(define-unit-of-measure "mm")
(define-unit-of-measure "μm")
;;(define-unit-of-measure "µm") this fails
(define-unit-of-measure "mL")
(define-unit-of-measure "ml")
(define-unit-of-measure "kb")
(define-unit-of-measure "dalton")


;; Not quite right -- DAVID -- how do I make "et al." be a word that is the head of a bibliographic reference
(define-category bib-reference 
  :specializes abstract)
(np-head "et al." :super 'bib-reference)

(define-category article-figure
  :specializes abstract)
(np-head "figure" :super 'article-figure)
(define-category article-table
  :specializes abstract)
(np-head "table" :super 'article-table)

;;tried to get these to work as (def-bio terms --) but got errors like Error: No form value on #<edge17 14 "lines" 15>
(np-head "cell" :super 'cell-line)
(np-head "line" :super 'cell-line)
(np-head "cell line" :super 'cell-line)

(np-head "A375" :super 'cell-line :rule-label 'cell-line)
(np-head "D04" :super 'cell-line :rule-label 'cell-line)
(np-head "D25" :super 'cell-line :rule-label 'cell-line)
(np-head "MM415" :super 'cell-line :rule-label 'cell-line)
(np-head "MM485" :super 'cell-line :rule-label 'cell-line)
(np-head "OUMS-23" :super 'cell-line :rule-label 'cell-line)
(np-head "RPMI-7951" :super 'cell-line :rule-label 'cell-line)
(np-head "SkMel24" :super 'cell-line :rule-label 'cell-line)
(np-head "SkMel28" :super 'cell-line :rule-label 'cell-line)
(np-head "WM266.4" :super 'cell-line :rule-label 'cell-line)
(np-head "WM852" :super 'cell-line :rule-label 'cell-line)


;; Def-bio doesn't appreciate part of speech, so hacked the
;; presenting plural version here. #52
(def-bio "open reading frame" bio-entity)
(def-bio "open reading frames" bio-entity)


(def-bio "ORF" bio-entity) ;; same as above -- need to figure out how to get the category spelling right



;; all remaining (including overlap with the nouns and verbs abov)
 
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

;;adjective
(adj "anticancer")
(adj "candidate" )
(adj "chemical" :super 'modifier) ;; keyword: (al ADJ) 
(adj "combinatorial" :super 'modifier) ;; keyword: (al ADJ) 
(adj "comparable" :super 'modifier) ;; keyword: (able ADJ) 
(adj "dead")
(adj "dependent" :super 'modifier) ;; keyword: (ent ADJ) 
(adj "ectopic" :super 'modifier) ;; keyword: (ic ADJ) 
(adj "effective" :super 'modifier) ;; keyword: (ive ADJ) 
(adj "endogenous" :super 'modifier) ;; keyword: (ous ADJ) 
(adj "further")
(adj "high")
(adj "inactive" :super 'modifier) ;; keyword: (ive ADJ) 
(adj "inducible" :super 'modifier) ;; keyword: (ible ADJ) 
(adj "ineffective" :super 'modifier) ;; keyword: (ive ADJ) 
(adj "integrative" :super 'modifier) ;; keyword: (ive ADJ) 
(adj "intriguing" :super 'modifier) ;; keyword: ENDS-IN-ING 
(adj "knockdown" )
(adj "lon-term")
(adj "long")
(adj "measurable" :super 'modifier) ;; keyword: (able ADJ) 
(adj "mekindependent" :super 'modifier) ;; keyword: (ent ADJ) 
(adj "mutual" :super 'modifier) ;; keyword: (al ADJ) 
(adj "parallel")
(adj "pharmacological" :super 'modifier) ;; keyword: (al ADJ) 
(adj "present" :super 'modifier) ;; keyword: (ent ADJ) 
(adj "recombinant" )
(adj "refractory" :super 'modifier) ;; keyword: (ory ADJ) 
(adj "sensitive" :super 'modifier) ;; keyword: (ive ADJ) 
(adj "supplementary" :super 'modifier) ;; keyword: (ary ADJ) 
(adj "wild-type")

;;noun
;;; new words to be defined -- were primed bhy COMLEX
;; we need better semantics for these <<DAVID>>
(def-bio "assay" bio-process)
(def-bio "baseline"  bio-process)
(def-bio "cascade" bio-process)
(def-bio "complex" molecule)
(def-bio "derivative" molecule)
(def-bio "mitogen" molecule)
(def-bio "heterodimer" molecule)
(np-head "membrane" :super 'cellular-location)
(def-bio "panel" bio-process)
(def-bio "patient" bio-entity)
(np-head "plasma" :super 'cellular-location)
(def-bio "scaffold" protein) 
(def-bio "screen"  bio-process)
(def-bio "strategy" bio-process)
(def-bio "target" bio-entity)
(np-head "agonist") ;; keyword: (ist N) 
(np-head "approach" :super 'bio-process)
(np-head "auto")
(np-head "binder" :super 'bio-entity)
(np-head "component" :super 'abstract)
(np-head "context" :super 'bio-context) 
(np-head "data" :super 'bio-entity) ;; need something better
(np-head "effect" :super 'abstract)
(np-head "exclusivity") ;; keyword: (ity N) 
(np-head "factor") ;; keyword: (or N) 
(np-head "fate" :super 'abstract)
(np-head "fig" :super 'article-figure) 
(np-head "finding" :super 'bio-entity) ;; like data(np-head "paradigm" :super 'bio-entity)
(np-head "group" :super 'abstract)
(np-head "manner" :super 'bio-process) ;; by chemical or genetic means
(np-head "means" :super 'bio-process) ;; by chemical or genetic means
(np-head "method" :super 'bio-process)
(np-head "model" :super 'abstract)
(np-head "mutant" :super 'bio-entity)
(np-head "panel" :super 'bio-process)
(np-head "paradigm" :super 'abstract)
(np-head "paradox" :super 'bio-entity)
(np-head "partner" :super 'abstract)
(np-head "presence") ;; keyword: (ence N) 
(np-head "range" :super 'measurement)
(np-head "stoichiometry" :super 'abstract)
(np-head "sensitivity") ;; keyword: (ity N) 
(np-head "setting" :super 'bio-entity)
(np-head "success" :super 'abstract)
(np-head "therapeutics") ;; keyword: (ics N) 
(np-head "throughput" :super 'measurement)
(np-head "tissue" :super 'bio-context)
(np-head "treatment") ;; keyword: (ment N) 
(np-head "trial" :super 'abstract)

;;need prep cases
(np-head "conformation" :super 'bio-entity) ;; keyword: (ion N) 
(np-head "dependency") ;; keyword: (ency N) 
(np-head "depletion") ;; keyword: (ion N) 
(np-head "development") ;; keyword: (ment N) 
(np-head "heterodimerization") ;; keyword: (ion N) 
(np-head "identification") ;; keyword: (ion N) 
(np-head "possibility") ;; keyword: (ity N) 
(np-head "inhibitor" :super 'bio-entity) ;; keyword: (or N) 
(np-head "mass spectrometry" :super 'bio-process)

;;adverb
(define-adverb "ectopically") ;; keyword: ENDS-IN-LY 
(define-adverb "moreover")
(define-adverb "primarily") ;; keyword: ENDS-IN-LY 


(def-bio "phenotype" bio-entity)
(def-bio "alleles" bio-entity)





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


;;--- ddm 12/18/14 hacked phrases to 'get through' more text
(adj "least-selective")


