;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2016 SIFT LLC. All Rights Reserved
;;;
;;;    File: "verbs1"
;;;  Module: "grammar/model/sl/biology/
;;; version: June 2016

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
;;; definition of is-bio-entity. The call to FOM-SUBCATEGORIZATION ensures that
;;; the subcategorization frame exists for ASSIGN-SUBJECT.
(assert (fom-subcategorization category::be))
(assign-subject category::be
                category::biological
                (variable/category 'subject category::be))
(assign-object category::be
               category::biological
               (variable/category 'predicate category::be))

(assign-subcategorization category::be :to-comp category::biological 'predicate)

;;;---------------------------
;;; macros for standard cases
;;;---------------------------

(defmacro svo/bio (verb)
  `(svo/bio/expr ,verb))

(defun svo/bio/expr (verb)
  (declare (special category::bio-process))
  (when (word-p verb) 
    ;; came in from setup-verb
    (setq verb (word-pname verb)))
  (let ((category-name (intern (string-upcase verb)
                               (find-package :sparser))))
    (when (category-named category-name) ;; e.g. 'time
      ;; had some difficulty with redefining verb "leave",
      ;; and then redefining the category
      (setq category-name
            (construct-disambiguating-category-name
             category-name category::bio-process)))

    (let* ((form `(def-term ,category-name
		     :verb ,verb 
                     :etf (svo-passive)
                     :super-category bio-process
                     :slots (:s subject :o object)))
           (category (eval form)))
      (note-permanence-of-categorys-individuals category)
      category)))


;;; Verbs added temporarily for Localization articles -- to be reviewed and corrected
(define-category become :specializes bio-rhetorical
    :realization
    (:verb ("become" :third-singular "becomes" :past-tense "became"
		     :present-participle "becoming")
	   :etf (svo)))

(eval (make-copular-def "become"))

(define-category stay :specializes bio-rhetorical
    :realization
    (:verb "stay"
	   :etf (svo)))

(eval (make-copular-def "stay"))

(define-category start :specializes bio-rhetorical
  :realization (:verb "start" :etf (svo)))

(define-category call :specializes bio-rhetorical
  :realization (:verb "call" :etf (svo)))

(define-category derive :specializes caused-bio-process
  :realization 
  (:verb "derive" :etf (svo-passive)))

(define-category participate :specializes other-bio-process
  :realization 
  (:verb "participate" :etf (sv)))

(define-category think :specializes bio-rhetorical
  :realization
  (:verb ("think" :past-tense "thought") :etf (svo-passive)))

(define-category deduce :specializes bio-rhetorical
  :realization
  (:verb "deduce"
         :noun "deduction" :etf (svo-passive)))

(define-category characterize :specializes bio-rhetorical
  :realization
  (:verb "characterize"
         :noun "characterization" :etf (svo-passive)))

(define-category distinguish :specializes bio-method
  :realization
  (:verb "distinguish" :etf (svo-passive)))

(define-category compensate :specializes other-bio-process
  :binds ((alternate biological))
  :realization
  (:verb "compensate" :etf (sv)
         :for alternate))

(define-category convince :specializes bio-rhetorical
  :realization
  (:verb "convince"
         :noun "conviction" :etf (svo-passive)))

(define-category improve :specializes bio-method
  :realization
  (:verb "improve" :etf (svo-passive)))

(define-category learning :specializes bio-rhetorical
  :realization
  (:verb "learn" :etf (sv)))

(define-category isolate :specializes bio-method
  :binds ((background biological))
  :realization
  (:verb "isolate" :etf (svo-passive)
         :from background))

(define-category immunoblot :specializes immune-method
  :binds ((object bio-entity)
	  (tested-for bio-chemical-entity))
  :realization
  (:verb "immunoblot" :etf (svo-passive)
	 :noun "immunoblotting"
         :for tested-for
	 ))

(define-category lyse :specializes bio-method
  :realization
  (:verb "lyse" :etf (svo-passive)))

(define-category lacking :specializes bio-relation
  :realization
  (:verb ("lack" ;; don't block noun
          :third-singular "lacks" ;; don't block noun
          :past-tense "lacked"
          :present-participle "lacking")
         :etf (svo)
         :o theme))

(define-category screen :specializes  bio-method
  :realization
  (:verb "screen" :etf (svo-passive)))

(def-synonym screen
             (:noun "screen"))

          
(define-category feature :specializes  bio-rhetorical ;; not really -- but WHAT??
  :realization
  (:verb "feature" :etf (svo-passive)
         :noun "feature"))

;; HOW TO DEAL WITH AMBIGUITY WITH PHYSICAL SUPPORT 
;;  "a 3-fold alpha-helical bundle supporting a triple-stranded anti-parallel beta-sheet"
(define-category argument-support :specializes bio-rhetorical
  :binds ((argument (:or model statement)))
  :realization
  (:verb "support"
         :etf (svo-passive)
         :for argument))

(def-synonym argument-support
             (:noun "support"))


(define-category range :specializes bio-scalar ;; REVIEW!!
  :binds ((low-value scalar-quantity)
          (high-value scalar-quantity)
          (subject biological))
  :realization
  (:verb "range"
         :etf (sv)
         :s subject
         :from low-value
         :to high-value))

(def-synonym range
             (:noun "range"))

(define-category fill :specializes bio-relation ;; REVIEW!!
  :realization 
  (:verb "fill" :etf (svo-passive)
         :o theme))

(define-category surface-line :specializes bio-relation ;; the tissue lining the gut
  :realization (:verb "line" :etf (svo-passive)
         :o theme))

(define-category mention :specializes bio-rhetorical
  :realization (:verb "mention" :etf (svo-passive)))

(def-synonym mention
             (:noun "mention"))

(define-category bio-switch :specializes caused-bio-process
  :realization
  (:verb "switch" :etf (svo-passive)))

(def-synonym bio-switch 
             (:noun "switch"))

(define-category bio-advance :specializes positive-bio-control
  :realization
  (:verb "advance" :etf (svo-passive)))

(noun "advance" :super bio-relation)

;;;--------------------------------------------------------
;;; specific verbs (alphabetical except for obvious pairs)
;;;--------------------------------------------------------





(define-category abrogate :specializes negative-bio-control
  :restrict ((object bio-process))
  :realization
  (:verb "abrogate" :noun "abrogation" 
         :etf (svo-passive)))

(define-category accumulation :specializes caused-bio-process
  :binds ((amount scalar-quality))
  :realization
  (:verb "accumulate" :noun "accumulation"
         :etf (svo-passive)
         :to amount))
 
(define-category acquire :specializes caused-bio-process ;; for conjunctions, as in "de novo or acquired"
    :binds ((method bio-method))
    :realization
    (:verb "acquire" ;; keyword: ENDS-IN-ED 
	   :noun "acquisition"
	   :etf (svo-passive)
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
  :specializes other-bio-process
  :binds ((actor (:or bio-entity bio-location))
	  (co-actor bio-entity)
          (object bio-entity)
          (process bio-process)
          (functionality (:or  bio-process bio-entity bio-location))
          (bio biological)
          (tocomp biological))
  :documentation "compare with act as"
  :realization
  (:verb "act"
	 :etf sv
	 :noun "action"
	 :s actor
	 :with co-actor
	 :at bio
	 :as functionality
	 :by process
	 :on object
	 :through bio
	 :via bio
	 :to-comp tocomp))


(define-category serve :specializes bio-act
  :realization
  (:verb "serve"
         :etf sv))

(define-category bio-function :specializes bio-act
  :realization
  (:verb "function"
         :etf sv))

(define-category bio-functionality :specializes bio-quality
  :realization
  (:noun "function"))

(define-category bio-activate
  :specializes positive-bio-control
  :realization
    (:verb "activate" 
     :noun "activation"
     :etf (svo-passive)))

(define-category addition :specializes caused-bio-process
  :mixins (bio-thatcomp)
  :binds ((added biological))
  :realization
  (:verb "add" :noun "addition"
         :etf (svo-passive)
         :into added
         :to added))

(define-category affect :specializes caused-bio-process 
  :binds ((causing (:or be biological)))
  :realization 
  (:verb "affect" :etf (svo-passive) 
         :to-comp causing))


;; clausal roles
;; really want to have the form "CRAF allows CRAF to hyperactivate the pathway"  -- want the clausal modiffer
(define-category allow :specializes bio-control
    :binds ((process (:or biological have process)))
    :realization
    (:verb "allow" ;; keyword: ENDS-IN-ING 
	   :noun "allowance"
	   :etf (svo-passive)
           :for object
           :to-comp process))


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
         :etf (svo-passive)))

