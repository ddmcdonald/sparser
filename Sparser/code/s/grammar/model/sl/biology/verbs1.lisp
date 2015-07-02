;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "verbs1"
;;;  Module: "grammar/model/sl/biology/
;;; version: May 2015

;; verbs initiated 7/23/14 by lifting verbs from NFkappaB experiment. Continued
;; through 12/3/14.
;;
;; verbs2 initiated 12/3/14 by lifting verbs from verbs.lisp to provide
;; an not-loaded scratch pad for the new design
;;
;; verbs1 initiated 12/11/14 as the file to load with everything converted
;; to the new design.
;; RJB 12/20/2014 corrected bad entry for resist -- had verb as "require"
;; RJB added note for :at modifier for inhibit
;;  add :on and :at modifiers for phosphorylate
;; improved definition for increase as a noun and verb
;; remove unlikely definition of "study" as a verb 
;;    -- we need to handle ambiguity better
;; 1/2/2015 minor fixes -- mostly to get verbs with subject WE parsing 
;;   This needs to be fixed, since the category used is 
;;   the pronoun category, rather than a mixin for human
;; 1/14/2015 minor vocabulary hacking to address problems pointed out by David
;; 1/19.2015 remove all instances of "of-nominal" ETFs and replace by use of ":of object",
;; use def-synonym where needed to get noun and verb readings
;; 2/23/15 Aphabetized
;; 3/4/2015 replace definition of pseudo-verb is-bio-entity with use of 
;;   subcategorization frame -- much faster
;;   delete core definition oof "report" as verb. Use new method delete-verb-cfr
;;   correct object restriction on "express"
;;   add definition of upregulate and up-regulate
;; 3/12/15 Added pre-mod to phosphorylate for figure-7 case
;; 4/15/15 Moved in verbs from taxonomy. Quashed/merged duplicates
;; 4/23/15 Lifted out dimerize to phenomena to have it all together
;; 4/24/2015 generalized a number of V/R to biological based on evidence
;; 4/24/2015 added whethercomp as a type of verb complement
;; 4/24/2015 add definitions of translate (as in research translates to results) and delay
;; (ERK 11 "Our data demonstrate for the first time that a delay in cytoplasmic activation of ERK is directly translated into a delay in nuclear translocation.")
;; 4/27/2015 remove "load" as a verb -- all instances we see are "loading", and we
;;  want that treated like a noun
;; also add duration modifier on grow, and changes some subcat restrictions
;; 5/15/2015 substantial revision in taxonomy to drastically reduce the overloading of bio-process,
;;  provide bio-rhetorical as a marker for verbs that talk about belief and truth, bio-event for actions that are not bio-processes in the OBO sense, bio-relation for things like
;;  contain, sonstitute, etc.
;;  concomitant revision for things like thatcomp and whethercomp
;; 5/29/15 Removed things that belonged else where, notably 
;;  moved phosphoriated to phenomena to live with the other modifications
;; 5/30/2015 change poor definition of "state" to "bio-state" -- conflicted with definition of "have"
;; 6/5/2015 some vocabulary tweaks

(in-package :sparser)


;;; NEEDS REVIEW -- this is how we get BE to have a case frame to replace the
;;; definition of is-bio-entity

(assign-subject category::be category::biological (variable/category 'subject category::be))
(assign-object category::be category::biological (variable/category 'predication category::be))

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
                  :o (object bio-process))))
    (eval form)))

;;;--------------------------------------------------------
;;; specific verbs (alphabetical except for obvious pairs)
;;;--------------------------------------------------------

(define-category abrogate :specializes bio-process 
  :binds ((agent biological)
          (object bio-process)
          (at bio-concentration)
          (by biological)
          (in biological)
          (with biological)) 
  :realization
  (:verb "abrogate" :noun "abrogation" 
         :etf (svo-passive) 
         :s agent 
         :o object
         :at at
         :by biological
         :in in
         :with with))


(define-category accumulation :specializes bio-process
  :binds ((agent biological)
          (base biological)
          (location bio-location)
          (amount scalar-quality)
          (into biological)
          (upon biological))
  :realization
  (:verb "accumulate" :noun "accumulation"
         :etf (svo-passive)
         :s agent
         :o base
         :in location
         :into into
         :of base
         :on location
         :to amount
         :upon upon
         :within location))
 
(define-category acquire
    :specializes bio-process ;; for conjunctions, as in "de novo or acquired"
    :binds ((agent bio-entity)
            (object biological)
            (method bio-method))
    :realization
    (:verb "acquire" ;; keyword: ENDS-IN-ED 
	   :noun "acquisition"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object
           :on method
           :through object
           :with method ;; "Single images were acquired with a Leica fluorescence microscope..."
	   ))

;; According to Sketch Engine on the Mitre corpus,
;; "act" by itself roughly means "do" or "behave" and can
;; take "on" and "in" as well as "to".
;; "act as" is always the equivalent of "is". 
;; There's also the full caps ACT, which stands for
;; "adoptive cell therapy"

;;--- activity
;; "ERK activity in BRAF mutant A375 melanoma cells" #8
;;  conjectured:  "activity of ERK"
#|(def-term activity-of-protein
  :super-category bio-process
  :noun "activity"
  -- pooh. we need a couple of NP ETF
|#

(define-category bio-act
  ;; N.b. "bio-" implies that there's an unmarked "act" as well, and it's a bit cumbersome
  :specializes bio-event
  :binds ((actor bio-entity)
          (object bio-entity)
          (process bio-process)
          (bio biological))
  :documentation "compare with act as")

(def-realization bio-act
  :verb "act"
  :etf sv
  :s actor
  :at bio
  :by process
  :on object
  :through bio
  :via bio)

;; better choice for 'theme' is complement 
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
     :prep "as"  ;; <<<<<<<<<<<  J3
     :etf svo
     :s theme
     :o description))


(define-category bio-activate
  :specializes bio-process
  :binds ((activator biological)
          (activated biological)
          (mechanism biological)
          (condition bio-condition))
  :realization
    (:verb "activate" 
     :noun "activation"
     :etf (svo-passive)
     :s activator
     :o activated
     :by activator
     :via mechanism
     :through mechanism
     :under condition
     :of activated))



(define-category addition :specializes process
  :binds ((agent biological)
          (base biological)
          (added biological))
  :realization
  (:verb "add" :noun "addition"
         :etf (svo-passive)
         :s agent
         :o base
         :into added
         :to added
         :of base))

(define-category affect :specializes process 
  :binds ((agent biological)
          (object biological)
          (causing (:or be biological)))
  :realization 
  (:verb "affect" :etf (svo-passive) 
         :s agent 
         :o object
         :by agent
         :to-comp causing))


;; clausal roles
;; really want to have the form "CRAF allows CRAF to hyperactivate the pathway"  -- want the clausal modiffer
(define-category allow
    :specializes bio-control
    :binds ((agent biological)
            (object biological)
            (process process))
    :realization
    (:verb "allow" ;; keyword: ENDS-IN-ING 
	   :noun "allowance"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object
           :for object
           :to-comp process))


"" ;; keyword: (ion N) 
(define-category alter
    :specializes bio-control
    :binds ((agent biological)
            (object biological))
    :realization
    (:verb "alter"
	   :noun "alteration"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :by agent
           :of object
	   ))


(define-category analyze :specializes bio-method
  :mixins (bio-whethercomp bio-ifcomp)
  :binds ((agent (:or biological pronoun/first/plural))
          (object (:or bio-process measurement)))
  :realization 
  (:verb "analyze" :noun "analysis" 
         :etf (svo-passive) 
         :s agent 
         :o object
         :ifcomp ifstatement
         :whethercomp statement))

