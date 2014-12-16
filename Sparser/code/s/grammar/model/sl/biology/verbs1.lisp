;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014 SIFT LLC. All Rights Reserved
;;;
;;;    File: "verbs1"
;;;  Module: "grammar/model/sl/biology/
;;; version: December 2014

;; verbs initiated 7/23/14 by lifting verbs from NFkappaB experiment. Continued
;; through 12/3/14.
;;
;; verbs2 initiated 12/3/14 by lifting verbs from verbs.lisp to provide
;; an not-loaded scratch pad for the new design
;;
;; verbs1 initiated 12/11/14 as the file to load with everything converted
;; to the new design.

(in-package :sparser)

;;;---------------------------
;;; macros for standard cases
;;;---------------------------

(defmacro svo/bio (verb)
  `(svo/bio/expr ,verb))

(defun svo/bio/expr (verb)
  (let* ((category-name (intern (string-upcase verb)
                                (find-package :sparser)))
         (form `(def-term ,category-name
                  :verb ,verb 
                  :etf (svo-passive)
                  :super-category bio-process
                  :s (agent bio-entity)
                  :o (patient bio-process))))
    (eval form)))

;;;--------------------------------------------------------
;;; specific verbs (alphabetical except for obvious pairs)
;;;--------------------------------------------------------

(define-category bio-act
  ;; N.b. "bio-" implies that there's an unmarked "act" as well, and it's a bit cumbersome
  :specializes bio-process
  :binds ((actor bio-entity)
          (patient bio-entity))
  :documentation "compare with act as")

(def-realization bio-act
  :verb "act"
  :etf sv
  :s actor
  :on patient)


;; According to Sketch Engine on the Mitre corpus,
;; "act" by itself roughly means "do" or "behave" and can
;; take "on" and "in" as well as "to".
;; "act as" is always the equivalent of "is". 
;; There's also the full caps ACT, which stands for
;; "adoptive cell therapy"
#+ignore
(def-term "act" verb (svo)
  :super-category be
  :preposition "as"
  :subject bio-entity
  :theme bio-process) ;; better choice is complement 
;; and the etf thing-is-description
(define-category bio-act-as
  :specializes be
  ;;/// this was supposed to be a restrict on 'the
  ;; variables of 'be' rather than new ones, but that
  ;; operation looks like it wasn't finished.
  :binds ((theme . bio-entity)
          (description . bio-process))
  :realization
    (:verb "act"
     :prep "as"  ;; <<<<<<<<<<<
     :etf svo
     :s theme
     :o description))

(define-category bio-activate
  :specializes bio-process
  :binds ((activator bio-entity) (activated molecule))
  :realization
    (:verb "activate" 
     :noun "activation"
     :etf (svo-passive of-nominal)
     :s activator
     :o activated))

;; bio-deactivate conflicts with bio-activate
;; so need to redesign the by-phrase to be uniform
;; and stated over the value restriction rather than
;; the variable
#+ignore (define-category bio-deactivate
  :specializes bio-process
  :binds ((deactivator bio-entity) (deactivated molecule))
  ::realization
   (:verb "deactivate" :noun "deactivation"
    :etf (svo-passive of-nominal)
    :s deactivator
    :o deactivated))

;; "GTP-binding" "GO:00055525
;; from http://www.ebi.ac.uk/QuickGO/GTerm?id=GO:0005525
;; "interacting selectively and non-covalently with GTP"
;;
#+ignore ;; this doesn't feel distinguishing enough
(def-term bio-bind  bio-process
  :obo-id "GO:0005488"
  :binds ((participant molecule))
  :verb ("bind" :ed-form "bound")
  :etf (svo) ;;-passive) -- avoid by-phrase problem
  :s participant 
  :o participant
  :to participant)  ;; def-additional-realization  ??

(def-term block
  :etf (svo of-nominal)
  :verb "block"
  :noun "blocking"
  :super-category bio-process
  :s (blocker bio-entity)
  :o (blocked bio-process))

;; "call"  assigns a name in passive "X is called N"

;;/// "catalyysis of phosphorylation by MEK"
(def-term catalyze
  :super-category bio-process
  :verb "catalyze"
  :etf (svo-passive
        of-nominal) 
  :noun "catalysis"
  :s (catalyst enzyme)
  :o (process bio-process))

