;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
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
;; 6/5/2015 some vocabulary tweaks. Adjusted svo/bio/expr to take input
;; from setup-verb 7/22/15.

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
  (when (word-p verb) 
    ;; came in from setup-verb
    (setq verb (word-pname verb)))
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




(define-category accumulation :specializes bio-process
  :binds ((base biological)
          (amount scalar-quality)
          )
  :realization
  (:verb "accumulate" :noun "accumulation"
         :etf (svo-passive)
         :s subject
         :o base
         :of base
         :to amount))
 
(define-category acquire :specializes bio-process ;; for conjunctions, as in "de novo or acquired"
    :binds ((object biological)
            (method bio-method))
    :realization
    (:verb "acquire" ;; keyword: ENDS-IN-ED 
	   :noun "acquisition"
	   :etf (svo-passive)
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
  :documentation "compare with act as"
  :realization
  (:verb "act"
  :etf sv
  :s actor
  :at bio
  :by process
  :on object
  :through bio
  :via bio))

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
  :specializes positive-bio-control
  :realization
    (:verb "activate" 
     :noun "activation"
     :etf (svo-passive)))



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
(define-category allow :specializes bio-control
    :binds ((process process))
    :realization
    (:verb "allow" ;; keyword: ENDS-IN-ING 
	   :noun "allowance"
	   :etf (svo-passive)
           :for object
           :to-comp object))


"" ;; keyword: (ion N) 
(define-category alter :specializes bio-control
    :realization
    (:verb "alter"
	   :noun "alteration"
	   :etf (svo-passive)))


(define-category analyze :specializes bio-method
  :mixins (bio-whethercomp bio-ifcomp)
  :realization 
  (:verb "analyze" :noun "analysis" 
         :etf (svo-passive) 
         :ifcomp ifstatement
         :whethercomp statement))

(def-synonym analyze
             (:verb "analyse" :etf (svo-passive) ))



(define-category articulate :specializes bio-rhetorical
    :realization
    (:verb "articulate" ;; keyword: ENDS-IN-ED 
	   :noun "articulation"
	   :etf (svo-passive)))


(define-category bio-associate  :specializes bio-process ;; MAYBE THIS IS LIKE BIND
  ;;:obo-id "GO:0005488"
  ;; "<binder> binds to <binde>" the subject moves
  :binds ((object bio-entity)
          (objects bio-entity)
          (site bio-location))
  :realization 
  (:verb "associate"
         :noun "association"
         :etf (svo-passive) 
         :o  object
         :to object
         :via site
         :with object
         :of object
         :between objects))

;; overnight
(define-category assume :specializes bio-rhetorical
  :mixins (bio-thatcomp)
  :realization
  (:verb "assume" ;; keyword: ENDS-IN-ED 
         :noun "assumption"
         :etf (svo-passive)))


(define-category attribute :specializes bio-rhetorical
    :binds ((cause biological))
    :realization
    (:verb "attribute" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
           :to cause))


;; DAVID -- not sure about the relation of basis to base
(define-category base :specializes bio-rhetorical
    :binds ((cause biological))
    :realization
    (:verb "base" ;; keyword: ENDS-IN-ED 
	   :noun "basis"
	   :etf (svo-passive)
           :on cause
           :upon cause))



(define-category block :specializes negative-bio-control
  :realization
  (:verb "block"
         :noun "blocking"
         :etf (svo-passive)
         :with object))

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


(define-category open :specializes caused-bio-process 
  :realization 
  (:verb "open"
         :etf (svo-passive)))

(define-category operate :specializes caused-bio-process 
  :realization 
  (:verb "operate"
         :noun"operation" 
         :etf (sv) 
         :of agent
         :on object
         :upon object))


;;/// "catalysis of phosphorylation by MEK"
(define-category catalytic-activity
  :specializes caused-bio-process
  :bindings (uid "GO:0003824")
  :binds ((catalyst (:or enzyme bio-complex))
          (process bio-process))
  :realization
  (:verb "catalyze" :noun "catalysis" :adj "catalytic"
         :etf (svo-passive) 
         :s catalyst
         :o process
         :by catalyst
         :of process))

(define-category cause :specializes positive-bio-control
    :realization
    (:verb "cause" ;; keyword: ENDS-IN-ED 
           :etf (svo-passive)))

(def-synonym cause
  (:noun "cause" :of object))

(define-category challenge :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :realization
    (:verb "challenge"
	   :etf (svo-passive)))

(define-category coimmunoprecipitate :specializes bio-method
  :binds ((origin bio-location))
  :realization 
  (:verb "coimmunoprecipitate" :noun "coimmunoprecipitation"
         :etf (svo-passive) 
         :from origin))