(def-synonym analyze
  (:verb "analyse"
         :etf (svo-passive) 
         :s agent 
         :o object
         ))



(define-category articulate
    :specializes bio-rhetorical
    :binds ((agent bio-entity)
            (object bio-process))
    :realization
    (:verb "articulate" ;; keyword: ENDS-IN-ED 
	   :noun "articulation"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))


(define-category bio-associate  :specializes bio-process ;; MAYBE THIS IS LIKE BIND
  ;;:obo-id "GO:0005488"
  ;; "<binder> binds to <binde>" the subject moves
  :binds ((agent biological)
          (object biological)
          (site bio-location))
  :realization 
  (:verb "associate"
         :noun "association"
         :etf (svo-passive) 
         :s agent
         :o  object
         :to object
         :via site
         :with object
         :of object))

;; overnight
(define-category assume
    :specializes bio-rhetorical
    :binds ((agent pronoun/first/plural)
            (object biological)
            (thatcomp (:or biological there-exists)))
    :realization
    (:verb "assume" ;; keyword: ENDS-IN-ED 
	   :noun "assumption"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object
           :thatcomp thatcomp))


(define-category attribute
    :specializes bio-rhetorical
    :binds ((agent pronoun/first/plural)
            (object biological)
            (cause biological))
    :realization
    (:verb "attribute" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object
           :to cause))


;; DAVID -- not sure about the relation of basis to base
(define-category base
    :specializes bio-rhetorical
    :binds ((agent bio-entity)
            (object bio-process)
            (cause biological))
    :realization
    (:verb "base" ;; keyword: ENDS-IN-ED 
	   :noun "basis"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :on cause
           :upon cause
           ))



(define-category block :specializes bio-control
  :binds ((blocker biological) ;; dec sentence 13 "depletion blocks ..."
          (blocked biological)
          (at quantity)) 
  :realization
  (:verb "block"
         :noun "blocking"
         :etf (svo-passive)
         :s blocker
         :o blocked
         :at at
         :by blocker
         :in context
         :of blocked
         :with blocker))

;; "call"  assigns a name in passive "X is called N"

#+ignore
(define-category co-operate :specializes bio-process 
  :binds ((agent biological)
          (co-operator biological)) 
  :realization 
  (:verb ("co-operate" :third-plural "co-operates")
         :noun"co-operation" 
         :etf (sv) 
         :s agent 
         :with co-operator
         :of agent))


(define-category open :specializes bio-process 
  :binds ((agent biological)
          (object biological)) 
  :realization 
  (:verb "open"
         :etf (svo-passive)
         :s agent 
         :o object))

(define-category operate :specializes bio-process 
  :binds ((agent biological)
          (co-operator biological)
          (object biological)
          (bio biological)
          (location bio-location)) 
  :realization 
  (:verb "operate"
         :noun"operation" 
         :etf (sv) 
         :s agent 
         :as bio
         :by agent
         :in location
         :of agent
         :on object
         :through bio
         :upon object
         :via bio
         :with co-operator))


;;/// "catalysis of phosphorylation by MEK"
(define-category catalytic-activity
  :specializes bio-process
  :bindings (uid "GO:0003824")
  :binds ((catalyst (:or enzyme complex))
          (process bio-process))
  :realization
  (:verb "catalyze" :noun "catalysis" :adj "catalytic"
         :etf (svo-passive) 
         :s catalyst
         :o process
         :by catalyst
         :of process))



(define-category cause
    :specializes bio-control
    :binds ((agent bio-entity)
            (object bio-process))
    :realization
    (:verb "cause" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object
           :by agent))

(def-synonym cause
  (:noun "cause"
         :of object))

(define-category compare :specializes bio-method
  :binds ((agent pronoun/first/plural)
          (object biological)
          (comparator biological)
          (context bio-context)
          (by (:or bio-method biological)))
  :realization 
  (:verb "compare" :noun "comparison" :adj "comparable"
         :etf (svo-passive)
         :s agent 
         :o object
         :in context
         :of object
         :to comparator
         :with comparator))


(define-category confer
    :specializes bio-control
    :binds ((agent (:or bio-entity common-noun))
            (object bio-process)
            (to bio-entity)
            (bio biological))
    :realization
    (:verb "confer" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object
           :by agent
           :on bio
           :to to
           :upon bio))

;; like inhibit "therapeutics are confounded by acquired resistance"
;; "...studies of human BTICs have been confounded by their scarcity in tumors..."
(define-category confound
    :specializes bio-event
    :binds ((agent (:or common-noun biological))
            (object bio-process)) 
  ;; changed agent to biological, since it can include bio-process such as resistnace
    :realization
    (:verb "confound" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object ;; "confounding of the gene expression.."
           :by agent))

(define-category conserve 
  :specializes bio-process 
  :binds ((agent bio-entity)
          (object bio-process)
          (bio biological)
          (at bio-location)) 
  :realization 
  (:verb "conserve" 
         :noun "conservation" 
         :etf (svo-passive) 
         :s agent 
         :o object
         :across bio
         :among bio
         :at at
         :by agent
         :from bio
         :in bio
         :to bio
         :with bio))

(define-category consider
    :specializes bio-rhetorical
    :mixins (bio-whethercomp)
    :binds ((agent pronoun/first/plural)
            (object biological)
            (tocomp (:or be biological))) ;; could be "the effects..."
    :realization
    (:verb ("consider"  :past-tense "considered") ;; keyword: ENDS-IN-ED 
	   :noun "consideration"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object
           :to-comp tocomp
           :whethercomp statement))

;; "consist" (of)
;; ? (comlex-entry "consist")
;; ((verb (:subc ((p-ing-sc :pval ("in" "of")) (pp :pval ("of" "in"))))))

(define-category constitute
    :specializes bio-relation
    :binds ((agent bio-entity)
            (object bio-process))
    :realization
    (:verb "constitute" ;; keyword: ENDS-IN-ED 
	   :etf (svo)
	   :s agent
	   :o object
           :by agent))

(define-category contain 
     :specializes bio-relation 
     :binds ((agent biological)
             (object biological)) 
     :realization 
     (:verb "contain"  
            :etf (svo-passive) 
            :s agent 
            :o object))

(define-category correspond
    :specializes bio-relation
    :binds ((item1 biological)
            (item2 biological)
            (property common-noun))
    :realization
  (:verb "correspond" :noun "correspondence"
         :etf (sv)
         :s item1
         :in property ;; "fragments correspond in size..."
         :of item1
         :to item2
         :with item2))

(define-category create
  :specializes bio-process
  :binds ((creator biological)
          (creation biological)
          (source biological)
          (process bio-process))
  :realization
  (:verb "create"
         :noun "creation"
         :etf (svo-passive) 
         :s creator
         :o creation
         :by creator
         :from source
         :of creation
         :through process))

(define-category culture
    :specializes bio-method
    :binds ((agent bio-entity)
            (object bio-process)
            (bio biological))
    :realization
    (:verb "culture" ;; keyword: ENDS-IN-ED
	   :etf (svo-passive)
	   :s agent
	   :o object))

(def-synonym culture
  (:noun "culture"
         :of object))


(define-category cycle
 :specializes bio-process
 :binds ((agent bio-entity)
         (object molecule)
         (from biological)
         (to biological)
         (path bio-state))
 :realization
 (:verb "cycle"
  :etf (svo-passive)
  :s agent
  :o object
  :from from
  :to to
  :between path))

