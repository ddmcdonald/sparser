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
  :verb ("bind" :past-tense "bound")
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
   :of patient
   :to goal
   :on substrate))

(define-category bio-hyperactivate
  :specializes bio-process
  :binds ((activator bio-entity) (activated molecule))
  :realization
    (:verb "hyperactivate" 
     :noun "hyperactivation"
     :etf (svo-passive of-nominal)
     :s activator
     :o activated))

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

#+ignore  ;;current walker does not handle such ambiguities properly
(define-category inhibit-process
  :specializes bio-process
  :binds ((agent bio-entity) (patient bio-process))
  :realization 
  (:verb ("inhibit" :past-tense "inhibited" :present-participle "inhibiting")
   :noun "inhibition"
   :etf (svo-passive)
   :s agent
   :o patient))


(define-category drug-inhibits
  :specializes bio-process
  :binds ((agent drug) 
          (patient bio-entity)
          (measurement measurement))
  :realization 
  (:verb ("inhibit" :past-tense "inhibited" 
                    :present-participle "inhibiting" )
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

#+ignore
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
"" ;; keyword: (ion N) 
(define-category alter
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-entity))
    :realization
    (:verb "alter"
	   :noun "alteration"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient
	   ))

(define-category proliferate
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "proliferate"
	   :noun "proliferation"
	   :etf (sv of-nominal)
	   :s agent
	   :o patient
	   ))

;;This is almost never used as a verb -- only as "truncating...mutation" and "...truncation of ..."
(define-category truncate
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "truncate"
	   :noun "truncation"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient
	   )) 

;;verb 

;; used almost entirely in "acquired restance" 
(define-category acquire
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "acquire" ;; keyword: ENDS-IN-ED 
	   :noun "acquisition"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient
	   ))



#+ignore
(define-category approach
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "approach" 
	   :noun "approach"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

;; need to look at this -- what is the patterning for "X was associated with Y" -- what is the subject?
(define-category associate
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-entity))
    :realization
    (:verb "associate" ;; keyword: ENDS-IN-ED 
	   :noun "association"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category bind
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "bind" ;; keyword: ENDS-IN-ING 
	   :noun "binding"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category confer
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "confer" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o patient))

;; like inhibit "therapeutics are confounded by acquired resistance"
(define-category confound
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "confound" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o patient))

(define-category constitute
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "constitute" ;; keyword: ENDS-IN-ED 
	   :etf (svo)
	   :s agent
	   :o patient))

(define-category culture
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "culture" ;; keyword: ENDS-IN-ED 
	   :noun "culture"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category decrease
  :specializes bio-process
  :binds ((agent bio-entity)(patient molecule)) 
  :realization
  (:verb "decrease" :noun "decrease"
   :etf (svo-passive of-nominal)
   :s agent
   :o patient))


;; e.g. displayed sustained ERK phosphorylation
(define-category display
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "display" ;; keyword: ENDS-IN-ED 
	   :noun "display"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category elevate
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "elevate" ;; keyword: ENDS-IN-ED 
	   :noun "elevation"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category engender
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "engender"
	   :etf (svo-passive)
	   :s agent
	   :o patient))

(define-category escape
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "escape"
	   :noun "escape"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

;; as in "genes express proteins" or "cell (lines) express proteins" and not the abstract sense
(define-category gene-transcript-express
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "express"
	   :noun "expression"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

;;events are favored in a context
(define-category favor
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb ("favor" :past-tense "favored") ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o patient
	  ))  ;; :in bio-context))  <--------------- not in scope
;; mostly passive -- "... are found ..."
(define-category find
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb ("find" :past-tense "found")
	   :noun "finding"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))


(define-category indicate
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "indicate" ;; keyword: ENDS-IN-ING 
	   :noun "indication"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category inform
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "inform" ;; keyword: ENDS-IN-ING 
	   :etf (svo-passive)
	   :s agent
	   :o patient))

(define-category interfere
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "interfere" ;; keyword: ENDS-IN-ING 
	   :noun "interference"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category interrogate
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "interrogate" ;; keyword: ENDS-IN-ING 
	   :noun "interrogation"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category involve
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "involve" ;; keyword: ENDS-IN-ING 
	   :etf (svo-passive)
	   :s agent
	   :o patient))

(define-category keep
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "keep"
	   :etf (svo-passive)
	   :s agent
	   :o patient))

(define-category lead
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "lead" ;; keyword: ENDS-IN-ING 
	   :etf (sv)
	   :s agent
	   :to patient))

