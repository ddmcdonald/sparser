;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2016-2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "term-to-move"
;;;  Module: "grammar/model/sl/biology/
;;; version: January 2017

#| These are definitions that were in terms.lisp. They need
to be moved to more general places and be modified to no longer
be biology specific, since they aren't. |#




(define-adverb "a bit more")
(define-adverb "even")
(define-adverb "primarily") ;; keyword: ENDS-IN-LY



(define-adverb "in part")
(define-adverb "namely")



(define-adverb "readily")
(define-adverb "pretty" :super-category 'intensifier)

;; want to force the super-category of "linguistic" to NOT be MODIFIER
(adj "linguistic" :super abstract)

(noun "route" :super bio-mechanism)

(adj "also known as" :super bio-relation)


(noun "surface" :super bio-entity)



(adj "lesser" :super bio-predication)


;;---- time

(noun "the next day" :specializes time)
(noun "p.i" :specializes time) ;; post-infection!

(define-category time-course :specializes bio-scalar-attribute ;; really? maybe just attribute
  :realization 
  (:noun "time course"))
;; adapt to go into core/time/amounts.lisp 
(define-category period :specializes amount-of-time
  :binds ((context bio-context)
          (state bio-state))
  :realization (:noun "period"
                      :m context
                      :in context
                      :in state))

(noun ("period of time" :plural "periods of time") :super period)



(define-category high :specializes predication
  :binds ((theme (:or scalar measurement biological)))
  :realization
  (:adj "high"
        :s theme))

(define-category low :specializes predication
  :binds ((theme (:or scalar measurement biological)))
  :realization
  (:adj "low"
        :s theme)) 

(define-category noisy :specializes predication
  :binds ((theme (:or scalar measurement biological)))
  :realization
  (:adj "noisy"
        :s theme))
(define-category persistent :specializes predication
  :binds ((theme (:or scalar measurement biological)))
  :realization
  (:adj "persistent"
        :s theme))
(define-category unchanged :specializes predication
   :binds ((theme (:or scalar measurement biological)))
  :realization
   (:adj "unchanged"
         :s theme)
   )
(define-category transient :specializes predication
   :binds ((theme (:or scalar measurement biological)))
  :realization
   (:adj "transient"
         :s theme))

                  

                  


#+ignore(define-comparative "lower") ;; conflicts with definition in verbs.lisp
;;--- "lower"  ("raise")
;;/// N.b. the adjective variant is commented out in the modifiers dossier
;; "(RasGEFs) lower the transition energy for ..."

;;---- near-term candidates for replacing with attribute-based interpretation


(adj "rapid" :super bio-predication)
(adj "same" :super bio-predication)

;;---- likely to want a different interpretation
;;     when the attribute-value "high" is available
(define-category high-enough :specializes bio-predication
  :binds ((result-or-purpose biological))
  :mixins (post-adj)
  :realization
  (:adj "high enough"
        :to-comp result-or-purpose))

(define-category low-enough :specializes bio-predication
  :binds ((result-or-purpose biological))
  :mixins (post-adj)
  :realization
     (:adj "low enough"
      :to-comp result-or-purpose))

(adj "high-activity" :super bio-predication)
(adj "high-throughput" :super bio-predication)




;; want something for magnitude, size, etc. TO-DO
;; move away from directly under category::abstract
(adj "single" :super bio-predication) 
(adj "double" :super bio-predication)

;; led to incorrect Comlex stemming
(define-category block-bad-stemming :specializes linguistic)
(noun "asides" :super block-bad-stemming)
(noun "backs" :super block-bad-stemming)
(noun "cans" :super block-bad-stemming)
(noun "downs" :super block-bad-stemming)
(noun "ups" :super block-bad-stemming)



;;--- bio-relation

(define-category ability :specializes bio-relation
   :mixins (control-verb-intrans)
   :binds ((ability bio-process))
   :realization (:noun "ability"
                       :adj "able"
                       :of theme
                       :to ability))

(define-category capability :specializes ability
  :restrict ((theme bio-entity))
  :realization (:noun "capability"
                :adj "capable"
                :of ability))

(adj "common" :super bio-relation
  :realization 
    (:to patient))
(adj "in-common" :super bio-relation
  :adj "in common"
  :realization (:to patient))
;;/// add "with" adjunct ?

(define-category critical :specializes bio-relation
  :realization 
    (:adj "critical"
     :adv "critically"
     :to participant
     :for participant))

(define-category exclusivity :specializes bio-relation 
  ;; this is actually a lot more general
  :binds ((alternative biological))
  :realization
    (:noun "exclusivity" 
     :adj "exclusive"
     :with alternative))

(define-category mutual-exclusivity :specializes bio-relation 
  ;; this is actually a lot more general
  :binds ((alternative biological))
  :realization
    (:adj "mutually exclusive"
          :with alternative
          :for disease
          :in disease))


(define-category positive :specializes bio-relation
  :realization
    (:adj "positive"
          :for theme))
(def-synonym positive (:noun "+"))

(define-category value-is-negative :specializes bio-relation
  ;; 'negative' is the category that represents "no" and "not"
  ;; in the tense model. They're not the same thing.               
  :realization
  (:adj "negative"
   :for theme))


(define-category true :specializes bio-relation
  :realization
    (:adj "true"
     :for theme))
(define-category false :specializes bio-relation
  :realization
    (:adj "false"
          :for theme))

(adj "prior" :super bio-relation
  :binds ((prior-event  bio-process))
  :realization (:to prior-event))



(define-category threshold :specializes bio-scalar-attribute
  :realization (:noun "threshold"))

(define-category duration :specializes bio-scalar-attribute
  :binds ((theme (:or process bio-method bio-mechanism)))
  :realization
    (:noun "duration"))

;;--- bio-rhetorical

(noun "issue" :super bio-rhetorical) ;; not quite, but what 

(noun "hint" :super bio-rhetorical)

(delete-adj-cfr (resolve "important"))
(define-category importance :specializes bio-rhetorical
  :realization
    (:noun "importance"
     :adj "important"))

(define-category of-interest :specializes bio-rhetorical
  :realization  (:adj "of interest"))

(define-category significance :specializes bio-rhetorical
  :realization
    (:noun "significance"
           :adj "significant"
           :of agent))

(define-category possibility :specializes bio-rhetorical
  :mixins (bio-thatcomp)
  :realization
     (:noun "possibility"))

(adj "unclear" :super bio-rhetorical)

(adj "unexpected" :super bio-rhetorical)
(define-adverb "unexpectedly" :super-category 'bio-rhetorical)


;;--- bio-predication


(adj "close" :super bio-predication)
(adj "closed" :super bio-predication)

(adj "compelling" :super bio-predication)

(adj "current" :super bio-predication)

(adj "dead" :super bio-predication)
(adj "deadliest" :super bio-predication)

(delete-adj-cfr (resolve/make "different"))
(adj "different" :super bio-relation)
(noun "difference" :super biological
  ;;THIS IS DONE SIMPLY TO ALLOW THE VERB ALTER TO TAKE DIFFERENCE AS A SUBJECT
 ;; see sentence 7 of January test "...the differences between the enzymatic and chemical ubiquitination linkers (seven bonds and five bonds, respectively) do not alter GAP–responsiveness..."
 :binds ((compared biological))
 :realization
   (:noun "difference"
    :between compared))

(adj "early" :super bio-predication)

(adj  "exclusive" :super bio-predication)

(delete-adj-cfr (resolve "direct"))
(adj "direct" :super bio-predication)

(adj "forward" :super bio-predication) ;; added to avoid problem with complex lookup
;;Error: Comlex -- new POS combination for
;; "#<word "forward">:: (ADJECTIVE ADVERB ADVPART NOUN VERB)
(adj "full" :super bio-predication)


(adj "further" :super bio-predication)
(define-adverb "further")

(adj bio-initial :adj "initial" :super bio-predication)
;; Avoid smashing the category 'initial' in core/names/initials.lisp
;; Usage in bio appears to be as a sequencer: first vs. subsequent

(adj "least" :super bio-predication)

(delete-adj-cfr (resolve "novel"))
(adj "novel" :super bio-predication)



(adj "spatial" :super bio-predication)


(adj "long-term" :super bio-predication)


(adj "measurable" :super bio-predication) ;; keyword: (able ADJ) 


;;---- bio-relation

(adj "consistent" :super bio-relation
  :realization 
    (:adj "consistent"
     :with theme))

(adj "identical" :super bio-relation
   :realization
     (:adj "identical"
      :to theme))

(adj "independent" :super bio-relation
  :realization (:adj "independent"))

(define-category lack :specializes bio-relation
  :realization (:noun "lack" :of theme))


(define-category similar :specializes bio-relation
  :mixins (post-adj)
  :realization 
    (:noun "similarity"
     :adj "similar"
     :adv "similarly"
     :to patient))

;;(define-adverb "similarly")

(adj "related" :super similar)





;;---- other

(noun "content" :super measurement)

(delete-noun-cfr (resolve "number"))
(delete-noun-cfr (resolve "numbers"))
(define-category count-of :specializes measurement
  :binds ((item-counted biological)); ; needs to be COUNT-NOUN
  :realization
    (:noun "number"
         :of item-counted))


(noun "example" :super variant)

(noun "homolog" :super variant)
(def-synonym homolog (:noun "homologue"))

(noun "position" :super residue-on-protein)

(define-category region-of-molecule
  :specializes molecular-location
  :binds ((bounds biological))
  :realization
    (:noun "region"
     :between bounds))


(noun "behavior" :super bio-quality)

(define-category compare :specializes bio-method
  :binds ((comparator biological)
          (by (:or bio-method biological)))
  :realization 
  (:verb "compare"
   :noun "comparison"
   :adj "comparable"
   :etf (svo-passive)
   :to comparator
   :with comparator))