;; bio-deactivate conflicts with bio-activate
;; so need to redesign the by-phrase to be uniform
;; and stated over the value restriction rather than
;; the variable
#+ignore (define-category bio-deactivate
  :specializes bio-process
  :binds ((deactivator bio-entity) (deactivated molecule))
  ::realization
   (:verb "deactivate" :noun "deactivation"
    :etf (svo-passive)
    :s deactivator
    :o deactivated
    :by deactivator
    :of deactivated))


(define-category decrease
  :specializes bio-control
  :binds ((agent biological) 
          (object biological) ;; can be bio-entity or bio-scalar (and perhaps? bio-process)
          (theme biological)
          (level (:or measurement bio-scalar))) 
  :realization
  (:verb "decrease" 
   :etf (svo-passive)
   :s agent
   :o object
   :by agent
   :for theme
   :in theme
   :to level))


;; Potentially problematic since the plural will misparse
;; "monoubiquitination decreases". Committing horrible hack
;; of putting in a dummy plural to circumvent that.
;; When we finally encounter are legitimate use of the
;; plural noun form we'll have to reconsider all this.
(def-synonym decrease
  (:noun ("decrease" :plural "ddddecrease")
   :of object))

(delete-noun-cfr (resolve/make "delay"))
;; Remove existing version of "delay" to replace it with this one
(define-category delay
    :specializes bio-event
    :binds ((agent biological)
            (object bio-process))
    :realization
    (:verb "delay"
	   :noun "delay"
	   :etf (svo-passive )
	   :s agent
	   :o object
           :in object
           :of object))

(def-synonym delay
  (:noun "delay"
         :of object
         :in object))


(define-category demonstrate
    :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :binds ((agent (:or biological pronoun/first/plural these bio-process))
            (object bio-process))
    :realization
    (:verb "demonstrate" ;; keyword: ENDS-IN-ED 
	   :noun "demonstration"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :by agent
           :of object
           :thatcomp statement))


(define-category depend
  :specializes bio-process
  :binds ((agent biological)
          (theme biological)) 
  :realization
  (:verb "depend" :noun "dependency"
         :adj "dependent"
   :etf (sv)
   :s agent
   :on theme
   :upon theme))



(define-category deplete
  :specializes bio-process
  :binds ((agent biological)
          (object biological)
          (method bio-method)
          (bio biological)) 
  :realization
  (:verb "deplete" :noun "depletion"
   :etf (svo-passive)
   :s agent
   :o object
   :by agent
   :from bio
   :of object
   :with method))


(define-category describe
    :specializes bio-rhetorical
    :binds ((agent pronoun/first/plural)
            (object bio-process)
            (figure article-figure))
    :realization
    (:verb "describe"
	   :noun "description"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :by agent
           :in figure
           :of object))

(define-category detect
    :specializes bio-method
    :binds ((agent (:or biological bio-method pronoun/first/plural))
            (object biological))
    :realization
    (:verb "detect" ;; keyword: ENDS-IN-ED 
	   :noun "detection"
           :adj "detectable"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object
           :by agent))

(define-category digest ;; as in a chemical process for breaking down proteins
  :specializes bio-method
  :binds ((agent biological)
          (object biological))
  :realization
  (:verb   "digest" :noun "digestion"
   :etf (svo-passive)
   :o object  ;; regulation of <process>
   :s agent
   :of object))


;; e.g. displayed sustained ERK phosphorylation
(define-category display
    :specializes bio-rhetorical
    :binds ((agent bio-entity)
            (object bio-process))
    :realization
    (:verb "display" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object
           ))

(def-synonym display
  (:noun "display"
         :of object))

(define-category disrupt :specializes bio-process
  :binds ((agent biological)
          (object bio-process)) 
  :realization
  (:verb "disrupt" :noun "disruption" 
         :etf (svo-passive) 
         :s agent 
         :o object
         :by agent
         :of object))

(define-category dissect 
  :specializes bio-method 
  :binds ((agent bio-entity)
          (object bio-process)) 
  :realization 
  (:verb "dissect" 
   :noun "dissection" 
   :etf (svo-passive) 
   :s agent 
   :o object))

(define-category dissociate :specializes bio-process
  :binds ((agent biological)
          (object complex)
          (into biological))
  :realization
  (:verb "dissociate" :noun "dissociation"
         :etf (svo-passive)
         :s agent
         :o object
         :into into
         ))

(define-category dominate 
  :specializes bio-relation 
  :binds ((agent bio-entity)
          (object bio-process)) 
  :realization 
  (:verb "dominate" 
  :noun "domination" 
  :etf (svo-passive) 
  :s agent 
  :o object))

(define-category downregulate
  :specializes bio-control
  :binds ((agent bio-entity)
          (object biological))
  :realization
  (:verb   "downregulate" :noun "downregulation"
   :etf (svo-passive)
   :o object  ;; regulation of <process>
   :s agent
   :of object))

#+ignore ;; need to get polyword morphology working!
(def-synonym downregulate
   (:verb "down-regulate"
   :etf (svo-passive)
   :o object  ;; regulation of <process>
   :s agent
   :of object))

(define-category bio-drive
  :specializes bio-control
  :binds ((driver biological)
          (driven biological)
          (mechanism biological))
  :realization 
  (:verb "drive"
   :etf (svo-passive) 
   :s driver
   :o driven
   :through mechanism))

(define-category dysregulate
  :specializes bio-process
  :binds ((agent bio-entity)
          (object biological))
  :realization
  (:verb   "dysregulate" :noun "dysregulation"
   :etf (svo-passive)
   :o object  ;; dysregulation of <process>
   :s agent
   :of object))    ;; by <entity>

(define-category elevate
    :specializes bio-control
    :binds ((agent bio-entity)
            (object bio-process)
            (in bio-location)
            (condition bio-condition))
    :realization
    (:verb "elevate" ;; keyword: ENDS-IN-ED 
	   :noun "elevation"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :by agent
           :in in
           :of object
           :under condition))

(define-category elucidate
    :specializes bio-rhetorical
    :binds ((agent biological)
            (object biological)) 
    :mixins (bio-whethercomp)
     ;; change object to biological, since we have December 51, "in a manner that elucidates ... targets"
    :realization
    (:verb "elucidate" ;; keyword: ENDS-IN-ED 
	   :noun "elucidation"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :by agent
           :of object
           :whethercomp statement))

(define-category elute
    :specializes bio-method
    :binds ((agent bio-entity)
            (object bio-process)
            (bio biological))
    :realization
    (:verb "elute" ;; keyword: ENDS-IN-ED 
	   :noun "elution"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :by agent
           :from bio
           :of object
           :with agent)) ;; from/onto column (?)

;;--- "encode"
;; <enzyme> encoded by <gene>
(define-category encode
  :specializes bio-process
  :binds ((encoder gene) 
          (encoded protein)) ;; should be protein-or-transcript??
  :realization
  (:verb "encode"
   :noun "encoding"
   :etf (svo-passive)
   :s encoder
   :o encoded
   :by encoder
   :for encoded
   :of encoded))

(define-category engender
    :specializes bio-control
    :binds ((agent (:or bio-entity biological))
            (object bio-process))
    :realization
    (:verb "engender"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :by agent))



(define-category bio-promote
  :specializes bio-control
  :binds ((agent biological)
          (process bio-process)
          (mechanism biological))
  :realization 
  (:verb "promote"
   :etf (svo-passive)
   :s agent
   :o process
   :via mechanism
   :of process))