(define-category maintain
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "maintain"
	   :noun "maintenance"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category need
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "need" ;; keyword: ENDS-IN-ED 
	   :noun "need"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category occur
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb ("occur" :present-participle "occurring" :past-tense "occurred")
	   :noun "occurrence"
	   :etf (sv)
	   :s agent
	   :o patient))

(define-category overexpress
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "overexpress"
	   :noun "overexpression"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))


(define-category potentiate
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "potentiate" ;; keyword: ENDS-IN-ED 
	   :noun "potentiation"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category predict
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "predict"
	   :noun "prediction"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))


(define-category provide
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "provide"
	   :noun "provision"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category query
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "query" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o patient))

(define-category raise
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "raise" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o patient))

(define-category recruit
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "recruit" ;; keyword: ENDS-IN-ED 
	   :noun "recruitment"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category reduce
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "reduce" ;; keyword: ENDS-IN-ING 
	   :noun "reduction"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category relapse
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "relapse" ;; keyword: ENDS-IN-ING 
	   :noun "relapse"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category remain
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "remain" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o patient))

(define-category require
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "require"
	   :noun "requirement"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category resist
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "require"
	   :noun "resistance"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category respond
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "respond"
	   :noun "response"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category result
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "result" ;; keyword: ENDS-IN-ED 
	   :noun "result"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category select
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "select" ;; keyword: ENDS-IN-ED 
	   :noun "selection"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category seem
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "seem"
	   :etf (svo)
	   :s agent
	   :o patient))

;; can be both "<people> show ..." and "<molecule> shows <properties>"
(define-category show
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb ("show" :past-tense "shown")
	   :etf (svo-passive)
	   :s agent
	   :o patient))

(define-category suppress
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "suppress" ;; keyword: ENDS-IN-ED 
	   :noun "suppression"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category sustain
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "sustain" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o patient))

(define-category target
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "target" ;; keyword: ENDS-IN-ED 
	   :noun "target"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category tend
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "tend" ;; keyword: ENDS-IN-ED 
	   :noun "tendency"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient)) 


(define-category underly
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "underly" ;; keyword: ENDS-IN-ING 
	   :etf (svo-passive)
	   :s agent
	   :o patient))


(define-category yield
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "yield" ;; keyword: ENDS-IN-ED 
	   :noun "yield"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category stimulate
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "stimulate"
	   :noun "stimulation"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))


;; clausal roles
;; really want to have the form "CRAF allows CRAF to hyperactivate the pathway"  -- want the clausal modiffer
(define-category allow
    :specializes bio-process
    :binds ((agent bio-entity)(patient molecule))
    :realization
    (:verb "allow" ;; keyword: ENDS-IN-ING 
	   :noun "allowance"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category cause
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "cause" ;; keyword: ENDS-IN-ED 
	   :noun "cause"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

;;verbs which tend to have human agents -- both abstract (in terms of discussing argument structure) and otherwise

(define-category articulate
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "articulate" ;; keyword: ENDS-IN-ED 
	   :noun "articulation"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category base
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "base" ;; keyword: ENDS-IN-ED 
	   :noun "basis"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category consider
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb ("consider"  :past-tense "considered") ;; keyword: ENDS-IN-ED 
	   :noun "consideration"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category demonstrate
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "demonstrate" ;; keyword: ENDS-IN-ED 
	   :noun "demonstration"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category describe
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "describe"
	   :noun "description"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category elucidate
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "elucidate" ;; keyword: ENDS-IN-ED 
	   :noun "elucidation"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category hypothesize
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "hypothesize" ;; keyword: ENDS-IN-ED 
	   :noun "hypothesis"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category identify
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "identify" ;; keyword: ENDS-IN-ED 
	   :noun "identification"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category know
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "know"
	   :noun "knowledge" 

	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category observe
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "observe" ;; keyword: ENDS-IN-ED 
	   :noun "observation"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category obtain
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "obtain" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o patient))

(define-category perform
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "perform" ;; keyword: ENDS-IN-ED 
	   :noun "performance"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category posit
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "posit"
	   :etf (svo-passive)
	   :s agent
	   :o patient))

(define-category propose
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "propose"
	   :noun "proposal"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))

(define-category test
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "test" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o patient))


(define-category validate
    :specializes bio-process
    :binds ((agent bio-entity)(patient bio-process))
    :realization
    (:verb "validate" ;; keyword: ENDS-IN-ED 
	   :noun "validation"
	   :etf (svo-passive of-nominal)
	   :s agent
	   :o patient))