(def-synonym analyze (:verb "analyse" :etf (svo-passive) ))



(define-category articulate :specializes bio-rhetorical
    :realization
    (:verb "articulate" ;; keyword: ENDS-IN-ED 
	   :noun "articulation"
	   :etf (svo-passive)))

(define-category bio-apply :specializes bio-method
  :realization
  (:verb "apply"
         :etf (svo-passive)
         :noun "application"))

(define-category bio-associate  :specializes other-bio-process ;; MAYBE THIS IS LIKE BIND
  ;;:obo-id "GO:0005488"
  ;; "<binder> binds to <binde>" the subject moves
  :binds ((object biological)
          (objects biological)
          (site molecular-location))
  :realization 
  (:verb "associate"
         :noun "association"
         :etf (sv) 
         ;;:o  object
         :to object
         :via site
	 :at site
         :with object
         :of object
         :between objects))

(define-category assess :specializes bio-method
  :mixins (bio-thatcomp)
  :realization
  (:verb "assess" ;; keyword: ENDS-IN-ED 
         :noun "assessment"
         :etf (svo-passive)))

;; overnight
(define-category assume :specializes bio-rhetorical
  :mixins (bio-thatcomp)
  :realization
  (:verb "assume" ;; keyword: ENDS-IN-ED 
         :noun "assumption"
         :etf (svo-passive)))


(define-category attenuate :specializes negative-bio-control
  :realization 
  (:verb "attenuate"
         :etf (svo-passive)
         :with object))

;; The category 'attribute' is in core/kinds/attribution.lisp.
;; If we gave that version a lemma it would be the noun reading/
(define-category attribute/verb :specializes bio-rhetorical
    :binds ((cause biological))
    :realization
    (:verb "attribute" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
           :to cause))


;; DAVID -- not sure about the relation of basis to base
(define-category base :specializes bio-rhetorical
    :binds ((cause (:or biological bio-rhetorical measurement)))
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

(define-category co-operate :specializes bio-process 
  :binds ((agent biological)
          (co-operator biological)) 
  :realization 
  (:verb "co-operate"
         :noun"co-operation" 
         :etf (sv) 
         :s agent 
         :with co-operator
         :of agent))


(define-category bio-open :specializes caused-bio-process 
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
         :etf (svo-passive)
         :noun "cause"))


(define-category challenge :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :realization
    (:verb "challenge"
	   :etf (svo-passive)))

(define-category change :specializes caused-bio-process
      :binds ((scale bio-scalar)
              (original biological)
              (resulting biological)
              ) 
      :realization
      (:verb "change"
             :etf (svo-passive)
             :noun "change"
             :in object
             :of object
             :on scale
             :from original
             :to resulting
             :into resulting))

(def-synonym change
            (:noun "variation"))

(define-category conversion :specializes change   ;; for our purposes, since we only have biologically relevant reactions
   :realization (:noun "conversion"
                       :verb "convert"
                       :etf (svo-passive)
                       :to resulting
                       ))



(define-category coimmunoprecipitate :specializes immune-method
  :binds ((origin bio-location)
	  (co-precipitant protein))
  :realization 
  (:verb "co-immunoprecipitate" :noun "co-immunoprecipitation"
         :etf (svo-passive) 
         :from origin
	 :with co-precipitant))

(def-synonym coimmunoprecipitate
    (:noun "coimmunoprecipitation"
	   :verb "coimmunoprecipitate" :etf (svo-passive) ))

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
(define-category confound :specializes caused-bio-process
  ;; changed agent to biological, since it can include bio-process such as resistnace
    :realization
    (:verb "confound" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)))