(define-category bio-enhance
  :specializes bio-control
  :binds ((agent biological)
          (process bio-process)
          (mechanism biological))
  :realization 
  (:verb "enhance" :noun "enhancement"
   :etf (svo-passive)
   :s agent
   :o process
   :by mechanism
   :via mechanism
   :of process))

;; needs to come after bio-enhance.
(define-category bio-amplify
  :specializes bio-enhance
  :binds ((agent biological)
          (process bio-process)
          (mechanism biological)
          (bio biological))
  :realization 
  (:verb "amplify" :noun "amplification"
   :etf (svo-passive)
   :s agent
   :o process
   :as bio ;; need to change this at some point to account for, e.g.,
           ;; "GAPDH transcripts were amplified as an internal control."
   :by bio
   :from bio
   :of process
   :via mechanism
   :with bio))



(define-category escape
    :specializes bio-process
    :binds ((agent bio-entity)
            (object bio-process))
    :realization
    (:verb "escape"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :from object))

(def-synonym escape
  (:noun "escape"
         :of object))

(define-category establish 
  :specializes bio-rhetorical 
  :mixins (bio-whethercomp)
  :binds ((agent (:or bio-entity bio-method))
          (object biological)
          (bio biological)) 
  :realization 
  (:verb "establish" 
  :noun "establishment" 
  :etf (svo-passive) 
  :s agent 
  :o object
  :as bio
  :by agent
  :from bio
  :whethercomp statement))

(define-category examine
  :specializes bio-rhetorical
  :mixins (bio-whethercomp bio-ifcomp)
  :binds ((agent bio-entity)
          (object bio-process)
          (by bio-method)
          (for biological))
  :realization
  (:verb "examine"
         :noun "examination"
         :etf (svo-passive)
         :s agent 
         :o object
         :by by
         :for for
         :ifcomp statement
         :whethercomp statement))

(define-category exhibit
    :specializes bio-event
    :binds ((agent biological)
            (object biological))
    :realization
    (:verb "exhibit"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :by agent))

(define-category explanation
    :specializes bio-rhetorical
    :binds ((agent (:or biological common-noun))
            (object bio-process))
    :realization
    (:verb "explain" 
           :noun "explanation" 
           :etf (svo-passive) 
           :s agent 
           :o object
           :by agent))

;; as in "genes express proteins" or "cell (lines) express proteins" and not the abstract sense
(define-category gene-transcript-express
    :specializes bio-process
    :binds ((agent bio-entity)
            (object protein)
            (location bio-location)
            (from biological))
    :realization
    (:verb "express"
	   :noun "expression"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :by agent
           :from from
           :in location
           :of object
           :on location))

;;events are favored in a context
(define-category favor
    :specializes bio-control
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb ("favor" :past-tense "favored") ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object
	  ))  ;; :in bio-context))  <--------------- not in scope

;; mostly passive -- "... are found ..."
(define-category find
    :specializes bio-rhetorical
    :binds ((agent pronoun/first/plural)(object bio-process))
    :realization
    (:verb ("find" :past-tense "found")
	   :noun "finding"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

(define-category follow
    :specializes bio-relation
  :binds ((initial bio-process)
          (subsequent bio-process)
          (by (:or bio-method bio-process)))
  :realization
  (:verb "follow"
         :etf (svo)
         :s initial
         :o subsequent
         :by by))

(define-category bio-form :specializes bio-process
  :binds ((creator biological)(creation biological)(mechanism biological))
  :realization
  (:verb ("formXXX" :third-plural "forms" :past-tense "formed") 
         ;; "form" has never been seen as a verb in the corpus, but "forms" and "formed"
         ;; have been seen
         :noun "formation"
         :etf (svo-passive) 
         :s creator
         :o creation
         :of creation
         :through mechanism
         ))

(define-category fraction :specializes bio-variant
  :binds ((agent pronoun/first/plural) (basis bio-entity)) ;; this should be for genes and proteins
  :realization
  (:verb "fraction" ;; bizarre, but needed to handle the conflict between "fractioned" and the noun
         :etf (svo-passive)
         :s agent
         :o basis
         :of basis))

(def-synonym fraction
  (:noun "fraction"
         :of basis))
;; exchange


(define-category generate :specializes bio-process
  :binds ((agent (:or biological pronoun/first/plural))
          (object biological)
          (bio biological))
  :realization 
  (:verb "generate" :noun "generation"
         :etf (svo-passive) 
         :s agent
         :o object
         :by agent
         :from bio
         :in bio))

(define-category bio-grow  :specializes bio-process
  ;;:obo-id "GO:0005488"
  ;; "<binder> binds to <binde>" the subject moves
  :binds ((agent pronoun/first/plural)(object bio-entity)(duration amount-of-time))
  :realization 
  (:verb ("grow" :past-tense "grown") :noun "growing"
         :etf (svo-passive) 
         :s agent
         :o  object
         :for duration
         ))



;; formation "GO:0009058"
;;--- hydrolysis
;; http://en.wikipedia.org/wiki/Hydrolysis
;; j3  "upon hydrolysis of GTP to GDP"
;;  The phosphate is removed/cleaved from the GTP (ATP)
;;  and GDP (di-phosphate) is the result.
;;  "gtp hydrolysis on ras"
;; "GO:0019514"
(define-category hydrolyze :specializes bio-process
  :binds ((agent molecule) ;; the agent which causes or catalyzes the hydrolysis
          (object molecule) ;; the chemical that gets hydrolyzed
          (goal molecule) ;; the resulting chemical
          (substrate molecule)
          (by (:or molecule bio-method))) ;;the context in which the hydrolysis occurs
  :realization            
  (:verb "hydrolyze" :noun "hydrolysis"
   :etf (svo-passive pre-mod) 
   :s agent 
   :o object 
   :m object
   :by by
   :of object
   :to goal
   :on substrate))

(define-category bio-hyperactivate
  :specializes bio-process
  :binds ((activator bio-entity) (activated (:or molecule pathway)))
  :realization
    (:verb "hyperactivate" 
     :noun "hyperactivation"
     :etf (svo-passive)
     :s activator
     :o activated
     :of activated))

(define-category hypothesize
    :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :binds ((agent pronoun/first/plural)(object bio-process))
    :realization
    (:verb "hypothesize" ;; keyword: ENDS-IN-ED 
	   :noun "hypothesis"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :thatcomp statement
           ))


(define-category identify
    :specializes bio-method
    :binds ((agent pronoun/first/plural)
            (object biological)
            (identified-as biological)
            (manner bio-method))
    :realization
    (:verb "identify" ;; keyword: ENDS-IN-ED 
	   :noun "identification"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :as identified-as
           :of object
           :in manner))

(define-category immunoprecipitate :specializes bio-method
  :binds ((agent pronoun/first/plural)
          (object bio-entity)
          (origin bio-location))
  :realization 
  (:verb "immunoprecipitate" :noun "immunoprecipitation"
         :etf (svo-passive) 
         :s agent 
         :o object
         :from origin
         :of object))

(define-category impact :specializes bio-predication
  :binds ((subject biological)
          (theme biological))
  :realization
  (:verb "impact" :noun "impact"
	 :s subject
	 :of theme))

(define-category impair :specializes bio-control
  :binds ((agent biological)
          (object biological)) 
  :realization 
  (:verb "impair" :noun "impairment"
         :etf (svo-passive)
         :s agent
         :o object
         :of object))

(define-category incorporate :specializes bio-relation 
  :binds ((agent biological)
          (object biological)
          (bio biological)
          (location bio-location))
  :realization 
  (:verb "incorporate" :noun "incorporation"
         :etf (svo-passive)
         :s agent
         :o object
         :at location
         :in bio
         :into bio
         :of object))

(define-category increase
  :specializes bio-control
  :binds ((agent biological) 
          (object biological) ;; can be bio-entity or bio-scalar (and perhaps? bio-process)
          (theme biological)
          (method (:or bio-process bio-method biological))) ;; increase in rate vs increase in RAS activity
  :realization
  (:verb "increase" 
         :etf (svo-passive)
         :s agent
         :o object
         :by method
         :for theme
         :with method))



;;--- "induce"
;; "which induce transcription of the p53 gene"
;; "induce processing of p100"
(define-category induce
  :specializes bio-control
  :binds ((agent (:or bio-entity bio-process)) 
          (object biological)
          (response response)) ;; we have "induce this phenotype"
  :realization 
  (:verb "induce" :noun "induction" :adj "inducible"
   :etf (svo-passive)
   :s agent ;;can also be treatment? "ACF formation induced by dextran sodium sulfate"
   :o object
   :in response))
;;/// want subtypes, want to understand the syntax of "-inducing"


;; January
; "observed an order of magnitude increase in the rate of GTP hydrolysis"
; "No increase in the rate of GTP hydrolysis"
; "monoubiquitination increases the population of active, GTP–bound Ras"
; monoubiquitination increases the proportion of Ras ...
;  monoubiquitination decreases ..
; #41 "leads to its increased translocation to the cytosol/nucleus and increased binding to p53"

;;//// look at change in amount for how to do measures
;; until def-synonym actually works without clobbering earlier rules
(def-synonym increase
  (:noun "increase"
   :in object
   :of object))


(define-category indicate
    :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :binds ((agent biological)
            (object bio-process)
            (figure article-figure))
    :realization
    (:verb "indicate" ;; keyword: ENDS-IN-ING 
	   :noun "indication"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :in figure
           :of object
           :thatcomp statement))

(define-category influence
    :specializes bio-control
    :binds ((agent biological)
            (object biological)
            (mechanism biological))
    :realization
  (:verb "influence" ;; keyword: ENDS-IN-ING 
         :etf (svo-passive)
         :s agent
         :o object
         :by mechanism
         :via mechanism))

#| only two examples of noun use of "influence"
(LOAD-TEST 998 "Although the anchorage-independent growth assay measures only one of many phenotypes of transformation and does not, for example, recapitulate tumor microenvironment or account for the influence of the immune system on tumor formation, this system will be useful for dissecting inhibitor response and downstream signaling pathways, particularly for those mutants not found in existing cancer-derived cell lines.") 
(LOAD-TEST 1219 "Given the documented levels of HuR association with SIRT1 and VHL mRNAs ( xref ) and the SIRT1 and VHL mRNA half-lives ( xref A), we investigated the influence of non-phosphorylatable HuR Y200F mutant on the abundance of these mRNAs.") 

(def-synonym influence
  (:noun "influence"
         :of agent
         :on object))
|#

(define-category inform
    :specializes bio-rhetorical
    :binds ((agent (:or biological bio-method))(object (:or bio-process bio-method)))
    :realization
    (:verb "inform" ;; keyword: ENDS-IN-ING 
	   :etf (svo-passive)
	   :s agent
	   :o object))

;;--- inhibit
;; "by inhibiting <p>"

(define-category inhibit ;; was drug-inhibit but inhibit fits answer key
  :specializes bio-control
  :binds ((agent biological) 
          (object biological)
          (measurement measurement)) ;; FIX THIS -- for the moment the rule number-noun-rule makes 2nM a unit of measure, not a measurement))
  :realization 
  (:verb ("inhibit" :past-tense "inhibited" 
                    :present-participle "inhibiting" )
   :noun "inhibition"
   :etf (svo-passive)
   :s agent
   :o object
   :at measurement
   :of object
   ;; :at bio-location ;; e.g. "at a downstream target ..."
   ))