(def-term create
  :super-category bio-process
  :verb "create"
  :etf (svo-passive
        of-nominal) 
  :noun "creation"
  :s (creator bio-entity)
  :o (creation bio-entity))

;; "consist" (of)
;; ? (comlex-entry "consist")
;; ((verb (:subc ((p-ing-sc :pval ("in" "of")) (pp :pval ("of" "in"))))))

;;--- "encode"
;; <enzyme> encoded by <gene>
(define-category encode
  :specializes bio-process
  :binds ((encoder gene) (encoded protein)) ;; should be protein-or-transcript??
  :realization
  (:verb "encode"
   :noun "encoding"
   :etf (svo ;;-passive
        of-nominal)
   :s encoder
   :o encoded))

(define-category bio-enhance
  :specializes bio-process
  :binds ((agent bio-entity) (process bio-process))
  :realization 
  (:verb "enhance" :noun "enhancement"
   :etf (svo  ;;-passive 
         of-nominal)
   :s agent
   :o process))
 
(def-term form
  :super-category bio-process
  :verb "form"
  :etf (svo-passive
        of-nominal) 
  :noun "formation"
  :s (creator bio-entity)
  :o (creation bio-entity))


;; exchange


;; formation "GO:0009058"
;;--- hydrolysis
;; http://en.wikipedia.org/wiki/Hydrolysis
;; j3  "upon hydrolysis of GTP to GDP"
;;  The phosphate is removed/cleaved from the GTP (ATP)
;;  and GDP (di-phosphate) is the result.
#+ignore(def-term "hydrolysis" verb (sv) ;; and of-nominal ??
  :super-category bio-process
  :etf (svo ;;-passive
        of-nominal)
  :noun "hydrolysis"
  :verb "hydrolysize"
  :s bio-entity ;; the substrate holding the nucleotide
  :theme bio-entity ;; what we're taking the phosphate from
  :goal bio-entity ;; what we get afterwards
  :subcategorization ( (("of" np "to" np) (theme goal))
                       (("on" np) (subject))
                       (("of" np) (theme)) ))
;;  "gtp hydrolysis on ras"
;; "GO:0019514"
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

(def-term increase
  :super-category bio-process
  :verb "increase"
  :etf (svo-passive
        of-nominal) 
  :noun "increase"
  :s (agent enzyme)
  :o (patient bio-entity))

;;--- inhibit
;; "by inhibiting <p>"

(define-category inhibit-process
  :specializes bio-process
  :binds ((agent bio-entity) (patient bio-process))
  :realization 
  (:verb ("inhibit" :ed-form "inhibited")
   :noun "inhibition"
   :etf (svo-passive)
   :s agent
   :o patient))


(define-category drug-inhibits
  :specializes bio-process
  :binds ((agent drug) (patient bio-entity))
  :realization 
  (:verb ("inhibit" :ed-form "inhibited")
   :noun "inhibition"
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
 :binds ((agent bio-entity) ;; causes the action
         (patient molecule) ;; the nucleotyde that moves
         (substrate molecule))
 :realization
 (:verb "load"
  :etf (svo-passive)
  :s agent
  :o patient
  :of substrate))
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
(define-category mutate
  :specializes bio-process
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
   :etf (svo-passive of-nominal)
   :s agent
   :o patient))

(define-category dephosphorylate
  :specializes bio-process
  :binds ((agent bio-entity)(patient molecule)) 
  :realization
  (:verb "dephosphorylate" :noun "dephosphorylation"
   :etf (svo-passive of-nominal)
   :s agent
   :o patient))

#+ignore
(define-category auto-phosphorylate
  :specializes bio-process
  :binds ((agent bio-entity))
  :realization
  (:verb "auto-phosphorylate" :noun "auto-phosphorylation"
   :etf (sv)
   :s agent))


;;--- "regulate"
;;
(define-category regulate
  :specializes bio-process
  :binds ((agent bio-entity)(patient bio-process))
  :realization
  (:verb   "regulate" :noun "regulation"
   :etf (svo-passive of-nominal)
   :o patient  ;; regulation of <process>
   :s agent))    ;; by <entity>


