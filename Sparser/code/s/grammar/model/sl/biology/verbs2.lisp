;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014 SIFT LLC. All Rights Reserved
;;;
;;;    File: "verbs"
;;;  Module: "grammar/model/sl/biology/
;;; version: November 2014

;; Initiated 12/3/14 by lifting verbs from verbs.lisp
;; define verbs (svo/passive/nominal encode, mutate and make some verbs more specific (enhancement enhances a bio-process)
;; NOTE TO DAVID --  of-nominal should be implied for the present participle of every verb
;; it may also be the case that :of-nominal should be the default for every verb with a specified noun form
;; and by-subject should be implied for the past participle of every svo=passive

;; DAVID -- note that binding and release can be described as happening onto or from either sites, domains or molecules as a whole -- this smacks of metonymy

;; almost all of these verbs optionally take adjunctive pp modifiers of the category "bio-context" in the form "in-bio-location" and "in-bio-condition"

(in-package :sparser)

(define-category bio-act
; "bio-" implies that there's an unmarked "act" as well, and it's a bit cumbersome
  :specializes bio-process
  :binds ((actor bio-entity)
          (patient bio-entity))
; The interpreter for define-category presumes that the binding will be dotted
; pairs. That's the kind of syntactic nit that the shortcut is suppose to hide.
; Of course the interpreter could be modified, but for something this simple
; I think the def-term shortcut with the slots as keywords is simpler to use
  :documentation "")

(def-realization bio-act
  :verb "act"
  :etf sv
  :s actor
  :on patient)

; Then "act as" is a different verb. Yes? We need to think about that as well as
; about synonyms, and perhaps on-the-fly specialization such as moving from the
; unmarked "act" to the copular "act as" when the prepositino is seen. 
    
(define-category bio-activate
  :specializes bio-process
  :binds ((activator bio-entity) (activated molecule)))

; We could have shortcuts that are biology-specific. That would let us supress
; the specialization to a bio-process as a default of the shortcut. With the
; option to add a :specializes parameter when we don't want the default

(def-realization bio-activate
  :verb "activate" :noun "activation"
  :etf (svo-passive of-nominal)
  :s activator
  :o activated)

;; AFTER THIS POINT I ASSUME THAT THE :realization keyword on define-category is extended to handle the arguments of 
;; (define-realization ...)

; Yes, but we need the separate form to handle synonyms at least

(define-category bio-deactivate
  :specializes bio-process
  :binds ((deactivator bio-entity) (deactivated molecule))
  :realized-as
   (:verb "deactivate" :noun "deactivation"
    :etf (svo-passive of-nominal)
    :s deactivator
    :o deactivated))
#|
The variable names of the bindings can be folded in in the existing shortcuts

(def-bio-term deactivate ;; just made up that form -- could specialize the name of the category
  :verb "deactivate" :noun "deactivation"
  :etf (svo-passive)
  :s deactivator)
; The ":s" parameter establishes the variable as the subject and adds it to the
; variables that the category binds if it's not already one that
; the category interits
  

|#

;; "GTP-binding" "GO:00055525
(define-category bio-bind
  :specializes bio-process
  :obo-id "GO:0005488"
  :binds ((participant molecule)))
  :realization
  (:verb ("bind" :ed-form "bound")
   :etf (svo-passive) ;;/// "bound by"
   :s participant 
   :o participant
   :to participant))
; Would we want to distinguish who's doing what to whom?
; I guess we need a lot of examples to see if there's a pattern
; in the biology that we should reflect in result of the parse

;;;*********DEFINE THIS ********* nned examples
(svo/bio "call")

(define-category catalyze
  :specializes bio-process
  :binds ((catalyst enzyme) (process bio-process))
  :realization
  (:verb "catalyze" :noun "catalysis"
   :etf (svo-passive)
   :s catalyst
   :o process))

;;--- "encode"
;; <enzyme> encoded by <gene>
(define-category encode
  :specializes bio-process
  :binds ((encoder gene) (encoded protein)) ;; should be protein-or-transcript??
  :realization
  (:verb "encode"
   :etf (svo-passive) 
   :s encoder
   :o encoded))

(define-category bio-enhance
  :specializes bio-process
  :binds ((agent bio-entity) (process bio-process))
  :realization 
  (:verb "enhance" :noun "enhancement"
   :s agent
   :o process))
 
;; exchange


;; formation "GO:0009058"

;;--- hydrolysis
;; http://en.wikipedia.org/wiki/Hydrolysis
;; j3  "upon hydrolysis of GTP to GDP"
;;  The phosphate is removed/cleaved from the GTP (ATP)
;;  and GDP (di-phosphate) is the result.
(define-category hydrolyze
  :specializes bio-process
  :binds ((agent molecule) ;; the agent which cause or scatalyzes the hydrolysis
          (patient molecule) ;; the chemical that gets hydrolyzed
          (goal molecule) ;; the resulting chemical
          (substrate molecule)) ;;the context in which the hydrolysis occurs
  :realization            
  (:verb "hydrolyze" :noun "hydrolysis"
   :etf (svo-passive) 
   :s agent 
   :o patient 
   :to goal
   :on substrate))

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