(define-category conserve 
  :specializes caused-bio-process 
  :binds ((bio biological)
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
    :binds ((tocomp (:or be biological))) ;; could be "the effects..."
    :realization
    (:verb ("consider"  :past-tense "considered") ;; keyword: ENDS-IN-ED 
	   :noun "consideration"
	   :etf (svo-passive)
           :to-comp tocomp))

(define-category constitute :specializes bio-relation
  :realization
  (:verb "constitute" ;; keyword: ENDS-IN-ED 
         :etf (svo)
         :o theme))

(define-category construct :specializes bio-method
    :realization
    (:verb "construct"
           :noun "construct" ;; TO-DO this is the RESULT, not the proces
	   :etf (svo-passive)))

(define-category contain :specializes bio-relation 
     :realization 
     (:verb "contain"  
            :etf (svo-passive) 
            :o theme))

(def-synonym contain 
    (:verb ("harbor" :past-tense "harbored" :present-participle "harboring")
	   :etf (svo-passive)))

(define-category continue :specializes aspectual-relation
  :binds ((agent biological)
          (process bio-process))
  :realization 
  (:verb "continue"  
         :etf (svo-passive)
         :s agent
         :o process))

(define-category contrast :specializes bio-rhetorical
  :binds ((contrasted-with biological))
  :realization
  (:verb "contrast" :etf (sv)
         :noun "contrast"))

(define-category contribute :specializes positive-bio-control ;; not sure about this
  :binds ((contribution biological))
  :realization (:verb "contribute" 
                      :etf (svo-passive)
                      :noun "contribution"
                      :o contribution
                      :to object
                      :to-comp object))

(define-category cooperate :specializes bio-act
  :realization
  (:verb "cooperate" :noun "cooperation"
         :etf (sv)))  

(define-category correspond :specializes bio-relation
  :binds ((property common-noun))
  :realization
  (:verb "correspond" :noun "correspondence"
         :etf (sv)
         :in property ;; "fragments correspond in size..."
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
         :etf (svo-passive)
         :noun "culture"))

(define-category cycle
 :specializes bio-process
 :binds ((from biological)
         (to biological)
         (path bio-state)
         (treatment treatment))
 :realization
 (:verb "cycle"
  :etf (sv)
  :from from
  :of treatment
  :to to
  :between path))

;; TO-DO -- does this still hold -- commenting out the ignore
;; bio-deactivate conflicts with bio-activate
;; so need to redesign the by-phrase to be uniform
;; and stated over the value restriction rather than
;; the variable
(define-category bio-deactivate :specializes negative-bio-control
  ::realization
  (:verb "deactivate" :noun "deactivation"
         :etf (svo-passive)))

(define-category bio-inactivate :specializes negative-bio-control
  ::realization
  (:verb "inactivate" 
         :noun "inactivation"
         :etf (svo-passive)))

(def-synonym bio-inactivate (:noun "inactivating interaction"))

(define-category decrease
  :specializes negative-bio-control
  :restrict ((object (:or biological scalar-quality)))
  :binds ((theme biological)
          (level (:or measurement bio-scalar value-kind)))
  :realization
  (:verb "decrease" 
   :etf (svo-passive)
   :for theme
   :in theme
   :to level))

(def-synonym decrease (:verb "drop" :etf (svo-passive)))

(define-category make-double :specializes positive-bio-control
  :restrict ((object (:or biological scalar-quality)))
  :binds ((theme biological)
          (level (:or measurement bio-scalar value-kind)))
  :realization
  (:verb "double" 
         :etf (svo-passive)
         :for theme
         :in theme
         :to level))

;; Potentially problematic since the plural will misparse
;; "monoubiquitination decreases". Committing horrible hack
;; of putting in a dummy plural to circumvent that.
;; When we finally encounter are legitimate use of the
;; plural noun form we'll have to reconsider all this.
(def-synonym decrease (:noun ("decrease" :plural "ddddecrease")))

(define-category degrade :specializes negative-bio-control
  :realization 
  (:verb "degrade" :noun "degradation"
         :etf (svo-passive)))

(delete-noun-cfr (resolve "delay"))
;; Remove existing version of "delay" to replace it with this one
(define-category delay :specializes caused-bio-process
    :realization
    (:verb "delay"
           :noun "delay"
	   :etf (svo-passive )
           :in object))

(def-synonym delay (:noun "delay"))

(define-category demonstrate :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :realization
    (:verb "demonstrate" ;; keyword: ENDS-IN-ED 
	   :noun "demonstration"
	   :etf (svo-passive)))


(define-category depend
  :specializes bio-relation
  :realization
  (:verb "depend" :noun "dependency"
         :adj "dependent"
   :etf (sv)
   :on theme
   :upon theme))



(define-category deplete :specializes caused-bio-process
  :binds ((bio biological)) 
  :realization
  (:verb "deplete" :noun "depletion"
   :etf (svo-passive)
   :from bio))


(define-category describe :specializes bio-rhetorical
    :realization
    (:verb "describe"
	   :noun "description"
	   :etf (svo-passive)))

(define-category detect :specializes immune-method ;; not only, but should allow for antibodies
    :realization
    (:verb "detect" ;; keyword: ENDS-IN-ED 
	   :noun "detection"
           :adj "detectable"
	   :etf (svo-passive)))

#| ;;only seen use is as an adjective
(define-category diffuse :specializes bio-self-movement
  :realization 
  (:verb "diffuse" 
   :noun "diffusion" 
   :etf (sv)))
|#

(define-category digest ;; as in a chemical process for breaking down proteins
  :specializes bio-method
  :realization
  (:verb   "digest" :noun "digestion"
   :etf (svo-passive)))

(define-category determine :specializes bio-rhetorical
  :mixins (bio-whethercomp bio-ifcomp)
  :realization
  (:verb "determine"
         :noun "determination"
         :etf (svo-passive)))

(define-category displace :specializes caused-bio-process
  :binds ((location (:or bio-location bio-complex)))
  :realization
  (:verb "displace" 
         :etf (svo-passive)
         :noun "displacement"
         :etf (svo-passive)
         :from location))

;; e.g. displayed sustained ERK phosphorylation
(define-category display :specializes bio-rhetorical
  :realization
  (:verb "display" ;; keyword: ENDS-IN-ED 
         :etf (svo-passive)
         :noun "display"))

(define-category disrupt :specializes caused-bio-process
  :realization
  (:verb "disrupt" :noun "disruption" 
         :etf (svo-passive)))

(define-category dissect 
  :specializes bio-method 
  :realization 
  (:verb "dissect" 
   :noun "dissection" 
   :etf (svo-passive)))

(define-category dissociate :specializes caused-bio-process
  :binds ((into biological)
	  (site molecular-location)
	  (substrate (:or bio-complex protein molecule)))
  :realization
  (:verb "dissociate" :noun "dissociation"
         :etf (svo-passive)
         :from substrate
         :from site
         :into into))

(define-category dominate :specializes bio-relation 
  :realization 
  (:verb "dominate" 
  :noun "domination" 
  :etf (svo-passive)
  :o theme
  :optional-object t))  ;; e.g. "...our kinetic modeling suggests that the GAP defect will dominate."

(define-category downregulate
  :specializes negative-bio-control
  :realization
  (:verb   "downregulate" :noun "downregulation"
   :etf (svo-passive)))

;; TO-DO check the need for this #+ignore ;; need to get polyword morphology working!

(def-synonym downregulate (:verb "down-regulate" :etf (svo-passive)
                                 :noun "down-regulation"))


(def-synonym downregulate (:verb "negatively regulate" :noun "negative regulation" :etf (svo-passive)))

(define-category block
  :specializes negative-bio-control
  :realization
  (:verb   "block"
   :etf (svo-passive)
   :noun "blockage"))

(define-category repress
  :specializes negative-bio-control
  :realization
  (:verb   "repress"
   :etf (svo-passive)
   :noun "repression"))

(define-category compromise
  :specializes negative-bio-control
  :realization
  (:verb   "compromise"
	   :etf (svo-passive)))

(define-category development :specializes caused-bio-process
  :realization (:verb ("develop" :present-participle "developing" :past-tense "developed")
		      :etf (svo-passive)
		      :noun "development"))

(define-category limit :specializes negative-bio-control
  :realization
  (:verb ("limit" :past-tense "limited" :present-participle "limiting")
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

(define-category direct-control ;; to avoid conflict with the adjective "direct"
  :specializes bio-control
  :realization
  (:verb   "direct" :noun "direction"
   :etf (svo-passive)))


(define-category dysregulate
  :specializes bio-control
  :realization
  (:verb   "dysregulate" :noun "dysregulation"
   :etf (svo-passive)))

(define-category effect :specializes bio-control
  :restrict ((object (:or bio-process bio-entity))) ;; add this, to disambiguate :on, and not have an ambiguity with :object
  :realization
  (:verb "effect"
	 :etf (svo-passive)
	 :of agent
	 :on object))

(def-synonym effect
    (:noun "effect"))

(define-category elevate
  :specializes positive-bio-control
  :realization
    (:verb "elevate" ;; keyword: ENDS-IN-ED 
	   :noun "elevation"
	   :etf (svo-passive)))

(define-category eliminate
  :specializes bio-method
  :realization
    (:verb "eliminate"
	   :noun "elimination"
	   :etf (svo-passive)))


(define-category elucidate :specializes bio-rhetorical 
    :mixins (bio-whethercomp)
     ;; change object to biological, since we have December 51, "in a manner that elucidates ... targets"
    :realization
    (:verb "elucidate" ;; keyword: ENDS-IN-ED 
	   :noun "elucidation"
	   :etf (svo-passive)))

(define-category elute :specializes bio-method
    :binds ((source biological))
    :realization
    (:verb "elute" ;; keyword: ENDS-IN-ED 
	   :noun "elution"
	   :etf (svo-passive)
           :from source
           :with agent)) ;; from/onto column (?)

;;--- "encode"
;; <enzyme> encoded by <gene>
(define-category encode :specializes caused-bio-process
  :realization
  (:verb "encode"
   :noun "encoding"
   :etf (svo-passive)
   :for object))

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



(define-category escape :specializes other-bio-process
    :binds ((process bio-process))
    :realization
    (:verb "escape"
	   :etf (svo)
	   :o process
           :from process
           :noun "escape" 
           :of subject))

(define-category establish :specializes bio-rhetorical 
  :mixins (bio-whethercomp bio-thatcomp)
  :binds ((to-be biological))
  :realization 
  (:verb "establish" 
         :noun "establishment" 
         :etf (svo-passive) 
         :as to-be))

(define-category examine
  :specializes bio-rhetorical
  :mixins (bio-whethercomp bio-ifcomp)
  :binds ((presence-of biological))
  :realization
  (:verb "examine"
         :noun "examination"
         :etf (svo-passive)
         :for presence-of))



(define-category exhibit :specializes caused-bio-process
    :realization
    (:verb "exhibit"
	   :etf (svo-passive)))

(define-category exist :specializes bio-predication
  :binds ((measurement measurement)
          (theme bio-chemical-entity))
  :realization
  (:verb "exist"
         :noun "existence"
         :etf (sv)
	 :of measurement
         :of theme))

(define-category expect :specializes bio-rhetorical
    :realization
    (:verb "expect" 
           :noun "expectgation" 
           :etf (svo-passive)))


(define-category explanation :specializes bio-rhetorical
    :realization
    (:verb "explain" 
           :noun "explanation" 
           :etf (svo-passive)))

;; as in "genes express proteins" or "cell (lines) express proteins" and not the abstract sense
(define-category gene-transcript-express :specializes caused-bio-process
    :binds ((location bio-location)
            (from biological))
    :restrict ((agent (:or bio-entity cell-line)))
    :realization
    (:verb "express"
	   :noun "expression"
	   :etf (svo-passive)
           :from from))

(define-category gene-transcript-co-express :specializes gene-transcript-express
    :binds ((location bio-location)
            (from biological)
            (other-protein protein))
    :realization
    (:verb "co-express"
	   :noun "co-expression"
	   :etf (svo-passive)
           :from from
           :in location
           :of object
           :on location
           :with other-protein))

(def-synonym gene-transcript-co-express
             (:verb ("coexpress" :past-tense "coexpressed")
                    :etf (svo-passive)
                    :noun "coexpression"))

(define-category grow :specializes bio-method
  :realization
  (:verb ("grow" :past-tense "grown")
         :etf (svo-passive)
         :noun "growth"))

(define-category facilitate
  :specializes positive-bio-control
  :realization 
  (:verb "facilitate" :noun "facilitation"
   :etf (svo-passive)))



;;events are favored in a context
(define-category favor :specializes positive-bio-control
    :realization
    (:verb ("favor" :past-tense "favored") ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)))  ;; :in bio-context))  <--------------- not in scope

