;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "verbs1"
;;;  Module: "grammar/model/sl/biology/
;;; version: January 2017

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
#+ignore
(assign-subject category::be
                category::biological
                (variable/category 'subject category::be))
#+ignore
(assign-object category::be
               category::biological
               (variable/category 'predicate category::be))

(assign-subcategorization category::be
      :to-comp category::biological 'predicate)

;;;---------------------------
;;; macros for standard cases
;;;---------------------------

(defmacro svo/bio (verb)
  `(svo/bio/expr ,verb))

(defparameter *show-bio-verbs* nil)

(defparameter *show-new-svo/bio-definitions* nil)
(defparameter *comlex-category-names* nil)
(defparameter *new-bio-processes* nil)

(define-mixin-category comlex-derived :specializes abstract
                       :documentation "Marker that this category was produced to hold a word that is only known through COMLEX")

(defun svo/bio/expr (verb &optional comlex-clause)
  (declare (special category::bio-process))
  (let ((special-cases
          (when comlex-clause
            (lift-special-case-form-from-comlex-clause comlex-clause))))
    (when *show-bio-verbs*
      (format t "~%creating a default bio-process for new verb ~s~%" verb))
    (when (word-p verb) 
      ;; came in from setup-verb
      (setq verb (word-pname verb)))
    (when (equal "residue" (pname verb))
  	
      (warn "trying to redefine residue")
      (return-from svo/bio/expr nil))
    (let* ((category-name (intern (string-upcase verb)
                                  (find-package :sparser)))
           (existing-bio-verb-category-name
             (member category-name *comlex-category-names*))
           (existing-bio-verb-category (and
                                        existing-bio-verb-category-name
                                        (category-named category-name))))
      (when (and (category-named category-name)
                 (null existing-bio-verb-category-name))
        ;; e.g. 'time
        ;; had some difficulty with redefining verb "leave",
        ;; and then redefining the category
        (setq category-name
              (construct-disambiguating-category-name
               category-name category::bio-process))
        (when (member category-name *comlex-category-names*)
          (setq existing-bio-verb-category (category-named category-name))))
    
      (cond (existing-bio-verb-category)
            (t
             (push category-name *comlex-category-names*)
             (let* ((form (unless existing-bio-verb-category
                            `(define-category ,category-name
                               :instantiates :self
                               :specializes bio-process
                               :mixins (comlex-derived)
                               :binds ((participant endurant)
                                       (object endurant))
                               :realization (:etf (svo-passive)
                                             :verb ,verb :o object))))
                    (category (or existing-bio-verb-category (eval form))))
               (pushnew category *new-bio-processes*)
               (when *show-new-svo/bio-definitions*
                 (print form))
               ;; need to figure out a way to show the context!!
               (unless existing-bio-verb-category
                 (note-permanence-of-categorys-individuals category))
               (when special-cases
                 (apply #'define-main-verb (cat-symbol category)
                        :infinitive verb
                        :category category
                        :referent category
                        special-cases))
               category))))))


;;; Verbs added temporarily for load-test -- to be reviewed and corrected


;; this is a dummy
(define-category work-verb :specializes bio-relation
  :realization
  (:verb "work"
         :etf (svo-passive)))


;;; Verbs added for CURE articles -- to be reviewed
(delete-verb-cfr (resolve "transform"))
(define-category cancer-transform :specializes caused-bio-process
  :restrict ((object cell-entity))
  :realization
  (:verb "transform"
         :etf (svo-passive)
         :of :object))
;; leads to rule bio-entity + load, 
;; which works, but isn't satisfying

(define-category compose :specializes other-bio-process
  :binds ((agent biological)
          (whole biological)
          (parts biological))
  :realization
  (:verb "compose"
         :etf (svo-passive)
         :o whole
         :of parts
         :s agent) ;; not really used
   )


(define-category derive :specializes caused-bio-process
  :realization 
  (:verb "derive"
         :etf (svo-passive)
         ;; add :from
         ))

(define-category participate :specializes other-bio-process
  :realization 
  (:verb "participate" :etf (sv)))