(define-category dysregulate
  :specializes bio-process
  :binds ((agent bio-entity)(patient bio-process))
  :realization
  (:verb   "dysregulate" :noun "dysregulation"
   :etf (svo-passive of-nominal)
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

(define-category study-bio-process
 :specializes bio-process
 :binds ((agent bio-entity)(patient bio-process))
 :realization
 (:verb "study" :noun "study"
  :etf (svo-passive)
  :s agent
  :o patient))

(define-category stimulate
  :specializes bio-process
  :binds ((agent bio-entity)(patient bio-process))
  :realization
  (:verb "stimulate" :noun "stimulation"
   :etf (svo-passive of-nominal)
   :o patient  ;; stimulation of <process>
   :s agent))    ;; by <entity>

(define-category suggest
  ;; :specializes rhetorical-process <----- find the right name
  :binds ((agent bio-process) 
          (theme bio-process)) ;;/// really a propositin
  :realization
  (:verb "suggest" :noun "suggestion"
   :etf (svcomp)
   :s agent
   :c theme))

(def-term transduce
  :super-category bio-process
  :verb "transduce"
  :noun "transduction" 
  :etf (svo-passive of-nominal)
  :s (agent bio-entity)
  :o (patient bio-entity))


;; "Growth factors can turn on Ras"
(def-term turn-on
  :super-category bio-activate
  :verb "turn"
  :prep "on"
  :etf (svo)
  :s (agent bio-entity)
  :o (patient bio-entity))



;;; General vocabulary

;;--- "lower"  ("raise")
;;/// N.b. the adjective variant is commented out in the modifiers dossier
;; "(RasGEFs) lower the transition energy for ..."
(svo/bio "lower")




;; verb nominals
"alteration" ;; keyword: (ion N) 
"expression" ;; keyword: (ion N) 
"function" ;; keyword: (ion N) 
"hypothesis" ;; keyword: (sis N) 
"inhibition" ;; keyword: (ion N) 
"interference" ;; keyword: (ence N) 
"overexpression" ;; keyword: (ion N) 
"proliferation" ;; keyword: (ion N) 
"truncation" ;; keyword: (ion N)


;;verb 
"acquire" ;; keyword: ENDS-IN-ED 
"allow" ;; keyword: ENDS-IN-ING 
"associate" ;; keyword: ENDS-IN-ED 
"base" ;; keyword: ENDS-IN-ED 
"bind" ;; keyword: ENDS-IN-ING 
"cause" ;; keyword: ENDS-IN-ED 
"confer" ;; keyword: ENDS-IN-ED 
"confound" ;; keyword: ENDS-IN-ED 
"consider" ;; keyword: ENDS-IN-ED 
"culture" ;; keyword: ENDS-IN-ED 
"demonstrate" ;; keyword: ENDS-IN-ED 
"describe"
"display" ;; keyword: ENDS-IN-ED 
"elevate" ;; keyword: ENDS-IN-ED 
"express"
"favor" ;; keyword: ENDS-IN-ED 
"hypothesize" ;; keyword: ENDS-IN-ED 
"identify" ;; keyword: ENDS-IN-ED 
"indicate" ;; keyword: ENDS-IN-ING 
"inhibit" ;; keyword: ENDS-IN-ED 
"involve" ;; keyword: ENDS-IN-ING 
"keep"
"lead" ;; keyword: ENDS-IN-ING 
"maintain"
"neede" ;; keyword: ENDS-IN-ED 
"observe" ;; keyword: ENDS-IN-ED 
"obtain" ;; keyword: ENDS-IN-ED 
"occur"
"perform" ;; keyword: ENDS-IN-ED 
"posit"
"propose"
"query" ;; keyword: ENDS-IN-ED 
"raise" ;; keyword: ENDS-IN-ED 
"recruit" ;; keyword: ENDS-IN-ED 
"reduce" ;; keyword: ENDS-IN-ING 
"relapse" ;; keyword: ENDS-IN-ING 
"remain" ;; keyword: ENDS-IN-ED 
"require"
"result" ;; keyword: ENDS-IN-ED 
"select" ;; keyword: ENDS-IN-ED 
"show"
"suppress" ;; keyword: ENDS-IN-ED 
"sustain" ;; keyword: ENDS-IN-ED 
"target" ;; keyword: ENDS-IN-ED 
"test" ;; keyword: ENDS-IN-ED 
"underly" ;; keyword: ENDS-IN-ING 
"validate" ;; keyword: ENDS-IN-ED 
"yield" ;; keyword: ENDS-IN-ED 