(def-synonym favor (:verb "favour" :etf (svo-passive)))

(define-category fail :specializes aspectual-relation
  :binds ((process bio-process))
  :realization 
  (:verb "fail"  
         :etf (sv)))

;; mostly passive -- "... are found ..."
(define-category find :specializes bio-rhetorical
  :mixins (bio-thatcomp)
  :realization
  (:verb ("find" :past-tense "found")
         :noun "finding"
         :etf (svo-passive)
	 :mumble ("find" svo)))

(define-category follow-xx :specializes abstract ;; this is intended to suppress definitions of "followed" and "follows"
  :binds ((blocking determiner))
  :realization
  (:verb ("follow" :past-tense "followed" :present-participle "followingxx"
                   :third-singular "follows")
         :etf (sv)
         :s blocking))

(define-category bio-form :specializes caused-bio-process
  :realization
  (:verb "form"
         ;; "form" has never been seen as a verb in the corpus, but "forms" and "formed"
         ;; have been seen
         ;; NOW: "form" occurs in the Reactome comments
         :noun "formation"
         :etf (svo-passive) ))

(define-category fraction :specializes variant
  :binds ((agent pronoun/first/plural) (basis bio-entity)) ;; this should be for genes and proteins
  :realization
  (:verb "fraction" ;; bizarre, but needed to handle the conflict between "fractioned" and the noun
         :etf (svo-passive)
         :s agent
         :o basis))

(def-synonym fraction (:noun "fraction"))
;; exchange

(define-category frees :specializes caused-bio-process
   :binds ((free-of biological))
   :realization 
   (:verb ("free" :past-tense "freed")
	  :etf (svo-passive)
	  :of free-of))

(define-category free :specializes bio-relation
  :binds ((free-of biological))
  :realization (:adj "free" :of free-of))
		 

(define-category generate :specializes caused-bio-process
  :binds ((agent (:or biological pronoun/first/plural))
          (bio biological))
  :realization 
  (:verb "generate" :noun "generation"
         :etf (svo-passive) 
         :s agent
         :by agent
         :from bio
         :in bio))

(define-category bio-grow  :specializes bio-method
  :realization 
  (:verb ("grow" :past-tense "grown") :noun "growing"
         :etf (svo-passive)))


;; formation "GO:0009058"
;;--- hydrolysis
;; http://en.wikipedia.org/wiki/Hydrolysis
;; j3  "upon hydrolysis of GTP to GDP"
;;  The phosphate is removed/cleaved from the GTP (ATP)
;;  and GDP (di-phosphate) is the result.
;;  "gtp hydrolysis on ras"
;; "GO:0019514"
(define-category hydrolyze :specializes chemical-reaction
  :realization            
  (:verb "hydrolyze" :noun "hydrolysis"
   :etf (svo-passive) 
   ))

(def-synonym hydrolyze
    (:verb "hydrolyse"
           :etf (svo-passive)))

(define-category bio-hyperactivate
  :specializes bio-activate
  :realization
    (:verb "hyperactivate" 
     :noun "hyperactivation"
     :etf (svo-passive)))

(define-category hypothesize :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :realization
    (:verb "hypothesize" ;; keyword: ENDS-IN-ED 
	   :noun "hypothesis"
	   :etf (svo-passive)))


(define-category identify :specializes bio-method
    :mixins (immune-method)
    :binds ((to-be biological)
            (method bio-method))
    :realization
    (:verb "identify" ;; keyword: ENDS-IN-ED 
	   :noun "identification"
	   :etf (svo-passive)
           :as to-be
           :in method))

(define-category illustrate :specializes bio-rhetorical
  :mixins (bio-thatcomp)
  ;; it was shown that
  :realization
  (:verb "illustrate"
         :etf (svo-passive)))

(define-category immunoprecipitate :specializes immune-method
  :binds ((origin bio-location))
  :realization 
  (:verb "immunoprecipitate" :noun "immunoprecipitation"
         :etf (svo-passive)
         :from origin))


(define-category impact :specializes bio-relation
  :realization
  (:verb "impact" 
         :etf (svo-passive)
         :o theme
         :of subject
         :on theme))

(def-synonym impact
             (:noun "impact"))

(define-category impair :specializes negative-bio-control
  :binds ((bio biological)) 
  :realization 
  (:verb "impair" :noun "impairment"
         :etf (svo-passive)
         :for bio
         :in bio
         :of object))

(define-category implicate :specializes bio-rhetorical
  :binds ((process bio-process))
    :realization
    (:verb "implicate" ;; keyword: ENDS-IN-ING 
	   :noun "implication"
	   :etf (svo-passive)
           :in process))



(define-category incorporate :specializes bio-relation 
  :realization 
  (:verb "incorporate" :noun "incorporation"
         :etf (svo-passive)
         :o theme
         :into subject))

(define-category increase :specializes positive-bio-control
  :restrict ((object (:or biological scalar-quality)))
  :realization
  (:verb ("increase"  :third-singular "increases"  :past-tense "increased"
          :present-participle "increasing")
         :etf (svo-passive)
         :for object
         :in object
         :of object
         :optional-object t))
;; DAVID -- why can't I put this in the previous definition -- the NOUN form gets clobbered
(def-synonym increase
    (:noun "increase"))

;;--- "induce"
;; "which induce transcription of the p53 gene"
;; "induce processing of p100"
(define-category induce
  :specializes positive-bio-control
  :binds ((response response)) ;; we have "induce this phenotype"
  :realization 
  (:verb "induce" :noun "induction" :adj "inducible"
   :etf (svo-passive)
   :in response))
;;/// want subtypes, want to understand the syntax of "-inducing"



(define-category indicate :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :realization
    (:verb "indicate" ;; keyword: ENDS-IN-ING 
	   :noun "indication"
	   :etf (svo-passive)))