(define-category deduce :specializes bio-rhetorical
  :realization
  (:verb "deduce"
         :noun "deduction" :etf (svo-passive)))

(define-category characterize :specializes bio-rhetorical
  :realization
  (:verb "characterize"
         :noun "characterization" :etf (svo-passive)))



(define-category compensate :specializes other-bio-process
  :binds ((alternate biological))
  :realization
  (:verb "compensate" :etf (sv)
         :for alternate))

(define-category hypothesize :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :realization
    (:verb "hypothesize" ;; keyword: ENDS-IN-ED 
	   :noun "hypothesis"
	   :etf (svo-passive)))

(define-category learning :specializes bio-rhetorical
  :realization
  (:verb "learn" :etf (svo-passive)
         :about statement))

(define-category find-out :specializes learning
  :realization
  (:verb ("find" :prep "out")
         :etf (svo-passive)))


          
(define-category feature :specializes  bio-rhetorical ;; not really -- but WHAT??
  :realization
  (:verb "feature" :etf (svo-passive)
         :noun "feature"))

(define-category augment
  :specializes positive-bio-control
  :realization
  (:verb "augment" :noun "augmentation"
   :etf (svo-passive)
   :with agent))    ;; by <entity>


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


(define-category bio-range :specializes bio-relation ;; REVIEW!!
  :binds ((low-value (:or scalar-quantity measurement))
          (high-value (:or scalar-quantity measurement)))
  :realization
  (:verb "range"
         :etf (sv)
         :s participant
         :from low-value
         :to high-value))

(def-synonym range
             (:noun "range"))

(define-category fill :specializes bio-relation ;; REVIEW!!
  :realization 
  (:verb "fill" :etf (svo-passive)))

(define-category surface-line :specializes bio-relation ;; the tissue lining the gut
  :realization (:verb "line" :etf (svo-passive)))

(define-category mention :specializes bio-rhetorical
  :realization (:verb "mention" :etf (svo-passive)))

#+ignore ;; causes unnecessary confusion in
;;"what  COVID-19 articles about the S protein mention ACE2"
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

(define-category favor :specializes positive-bio-control
  :realization
  (:verb "favor" :etf (svo-passive)))

(define-category disfavor :specializes negative-bio-control
  :realization
  (:verb ("disfavor" :present-participle "disfavoring"
                  :past-tense "disfavored")
         :etf (svo-passive)))

;;;--------------------------------------------------------
;;; specific verbs (alphabetical except for obvious pairs)
;;;--------------------------------------------------------





(define-category abrogate :specializes negative-bio-control
  :restrict ((object bio-process))
  :realization
  (:verb "abrogate" :noun "abrogation" 
         :etf (svo-passive)))

(define-category accelerate :specializes positive-bio-control
  :restrict ((object bio-process))
  :realization
  (:verb ("accelerate" :past-tense "accelerated" :past-participle "accelerated")
         :noun "acceleration" 
         :etf (svo-passive)))



(define-category accumulation :specializes bio-self-movement
  :binds ((amount (:or scalar-attribute ;; amount measurement
                       )))
  :restrict ((origin blocked-category))               
  :realization
  (:verb "accumulate" :noun "accumulation"
         :to amount
         :in destination
         :at destination))
 
(define-category acquire :specializes caused-bio-process ;; for conjunctions, as in "de novo or acquired"
    :binds ((method activity-with-a-purpose))
    :realization
    ( ;;:verb "acquire" ;; keyword: ENDS-IN-ED
     :adj "acquired"
     :noun "acquisition"
     :etf (svo-passive)
     :on method
     :through object
     ;;:through affected-process ;; FIX THIS
     :with method ;; "Single images were acquired with a Leica fluorescence microscope..."
     ))




(define-category serve :specializes bio-act
  :realization
  (:verb "serve"
         :etf sv))

(define-category bio-function :specializes bio-act
  :realization
  (:verb "function"
         :etf sv))

