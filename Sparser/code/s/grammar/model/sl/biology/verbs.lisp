;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014 SIFT LLC. All Rights Reserved
;;;
;;;    File: "verbs"
;;;  Module: "grammar/model/sl/biology/
;;; version: October 2014

;; Initiated 7/23/14 by lifting verbs from NFkappaB experiment. Continued
;; through 10/29/14. 

(in-package :sparser)


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
(def-term "bind" verb (svo-passive
                       of-nominal) ;;/// "bound by"
  :nominalization "bound"
  ;; "GO:0005488"
  :super-category bio-process
  :preposition "to"
  :patient bio-entity 
  :agent bio-entity)

(svo/bio "call")

;;--- "encode"
;; <enzyme> encoded by <gene>
(svo/bio "encode")  ;;/// wrong -- placeholder

(svo/passive/nominal "enhance" "enhancement"
  :super-category bio-process
  :patient bio-entity
  :agent bio-entity)

;; exchange


;; formation "GO:0009058"

;;--- hydrolysis
;; http://en.wikipedia.org/wiki/Hydrolysis
;; j3  "upon hydrolysis of GTP to GDP"
;;  The phosphate is removed/cleaved from the GTP (ATP)
;;  and GDP (di-phosphate) is the result.
(def-term "hydrolysis" verb (sv) ;; and of-nominal ??
  :super-category bio-process
  :subject bio-entity
  :theme bio-entity ;; what we're taking the phosphate from
  :goal bio-entity ;; what we get afterwards
  :subcategorization (("of" np "to" np) (theme goal)))
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
(svo/passive/nominal "inhibit" "inhibition"
  :super-category bio-process
  :patient bio-process  ;; inhibiton of <process>
  :agent bio-entity)


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


;;--- "mutation"
;; "mutated oncogenes"
;; "oncogenic mutations"
;; "in BRAF mutant thyroid cell"

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
  :agent bio-entity)    ;; by <entity>


(svo/passive/nominal "dysregulate" "disregulation"
  :super-category bio-process
  :patient bio-process  ;; regulation of <process>
  :agent bio-entity)


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

(svo/passive/nominal "suggest" "suggestion"
  :super-category bio-process
  :patient bio-process 
  :agent bio-entity)


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