(define-category influence :specializes bio-control
    :realization
  (:verb "influence" ;; keyword: ENDS-IN-ING 
         :etf (svo-passive)))

#| only two examples of noun use of "influence"
(LOAD-TEST 998 "Although the anchorage-independent growth assay measures only one of many phenotypes of transformation and does not, for example, recapitulate tumor microenvironment or account for the influence of the immune system on tumor formation, this system will be useful for dissecting inhibitor response and downstream signaling pathways, particularly for those mutants not found in existing cancer-derived cell lines.") 
(LOAD-TEST 1219 "Given the documented levels of HuR association with SIRT1 and VHL mRNAs ( xref ) and the SIRT1 and VHL mRNA half-lives ( xref A), we investigated the influence of non-phosphorylatable HuR Y200F mutant on the abundance of these mRNAs.") 

(def-synonym influence (:noun "influence" :of agent :on object))
|#

(define-category inform :specializes bio-rhetorical
    :realization
    (:verb "inform" ;; keyword: ENDS-IN-ING 
	   :etf (svo-passive)))

;;--- inhibit
;; "by inhibiting <p>"

(define-category inhibit ;; was drug-inhibit but inhibit fits answer key
  :specializes negative-bio-control
  :realization 
  (:verb ("inhibit" :past-tense "inhibited" 
                    :present-participle "inhibiting" )
   :noun "inhibition"
   :etf (svo-passive)))

(def-synonym inhibit  (:noun "inhibitory interaction" :with object))

(define-category initiate
  :specializes positive-bio-control
  :realization 
  (:verb "initiate" :noun "initiation"
   :etf (svo-passive)))

(define-category dampen :specializes negative-bio-control
  :realization 
  (:verb ("dampen" :past-tense "dampened" :present-participle "dampening")
         :etf (svo-passive)))

(define-category bio-insert :specializes caused-bio-process
  :binds ((substrate (:or protein protein-domain molecular-location))
          (between residue-on-protein)
          (after residue-on-protein))
  :realization 
  (:verb "insert" :noun"insertion" 
         :etf (svo-passive) 
         :into substrate
         :between between))

(define-category interact :specializes other-bio-process
  :binds ((interactor biological)) 
  :realization 
  (:verb "interact" :noun"interaction" 
         :etf (sv) 
         :of subject
         :with interactor
         :between interactor))

(define-category interfere :specializes negative-bio-control
    :realization
    (:verb "interfere" ;; keyword: ENDS-IN-ING 
	   :noun "interference"
	   :etf (sv)
           :in object
           :with object))

(define-category interrogate :specializes bio-method
    :realization
    (:verb "interrogate" ;; keyword: ENDS-IN-ING 
	   :noun "interrogation"
	   :etf (svo-passive)))

(define-category intrigue :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :realization
    (:verb "intrigue"
	   :etf (svo-passive)))

(define-category investigate :specializes bio-method 
  :mixins (bio-whethercomp)
  :realization
  (:verb "investigate" :noun "investigation"
         :etf (svo-passive)))

(define-category involve :specializes bio-relation
    :realization
    (:verb "involve" ;; keyword: ENDS-IN-ING 
	   :etf (svo)
           :o theme
           :in theme))

(define-category keep :specializes bio-relation
    :realization
    (:verb ("keep" :past-tense "kept")
	   :etf (svo-passive)
           :o theme))

(define-category know :specializes bio-rhetorical
  :binds ((topic biological)
          (tocomp (:or be biological)))
    :realization
    (:verb ("know" :past-tense "known")
	   :noun "knowledge" 
	   :etf (svo-passive)
           :about topic
           :to-comp tocomp))

(delete-noun-cfr (resolve "lead"))
(delete-noun-cfr (resolve "leads"))
(define-category lead :specializes positive-bio-control
    :restrict ((agent (:or bio-process bio-method bio-mechanism)))
    :binds ((result (:or biological bio-rhetorical)))
    :realization
    (:verb ("lead" :past-tense "led")
	   :etf (svo)
           :o object
           :to result
           :to-comp result))

#+ignore
(define-category leads-to :specializes cause
  :realization
  (:verb "lead"
         :etf (sv)
         :prep "to"))



(define-category leave :specializes move
  :binds
  ((object t)
   (origin t)
   (destination t))
  :realization 
  (:s object
      :at origin
      :into destination
      :to destination
      :to destination
      :of object
      :from origin
      :m destination
      :m object)
  :realization
  (:verb ("leave" :past-tense "left" :third-singular "leaves" :present-participle "leaving")
         :etf (svo)))

(define-category ligate :specializes caused-bio-process 
  :binds ((substrate (:or protein residue-on-protein))) ;; either a residue-on-protein (dectest 8) ubiquitin C77, or a molecule
  :realization 
  (:verb "ligate" :noun "ligation" 
         :etf (svo-passive)
         :into substrate
         :to substrate))


(define-category link :specializes caused-bio-process 
  :binds ((substrate bio-entity)
          (linked-processes bio-process)
          (process bio-process)
          (co-process bio-process)
          (linked-process bio-process))
                         ;; either a residue-on-protein (dectest 8) ubiquitin C77, or a molecule
  :realization 
  (:verb "link" :noun "linkage" 
         :etf (svo-passive)
         :s process
         :into substrate
         :to substrate
         :to co-process
         :between linked-processes))

(def-synonym link (:noun "link"))

(define-category cross-link :specializes caused-bio-process 
  :binds ((substrate bio-entity)) ;; either a residue-on-protein (dectest 8) ubiquitin C77, or a molecule
  :realization 
  (:verb "cross-link" :noun "cross-linkage" 
         :etf (svo-passive)
         :into substrate
         :to substrate))


(define-category localization :specializes bio-self-movement
  :restrict ((object molecule)) 
  :realization 
  (:verb "localize" 
   :noun "localization" 
   :etf (svo-passive) 
   :o object))

(define-category lose :specializes negative-bio-control
  :restrict ((object (:or protein gene)) )
  :realization 
  (:verb ("lose" :present-participle "losing" :past-participle "lost"
                 :past-tense "lost")
   :noun "loss" 
   :etf (svo-passive) 
   :o object
   :of object))


(define-category lower :specializes negative-bio-control
  :restrict ((object bio-process))
  :realization
  (:verb "lower" :noun "lowering"
         :etf (svo-passive)))
(define-category lower-adj :specializes bio-predication
  :realization
  (:adj "lower"))


(define-category maintain :specializes bio-control
  :binds ((state bio-state))
  :realization
  (:verb "maintain"
         :noun "maintenance"
         :etf (svo-passive)
         :in state))

(define-category measure :specializes bio-method
  :binds ((method bio-method)
          (location bio-location))
  :realization 
  (:verb "measure" :noun "measurement"
         :etf (svo-passive)
         :by method
         :in location
         :with method))

(define-category mediate :specializes caused-bio-process
  :binds ((process bio-process))
  :realization
  (:verb   "mediate" :noun "mediation"
   :etf (svo-passive)
   :via process))


(define-category mean :specializes bio-rhetorical
  :mixins (bio-thatcomp)
  ;; the analysis revealed
  :realization
  (:verb ("mean"  :past-tense "meant")
         :etf (svo)))


(define-category migration :specializes bio-self-movement
  :realization 
  (:verb "migrate" 
   :noun "migration" 
   :etf (sv)))

(define-category co-migrate :specializes bio-self-movement
  :realization 
  (:verb "co-migrate" ;; NOT YET WORKING -- generates polywords in APPLY-REALIZATION-SCHEME :past-tense "co-migrated" :present-participle "co-migrating")
   :noun "co-migration" 
   :etf (sv)))