(define-category bio-functionality :specializes bio-process
  ;; bio-functionality takes none of the modifiers of bio-process except participant
  :restrict ((by-means-of blocked-category)
             (using blocked-category)
             (manner blocked-category) ;; conflict with "increase" bio-process CHECK THIS WAS  bio-method
             (without-using blocked-category)
             (without-means-of blocked-category)
             (as-comp blocked-category)
             (target blocked-category))
  :realization
  (:noun "function"))

(define-category bio-activate
  :specializes positive-bio-control
  :restrict ((agent top))
  :realization
    (:verb "activate" 
     :noun "activation"
     :etf (svo-passive)))

(define-category bio-hyperactivate
  :specializes bio-activate
  :realization
    (:verb "hyperactivate" 
     :noun "hyperactivation"
     :etf (svo-passive)))

(define-category auto-activate
  :specializes bio-activate
  :realization
    (:verb "autoactivate" 
     :noun "autoactivation"
     :etf (svo)))

#+ignore
(define-category affect :specializes bio-control
  :binds ((causing (:or be biological)))
  :realization 
  (:verb "affect" :etf (svo-passive) ))




(define-category impede :specializes negative-bio-control
    :binds ((process (:or biological have process)))
    :realization
    (:verb ("impede" :past-tense "impeded" :past-participle "impeded" :present-participle "impeding")
           ;; keyword: ENDS-IN-ING 
	   :etf (svo-passive)
           :for object
           :for affected-process
           ;; :to-comp process probably not right
           ))

(define-category abolish :specializes negative-bio-control
    :realization
    (:verb ("abolish" :past-tense "abolished" :past-participle "abolished"
                      :present-participle "abolishing")
           :noun "abolition"
           ;; keyword: ENDS-IN-ING 
	   :etf (svo-passive)
           :for object
           :for affected-process))




(define-category articulate :specializes bio-rhetorical
  :mixins (of-participant-bio-predication)
  :realization
  (:verb "articulate" ;; keyword: ENDS-IN-ED 
         :noun "articulation"
         :etf (svo-passive)))

(define-category bio-associate  :specializes other-bio-process ;; MAYBE THIS IS LIKE BIND
  ;;:obo-id "GO:0005488"
  ;; "<binder> binds to <binde>" the subject moves
  :binds ((object biological)
          (objects biological)
          (site molecular-location))
  :restrict ((using blocked-category)
             (by-means-of blocked-category))
  :realization 
  (:verb "associate"
         :noun "association"
         :etf (sv) 
         ;;:o  object
         :to object
         :via site
	 :at site
         :with object
         :between objects))




(define-category attenuate :specializes negative-bio-control
  :realization 
  (:verb "attenuate"
         :etf (svo-passive)
         :noun "attenuation"
         :with object))



;; DAVID -- not sure about the relation of basis to base
(define-category base :specializes perdurant ;; DAVID -- need a better parent
   ;;bio-rhetorical -- it doesn't ake a bunch of the modifiers of bio-rhetorical
  :binds ((cause (:or biological bio-rhetorical attribute ;; amount measurement -- replaced scalar-attribute by attribute, for "results"
                      ))
           (object
            (:or
             bio-chemical-entity
             group ;; a group/set/subset...
             cell-entity
             organism ;; "these animals showed..."
             these
             ;; bio-entity too general -- leads to problems with created semantic rules
             bio-chemical-entity
             bio-location ;; "the Y561 site displayed no difference..."
             evidence
             article-figure
             information
             bio-rhetorical
             bio-process ;; the B-RAFV600E mutation predicts
             ;;bio-method ;; high-throughput functional screens may inform
             activity-with-a-purpose ;; generalizes bio-method
             bio-mechanism     ;; "this pathway describes ..."
             bio-predication ;; the success of raf and mek inhibitors
             measurement     ;; these data
             document-part
             visual-representation))
           (agent interlocutor))
            
    :realization
           (:verb "base" ;; keyword: ENDS-IN-ED
                  :s agent
                  :o object      
                  :noun ("base" "basis")
                  :etf (svo-passive)
                  :on cause
                  :upon cause))




;; "call"  assigns a name in passive "X is called N"