(define-category interact :specializes bio-process 
  :binds ((agent biological)
          (object bio-process)
          (interactor biological)
          (location bio-location)) 
  :realization 
  (:verb "interact" :noun"interaction" 
         :etf (sv) 
         :s agent 
         ;;:o object ;; THIS IS BOGUS -- NEED HELP WITH SV verbs
         :in location
         :with interactor
         :of agent))

(define-category interfere
    :specializes bio-control
    :binds ((agent bio-entity)
            (object bio-process))
    :realization
    (:verb "interfere" ;; keyword: ENDS-IN-ING 
	   :noun "interference"
	   :etf (sv)
	   :s agent
           :of agent
           :in object
           :with object))

(define-category interrogate
    :specializes bio-method
    :binds ((agent bio-entity)
            (object bio-process))
    :realization
    (:verb "interrogate" ;; keyword: ENDS-IN-ING 
	   :noun "interrogation"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :by agent
           :of object))

(define-category investigate 
  :specializes bio-method 
  :mixins (bio-whethercomp)
  :binds ((agent bio-entity)
          (object bio-process))
  :realization
  (:verb "investigate" :noun "investigation"
         :etf (svo-passive)
         :s agent
         :o object
         :whethercomp statement))

(define-category involve
    :specializes bio-relation
    :binds ((agent biological)(object biological))
    :realization
    (:verb "involve" ;; keyword: ENDS-IN-ING 
	   :etf (svo-passive)
	   :s agent
	   :o object
           :in object))

(define-category keep
    :specializes bio-relation
    :binds ((agent bio-entity)(object bio-process))
    :realization
    (:verb "keep"
	   :etf (svo-passive)
	   :s agent
	   :o object))

(define-category know
    :specializes bio-rhetorical
    :binds ((agent bio-entity)
            (object bio-process)
            (topic biological))
    :realization
    (:verb "know"
	   :noun "knowledge" 
	   :etf (svo-passive)
	   :s agent
	   :o object
           :about topic
           :of object))

(delete-noun-cfr (resolve/make "lead"))
(delete-noun-cfr (resolve/make "leads"))
(define-category lead
    :specializes bio-control
    :binds ((agent biological)(object biological)(result biological))
    :realization
    (:verb ("lead" :past-tense "led")
	   :etf (sv)
	   :s agent
	   :to object
           :to-comp result))

(define-category ligate :specializes bio-process 
  :binds ((agent bio-entity)
          (object bio-process)
          (substrate bio-entity)) ;; either a residue-on-protein (dectest 8) ubiquitin C77, or a molecule
  :realization 
  (:verb "ligate" :noun "ligation" 
         :etf (svo-passive)
         :s agent
         :o object
         :into substrate
         :to substrate
         :of object))





(define-category maintain
    :specializes bio-control
    :binds ((agent bio-entity)
            (object bio-process))
    :realization
    (:verb "maintain"
	   :noun "maintenance"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object)) 

(define-category measure :specializes bio-method
  :binds ((agent pronoun/first/plural)
          (object biological) ;; object can be a bio-scalar, bio-entity or bio-process 
          (method bio-method)
          (location bio-location))
  :realization 
  (:verb "measure" :noun "measurement"
         :etf (svo-passive)
         :s agent
         :o object
         :by method
         :in location
         :of object
         :with method))