;; alm ost never a verb (define-category model :specializes bio-process :binds ((agent bio-entity)(object bio-process)) :realization (:verb "model"  :etf (svo-passive) :s agent :o object)) ;;VERB unknown word "modeling" keyword: ENDS-IN-ING

(define-category modify :specializes caused-bio-process
  :binds ((site molecular-location))
  :realization 
  (:verb "modify" :noun "modification"
         :etf (svo-passive)
	 :at site))

(define-category modulate
  :specializes bio-control
  :binds ((theme biological)) ;; increase in rate vs increase in RAS activity
  :realization
  (:verb "modulate" 
         :etf (svo-passive)
         :for theme))


;; out of alphabetical order, because it depends on mutate
(define-category gene-delete :specializes mutation
  :realization
  (:verb "delete" :noun "deletion"
   :etf (svo-passive)
   :in object
   :into object
   :on location
   :to object
   :within location))

#|
;; These two were in terms and need to be integrated with
;; this category
(np-head "mutant" :super 'bio-entity)
(def-cfr gene (mutation gene)
  :form n-bar
  :referent (:head right-edge :function passive-premodifier left-edge right-edge object))
|#

(define-category need :specializes bio-relation
    :binds ((result-or-purpose process))
    :realization
    (:verb "need" ;; keyword: ENDS-IN-ED 
	   :noun "need"
	   :etf (svo-passive)
           :o theme
           :for result-or-purpose
           :to-comp result-or-purpose))


(define-category observe :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :binds ((focused-on biological)
            (method (:or bio-method result))
	    (ingredient-condition bio-entity))
    :realization
    (:verb "observe" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
           :by method ;; can also be people..
           :for focused-on
           :under method
	   :with method
	   :with ingredient-condition))

(define-category obtain :specializes bio-method
    :binds ((source biological)
            (method bio-method))
    :realization
    (:verb "obtain" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
           :by method
           :from source
           :without source))

(define-category occur :specializes bio-predication
    :realization
    (:verb ("occur" :present-participle "occurring" :past-tense "occurred")
	   :noun "occurrence"
	   :etf (sv)))

(define-category overexpress :specializes caused-bio-process
    :realization
    (:verb "overexpress"
	   :noun "overexpression"
	   :etf (svo-passive)))

;; new definitions from MITRE test set
(define-category overlap :specializes bio-relation
  :realization
  (:verb "overlap" 
         :noun "overlap"
         :etf (svo-passive)
         :with theme
         :o theme
         :in subject
         :among subject
         :between theme))

(define-category perform :specializes bio-method
    :binds ((beneficiary biological)
            (using biological)
            (method bio-method))
    :realization
    (:verb "perform" ;; keyword: ENDS-IN-ED 
	   :noun "performance"
	   :etf (svo-passive)
           :by method
           :on beneficiary
           :with using))

(define-category place :specializes bio-method
  :binds ((site molecular-location))
  :realization 
  (:verb "place" 
         :noun "placement" 
         :etf (svo-passive)
	 :at site))

(define-category posit :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :realization
    (:verb "posit"
	   :etf (svo-passive)))

(define-category potentiate :specializes positive-bio-control
    :realization
    (:verb "potentiate" ;; keyword: ENDS-IN-ED 
	   :noun "potentiation"
	   :etf (svo-passive)))

(define-category predict :specializes bio-rhetorical
    :mixins (bio-thatcomp)
  ;; agent can be a process, like "mutation"
    :realization
    (:verb "predict"
	   :noun "prediction"
	   :etf (svo-passive)))

(define-category presentation :specializes bio-relation ;; the category "present" is the adjective "present"
    :realization
    (:verb "present"
	   :noun "presentation"
	   :etf (svo-passive)
           :o theme))

(define-category preserve :specializes bio-control
  :realization
  (:verb "preserve" :noun "preservation"
         :etf (svo-passive))) 


(define-category prevent :specializes negative-bio-control
  :realization
  (:verb "prevent" :noun "prevention" 
         :etf (svo-passive)))

(define-category prime
  :specializes bio-activate
  :realization
    (:verb "prime"
     :etf (svo-passive)))

(delete-verb-cfr (resolve/make "probe"))
(define-category probe :specializes bio-rhetorical
    :realization
    (:verb "probe" 
           :etf (svo-passive)))
(delete-noun-cfr (resolve "probe"))


(define-category prolong :specializes caused-bio-process
  :realization
  (:verb "prolong"
         :etf (svo-passive)))

(define-category prove :specializes bio-rhetorical
    :realization
    (:verb "prove" :noun "proof"
           :etf (svo-passive)
           :of object))

(define-category propagate :specializes bio-transport
		 ;; propagating the pro-apoptotic signal from RAS to p53
   :restrict ((origin (:or cellular-location protein))
		 (destination (:or cellular-location protein)))
  :realization 
  (:verb "propagate" 
   :noun "propagation" 
   :etf (svo-passive)))

;; (p "Dimerization of ERK has been proposed as a requirement for nuclear translocation.")
(define-category propose :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :binds ((to-be bio-process))
    :realization
    (:verb "propose"
     :noun "proposal"
     :etf (svo-passive)
     :as to-be))


(define-category protect :specializes caused-bio-process
    :restrict ((agent (:or protein bio-process))
               (object bio-entity))
  :binds ((protects-against bio-process))
    :realization
    (:verb "protect"
     :noun "protection"
     :etf (svo-passive)
     :s agent
     :o object
     :from protects-against))

;; TO-DO may want to split rehtorical version and bio-chemical version
;; "X provides support for Y" and "X supports process Y"
(define-category provide :specializes bio-relation
    :restrict ((subject (:or result biological))
               (theme (:or insight argument-support biological bio-rhetorical)))
    :realization
    (:verb "provide"
	   :noun "provision"
	   :etf (svo-passive)
           :o theme))

(define-category purify :specializes bio-method
  :binds ((bio biological)) 
  :realization 
  (:verb "purify" :noun "purification" 
         :etf (svo-passive)
         :from bio
         :with agent))

(define-category put-forward :specializes bio-rhetorical
   :realization
   (:verb ("put"
	   :third-singular "puts"
	   :past-tense "put"
	   :present-participle "putting")
	  :etf (svo-passive)))

(define-category query :specializes bio-method
  :mixins (bio-whethercomp)
  :binds ((against pathway))
  :realization
  (:verb "query" ;; keyword: ENDS-IN-ED 
         :etf (svo-passive)
         :against against)) ;; "12,484 genes were queried against KEGG biopathways"


(define-category question :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :realization
    (:verb "question" ;; keyword: ENDS-IN-ED 
	   :noun "hypothesis"
	   :etf (svo-passive)))



(define-category raise :specializes positive-bio-control
    :binds ((object (:or bio-process bio-abstract  bio-rhetorical antibody)) 
            (method bio-method)
            (bio biological))
    :realization
    (:verb "raise" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
           :against bio
           :by method))

(define-category read :specializes bio-rhetorical
  :realization
  (:verb ("read" :past-tense "read" :past-participle "read")
         :etf (svo-passive)))

(define-category reconstitute :specializes caused-bio-process
  :binds ((amount measurement)
          (in (:or measurement biological)))
  :realization
  (:verb "reconstitute" :noun "reconstitution"
         :etf (svo-passive)
         :in in
         :to amount
         :with agent))

(define-category recruit :specializes bio-transport
  :restrict ((destination (:or cellular-location bio-chemical-entity)))
  :realization 
  (:verb "recruit" :noun "recruitment"
         :etf (svo-passive)))

(define-category reduce :specializes negative-bio-control
    :binds ((bio biological))
    :realization
    (:verb "reduce" ;; keyword: ENDS-IN-ING 
	   :noun "reduction"
	   :etf (svo-passive)
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
     :in theme
     :for theme))

(define-category regulator :specializes bio-chemical-entity ;; more general than this
                 ;; anything which can be said to regulate a process
;; functional term (agent of regulate)
  :binds ((theme biological))
  :realization
  (:noun "regulator"
         :of theme))


(define-category inter-regulate
  :specializes bio-control
  :binds ((theme biological)) ;; increase in rate vs increase in RAS activity  :realization
    :realization
    (:verb "inter-regulate"
     :noun "inter-regulation"
     :etf (svo-passive)
     :for theme
     :between theme))    ;; by <entity>

(define-category internalize :specializes caused-bio-process
  :realization
  (:verb "internalize" 
         :etf (svo-passive)
         :noun "internalization"))

(define-category reach :specializes bio-relation
  :restrict ((subject (:or scalar-quality biological))
             (theme (:or scalar-quality value-kind))) ;; value-kind for "a high value"
  :realization
  (:verb "reach"
         :etf (svo)
         :o theme))

                 

(define-category relapse :specializes bio-predication
    :realization
    (:verb "relapse" ;; keyword: ENDS-IN-ING 
	   :noun "relapse"
	   :etf (sv)))

(def-synonym relapse (:noun "relapse"))

(define-category rely :specializes bio-relation
  :realization
  (:verb "rely"
         :etf (sv)
         :on theme))


;;--- "release"  "GO:0023061"
;; the rate of GDP or GTP release from the G-domain is slow

(define-category molecule-release :specializes caused-bio-process
 :binds ((from (:or molecule pathway))
         (bio biological))
 :realization
 (:verb "release"
  :etf (svo-passive)
  ;; Comlex: (np-pp :pval ("in" "into" "from" "to"))
  ;;  and a lot of others
  :from from
  :into bio
  :of object))

(def-synonym  molecule-release
    (:noun "release"))

(define-category relieve :specializes negative-bio-control
  :realization
  (:verb "relieve"
         :noun "relief"
         :etf (svo-passive)))

(define-category remain :specializes bio-relation
    :realization
    (:verb "remain" ;; keyword: ENDS-IN-ED 
	   :etf (sv)
           ;; remains to be determined
           :to-comp theme))

(eval (make-copular-def "remain"))
#+ignore
(def-form-rule (remain adjective)
  :form vp
  :referent (:head right-edge);; :bind (predication right-edge)
)

(define-category remove :specializes bio-method
    :binds ((source biological))
    :realization
    (:verb "remove" ;; keyword: ENDS-IN-ED 
	   :noun "removal"
	   :etf (svo-passive) 
           :from source))

(delete-verb-cfr (resolve "report"))
(delete-verb-cfr (resolve "reported"))
(delete-verb-cfr (resolve "reporting"))

(define-category report :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :realization
    (:verb ("report" :past-tense "reported")
	   :etf (svo-passive)))

;;TO-DO -- fix this one
(define-category represent :specializes bio-relation
  :binds ((visual-presentation visual-presentation))
  :realization
  (:verb "represent" :noun "representation"
         :etf (svo-passive)
         :o theme
         :in visual-presentation))

(define-category require :specializes bio-control
  :binds ((requirement (:or biological process))
	  (purpose biological))
    :realization
    (:verb "require"
	   :noun "requirement"
	   :etf (svo-passive)
	   :o requirement
           :for purpose))

(define-category resist :specializes caused-bio-process
    :realization
    (:verb "resist"
	   :noun "resistance"
	   :etf (svo-passive)
           :to object))


(define-category result :specializes other-bio-process
    :binds ((result (:or bio-process bio-method bio-predication)))
    :realization
    (:verb ("result" :third-singular "results") ;; block plural form of the verb, because of interaction with noun
	   :etf (sv)
           :from subject 
	   :in result
           :of subject))

(def-synonym result (:noun "result"))

(define-category retention :specializes caused-bio-process
   :realization
   (:verb "retain"
          :etf (svo-passive)
          :noun "retention"))

(define-category return :specializes caused-bio-process
 :binds ((state bio-state)
         (scalar scalar-quality))
 :realization
 (:verb "return"
  :etf (sv)
  :to state
  :to scalar))

(define-category revert :specializes bio-process
 :binds ((state bio-state)
         (scalar scalar-quality))
 :realization
 (:verb "revert"
  :etf (sv)
  :to state
  :to scalar))




(define-category reveal :specializes bio-rhetorical
  :mixins (bio-thatcomp)
  ;; the analysis revealed
  :realization
  (:verb "reveal" :noun "revelation" 
         :etf (svo-passive)))



(define-category sample :specializes bio-method
  :realization
  (:verb "sample" :noun "sample"
         :etf (svo-passive)))

(define-category see :specializes bio-rhetorical
  :mixins (bio-thatcomp)
  ;; the analysis revealed
  :realization
  (:verb ("see"  :past-tense "saw" :past-participle "seen")
         :etf (svo-passive)))

(define-category select :specializes bio-method
    :binds ((study bio-method))
    :realization
    (:verb "select" ;; keyword: ENDS-IN-ED 
	   :noun "selection"
	   :etf (svo-passive)
           :for study))

;;>>>>> copied to syntax/be.lisp
;; N.b. trying to move "seem" et al to the general vocabulary,
;;  Now copied over to syntax/be.lisp while figuring out
;;  how to get the equivalent of biological for the restriction
(define-category seem :specializes bio-rhetorical
    :binds ((tocomp (:or be biological)))
    :realization
    (:verb "seem"
	   :etf (svo)
           :to-comp tocomp))

(def-synonym seem (:verb "appear" :etf (svo)))

(eval (make-copular-def "seem"))

(def-form-rule (seem ap)
  :form vp
  :referent (:function make-copular-adjective left-edge right-edge))

;;<<< end forms queued to move to be.lisp




(define-category bio-sequence :specializes bio-method
    :binds ((method bio-method))
    :realization
    (:verb "sequence" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
           :with method))


(define-category set-value :specializes caused-bio-process
  :binds ((value (:or number measurement unit-of-measure)))
  :realization
  (:verb "set"
         :etf (svo-passive)
         :to value))

;; can be both "<people> show ..." and "<molecule> shows <properties>"
(define-category show :specializes bio-rhetorical
  :mixins (bio-thatcomp)
  :binds ((tocomp (:or be biological)))
  ;; it was shown that
  :realization
  (:verb ("show" :past-tense "showed" :past-participle "shown")
         :etf (svo-passive)
         :to-comp tocomp))

(define-category reveal :specializes show
		 :realization
		 (:verb "reveal"
			:etf (svo-passive)))

(define-category stabilize :specializes bio-control
  :binds ((process bio-process))
 :realization
  (:verb "stabilize" :noun "stabilization"
         :etf (svo-passive) 
         :upon process))

(def-synonym stabilize
    (:verb "stabilise"
           :etf (svo-passive)))

(define-category starve :specializes bio-method
    :binds ((nutrient biological))
    :realization
    (:verb "starve" 
           :noun "starvation"
	   :etf (svo-passive)
           :of nutrient))

(define-category study-bio-method :specializes bio-method
  ;; can study bio-process or bio-entity
 :realization
 (:verb ("studyxxx" :past-tense "studied" :present-participle "studying")
  :etf (svo-passive)))

(def-synonym study-bio-method (:noun "study" :of object))

(define-category stimulate
  :specializes positive-bio-control
  :realization
  (:verb "stimulate" :noun "stimulation"
   :etf (svo-passive)
   :with agent))    ;; by <entity>

(define-category subject :specializes bio-method
      :binds ((treatment biological))
      :realization
      (:verb "subject"
             :etf (svo-passive)
             :adj "subject"
             :to treatment))

(define-category succeed :specializes bio-relation
  :realization
  (:verb "succeed" :noun "success"
   :etf (sv)
   :in theme))

(define-category suggest :specializes bio-rhetorical
  :mixins (bio-thatcomp)
  :realization
  (:verb "suggest" :noun "suggestion"
         :etf (sv)))

(define-category summarize :specializes bio-rhetorical
  :realization
  (:verb "summarize"
         :noun "summary"
         :etf (svo-passive)))

(define-category suppress :specializes negative-bio-control
    :realization
    (:verb "suppress" ;; keyword: ENDS-IN-ED 
	   :noun "suppression"
	   :etf (svo-passive))) 

#+ignore
;; now defined as an adjective since it always occurs as "sustained"
(define-category sustain :specializes bio-control
    :realization
    (:verb "sustain" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)))