(define-category co-operate :specializes bio-process 
  :binds ((co-participant biological))
  :restrict ((participant biological))
  :realization 
  (:verb "co-operate"
         :noun"co-operation" 
         :etf (sv) 
         :with co-participant))

(define-category bio-open :specializes caused-bio-process 
  :realization 
  (:verb "open"
         :etf (svo-passive)))

(define-category operate :specializes bio-control ;; to allow it to have affected
  :realization 
  (:verb "operate"
         :noun"operation" 
         :etf (sv) 
         :on object
         :on affected-process
         :upon affected-process))


(define-category challenge :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :realization
    (:verb "challenge"
	   :etf (svo-passive)))



(def-synonym change
    (:noun "variation"))


(noun "hierarchical clustering analysis" :super clustering)



;; like inhibit "therapeutics are confounded by acquired resistance"
;; "...studies of human BTICs have been confounded by their scarcity in tumors..."
(define-category confound :specializes process-control-process
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
         ;;:from bio
         :in bio
         :to bio
         :with bio))


(def-synonym contain 
    (:verb ("harbor" :past-tense "harbored" :present-participle "harboring")
	   :etf (svo-passive)))


(define-category cycle
 :specializes bio-process
 :binds ((from biological)
         (to biological)
         (path bio-state)
         (treatment treatment))
 :realization
 (:verb "cycle"
  :noun "cycle" ; "the reproductive cycle of HIV"
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


(define-category degrade :specializes negative-bio-control
  :realization 
  (:verb "degrade" :noun "degradation"
         :etf (svo-passive)))


(define-category deplete :specializes caused-bio-process
  :binds ((bio biological)) 
  :realization
  (:verb "deplete" :noun "depletion"
   :etf (svo-passive)
   ;;:from bio
   ))


#| ;;only seen use is as an adjective
(define-category diffuse :specializes bio-self-movement
  :realization 
  (:verb "diffuse" 
   :noun "diffusion" 
   :etf (sv)))
|#



(define-category displace :specializes caused-bio-process
  :binds ((source-location (:or bio-location bio-complex)))
  :realization
  (:verb "displace" 
         :etf (svo-passive)
         :noun "displacement"
         :etf (svo-passive)
         :from source-location))



(define-category dissociate :specializes caused-bio-process
  :mixins (on-substrate)
  :binds ((into biological)
	  (site molecular-location))
  :realization
  (:verb "dissociate" :noun "dissociation"
         :etf (svo-passive)
         :from substrate
         :from site
         :into into))

(define-category downregulate
  :specializes negative-bio-control
  :realization
  (:verb   "downregulate" :noun "downregulation"
   :etf (svo-passive)))

;; TO-DO check the need for this #+ignore ;; need to get polyword morphology working!

(def-synonym downregulate (:verb "down-regulate" :etf (svo-passive)
                                 :noun "down-regulation"))


(def-synonym downregulate (:verb "negatively regulate" :noun "negative regulation" :etf (svo-passive)))

(define-category repress
  :specializes negative-bio-control
  :realization
  (:verb   "repress"
   :etf (svo-passive)
   :noun "repression"))


;;actually want to define 
(define-category terminate
  :specializes negative-bio-control
  :realization
  (:verb   "terminate" :noun "termination"
   :etf (svo-passive)))
  

(define-category drive :specializes positive-bio-control
  :restrict ((object bio-process))
  :realization
  (:verb ("drive" :past-tense "driven" :past-participle "driven")
         :etf (svo-passive)))

(define-category dysregulate
  :specializes bio-control
  :realization
  (:verb   "dysregulate" :noun "dysregulation"
   :etf (svo-passive)))



;;--- "encode"
;; <enzyme> encoded by <gene>
(define-category encode :specializes caused-bio-process
  :realization
  (:verb "encode"
   :etf (svo-passive)
   :for object))


(define-category bio-promote
  :specializes positive-bio-control
  :realization 
  (:verb "promote" :noun "promotion"
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
           :noun "escape"))


;; as in "genes express proteins" or "cell (lines) express proteins" and not the abstract sense
;; tissues also express proteins "what tissues express stat3?"
(define-category gene-transcript-express :specializes caused-bio-process
    :binds ((location bio-location)
            (from biological))
    :restrict ((agent (:or cell-entity non-cellular-location))
               (object (:or gene peptide rna mutant))
               (using blocked-category))  ;; better handling of "comparison of p-ERK expression WITH ..."
    :realization
    (:verb ("express" :past-tense "expressed"
                      :past-participle ("expressed" "expresseed") ;; block  typo problem for "SLAM is expresseed on ..."
                      )
	   :noun "expression"
	   :etf (svo-passive)
           ))

(define-category gene-transcript-over-express :specializes gene-transcript-express
    :binds ((location bio-location)
            (from biological))
    :restrict ((agent cell-entity))
    :realization
    (:verb ("over-express" :past-tense "over-expressed" :past-participle "over-expressed")
	   :noun "over-expression"
	   :etf (svo-passive)))

(def-synonym gene-transcript-over-express
    (:verb ("overexpress" :past-tense "overexpressed" :past-participle "overexpressed")
           :noun "overexpression" :etf (svo-passive)))

(def-synonym gene-transcript-over-express
    (:verb ("over express" :past-tense "over expressed" :past-participle "over expressed")
           :noun "over expression" :etf (svo-passive)))

(define-category gene-transcript-co-over-express :specializes gene-transcript-over-express
    :binds ((location bio-location)
            (from biological))
    :restrict ((agent cell-entity))
    :realization
    (:verb ("co-over-express" :past-tense "co-over-expressed" :past-participle "co-over-expressed")
	   :noun "co-over-expression"
	   :etf (svo-passive)))

(def-synonym gene-transcript-co-over-express
    (:verb ("cooverexpress" :past-tense "cooverexpressed" :past-participle "cooverexpressed")
           :noun "cooverexpression" :etf (svo-passive)))


(define-category gene-transcript-under-express :specializes gene-transcript-express
    :binds ((location bio-location)
            (from biological))
    :restrict ((agent cell-entity))
    :realization
    (:verb ("under-express" :past-tense "under-expressed" :past-participle "under-expressed")
	   :noun "under-expression"
	   :etf (svo-passive)))

(def-synonym gene-transcript-under-express
    (:verb ("underexpress" :past-tense "underexpressed" :past-participle "underexpressed")
           :noun "underexpression" :etf (svo-passive)))


(define-category gene-code :specializes caused-bio-process
    :binds ((location bio-location)
            (from biological)
            (protein (:or protein gene variant)))
    :restrict ((agent cell-entity))
    :realization
    (:verb "code"
	   :etf (svo-passive)
           ;;:from from
           :for protein))


(define-category gene-transcript-co-express :specializes gene-transcript-express
    ;; :restrict ((location bio-location)) ;; not sure why this is needed
    :binds ((from biological)
            (other-protein (:or protein gene)))
    :realization
    (:verb ("co-express" :past-tense "co-expressed" :past-particple "co-expressed")
	   :noun "co-expression"
	   :etf (svo-passive)
           :from from
           :of :object
           ;; :on location ;; not sure why this is needed
           :with other-protein))

(def-synonym gene-transcript-co-express
             (:verb ("coexpress" :past-tense "coexpressed" :past-participle "coexpressed")
                    :etf (svo-passive)
                    :noun "coexpression"))

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



(define-category impact :specializes bio-relation
  :realization
  (:verb "impact" 
         :etf (svo-passive)
         :o theme
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
         :of :object))

(define-category implicate :specializes bio-rhetorical
  :binds ((process bio-process))
    :realization
    (:verb "implicate" ;; keyword: ENDS-IN-ING 
	   :noun "implication"
	   :etf (svo-passive)
           :in process))





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



(define-category dampen :specializes negative-bio-control
  :realization 
  (:verb ("dampen" :past-tense "dampened" :present-participle "dampening")
         :etf (svo-passive)))

(define-category intrigue :specializes bio-rhetorical
    :mixins (bio-thatcomp)
    :realization
    (:verb "intrigue"
	   :etf (svo-passive)))




(define-category knock-out :specializes negative-bio-control
  :realization (:verb ("knock" :prep "out")))

(define-category knockdown :specializes negative-bio-control
  :realization
  (:noun "knockdown" :of :object
         :m gene-or-protein
         :verb ("knock down" :past-tense "knocked down"  
                             :present-participle "knocking down" )
         :etf (svo-passive)))

(define-category ligate :specializes caused-bio-process
  :restrict ((agent bio-chemical-entity)
             (substrate (:or bio-complex peptide protein-domain region-of-molecule residue-on-protein)))
  :mixins (on-substrate) ;; either a residue-on-protein (dectest 8) ubiquitin C77, or a molecule
  :realization 
  (:verb "ligate" :noun "ligation" 
         :etf (svo-passive)
         :into substrate
         :to substrate))

(def-synonym ligate (:verb "conjugate"))


(define-category cross-link :specializes caused-bio-process 
  :mixins (on-substrate)
  :realization 
  (:verb "cross-link" :noun "cross-linkage" 
         :etf (svo-passive)
         :into substrate
         :to substrate))


(define-category localization :specializes bio-self-movement
                 :restrict ((moving-object molecule))
                 :bindings (uid "GO:0051179")
  :realization 
  (:verb "localize" 
   :noun "localization"
   :verb-premod destination      
   :etf (svo-passive) 
   :o moving-object))



(define-category maintain :specializes bio-control
  :binds ((state bio-state))
  :realization
  (:verb "maintain"
         :noun "maintenance"
         :etf (svo-passive)
         :in state))

(define-category mediate :specializes bio-control
  :binds ((process bio-process))
  :realization
  (:verb   "mediate" :noun "mediation"
   :etf (svo-passive)
   :via process))


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

(define-category modulate :specializes bio-control
  :binds ((theme biological)) ;; increase in rate vs increase in RAS activity
  :realization
  (:verb "modulate" :noun "modulation"
         :etf (svo-passive)
         :for theme))


;; out of alphabetical order, because it depends on mutate
(define-category gene-delete :specializes mutation
  :realization
  (:verb "delete" :noun "deletion"
   :etf (svo-passive)
   :in object
   :into object
   ;; :on location  ;; not sure why this is needed
   :to object
   ;; :within location  ;; not sure why this is needed
   ))

#|
;; These two were in terms and need to be integrated with
;; this category
(np-head "mutant" :super 'bio-entity)
(def-cfr gene (mutation gene)
  :form n-bar
  :referent (:head right-edge :function passive-premodifier left-edge right-edge object))
|#



(define-category potentiate :specializes positive-bio-control
    :realization
    (:verb "potentiate" ;; keyword: ENDS-IN-ED 
	   :noun "potentiation"
	   :etf (svo-passive)))


(define-category prime
  :specializes bio-activate
  :realization
    (:verb "prime"
     :etf (svo-passive)))

(delete-verb-cfr (resolve "probe"))
(define-category probe :specializes bio-rhetorical
    :realization
    (:verb "probe" 
           :etf (svo-passive)))
(delete-noun-cfr (resolve "probe"))


(define-category propagate :specializes bio-transport
		 ;; propagating the pro-apoptotic signal from RAS to p53
  :restrict ((object (:or bio-entity bio-chemical-entity signal)) ;; signal is a process, but also can be propagated
             (origin (:or cellular-location protein gene)) 
             (destination (:or cellular-location protein gene)))
  :realization 
  (:verb "propagate" 
   :noun "propagation" 
   :etf (svo-passive)))




(define-category reconstitute :specializes caused-bio-process
  :binds ((amount (:or scalar-attribute))
          (in (:or measurement biological)))
  :realization
  (:verb "reconstitute" :noun "reconstitution"
         :etf (svo-passive)
         :in in
         :to amount
         :with agent))

(define-category recruit :specializes bio-transport
  :restrict ((destination (:or cellular-location bio-chemical-entity))
             (object blocked-category))
  :realization 
  (:verb "recruit" :noun "recruitment"
         :etf (svo-passive)
         :o moving-object
         :of moving-object
         :by destination))

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
     :for object))

(define-category regulator :specializes bio-chemical-entity ;; more general than this
                 ;; anything which can be said to regulate a process
;; functional term (agent of regulate)
  :binds ((object biological))
  :realization
  (:noun "regulator"
         :of object
         :for object))

(define-category negative-regulator :specializes inhibitor
                 :realization (:noun "negative regulator"))

(define-category positive-regulator :specializes regulator
  :realization (:noun "positive regulator"))

(define-category inter-regulate
  :specializes bio-control
  :binds ((theme biological)) ;; increase in rate vs increase in RAS activity  :realization
    :realization
    (:verb "inter-regulate"
     :noun "inter-regulation"
     :etf (svo-passive)
     :for object
     :between theme))    ;; by <entity>

(define-category internalize :specializes caused-bio-process
  :realization
  (:verb "internalize" 
         :etf (svo-passive)
         :noun "internalization"))


(define-category bio-reactivate
  :specializes positive-bio-control
  :realization
    (:verb "reactivate" 
     :noun "reactivation"
     :etf (svo-passive)))

(def-synonym bio-reactivate
    (:verb "re-activate" :noun "re-activation"))

(define-category relapse :specializes of-participant-bio-predication
  :realization
  (:verb "relapse" ;; keyword: ENDS-IN-ING 
         :noun "relapse"
         :etf (sv)))

(def-synonym relapse (:noun "relapse"))



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
  :of :object))