(define-category mediate
  :specializes bio-process
  :binds ((agent bio-entity)
          (object bio-process)
	  (process bio-process))
  :realization
  (:verb   "mediate" :noun "mediation"
   :etf (svo-passive)
   :s agent
   :o object
   :via process))

;; alm ost never a verb (define-category model :specializes bio-process :binds ((agent bio-entity)(object bio-process)) :realization (:verb "model"  :etf (svo-passive) :s agent :o object)) ;;VERB unknown word "modeling" keyword: ENDS-IN-ING

(define-category modify :specializes bio-process
  :binds ((agent bio-entity)
          (object bio-process)
          (location bio-location)
          (by biological))
  :realization 
  (:verb "modify" :noun "modification"
         :etf (svo-passive) 
         :s agent
         :o object
         :of object
         :at location
         :by by))

(define-category modulate
  :specializes bio-control
  :binds ((agent biological) 
          (object biological) ;; can be bio-entity or bio-scalar (and perhaps? bio-process)
          (theme biological)) ;; increase in rate vs increase in RAS activity
  :realization
  (:verb "modulate" 
         :etf (svo-passive)
         :s agent
         :o object
         :by agent
         :for theme))

;;--- "mutation"
;; "mutated oncogenes"
;; "oncogenic mutations"
;; "in BRAF mutant thyroid cell"
(define-category mutate
  :specializes bio-process
  :binds ((agent biological)
          (object biological)  ;; mutation of gene
          (location bio-location)
          (method bio-method)) ;; "mutated randomly via PCR"
  :realization
  (:verb "mutate" :noun "mutation"
   :etf (svo-passive)
   :s agent
   :o object
   :at location
   :by agent
   :in object
   :into object
   :of object
   :on location
   :to object
   :via method
   :within location))