(define-category tag :specializes bio-method
    :binds ((location bio-location))
    :realization
    (:verb "tag" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)
           :at location
           :with agent))

(define-category target :specializes caused-bio-process
  :binds ((destination biological))
  :realization
  (:verb ("target" :third-singular "targets" :present-participle "targeting" :past-tense "targeted")  ;; keyword: ENDS-IN-ED
   :mumble ("target" svo)
   :etf (svo-passive)
   :s agent
   :o object
   :of object
   :to destination))

(define-category target-protein :specializes protein
		 :binds ((agent (:or protein drug)))
		 :realization
		 (:noun "target"
			:of agent))

(define-category tend :specializes bio-rhetorical
   ;; :mixins (bio-tocomp) working on this.. other comps not working.
    :realization
    (:verb "tend" ;; keyword: ENDS-IN-ED 
	   :noun "tendency"
	   :etf (sv)))

(define-category term :specializes bio-rhetorical
    :realization
    (:verb "term" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)))


(define-category test :specializes bio-method
  :mixins (bio-whethercomp)
  :binds ((object (:or bio-rhetorical biological))
          (presence-of biological))
  :realization
  (:verb "test" ;; keyword: ENDS-IN-ED 
         :etf (svo-passive)
         :for presence-of
         :o object)) ;; seems to be needed to make use of changed definition of object -- TO-DO fisx handling of restrict