(def-synonym  molecule-release
    (:noun "release"))

(define-category relieve :specializes negative-bio-control
  :realization
  (:verb "relieve"
         :noun "relief"
         :etf (svo-passive)))

(define-category resist :specializes bio-relation
  :realization
  (:verb "resist"
         :noun "resistance"
         :adj "resistant"
         :etf (svo-passive)
         :to theme))


(define-category retention :specializes caused-bio-process
   :realization
   (:verb "retain"
          :etf (svo-passive)
          :noun "retention"))

(define-category revert :specializes bio-process
 :binds ((state bio-state)
         (scalar (:or scalar-attribute))
         (object biological)
         (agent interlocutor))
 
 :realization
 (:verb "revert"
        :etf (svo)
        :o object
  :to state
  :to scalar))




(define-category stabilize :specializes bio-control
  :binds ((process bio-process))
 :realization
  (:verb "stabilize" :noun "stabilization"
         :etf (svo-passive) 
         :upon process))

(def-synonym stabilize
    (:verb "stabilise"
           :etf (svo-passive)))



(define-category stimulate
  :specializes positive-bio-control
  :realization
  (:verb "stimulate" :noun "stimulation"
   :etf (svo-passive)
   :with agent))    ;; by <entity>


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

(define-category target :specializes bio-control
  :binds ((destination biological))
  :realization
  (:verb ("target" :third-singular "targets" :present-participle "targeting" :past-tense "targeted")  ;; keyword: ENDS-IN-ED
   :etf (svo-passive)
   :to destination))