(define-category compare :specializes bio-method
  :binds ((comparator biological)
          (by (:or bio-method biological)))
  :realization 
  (:verb "compare" :noun "comparison" :adj "comparable"
         :etf (svo-passive)
         :to comparator
         :with comparator))

(define-category confer :specializes bio-control
    :binds ((to bio-entity)
            (bio biological))
    :realization
    (:verb "confer" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
           :on bio
           :to to
           :upon bio))

;; like inhibit "therapeutics are confounded by acquired resistance"
;; "...studies of human BTICs have been confounded by their scarcity in tumors..."
(define-category confound :specializes bio-event
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
  :specializes caused-bio-process 
  :binds ( (bio biological)
          (at bio-location)) 
  :realization 
  (:verb "conserve" 
         :noun "conservation" 
         :etf (svo-passive) 
         :across bio
         :among bio
         :at at
         :from bio
         :in bio
         :to bio
         :with bio))

(define-category consider :specializes bio-rhetorical
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

(define-category constitute :specializes bio-relation
    :realization
    (:verb "constitute" ;; keyword: ENDS-IN-ED 
	   :etf (svo)
	   :s subject
	   :o theme
           :by subject))

(define-category contain :specializes bio-relation 
     :realization 
     (:verb "contain"  
            :etf (svo-passive) 
            :s subject 
            :o theme))

(define-category correspond :specializes bio-relation
  :binds ((property common-noun))
  :realization
  (:verb "correspond" :noun "correspondence"
         :etf (sv)
         :s subject
         :in property ;; "fragments correspond in size..."
         :of subject
         :to theme
         :with theme))

(define-category create
  :specializes caused-bio-process
  :binds ((source biological))
  :realization
  (:verb "create"
         :noun "creation"
         :etf (svo-passive) 
         :from source))

(define-category culture :specializes bio-method
    :realization
    (:verb "culture" ;; keyword: ENDS-IN-ED
	   :etf (svo-passive)))

(def-synonym culture
  (:noun "culture"
         :of object))

(define-category cycle
 :specializes caused-bio-process
 :binds ((from biological)
         (to biological)
         (path bio-state)
         (treatment treatment))
 :realization
 (:verb "cycle"
  :etf (svo-passive)
  :from from
  :of treatment
  :to to
  :between path))

;; TO-DO -- does this still hold -- commenting out the ignore
;; bio-deactivate conflicts with bio-activate
;; so need to redesign the by-phrase to be uniform
;; and stated over the value restriction rather than
;; the variable
(define-category bio-deactivate
  :specializes caused-bio-process
  ::realization
   (:verb "deactivate" :noun "deactivation"
    :etf (svo-passive)))

(def-synonym bio-deactivate
   (:verb "inactivate" :noun "inactivation"
    :etf (svo-passive)))

(def-synonym bio-deactivate
   (:noun "inactivating interaction"))

(define-category decrease
  :specializes negative-bio-control
  :binds ((theme biological)
          (level (:or measurement bio-scalar))) 
  :realization
  (:verb "decrease" 
   :etf (svo-passive)
   :s agent
   :o object
   :for theme
   :in theme
   :to level))

(define-category degrade
  :specializes negative-bio-control
  :realization 
  (:verb "degrade" :noun "degradation"
         :etf (svo-passive)
         :s agent
         :o object))


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
(define-category delay :specializes bio-event
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


(define-category demonstrate :specializes bio-rhetorical
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
  :specializes bio-predication
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


(define-category describe :specializes bio-rhetorical
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

(define-category detect :specializes bio-method
    :realization
    (:verb "detect" ;; keyword: ENDS-IN-ED 
	   :noun "detection"
           :adj "detectable"
	   :etf (svo-passive)
	   :s agent
	   :o object))

(define-category digest ;; as in a chemical process for breaking down proteins
  :specializes bio-method
  :realization
  (:verb   "digest" :noun "digestion"
   :etf (svo-passive)
   :o object  ;; regulation of <process>
   :s agent))

(define-category displace 
                 :specializes caused-bio-process
  :binds ((location (:or bio-location bio-complex)))
    :realization
    (:verb "displace" 
           :etf (svo-passive)
           :noun "displacement"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :by agent
           :from location))

;; e.g. displayed sustained ERK phosphorylation
(define-category display :specializes bio-rhetorical
    :binds ((agent bio-entity)
            (object bio-process))
    :realization
    (:verb "display" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object))

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
  :realization 
  (:verb "dissect" 
   :noun "dissection" 
   :etf (svo-passive) 
   :s agent 
   :o object))

(define-category dissociate :specializes bio-process
  :binds ((agent biological)
          (object bio-complex)
          (into biological))
  :realization
  (:verb "dissociate" :noun "dissociation"
         :etf (svo-passive)
         :s agent
         :o object
         :into into
         :of object))

(define-category dominate :specializes bio-relation 
  :realization 
  (:verb "dominate" 
  :noun "domination" 
  :etf (svo-passive) 
  :s subject 
  :o theme))

(define-category downregulate
  :specializes negative-bio-control
  :realization
  (:verb   "downregulate" :noun "downregulation"
   :etf (svo-passive)))

(define-category abrogate :specializes negative-bio-control
  :realization
  (:verb "abrogate" :noun "abrogation" 
         :etf (svo-passive) 
         :s agent 
         :o object))

;; TO-DO check the need for this #+ignore ;; need to get polyword morphology working!
(def-synonym downregulate
   (:verb "down-regulate"
   :etf (svo-passive)
   :o object  ;; regulation of <process>
   :s agent))

(define-category block
  :specializes negative-bio-control
  :realization
  (:verb   "block"
   :etf (svo-passive)
   :noun "blockage"
   :o object  ;; regulation of <process>
   :s agent))

(define-category repress
  :specializes negative-bio-control
  :realization
  (:verb   "repress"
   :etf (svo-passive)
   :noun "repression"
   :o object  ;; regulation of <process>
   :s agent
   :of object
))

(define-category compromise
  :specializes negative-bio-control
  :realization
  (:verb   "compromise"
   :etf (svo-passive)
   :o object  ;; regulation of <process>
   :s agent
))

(define-category limit
                 :specializes negative-bio-control
  :realization
  (:verb "limit" 
         :etf (svo-passive)))   

;;actually want to define 
(define-category terminate
  :specializes negative-bio-control
  :realization
  (:verb   "terminate" :noun "termination"
   :etf (svo-passive)))
  

(define-category bio-drive
  :specializes positive-bio-control
  :realization 
  (:verb "drive"
   :etf (svo-passive)))

(define-category dysregulate
  :specializes bio-control
  :realization
  (:verb   "dysregulate" :noun "dysregulation"
   :etf (svo-passive)
   :o object  ;; dysregulation of <process>
   :s agent))    ;; by <entity>

(define-category elevate
  :specializes positive-bio-control
  :realization
    (:verb "elevate" ;; keyword: ENDS-IN-ED 
	   :noun "elevation"
	   :etf (svo-passive)))

(define-category elucidate :specializes bio-rhetorical
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

(define-category elute :specializes bio-method
    :binds ((bio biological))
    :realization
    (:verb "elute" ;; keyword: ENDS-IN-ED 
	   :noun "elution"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :from bio
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

(define-category engender :specializes positive-bio-control
    :realization
    (:verb "engender"
	   :etf (svo-passive)))



(define-category bio-promote
  :specializes positive-bio-control
  :realization 
  (:verb "promote"
   :etf (svo-passive)))

(define-category bio-enhance
  :specializes positive-bio-control
  :realization 
  (:verb "enhance" :noun "enhancement"
   :etf (svo-passive)))

;; needs to come after bio-enhance.
(define-category bio-amplify 
   :specializes positive-bio-control
  :realization 
  (:verb "amplify" :noun "amplification"
   :etf (svo-passive)))



(define-category escape :specializes bio-process
    :binds ((process bio-process))
    :realization
    (:verb "escape"
	   :etf (sv)
           :from process))

(def-synonym escape
  (:noun "escape" :of subject))

(define-category establish :specializes bio-rhetorical 
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
          (method bio-method)
          (for biological))
  :realization
  (:verb "examine"
         :noun "examination"
         :etf (svo-passive)
         :s agent 
         :o object
         :by method
         :for for
         :under method
         :ifcomp statement
         :whethercomp statement))

(define-category exhibit :specializes bio-event
    :binds ((agent biological)
            (object biological))
    :realization
    (:verb "exhibit"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :by agent))

(define-category explanation :specializes bio-rhetorical
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
(define-category gene-transcript-express :specializes caused-bio-process
    :binds ((location bio-location)
            (from biological))
    :realization
    (:verb "express"
	   :noun "expression"
	   :etf (svo-passive)
           :from from
           :in location
           :of object
           :on location))

;;events are favored in a context
(define-category favor :specializes positive-bio-control
    :realization
    (:verb ("favor" :past-tense "favored") ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)))  ;; :in bio-context))  <--------------- not in scope

;; mostly passive -- "... are found ..."
(define-category find :specializes bio-rhetorical
    :binds ((agent pronoun/first/plural)(object bio-process))
    :realization
    (:verb ("find" :past-tense "found")
	   :noun "finding"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))

(define-category follow :specializes bio-relation
  :binds ((subject bio-process)
          (theme bio-process)
          (by (:or bio-method bio-process)))
  :realization
  (:verb "follow"
         :etf (svo)
         :s subject ;; this is the initial process
         :o theme ;; this is the "following" process
         :by by))

(define-category bio-form :specializes caused-bio-process
  :realization
  (:verb ("formXXX" :third-plural "forms" :past-tense "formed") 
         ;; "form" has never been seen as a verb in the corpus, but "forms" and "formed"
         ;; have been seen
         :noun "formation"
         :etf (svo-passive) ))

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
  :specializes bio-activate
  :realization
    (:verb "hyperactivate" 
     :noun "hyperactivation"
     :etf (svo-passive)))

(define-category hypothesize :specializes bio-rhetorical
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


(define-category identify :specializes bio-method
    :binds ((identified-as biological)
            (manner bio-method))
    :realization
    (:verb "identify" ;; keyword: ENDS-IN-ED 
	   :noun "identification"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :as identified-as
           :in manner))

(define-category immunoprecipitate :specializes bio-method
  :binds ((origin bio-location))
  :realization 
  (:verb "immunoprecipitate" :noun "immunoprecipitation"
         :etf (svo-passive) 
         :s agent 
         :o object
         :from origin))

(define-category impact :specializes bio-predication
  :binds ((subject biological)
          (theme biological))
  :realization
  (:verb "impact" 
         :etf (svo-passive)
         :noun "impact"
	 :s subject
         :o theme
	 :of theme))

(define-category impair :specializes negative-bio-control
  :binds ((bio biological)) 
  :realization 
  (:verb "impair" :noun "impairment"
         :etf (svo-passive)
         :for bio
         :in bio
         :of object))

(define-category incorporate :specializes bio-relation 
  :realization 
  (:verb "incorporate" :noun "incorporation"
         :etf (svo-passive)
         :s subject
         :o theme
         :into theme
         :of subject))

(define-category increase
  :specializes positive-bio-control
  :realization
  (:verb "increase" 
         :etf (svo-passive)
         :for object))

;; January
; "observed an order of magnitude increase in the rate of GTP hydrolysis"
; "No increase in the rate of GTP hydrolysis"
; "monoubiquitination increases the population of active, GTP–bound Ras"
; monoubiquitination increases the proportion of Ras ...
;  monoubiquitination decreases ..
; #41 "leads to its increased translocation to the cytosol/nucleus and increased binding to p53"
;; The problem with the noun form is the clash of the plural noun 
;; with the simple present form of the verb. That spelling form is 
;; overwhelmingly the verb in bio corpora. This bogus explicit plural
;; effectively blocks the clash.
(def-synonym increase
  (:noun "increase"
   :in object
   :of object))

(define-category incubation
                 :specializes bio-method
  :binds ((agent biological)
          (object biological))
  :realization 
  (:verb "incubate"
         :etf (svo-passive)
         :noun "incubation"
         :by agent
         :of object))

;;--- "induce"
;; "which induce transcription of the p53 gene"
;; "induce processing of p100"
(define-category induce
  :specializes positive-bio-control
  :binds ((response response)) ;; we have "induce this phenotype"
  :realization 
  (:verb "induce" :noun "induction" :adj "inducible"
   :etf (svo-passive)
   :s agent ;;can also be treatment? "ACF formation induced by dextran sodium sulfate"
   :o object
   :in response))
;;/// want subtypes, want to understand the syntax of "-inducing"



(define-category indicate :specializes bio-rhetorical
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

(define-category influence :specializes bio-control
    :realization
  (:verb "influence" ;; keyword: ENDS-IN-ING 
         :etf (svo-passive)
         :s agent
         :o object))

#| only two examples of noun use of "influence"
(LOAD-TEST 998 "Although the anchorage-independent growth assay measures only one of many phenotypes of transformation and does not, for example, recapitulate tumor microenvironment or account for the influence of the immune system on tumor formation, this system will be useful for dissecting inhibitor response and downstream signaling pathways, particularly for those mutants not found in existing cancer-derived cell lines.") 
(LOAD-TEST 1219 "Given the documented levels of HuR association with SIRT1 and VHL mRNAs ( xref ) and the SIRT1 and VHL mRNA half-lives ( xref A), we investigated the influence of non-phosphorylatable HuR Y200F mutant on the abundance of these mRNAs.") 

(def-synonym influence
  (:noun "influence"
         :of agent
         :on object))
|#

(define-category inform :specializes bio-rhetorical
    :binds ((agent (:or biological bio-method))(object (:or bio-process bio-method)))
    :realization
    (:verb "inform" ;; keyword: ENDS-IN-ING 
	   :etf (svo-passive)
	   :s agent
	   :o object))

;;--- inhibit
;; "by inhibiting <p>"

(define-category inhibit ;; was drug-inhibit but inhibit fits answer key
  :specializes negative-bio-control
  :realization 
  (:verb ("inhibit" :past-tense "inhibited" 
                    :present-participle "inhibiting" )
   :noun "inhibition"
   :etf (svo-passive)
   :s agent
   :o object))

(def-synonym inhibit ;; was drug-inhibit but inhibit fits answer key 
  (:noun "inhibitory interaction"
   :of agent
   :with object))

(def-synonym inhibit ;; was drug-inhibit but inhibit fits answer key 
             (:verb "attenuate"
                    :etf (svo-passive)
                    :s agent
                    :o object
                    :of agent
                    :with object
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

(define-category interfere :specializes negative-bio-control
    :realization
    (:verb "interfere" ;; keyword: ENDS-IN-ING 
	   :noun "interference"
	   :etf (sv)
	   :s agent
           :in object
           :with object))

(define-category interrogate :specializes bio-method
    :realization
    (:verb "interrogate" ;; keyword: ENDS-IN-ING 
	   :noun "interrogation"
	   :etf (svo-passive)
	   :s agent
	   :o object))

(define-category investigate 
  :specializes bio-method 
  :mixins (bio-whethercomp)
  :realization
  (:verb "investigate" :noun "investigation"
         :etf (svo-passive)
         :s agent
         :o object
         :whethercomp statement))

(define-category involve :specializes bio-relation
    :realization
    (:verb "involve" ;; keyword: ENDS-IN-ING 
	   :etf (svo)
	   :s subject
	   :o theme
           :in theme))

(define-category keep :specializes bio-relation
    :realization
    (:verb ("keep" :past-tense "kept")
	   :etf (svo-passive)
	   :s subject
	   :o theme))

(define-category know :specializes bio-rhetorical
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
(define-category lead :specializes positive-bio-control
    :binds ((result biological))
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





(define-category maintain :specializes bio-control
    :binds ((timeperiod time-unit))
    :realization
    (:verb "maintain"
	   :noun "maintenance"
	   :etf (svo-passive)
	   :s agent
	   :o object)) 

(define-category measure :specializes bio-method
  :binds ((method bio-method)
          (location bio-location))
  :realization 
  (:verb "measure" :noun "measurement"
         :etf (svo-passive)
         :s agent
         :o object
         :by method
         :in location
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
  :binds ((theme biological)) ;; increase in rate vs increase in RAS activity
  :realization
  (:verb "modulate" 
         :etf (svo-passive)
         :s agent
         :o object
         :for theme))

;;--- "mutation"
;; "mutated oncogenes"
;; "oncogenic mutations"
;; "in BRAF mutant thyroid cell"
(define-category mutate
  :specializes caused-bio-process
  :realization
  (:verb "mutate" :noun "mutation"
   :etf (svo-passive)
   :in object
   :into object
   :on location
   :to object
   :within location))
;; These two were in terms and need to be integrated with
;; this category
(np-head "mutant" :super 'bio-entity)
(def-cfr gene (mutate gene)
  :form n-bar
  :referent (:head right-edge :function passive-premodifier left-edge right-edge object))

(np-head "knock-out" :super 'mutate)

(define-category need :specializes bio-relation
    :binds ((result-or-purpose process))
    :realization
    (:verb "need" ;; keyword: ENDS-IN-ED 
	   :noun "need"
	   :etf (svo-passive)
	   :s subject
	   :o theme
           :FOR theme
           :to-comp result-or-purpose))

(def-synonym need
    (:noun "need"
           :of subject
           :for theme))

(define-category observe :specializes bio-method
    :mixins (bio-thatcomp)
    :binds ((focused-on biological)
            (method bio-method))
    :realization
    (:verb "observe" ;; keyword: ENDS-IN-ED 
	   :noun "observation"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :by method ;; can also be people..
           :for focused-on
           :under method
           :thatcomp statement))

(define-category obtain :specializes bio-method
    :binds ((source biological)
            (method bio-method))
    :realization
    (:verb "obtain" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object
           :by method
           :from source
           :without source))

(define-category occur :specializes bio-event
    :binds ((agent bio-entity)
            (object bio-process))
    :realization
    (:verb ("occur" :present-participle "occurring" :past-tense "occurred")
	   :noun "occurrence"
	   :etf (sv)
	   :s agent
	   :o object))

(define-category overexpress :specializes caused-bio-process
    :realization
    (:verb "overexpress"
	   :noun "overexpression"
	   :etf (svo-passive)))

;; new definitions from MITRE test set
(define-category overlap :specializes bio-relation
  :realization
  (:verb "overlap"
         :etf (svo-passive)
         :s subject
         :o theme
         :with theme))

(def-synonym overlap
  (:noun "overlap"
         :among subject
         :between theme
         :in subject
         :of subject
         :with theme))

(define-category perform :specializes bio-method
    :binds ((beneficiary biological)
            (using biological)
            (method bio-method))
    :realization
    (:verb "perform" ;; keyword: ENDS-IN-ED 
	   :noun "performance"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :by method
           :on beneficiary
           :with using))

(define-category place :specializes bio-method
  :binds ((location bio-location))
  :realization 
  (:verb "place" 
         :noun "placement" 
         :etf (svo-passive) 
         :s agent 
         :o object
         :at location))

(define-category posit :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :binds ((agent pronoun/first/plural)
            (object bio-process))
    :realization
    (:verb "posit"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :thatcomp statement))

(define-category potentiate :specializes positive-bio-control
    :binds ((manner bio-process))
    :realization
    (:verb "potentiate" ;; keyword: ENDS-IN-ED 
	   :noun "potentiation"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :in manner))

(define-category predict :specializes bio-rhetorical
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

(define-category present :specializes bio-relation
    :binds ((figure article-figure))
    :realization
    (:verb "present"
	   :noun "presentation"
	   :etf (svo-passive)
	   :s subject
	   :o theme
           :in figure
           :of subject))

(def-synonym present
   (:adj "present"
           :at location
           :in location
           :on location))

(define-category preserve :specializes bio-control
  :binds ((location bio-location))
  :realization
  (:verb "preserve" :noun "preservation"
         :etf (svo-passive)
         :s agent
         :o object
         :in location)) 


(define-category prevent :specializes negative-bio-control
  :realization
  (:verb "prevent" :noun "prevention" 
         :etf (svo-passive) 
         :s agent 
         :o object))

(delete-verb-cfr (resolve/make "probe"))
(define-category probe :specializes bio-rhetorical
    :binds ((agent bio-entity)
            (object biological))
    :realization
    (:verb "probe" 
           :etf (svo-passive)
           :s agent
           :o object
           :for object))
(delete-noun-cfr (resolve/make "probe"))


(define-category proliferate :specializes bio-process
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
(define-category propose :specializes bio-rhetorical
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


;; TO-DO may want to split rehtorical version and bio-chemical version
;; "X provides support for Y" and "X supports process Y"
(define-category provide :specializes bio-relation
    :binds ((subject (:or result biological))
            (theme (:or argument-support biological bio-rhetorical)))
    :realization
    (:verb "provide"
	   :noun "provision"
	   :etf (svo-passive)
	   :s subject
	   :o theme
           :of subject))

(define-category purify :specializes bio-method
  :binds ((bio biological)) 
  :realization 
  (:verb "purify" :noun "purification" 
         :etf (svo-passive) 
         :s agent
         :o object
         :from bio
         :with agent))

(define-category query :specializes bio-method
    :mixins (bio-whethercomp)
    :binds ((against pathway))
    :realization
    (:verb "query" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object
           :against against ;; "12,484 genes were queried against KEGG biopathways"
           :whethercomp statement))

(define-category question :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :binds ((agent pronoun/first/plural)(object biological))
    :realization
    (:verb "question" ;; keyword: ENDS-IN-ED 
	   :noun "hypothesis"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :thatcomp statement
           ))



(define-category raise :specializes positive-bio-control
    :binds ((object (:or bio-process bio-abstract)) ;; bio-abstract for "raised the possibility"
            (method bio-method)
            (bio biological))
    :realization
    (:verb "raise" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object
           :against bio
           :by method))

(define-category reconstitute :specializes caused-bio-process
  :binds ((amount measurement)
          (in (:or measurement biological)))
  :realization
  (:verb "reconstitute" :noun "reconstitution"
         :etf (svo-passive)
         :s agent
         :o object
         :in in
         :to amount
         :with agent))

(define-category recruit :specializes caused-bio-process 
  :binds ((source biological)
          (location bio-location)
          (destination biological)) 
  :realization 
  (:verb "recruit" :noun "recruitment"
         :etf (svo-passive) 
         :s agent
         :o object
         :from source
         :in destination
         :onto location
         :through location
         :to destination))

(define-category reduce :specializes negative-bio-control
    :binds ((bio biological))
    :realization
    (:verb "reduce" ;; keyword: ENDS-IN-ING 
	   :noun "reduction"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :in bio))

;;--- "regulate"
;;
(define-category regulate
  :specializes bio-control
  :binds ((theme biological)) ;; increase in rate vs increase in RAS activity  :realization
    :realization
    (:verb "regulate" 
     :noun "regulation"
     :etf (svo-passive)
     :o object  ;; regulation of <process>
     :s agent
     :in theme
     :for theme))


(define-category inter-regulate
  :specializes bio-control
  :binds ((theme biological)) ;; increase in rate vs increase in RAS activity  :realization
    :realization
    (:verb "inter-regulate"
     :noun "inter-regulation"
     :etf (svo-passive)
     :o object  ;; regulation of <process>
     :s agent
     :for theme
     :between theme))    ;; by <entity>


(define-category relapse :specializes bio-process
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
         (from (:or molecule pathway))
         (bio biological))
 :realization
 (:verb "release" :noun "release"
  :etf (svo-passive)
  :s agent
  :o object
  ;; Comlex: (np-pp :pval ("in" "into" "from" "to"))
  ;;  and a lot of others
  :from from
  :into bio
  :of object))

(define-category remain :specializes bio-relation
    :realization
    (:verb "remain" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s subject
	   :o theme))

(def-form-rule (remain adjective)
  :form vp
  :referent (:head right-edge);; :bind (predication right-edge)
)

(define-category remove :specializes bio-process
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

;;TO-DO -- fix this one
(define-category represent :specializes bio-relation
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

(define-category require :specializes bio-control
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

(define-category resist :specializes bio-process
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


(define-category result :specializes bio-process
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

(define-category select :specializes bio-method
    :binds ((study bio-method))
    :realization
    (:verb "select" ;; keyword: ENDS-IN-ED 
	   :noun "selection"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :for study))

(define-category seem :specializes bio-rhetorical
    :binds ((agent bio-entity)
            (object bio-process)
            (tocomp (:or be biological)))
    :realization
    (:verb "seem"
	   :etf (svo)
	   :s agent
	   :o object
           :to-comp tocomp))

(def-synonym seem
             (:verb "appear"
                    :etf (svo)
                    :s agent
                    :o object
                    :to-comp tocomp))

(define-category bio-sequence :specializes bio-method
    :binds ((method bio-method))
    :realization
    (:verb "sequence" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object
           :with method
	   ))

;; can be both "<people> show ..." and "<molecule> shows <properties>"
(define-category show :specializes bio-rhetorical
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
  :binds ((process bio-process))
 :realization
  (:verb "stabilize" :noun "stabilization"
         :etf (svo-passive) 
         :s agent 
         :o object
         :upon process))

(define-category study-bio-process
 :specializes bio-method
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
  :specializes positive-bio-control
  :realization
  (:verb "stimulate" :noun "stimulation"
   :etf (svo-passive)
   :o object  ;; stimulation of <process>
   :s agent
   :with agent))    ;; by <entity>

(define-category succeed :specializes bio-relation
  :realization
  (:verb "succeed" :noun "success"
   :etf (sv)
   :s subject
   :of subject
   :in theme))

(define-category suggest :specializes bio-rhetorical
		 :mixins (bio-thatcomp)
  ;; :specializes rhetorical-process <----- find the right name
  :binds ((agent biological)) ;;/// can be "these data suggest"
  :realization
  (:verb "suggest" :noun "suggestion"
   :etf (sv)
   :s agent
   :thatcomp statement))


(define-category suppress :specializes negative-bio-control
    :realization
    (:verb "suppress" ;; keyword: ENDS-IN-ED 
	   :noun "suppression"
	   :etf (svo-passive)
	   :s agent
	   :o object)) 

(define-category sustain :specializes bio-control
    :realization
    (:verb "sustain" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object))

(define-category tag :specializes bio-method
    :binds ((location bio-location))
    :realization
    (:verb "tag" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object
           :at location
           :with agent))


#+ignore
(define-category target :specializes bio-process
    :binds ((agent bio-entity)
            (object bio-process))
    :realization
    (:verb ("target" :present-participle "targeting" :past-tense "targeted")  ;; keyword: ENDS-IN-ED 
	   :noun "target"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object))


(define-category tend :specializes bio-rhetorical
   ;; :mixins (bio-tocomp) working on this.. other comps not working.
    :binds ((agent bio-entity)
            (object bio-process))
    :realization
    (:verb "tend" ;; keyword: ENDS-IN-ED 
	   :noun "tendency"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of agent)) 

(define-category test :specializes bio-method
    :mixins (bio-whethercomp)
    :binds ((object (:or bio-rhetorical biological))
            (bio biological))
    :realization
    (:verb "test" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
	   :s agent
	   :o object
           :for bio
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
          (object bio-process)
          (bio biological)) ;; to DNA, but we don't have DNA yet
  :realization 
  (:verb "transcribe" 
   :noun "transcription"
   :etf (svo-passive)
   :s agent
   :o object
   :from bio
   :into bio
   :to bio
   :via bio
   :with bio))

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

(define-category transformation
  :specializes  post-translational-modification
  :binds ((agent bio-entity)
          (object bio-entity))
  :realization
  (:verb "transform" :noun "transformation" 
  :etf (svo-passive)
  :s agent
  :o object
  :of object))

(define-category transition
 :specializes bio-process
 :binds ((agent bio-entity)
         (object molecule)
         (bio biological)
         (location bio-location))
 :realization
 (:verb "transition" ; :noun "release"
  :etf (svo-passive)
  :s agent
  :o object
  :at location
  :of bio
  :from bio
  :to bio))

(def-synonym transition
   (:noun "transition"))


(define-category translate :specializes bio-relation
  :binds ((agent biological)
          (initial biological)
          (result biological))
  :realization
  (:verb "translate"
         :etf (svo-passive)
         :s agent
         :o initial
         :from initial
         :into result
         :to result))

; (p "ERK Nuclear Translocation Is Dimerization-independent but Controlled by the Rate of Phosphorylation.")
; (p "Upon activation, ERKs translocate from the cytoplasm to the nucleus.")
; "the molecular mechanisms that regulate ERK nuclear translocation 
;     are not fully understood."
; (process on ERK) ... a requirement for nuclear translocation."
; 11: is directly translated into a delay in nuclear translocation
(define-category translocation :specializes bio-transport
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
   :at origin
   :into destination
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


(define-category treatment :specializes bio-method
  :binds ((treatment biological)
          (modifier (:or bio-predication modifier))
          (disease disease))
  :realization
  (:verb "treat" :noun "treatment"
         :etf (svo-passive)
         :s agent
         :o object
         :for disease
         :of disease
         :with treatment))


;;This is almost never used as a verb -- only as "truncating...mutation" and "...truncation of ..."
(define-category truncate :specializes bio-process
    :binds ((agent bio-entity)
            (object bio-process)
            (bio biological))
    :realization
    (:verb "truncate"
	   :noun "truncation"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :of object
	   :to bio)) 

;; "Growth factors can turn on Ras"
(def-term turn-on
  :super-category bio-activate
  :verb "turn"
  :prep "on"
  :etf (svo)
  :s (agent bio-entity)
  :o (object bio-entity))


;; base form is "underlie" though...
(define-category underly :specializes bio-process
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
  :specializes positive-bio-control
  :realization
  (:verb   "upregulate" :noun "upregulation"
   :etf (svo-passive)
   :o object  ;; regulation of <process>
   :s agent))

(def-synonym upregulate 
             (:verb "up-regulate"
                    :noun "up-regulation"
                    :etf (svo-passive)
                    :o object  ;; regulation of <process>
                    :s agent
                    :of object
                    ))

(def-synonym upregulate 
             (:verb "positively regulate"
                    :noun "positive regulation"
                    :etf (svo-passive)
                    :o object  ;; regulation of <process>
                    :s agent
                    :of object
                    ))


(define-category use :specializes bio-process
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



(define-category validate :specializes bio-rhetorical
    :mixins (bio-whethercomp bio-ifcomp)
    :binds ((agent biological)
            (object bio-process)
            (method bio-method)
            (bio biological))
  ;; validated by the success of MEK inhibition
    :realization
    (:verb "validate" ;; keyword: ENDS-IN-ED 
	   :noun "validation"
	   :etf (svo-passive)
	   :s agent
	   :o object
           :as bio
           :by method
           :ifcomp ifstatement
           :of object
           :through method
           :via method
           :whethercomp statement
           :with method))

(define-category verify :specializes bio-rhetorical
		 :mixins (bio-thatcomp)
  :binds ((agent bio-entity)
          (object bio-process)
          (method bio-method))
  :realization 
  (:verb "verify" :noun "verification"
         :etf (svo-passive)
         :s agent
         :o object
         :by method
         :thatcomp statement
         ;;:whethercomp statement
         :with method))

(define-category yield :specializes bio-process
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


