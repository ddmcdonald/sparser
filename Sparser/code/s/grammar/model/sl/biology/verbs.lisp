;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014 SIFT LLC. All Rights Reserved
;;;
;;;    File: "verbs"
;;;  Module: "grammar/model/sl/biology/
;;; version: November 2014

;; Initiated 7/23/14 by lifting verbs from NFkappaB experiment. Continued
;; through 11/7/14. 
;; dsefine verbs (svo/passive/nominal encode, mutate and make some verbs more specific (enhancement enhances a bio-process)

(in-package :sparser)


;; According to Sketch Engine on the Mitre corpus,
;; "act" by itself roughly means "do" or "behave" and can
;; take "on" and "in" as well as "to".
;; "act as" is always the equivalent of "is". 
;; There's also the full caps ACT, which stands for
;; "adoptive cell therapy"
(def-term "act" verb (svo)
  :super-category be
  :preposition "as"
  :subject bio-entity
  :theme bio-process) ;; better choice is complement 
;; and the etf thing-is-description

(defmacro svo/bio (word &key preposition)
  `(svo/bio/expr ,word :preposition ,preposition ))

(defun svo/bio/expr (word &key preposition)
  (let ((form `(def-term ,word verb (svo)
                 :super-category bio-process
                 :preposition ,preposition
                 :subject bio-entity
                 :theme bio-process)))
    (eval form)))

;;--- "activate"
;; "NIK  activates IKKalpha"
;; "turn on Ras by activating <p>"

(def-term "activate" verb (svo of-nominal)
  :super-category bio-process
  :nominalization "activation"
  :subject bio-entity
  :theme bio-entity)

(def-term "deactivate" verb  (svo of-nominal)
  :super-category bio-process
  :nominalization "deactivation"
  :subject bio-entity
  :theme bio-entity)

;; "GTP-binding" "GO:00055525
;; from http://www.ebi.ac.uk/QuickGO/GTerm?id=GO:0005525
;; "interacting selectively and non-covalently with GTP"
;;
(def-term "bind" verb (svo-passive)
                      ;;of-nominal) ;;/// "the binding of" ??
  :irregular (:past-tense "bound")
  ;;:nominalization "bound"
  :obo-id "GO:0005488"  ;; not used in annotations
  :super-category bio-process
  :preposition "to"
  :patient bio-entity 
  :agent bio-entity)

(svo/bio "call")

(def-term "catalyze" verb (svo-passive
                           of-nominal) ;;/// "catalyysis of phosphorylation by MEK"
  :nominalization "catalysis"
  :super-category bio-process
  :patient bio-process 
  :agent bio-entity)

;; "consist" (of)
;; ? (comlex-entry "consist")
;; ((verb (:subc ((p-ing-sc :pval ("in" "of")) (pp :pval ("of" "in"))))))


;;--- "encode"
;; <enzyme> encoded by <gene>
(def-term "encode" verb (svo-passive of-nominal)
  :nominalization "encoding"
  :super-category bio-process
  :agent gene
  :patient protein)

(def-term "enhance" verb (svo-passive of-nominal)
  :nominalization"enhancement"
  :super-category bio-process
  :agent bio-entity
  :patient bio-process)

;; exchange


;; formation "GO:0009058"

;;--- hydrolysis
;; http://en.wikipedia.org/wiki/Hydrolysis
;; j3  "upon hydrolysis of GTP to GDP"
;;  The phosphate is removed/cleaved from the GTP (ATP)
;;  and GDP (di-phosphate) is the result.
(def-term "hydrolysis" verb (sv) ;; and of-nominal ??
  :super-category bio-process
  :subject bio-entity ;; the substrate holding the nucleotide
  :theme bio-entity ;; what we're taking the phosphate from
  :goal bio-entity ;; what we get afterwards
  :subcategorization ( (("of" np "to" np) (theme goal))
                       (("on" np) (subject))
                       (("of" np) (theme)) ))
;;  "gtp hydrolysis on ras"
;; "GO:0019514"


