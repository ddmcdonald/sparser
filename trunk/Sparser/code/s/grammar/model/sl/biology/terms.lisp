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

(adj "close")
(adj "low")
(adj "de novo")

(def-bio "tumor formation" bio-process)

;;(np-head "human") ;;/// check people code
(def-bio "human" species)
(np-head "mortality") ;;/// relationship to "mortal" ??
(np-head "drug" :super 'molecule) 

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

;;--- J3
(define-adjective "molecular")
;; It's realated to molecule, but how exactly?
;; Seems wrong to jump to "is made of molecules"


;;--- J4
#| This switch mechanism is common to a wide variety of GTP-binding
proteins and is mediated by a conserved structure called the G-domain
that consists of five conserved G boxes. |#

(np-head "mechanism")

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
(np-head "D04" :super 'cell-line)
(np-head "MM415" :super 'cell-line)
(np-head "MM485" :super 'cell-line)
(np-head "WM852" :super 'cell-line)
(def-bio "open reading frame" bio-entity)

 
;;; new words to be defined -- were primed bhy COMLEX
;; we need better semantics for these <<DAVID>>
(np-head "data" :super 'bio-entity) ;; need something better
(np-head "means" :super 'bio-process) ;; by chemical or genetic means
(np-head "finding" :super 'bio-entity) ;; like data(np-head "paradigm" :super 'bio-entity)
(np-head "paradox" :super 'bio-entity)
(np-head "setting" :super 'bio-entity)

;; nouns
"partner"
"panel"
"range"
"low"
"binder"
"auto"


;; verbs
"keep"
"require"
"show"
"express"
"maintain"
"posit"
"occur"
"propose"
"describe"

;; all remaining (including overlap with the nouns and verbs abov)
"approaches" 
"articulate" 
"assay" 
"auto" 
"binder"
"candidate" 
"cascade" 
"complexes" 
"components" 
"constitute" 
"context" 
"cot" 
"dead" 
"derivatives" 
"describe" 
"effect" 
"elucidate" 
"engender" 
"escapes" 
"express" 
"fate" 
"fig" 
"found" 
"further" 
"groups" 
"high" 
"inform" 
"insights" 
"interrogate" 
"keeps" 
"knockdown" 
"know" 
"long" 
"maintains" 
"manner" 
"membrane" 
"model" 
"moreover" 
"observations" 
"occurs" 
"panel" 
"paradigm" 
"parallel" 
"partner" 
"patients" 
"plasma" 
"posit" 
"predicts" 
"propose" 
"provide" 
"range" 
"recombinant" 
"requires" 
"resistance" 
"response" 
"scaffold" 
"screen" 
"seems" 
"show" 
"strategies" 
"success" 
"target" 
"tend" 
"term" 
"throughput" 
"tissue" 
"trials" 
"type"  
"wild" 