(define-category transactivation :specializes caused-bio-process
  :realization
  (:verb "transactivate" :noun "transactivation"
         :etf (svo-passive)))


(define-category transcribe :specializes caused-bio-process
  :binds ((bio biological))
  :realization 
  (:verb "transcribe" 
   :noun "transcription"
   :etf (svo-passive)
   :from bio
   :into bio
   :to bio
   :via bio
   :with bio))

(define-category transduce :specializes  caused-bio-process
  :binds ((into biological))
  :realization
  (:verb "transduce" :noun "transduction" 
  :etf (svo-passive)
  :into into))



(define-category transition :specializes other-bio-process
 :binds ((bio biological)
         (source biological)
         (destination biological))
 :realization
 (:verb "transition" ; :noun "release"
  :etf (sv)
  :from source
  :to destination))

(define-category transfer :specializes bio-method
  :realization 
  (:verb "transfer"
         :etf (svo-passive)))

(def-synonym transition (:noun "transition"))


(define-category translate :specializes caused-bio-process
  :binds ((initial biological)
          (result biological))
  :realization
  (:verb "translate"
         :etf (svo-passive)
         :noun "translation"
         :from initial
         :into result
         :to result))

;; how does this relate to translate
#+ignore
(define-category translation :specializes other-bio-process
  :binds ((result bio-entity))
  :realization
  (:of subject
       :into result))

; (p "ERK Nuclear Translocation Is Dimerization-independent but Controlled by the Rate of Phosphorylation.")
; (p "Upon activation, ERKs translocate from the cytoplasm to the nucleus.")
; "the molecular mechanisms that regulate ERK nuclear translocation 
;     are not fully understood."
; (process on ERK) ... a requirement for nuclear translocation."
                                        ; 11: is directly translated into a delay in nuclear translocation

;; IMPORTANT -- "translocate" does not REQUIRE an object
;; "Wild-type ASPP2, but not mutant ASPP2 (S827A), translocates to the cytosol"
(define-category translocation :specializes bio-transport
  :restrict ((object molecule)) 
  :realization 
  (:verb "translocate" 
   :noun "translocation" 
   :etf (svo-passive)
   :optional-object t))



(define-category transfect :specializes bio-method
  :realization 
  (:verb "transfect"
         :etf (svo-passive)))

(define-category trap :specializes bio-method
  :realization 
  (:verb "trap"
         :etf (svo-passive)))

(define-category relocate :specializes translocation
  :realization 
  (:verb "relocate"
         :etf (svo-passive)))

(define-category entry :specializes translocation
  :restrict ((object molecule)) 
  :realization 
  (:verb "enter" 
   :noun "entry" 
   :etf (svo-passive) 
   :s object ;; ERK translocates -- this is not the agent, but the object!
   :o object
   :of object))


(define-category treatment :specializes bio-method
  :restrict ((object (:or species cell-entity))) ;; the variable "disease" specializes "object" and has special prepositions
  :binds ((treatment biological)
	  (disease disease)
          (modifier (:or bio-predication modifier)))
  :realization
  (:verb "treat" :noun "treatment"
         :etf (svo-passive)
         :for disease
         :of disease
         :with treatment))

(define-category bio-trigger :specializes positive-bio-control
  :realization
  (:verb "trigger" :etf (svo-passive)))


;;This is almost never used as a verb -- only as "truncating...mutation" and "...truncation of ..."
(define-category truncate :specializes caused-bio-process
    :binds ((result biological))
    :realization
    (:verb "truncate"
	   :noun "truncation"
	   :etf (svo-passive)
	   :to result)) 

;; "Growth factors can turn on Ras"
#+ignore
(def-term turn-on
  :super-category bio-activate
  :verb "turn"
  :prep "on"
  :etf (svo))

(define-category undergo :specializes other-bio-process
  :binds ((process (:or bio-process bio-method)))
  :realization 
  (:verb "undergo" 
         :etf (svo)
         :o process))


;; base form is "underlie" though...
(define-category underly :specializes bio-relation
    :realization
    (:verb ("underlie" :present-participle "underlying") ;; keyword: ENDS-IN-ING 
	   :etf (svo)
           :o theme))

(define-category understand :specializes bio-rhetorical
  :realization
  (:verb ("understand" :past-tense "understood")
         :etf (svo-passive)))

(define-category upregulate
  :specializes positive-bio-control
  :realization
  (:verb   "upregulate" :noun "upregulation"
   :etf (svo-passive)))

(def-synonym upregulate (:verb "up-regulate" :noun "up-regulation" :etf (svo-passive)))

(def-synonym upregulate (:verb "positively regulate" :noun "positive regulation" :etf (svo-passive)))


(define-category use :specializes bio-method
    :binds ((result biological)
            (purpose (:or bio-event bio-predication bio-process bio-method bio-rhetorical)))
    :realization
    (:verb ("useXXX" :past-tense "used" :present-participle "using") ;; keyword: ENDS-IN-ED 
           :noun "use"
	   :etf (svo-passive)
           :to result
           :to-comp purpose))



(define-category validate :specializes bio-rhetorical
    :mixins (bio-whethercomp bio-ifcomp)
    :binds ((to-be biological))
  ;; validated by the success of MEK inhibition
    :realization
    (:verb "validate" ;; keyword: ENDS-IN-ED 
	   :noun "validation"
	   :etf (svo-passive)
           :as to-be))

(define-category verify :specializes bio-rhetorical
  :mixins (bio-thatcomp)
  :realization 
  (:verb "verify" :noun "verification"
         :etf (svo-passive)))

(define-category yield :specializes caused-bio-process
    :realization
    (:verb "yield" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)))

(def-synonym yield (:noun "yield"))