;;--- "increase"
;; Observed as a verb: 
;;  "Other less frequently observed mutations, such as those found in the
;;  G4 and G5 boxes, increase the rate of nucleotide exchange, thereby
;;  mimicking the GEFs and increasing the GTP-bound state."
;; But the noun form is probably in there too.
;; Note that there's a dossier of change-in-amount-verbs though it's
;; not being loaded which goes with, e.g., define-change-in-amount-verb/up
;; which presumes a 'standalone-direction' category which exists
;; in places/directions but doesn't work the way it used to or was
;; abandoned between directions and directions1
(svo/bio "increase")

;;--- "induce"
;; "which induce transcription of the p53 gene"
;; "induce processing of p100"

(svo/nominal/adjective "induce" "induction" "inducible"
   :subject 'bio-entity 
   :theme 'event)
;;/// want subtypes, want to understand the syntax of "-inducing"


;;--- inhibit
;; "by inhibiting <p>"

;;(svo/passive/nominal "inhibit" "inhibition"
;;  :super-category bio-process
;;  :patient bio-process  ;; inhibiton of <process>
;;  :agent bio-entity)


(def-term "inhibit" verb  (svo of-nominal)
  :super-category bio-process
  :nominalization "inhibition"
  :subject bio-entity
  :theme bio-entity)


;;--- "load" -- "GTP loading"
;; "activated upon GTP loading"
;; You load GTP onto something, presumably a protein
;; can you say "the loading of GTP onto Ras" ?
;; "Determination of GTP loading on Rho"
;; "regulation of Ras GTP loading"
;; "GTP-loading of Ras" <<< hyphen
;; "may involve Ras-GTP loading"
;; "enhanced GTP loading"
;; "Structural basis for conformational switching and GTP loading of the large G protein atlastin"

(svo/bio "load") ;; leads to rule bio-entity + load, 
;; which works, but isn't satisfying




(svo/passive/nominal "mediate" "mediation"
  :super-category bio-process
  :patient bio-process  ;; inhibiton of <process>
  :agent bio-process)

(svo/passive/nominal "mutate" "mutation"
  :super-category bio-process
  :patient gene  ;; mutation of gene
  :agent bio-process)                


;;--- "mutation"
;; "mutated oncogenes"
;; "oncogenic mutations"
;; "in BRAF mutant thyroid cell"
(svo/passive/nominal "mutate" "mutation"
  :super-category bio-process
  :agent bio-process
  :patient gene)

;;--- "phosphorylate"
;; GO:0016310	
;; "activated IKKα phosphorylates specific serines"
;;  "The phosphorylation of these specific serines"

(svo/nominal "phosphorylate" "phosphorylation" 
             :subject 'bio-entity :theme 'bio-entity)

(svo/nominal "dephosphorylate" "dephosphorylation" 
             :subject 'bio-entity :theme 'bio-entity)


;;--- "regulate"
;;
(svo/passive/nominal "regulate" "regulation"
  :super-category bio-process
  :patient bio-process  ;; regulation of <process>
  :agent bio-process)    ;; by <entity>


(svo/passive/nominal "dysregulate" "dysregulation"
  :super-category bio-process
  :patient bio-process  ;; regulation of <process>
  :agent bio-process)


;;--- "release"  "GO:0023061"
;; the rate of GDP or GTP release from the G-domain is slow

(def-term "release" verb (svo)
  :super-category bio-process
  :subcategorization (("from" np)(theme))
  ;; Comlex: (np-pp :pval ("in" "into" "from" "to"))
  ;;  and a lot of others
  :subject bio-entity
  :theme bio-entity)



(svo/passive/nominal "stimulate" "stimulation"
  :super-category bio-process
  :patient bio-process  ;; inhibiton of <process>
  :agent bio-entity)



(def-term "suggest" verb (svcomp np-by)
  :nominalization "suggestion"
  :super-category bio-process
  :subject bio-entity ;; the one making the suggestion
  :complement bio-process) ;; the content of the suggestion



(svo/nominal "transduce" "transduction" 
             :subject 'bio-entity :theme 'bio-entity)

;;--- "turn on" (off)
;; "Growth factors can turn on Ras"
(def-term "turn" verb (svo)
  :preposition "on"
  :super-category activate
  :subject bio-entity
  :theme bio-entity)



;;; General vocabulary

;;--- "lower"  ("raise")
;;/// N.b. the adjective variant is commented out in the modifiers dossier
;; "(RasGEFs) lower the transition energy for ..."
(svo/bio "lower")