(define-category target-protein :specializes protein
                 :binds ((treatment (:or protein gene drug treatment
                                         bio-process ;; "for cardiovascular protection"
                                         )))
  :realization
  (:noun "target"
         :of agent
         :for disease
         :for treatment
         :of treatment
         :m treatment))


(define-category term :specializes bio-rhetorical
    :realization
    (:verb "term" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)))


(define-category transactivation :specializes caused-bio-process
  :realization
  (:verb "transactivate" :noun "transactivation"
         :etf (svo-passive)))


(define-category transcribe :specializes caused-bio-process
                 :binds ((bio biological))
                 :bindings (uid "GO:0006351")
  :restrict ((agent (:or cell-entity protein)))
  :realization 
  (:verb "transcribe" 
   :noun "transcription"
   :adj "transcriptional"
   :etf (svo-passive)
   :in agent
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



(define-category bio-transition :specializes other-bio-process
 :binds ((bio biological)
         (source biological)
         (destination biological))
 :realization
 (:verb "transition" ; :noun "release"
  :etf (sv)
  :from source
  :to destination))
;; same pname as the lemma assigned to 'transition' as specialization of process
(def-synonym transition (:noun "transition"))


(define-category translate :specializes process-control-process
  ;; caused-bio-process "a delay in ... is directly translated into..."
  :binds ((initial biological)
          (translates-to biological))
  :bindings (uid "GO:0006412")
  :realization
  (:verb "translate"
         :etf (svo-passive)
         :noun "translation"
         :from initial
         :into translates-to
         :to translates-to))

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
  :realization 
  (:verb "translocate" 
   :noun "translocation" 
   :etf (svo-passive)
   :optional-object t
   :of :object
   :o moving-object))

(define-category import :specializes bio-transport
  :restrict ((agent blocked-category)
             (object blocked-category))
  :realization 
  (:verb "import" 
   :noun "importation" 
   :etf (svo-passive)
   :o moving-object))

(define-category mobilize :specializes bio-transport
  :restrict ((agent blocked-category)
             (object blocked-category))
  :realization 
  (:verb "mobilize" 
   :noun "mobilization" 
   :etf (svo-passive)
   :o moving-object))

(define-category redistribute :specializes bio-transport
  :restrict ((agent blocked-category)
             (object blocked-category))
  :realization 
  (:verb "redistribute" 
   :noun "redistribution"
   :etf (svo-passive)
   :o moving-object))

(define-category export :specializes bio-transport
  :restrict ((agent blocked-category)
             (object blocked-category))                 
  :realization 
  (:verb "export" 
         :etf (svo-passive)
         :o moving-object))




(define-category relocate :specializes translocation
  :realization 
  (:verb "relocate"
         :etf (svo-passive)))

(define-category entry :specializes translocation
  :realization 
  (:verb "enter" 
   :noun ("entry" "entrance")
   :etf (svo-passive) 
   :s moving-object ;; ERK translocates -- this is not the agent, but the object!
   :of :object))



(define-category bio-trigger :specializes positive-bio-control
                 :realization
                 (:verb ("trigger" :third-singular "triggers"
                                   :past-tense "triggered"
                                   :present-participle "triggering")
                        :etf (svo-passive)))

;;This is almost never used as a verb -- only as "truncating...mutation" and "...truncation of ..."
(define-category truncate :specializes caused-bio-process
    :binds ((truncates-to biological))
    :realization
    (:verb "truncate"
	   :noun "truncation"
	   :etf (svo-passive)
	   :to truncates-to)) 

;; "Growth factors can turn on Ras"
#+ignore
(def-term turn-on
  :super-category bio-activate
  :verb "turn"
  :prep "on"
  :etf (svo))

(define-category undergo :specializes other-bio-process
  :binds ((process (:or bio-process  activity-with-a-purpose)))
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


(define-category upregulate
  :specializes positive-bio-control
  :realization
  (:verb   "upregulate"
           :noun "upregulation"
   :etf (svo-passive)))

(def-synonym upregulate (:verb "up-regulate" :noun "up-regulation" :etf (svo-passive)))

(def-synonym upregulate (:verb ("up regulate" :past-participle "up regulated" :past "up regulated" :present "up regulating") :etf (svo-passive)))

(def-synonym upregulate (:verb "positively regulate" :noun "positive regulation" :etf (svo-passive)))





(define-category validate
  :specializes bio-rhetorical
  :mixins (bio-whethercomp bio-ifcomp)
  :binds ((to-be biological)
          (valid-object top))
  ;; validated by the success of MEK inhibition
  :realization
    (:verb "validate"
     :noun "validation"
     :etf (svo-passive)
     :o valid-object
     :as to-be))

(define-category verify :specializes bio-rhetorical
  :mixins (bio-thatcomp)
  :realization 
  (:verb "verify" :noun "verification"
         :etf (svo-passive)))

(define-category yield :specializes positive-bio-control
    :realization
    (:verb "yield" ;; keyword: ENDS-IN-ED 
	   :etf (svo-passive)))

(def-synonym yield (:noun "yield"))


;;; verbs for clic
(define-category undo :specializes process
  :mixins (simple-action)
  :realization
  (:verb "undo"
         :etf (svo)))

;;(def-synonym undo (:verb "revert"))