;; These two were in terms and need to be integrated with
;; this category
(np-head "mutant" :super 'bio-entity)
(def-cfr gene (mutate gene)
  :form n-bar
  :referent (:head right-edge :function passive-premodifier left-edge right-edge object))

(np-head "knock-out" :super 'mutate)

(define-category need
    :specializes bio-relation
    :binds ((agent bio-entity)
            (object (:or bio-entity bio-process))
            (result-or-purpose process))
    :realization
    (:verb "need" ;; keyword: ENDS-IN-ED 
	   :noun "need"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :FOR object
           :to-comp result-or-purpose))

(def-synonym need
    (:noun "need"
           :of agent
           :for object))

(define-category observe
    :specializes bio-method
    :mixins (bio-thatcomp)
    :binds ((agent pronoun/first/plural)
            (object biological)
            (focused-on biological)
            (context biological)
            (method bio-method))
    :realization
    (:verb "observe" ;; keyword: ENDS-IN-ED 
	   :noun "observation"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :by method ;; can also be people..
           :for focused-on
           :in context
           :of object
           :with context
           :thatcomp statement))

(define-category obtain
    :specializes bio-method
    :binds ((agent pronoun/first/plural)
            (object bio-process)
            (source biological)
            (method bio-method))
    :realization
    (:verb "obtain" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object
           :by method
           :from source
           :without source))

(define-category occur
    :specializes bio-event
    :binds ((agent bio-entity)
            (object bio-process))
    :realization
    (:verb ("occur" :present-participle "occurring" :past-tense "occurred")
	   :noun "occurrence"
	   :etf (sv)
	   :s agent
	   :o object))

(define-category overexpress
    :specializes bio-process
    :binds ((agent bio-entity)
            (object biological))
    :realization
    (:verb "overexpress"
	   :noun "overexpression"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

;; new definitions from MITRE test set
(define-category overlap :specializes bio-relation
  :binds ((object1 biological)
          (object2 biological))
  :realization
  (:verb "overlap"
         :etf (svo-passive)
         :s object1
         :o object2
         :with object2))

(def-synonym overlap
  (:noun "overlap"
         :among object1
         :between object1
         :in object1
         :of object1
         :with object2))

(define-category perform
    :specializes bio-method
    :binds ((agent pronoun/first/plural)
            (object bio-method)
            (beneficiary biological)
            (using biological)
            (method bio-method)
            (context bio-context))
    :realization
    (:verb "perform" ;; keyword: ENDS-IN-ED 
	   :noun "performance"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :by method
           :in context
           :of object
           :on beneficiary
           :with using))



(define-category place :specializes bio-method
  :binds ((agent pronoun/first/plural)
          (object (:or bio-process bio-entity))
          (location bio-location))
  :realization 
  (:verb "place" 
         :noun "placement" 
         :etf (svo-passive) 
         :s agent 
         :o object
         :at location))

(define-category posit
    :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :binds ((agent pronoun/first/plural)
            (object bio-process))
    :realization
    (:verb "posit"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :thatcomp statement))

(define-category potentiate
    :specializes bio-control
    :binds ((agent biological)
            (object bio-process)
            (manner bio-process))
    :realization
    (:verb "potentiate" ;; keyword: ENDS-IN-ED 
	   :noun "potentiation"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :by agent
           :of object
           :in manner))

(define-category predict
    :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :binds ((agent (:or biological bio-rhetorical)) ;; "predicted by hypothesis"
            (object bio-process))
  ;; agent can be a process, like "mutation"
    :realization
    (:verb "predict"
	   :noun "prediction"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :by agent
           :thatcomp statement))

(define-category present
    :specializes bio-relation
    :binds ((agent bio-entity)
            (object bio-process)
            (location bio-location)
            (figure article-figure))
    :realization
    (:verb "present"
	   :noun "presentation"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :in figure
           :of object))

(def-synonym present
   (:adj "present"
           :at location
           :in location
           :on location))

(define-category preserve :specializes bio-control
  :binds ((agent bio-entity)
          (object bio-process)
          (location bio-location))
  :realization
  (:verb "preserve" :noun "preservation"
         :etf (svo-passive)
         :s agent
         :o object
         :in location)) 


(define-category prevent :specializes bio-control
  :binds ((agent biological)
          (object biological)) 
  :realization
  (:verb "prevent" :noun "prevention" 
         :etf (svo-passive) 
         :s agent 
         :o object
         :by agent
         :of object))

(delete-verb-cfr (resolve/make "probe"))
(define-category probe
    :specializes bio-rhetorical
    :binds ((agent bio-entity)
            (object biological))
    :realization
    (:verb "probe" 
           :etf (svo-passive)
           :s agent
           :o object
           :for object))
(delete-noun-cfr (resolve/make "probe"))


(define-category proliferate
    :specializes bio-process
    :binds ((agent bio-entity)
            (object bio-process)
            (bio biological))
    :realization
    (:verb "proliferate"
	   :noun "proliferation"
	   :etf (sv)
	   :s agent
	   :o object
           :in bio
           :of object
           :through bio
           :with bio
	   :within bio))

;; (p "Dimerization of ERK has been proposed as a requirement for nuclear translocation.")
(define-category propose
    :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :binds ((agent pronoun/first/plural)
            (proposed bio-process)
            (to-be bio-process))
    :realization
    (:verb "propose"
     :noun "proposal"
     :etf (svo-passive)
     :s agent
     :o proposed
     :of proposed
     :as to-be
     :thatcomp statement))

(define-category provide
    :specializes bio-relation
    :binds ((agent (:or result biological))
            (object (:or argument-support biological bio-rhetorical)))
    :realization
    (:verb "provide"
	   :noun "provision"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

(define-category purify :specializes bio-method
  :binds ((agent (:or bio-method bio-process))
          (object bio-entity)
          (bio biological)) 
  :realization 
  (:verb "purify" :noun "purification" 
         :etf (svo-passive) 
         :s agent
         :o object
         :by agent
         :from bio
         :with agent))

(define-category query
    :specializes bio-method
    :mixins (bio-whethercomp)
    :binds ((agent (:or biological pronoun/first/plural))
            (object (:or bio-process bio-entity))
            (against pathway))
    :realization
    (:verb "query" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object
           :against against ;; "12,484 genes were queried against KEGG biopathways"
           :whethercomp statement))

(define-category raise
    :specializes bio-control
    :binds ((agent bio-entity)
            (object (:or bio-process bio-abstract)) ;; bio-abstract for "raised the possibility"
            (method bio-method)
            (bio biological))
    :realization
    (:verb "raise" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object
           :against bio
           :by method))

(define-category reconstitute :specializes bio-process
  :binds ((agent bio-entity)
          (object bio-process)
          (amount measurement)
          (in (:or measurement biological)))
  :realization
  (:verb "reconstitute" :noun "reconstitution"
         :etf (svo-passive)
         :s agent
         :o object
         :in in
         :to amount
         :with agent))

(define-category recruit :specializes bio-process 
  :binds ((agent bio-entity)
          (object bio-process)
          (process bio-process)
          (source biological)
          (location bio-location)
          (destination biological)) 
  :realization 
  (:verb "recruit" :noun "recruitment"
         :etf (svo-passive) 
         :s agent
         :o object
         :by agent
         :from source
         :in destination
         :onto location
         :through location
         :to destination
         :via process))

(define-category reduce
    :specializes bio-control
    :binds ((agent (:or bio-entity bio-process))
            (object bio-process)
            (bio biological))
    :realization
    (:verb "reduce" ;; keyword: ENDS-IN-ING 
	   :noun "reduction"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :by agent
           :in bio
           :of object))

;;--- "regulate"
;;
(define-category regulate
  :specializes bio-control
  :binds ((agent biological)
          (object biological)
          (theme biological)) ;; increase in rate vs increase in RAS activity  :realization
    :realization
    (:verb "regulate" 
     :noun "regulation"
     :etf (svo-passive)
     :o object  ;; regulation of <process>
     :s agent
     :in theme
     :of object
     :for theme))


(define-category inter-regulate
  :specializes bio-control
  :binds ((agent biological)
          (object biological)
          (theme biological)) ;; increase in rate vs increase in RAS activity  :realization
    :realization
    (:verb "inter-regulate"
     :noun "inter-regulation"
     :etf (svo-passive)
     :o object  ;; regulation of <process>
     :s agent
     :of object
     :for theme
     :between theme))    ;; by <entity>


(define-category relapse
    :specializes bio-process
    :binds ((agent bio-entity)
            (object bio-entity))
    :realization
    (:verb "relapse" ;; keyword: ENDS-IN-ING 
	   :noun "relapse"
	   :etf (svo-passive)
	   :s agent
	   :o object))

(def-synonym relapse
  (:noun "relapse"
         :of object))




;;--- "release"  "GO:0023061"
;; the rate of GDP or GTP release from the G-domain is slow

(define-category molecule-release
 :specializes bio-process
 :binds ((agent bio-entity)
         (object molecule)
         (from (:or molecule pathway)))
 :realization
 (:verb "release" :noun "release"
  :etf (svo-passive)
  :s agent
  :o object
  ;; Comlex: (np-pp :pval ("in" "into" "from" "to"))
  ;;  and a lot of others
  :from from
  :of object))

(define-category remain
    :specializes bio-relation
    :binds ((agent bio-entity)
            (object bio-process))
    :realization
    (:verb "remain" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object))

(def-form-rule (remain adjective)
  :form vp
  :referent (:head right-edge);; :bind (predication right-edge)
)

(define-category remove
    :specializes bio-process
    :binds ((agent pronoun/first/plural)
            (object biological)
            (source biological)
            (by (:or bio-method bio-process)))
    :realization
    (:verb "remove" ;; keyword: ENDS-IN-ED 
	   :noun "removal"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :by by
           :from source
           :of object))

(delete-verb-cfr (resolve/make "report"))

(define-category report :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :binds ((agent pronoun/first/plural)
            (object bio-process))
    :realization
    (:verb ("report" :past-tense "reported")
	   :etf (svo-passive)
	   :s agent
	   :o object
           :thatcomp statement))

(define-category represent
    :specializes bio-relation
    :binds ((agent biological)
            (object (:or bio-process measurement))
            (figure article-figure))
    :realization
    (:verb "represent" :noun "representation"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :in figure
           :of object))

(define-category require
    :specializes bio-control
    :binds ((requires biological)
            (requirement (:or biological process)))
    :realization
    (:verb "require"
	   :noun "requirement"
	   :etf (svo-passive)
	   :s requires
	   :o requirement
           :for requires
           :of requires))

(define-category resist
    :specializes bio-process
    :binds ((agent bio-entity)
            (object biological))
    :realization
    (:verb "resist"
	   :noun "resistance"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :to object
           :of agent))


(define-category result
    :specializes bio-process
    :binds ((agent (:or bio-entity bio-process))
            (object (:or bio-process bio-method)))
    :realization
    (:verb "result" ;; keyword: ENDS-IN-ED 
	   :etf (svo)
	   :s agent
           :o object
           :from object 
	   :in object))

(def-synonym result
  (:noun "result"
         :of object))

(define-category reveal :specializes bio-rhetorical
		 :mixins (bio-thatcomp)
  :binds ((agent biological)
          (object bio-process))
  ;; the analysis revealed
  :realization
  (:verb "reveal" :noun "revelation" 
         :etf (svo-passive)
         :s agent 
         :o object
         :thatcomp statement))

(define-category select
    :specializes bio-method
    :binds ((agent pronoun/first/plural)
            (object biological)
            (study bio-method))
    :realization
    (:verb "select" ;; keyword: ENDS-IN-ED 
	   :noun "selection"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :for study
           :of object))

(define-category seem
    :specializes bio-rhetorical
    :binds ((agent bio-entity)
            (object bio-process))
    :realization
    (:verb "seem"
	   :etf (svo)
	   :s agent
	   :o object))

;; can be both "<people> show ..." and "<molecule> shows <properties>"
(define-category show
    :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :binds ((agent (:or pronoun/first/plural article-figure))
            (object (:or bio-process pronoun/inanimate))
            (fig article-figure)
            (tocomp (:or be biological)))
  ;; it was shown that
    :realization
    (:verb ("show" :past-tense "shown")
	   :etf (svo-passive)
	   :s agent
	   :o object
           :in fig
           :thatcomp statement
           :to-comp tocomp))



(define-category stabilize :specializes bio-control
  :binds ((agent biological)
          (object biological))
 :realization
  (:verb "stabilize" :noun "stabilization"
         :etf (svo-passive) 
         :s agent 
         :o object
         :of object))

(define-category study-bio-process
 :specializes bio-method
 :binds ((agent pronoun/first/plural)
         (object biological))
  ;; can study bio-process or bio-entity
 :realization
 (:verb ("studyxxx" :past-tense "studied" :present-participle "studying")
  :etf (svo-passive)
  :s agent
  :o object))

(def-synonym study-bio-process
  (:noun "study"
   :of object))

(define-category stimulate
  :specializes bio-control
  :binds ((agent bio-entity)
          (object biological))
  :realization
  (:verb "stimulate" :noun "stimulation"
   :etf (svo-passive)
   :o object  ;; stimulation of <process>
   :s agent
   :of object
   :with agent))    ;; by <entity>

(define-category succeed
  :specializes bio-relation
  :binds ((agent biological)
          (goal biological))
  :realization
  (:verb "succeed" :noun "success"
   :etf (sv)
   :s agent
   :of agent
   :in goal))

(define-category suggest :specializes bio-rhetorical
		 :mixins (bio-thatcomp)
  ;; :specializes rhetorical-process <----- find the right name
  :binds ((agent biological)) ;;/// can be "these data suggest"
  :realization
  (:verb "suggest" :noun "suggestion"
   :etf (sv)
   :s agent
   :thatcomp statement))


(define-category suppress
    :specializes bio-control
    :binds ((agent bio-entity)
            (object bio-process))
    :realization
    (:verb "suppress" ;; keyword: ENDS-IN-ED 
	   :noun "suppression"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

(define-category sustain
    :specializes bio-control
    :binds ((agent bio-entity)
            (object bio-process))
    :realization
    (:verb "sustain" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object))

(define-category tag
    :specializes bio-method
    :binds ((tagged protein)
            (taggant protein))
    :realization
    (:verb "tag" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s taggant
	   :o tagged
           :with taggant))


#+ignore
(define-category target
    :specializes bio-process
    :binds ((agent bio-entity)
            (object bio-process))
    :realization
    (:verb ("target" :present-participle "targeting" :past-tense "targeted")  ;; keyword: ENDS-IN-ED 
	   :noun "target"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))


(define-category tend
    :specializes bio-rhetorical
    :binds ((agent bio-entity)
            (object bio-process))
    :realization
    (:verb "tend" ;; keyword: ENDS-IN-ED 
	   :noun "tendency"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of agent)) 

(define-category test
    :specializes bio-method
    :mixins (bio-whethercomp)
    :binds ((agent pronoun/first/plural)
            (object (:or bio-rhetorical biological)))
    :realization
    (:verb "test" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object
           :whethercomp statement))

(define-category transactivation :specializes bio-process
  :binds ((agent biological)
          (object biological))
  :realization
  (:verb "transactivate" :noun "transactivation"
         :etf (svo-passive)
         :s agent
         :o object
         :of object))


(define-category transcribe :specializes bio-process
  :binds ((agent bio-entity)
          (object bio-process))
  :realization 
  (:verb "transcribe" :noun "transcription" :etf (svo-passive) :s agent :o object))

(define-category transduce
  :specializes  bio-process
  :binds ((agent bio-entity)
          (object bio-entity))
  :realization
  (:verb "transduce" :noun "transduction" 
  :etf (svo-passive)
  :s agent
  :o object
  :of object))

(define-category transition
 :specializes bio-process
 :binds ((agent bio-entity)
         (object molecule)
         (from biological)
         (to biological))
 :realization
 (:verb "transition" ; :noun "release"
  :etf (svo-passive)
  :s agent
  :o object
  :from from
  :to to))

(def-synonym transition
   (:noun "transition"))



; (p "ERK Nuclear Translocation Is Dimerization-independent but Controlled by the Rate of Phosphorylation.")
; (p "Upon activation, ERKs translocate from the cytoplasm to the nucleus.")
; "the molecular mechanisms that regulate ERK nuclear translocation 
;     are not fully understood."
; (process on ERK) ... a requirement for nuclear translocation."
; 11: is directly translated into a delay in nuclear translocation
(define-category translocation :specializes transport
  :binds ((agent bio-process)
          (object protein)
          (origin cellular-location)
          (destination cellular-location)) 
  :realization 
  (:verb "translocate" 
   :noun "translocation" 
   :etf (svo-passive) 
   :s object ;; ERK translocates -- this is not the agent, but the object!
   :o object
   :to destination
   :of object
   :from origin
   :premod destination
   :premod object))

(def-synonym translocation
    (:verb "relocate"
           :etf (svo-passive) 
           :s object ;; ERK translocates -- this is not the agent, but the object!
           :o object
           :to destination
           :of object
           :from origin
           :premod destination
           :premod object))

(define-category entry :specializes translocation
  :binds ((agent bio-process)
          (object protein)
          (origin cellular-location)
          (destination cellular-location)) 
  :realization 
  (:verb "enter" 
   :noun "entry" 
   :etf (svo-passive) 
   :s object ;; ERK translocates -- this is not the agent, but the object!
   :o object
   :to destination
   :of object
   :from origin
   :into destination
   :premod destination
   :premod object))

(define-category translate :specializes bio-relation
  :binds ((agent biological)
          (initial biological)
          (result biological))
  :realization
  (:verb "translate"
         :etf (svo-passive)
         :s agent
         :o initial
         :into result))

(define-category treatment :specializes bio-method
  :binds ((agent pronoun/first/plural)
          (patient biological)
          (treatment biological)
          (modifier (:or bio-predication modifier)))
  :realization
  (:verb "treat" :noun "treatment"
         :etf (svo-passive)
         :s agent
         :o patient
         :with treatment))


;;This is almost never used as a verb -- only as "truncating...mutation" and "...truncation of ..."
(define-category truncate
    :specializes bio-process
    :binds ((agent bio-entity)
            (object bio-process))
    :realization
    (:verb "truncate"
	   :noun "truncation"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object
	   )) 

;; "Growth factors can turn on Ras"
(def-term turn-on
  :super-category bio-activate
  :verb "turn"
  :prep "on"
  :etf (svo)
  :s (agent bio-entity)
  :o (object bio-entity))


;; base form is "underlie" though...
(define-category underly
    :specializes bio-process
    :binds ((agent bio-entity)
            (object bio-process))
    :realization
    (:verb "underly" ;; keyword: ENDS-IN-ING 
	   :etf (svo-passive)
	   :s agent
	   :o object))

(define-category understand :specializes bio-rhetorical
  :binds ((material biological)
          (agent pronoun/first/plural))
  :realization
  (:verb ("understand" :past-tense "understood")
         :etf (svo-passive)
         :s agent
         :o material))

(define-category upregulate
  :specializes bio-control
  :binds ((agent bio-entity)
          (object biological))
  :realization
  (:verb   "upregulate" :noun "upregulation"
   :etf (svo-passive)
   :o object  ;; regulation of <process>
   :s agent
   :of object))

(def-synonym upregulate
   (:verb "up-regulate" :noun "up-regulatiion"))


(define-category use
    :specializes bio-process
    :binds ((agent pronoun/first/plural)
            (object biological)
            (result biological)
            (purpose (:or bio-event bio-process bio-method bio-rhetorical)))
    :realization
    (:verb ("useXXX" :past-tense "used" :present-participle "using") ;; keyword: ENDS-IN-ED 
           :noun "use"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :to result
           :of object
           :to-comp purpose))



(define-category validate
    :specializes bio-rhetorical
    :binds ((agent biological)
            (object bio-process))
  ;; validated by the success of MEK inhibition
    :realization
    (:verb "validate" ;; keyword: ENDS-IN-ED 
	   :noun "validation"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

(define-category verify :specializes bio-rhetorical
		 :mixins (bio-thatcomp)
  :binds ((agent bio-entity)
          (object bio-process))
  :realization 
  (:verb "verify" :noun "verification"
         :etf (svo-passive)
         :s agent
         :o object
         :thatcomp statement))

(define-category yield
    :specializes bio-process
    :binds ((agent bio-entity)
            (object bio-process))
    :realization
    (:verb "yield" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object))

(def-synonym yield
  (:noun "yield"
         :of object))