(define-category bio-increase
  :specializes bio-process
  :binds ((agent bio-entity)(patient bio-scalar))
  :realization
  (:verb increase :noun increase
   :etf (svo-passive)
   :s agent
   :o patient))



;;--- "induce"
;; "which induce transcription of the p53 gene"
;; "induce processing of p100"
(define-category induce
  :specializes bio-process
  :binds ((agent bio-entity) (patient bio-process))
  :realization 
  (:verb "induce" :noun "induction" :adj "inducible"
   :etf (svo-passive)
   :s agent
   :o patient))
;;/// want subtypes, want to understand the syntax of "-inducing"


;;--- inhibit
;; "by inhibiting <p>"

;;(svo/passive/nominal "inhibit" "inhibition"
;;  :super-category bio-process
;;  :patient bio-process  ;; inhibiton of <process>
;;  :agent bio-entity)


(define-category inhibit-process
  :specializes bio-process
  :binds ((agent bio-entity) (patient bio-process))
  :realization 
  (:verb "inhibit" :noun "inhibition"
   :etf (svo-passive)
   :s agent
   :o patient))

(define-category drug-inhibits
  :specializes bio-process
  :binds ((agent drug) (patient bio-entity))
  :realization 
  (:verb "inhibit" :noun "inhibition"
   :etf (svo-passive)
   :s agent
   :o patient
   :at measurement))



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

(define-category molecule-load
 :specializes bio-process
 :binds ((agent bio-entity)(patient molecule)(substrate molecule))
 :realization
 (:verb "load"
  :etf (svo-passive)
  :s agent
  :o patient
  :onto substrate))

;; leads to rule bio-entity + load, 
;; which works, but isn't satisfying

(define-category mediate
  :specializes bio-process
  :binds ((agent bio-entity)(patient bio-process))
  :realization
  (:verb   "mediate" :noun "mediation"
   :etf (svo-passive)
   :s agent
   :o patient))

;;--- "mutation"
;; "mutated oncogenes"
;; "oncogenic mutations"
;; "in BRAF mutant thyroid cell"
(define-category motate
  :super-category bio-process
  :binds ((agent bio-entity)(patient gene))  ;; mutation of gene
  :realization
  (:verb "mutate" :noun "mutation"
   :etf (svo-passive)
   :s agent
   :o patient))

;;--- "phosphorylate"
;; GO:0016310	
;; "activated IKKα phosphorylates specific serines"
;;  "The phosphorylation of these specific serines"

(define-category phosphorylate
  :specializes bio-process
  :binds ((agent bio-entity)(patient molecule)) 
  :realization
  (:verb "phosphorylate" :noun "phosphorylation"
   :etf (svo-passive)
   :s agent
   :o patient))

(define-category dephosphorylate
  :specializes bio-process
  :binds ((agent bio-entity)(patient molecule)) 
  :realization
  (:verb "dephosphorylate" :noun "dephosphorylation"
   :etf (svo-passive)
   :s agent
   :o patient))

;;--- "regulate"
;;
(define-category regulate
  :specializes bio-process
  :binds ((agent bio-entity)(patient bio-process))
  :realization
  (:verb   "regulate" :noun "regulation"
   :etf (svo-passive)
   :o patient  ;; regulation of <process>
   :s agent))    ;; by <entity>


(define-category dysregulate
  :specializes bio-process
  :binds ((agent bio-entity)(patient bio-process))
  :realization
  (:verb   "dysregulate" :noun "dysregulation"
   :etf (svo-passive)
   :o patient  ;; dysregulation of <process>
   :s agent))    ;; by <entity>

;;--- "release"  "GO:0023061"
;; the rate of GDP or GTP release from the G-domain is slow

(define-category molecule-release
 :specializes bio-process
 :binds ((agent bio-entity)(patient molecule)(substrate molecule))
 :realization
 (:verb "release" :noun "release"
  :etf (svo-passive)
  :s agent
  :o patient
  ;; Comlex: (np-pp :pval ("in" "into" "from" "to"))
  ;;  and a lot of others
  :from substrate))

(define-category stimulate
  :specializes bio-process
  :binds ((agent bio-entity)(patient bio-process))
  :realization
  (:verb   "stimulate" :noun "stimulation"
   :etf (svo-passive)
   :o patient  ;; stimulation of <process>
   :s agent))    ;; by <entity>

(define-category suggest
  :specializes rhetorical-process
  :binds ((agent bio-process) (theme bio-process))  ;;<<---------------------- doing this right is hard -- we punt here
  :realization
  (:verb "suggest" :noun "suggestion"
   :etf (svo-passive)
   :s agent
   :o patient))


(svo/nominal "transduce" "transduction" 
             :subject 'bio-entity :theme 'bio-entity)

;;DAVID -- I left this alone because I was not sure about how to handle the preposition -- I also think that this is a particle ("turn RAS on" and "turn on RAS")
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




