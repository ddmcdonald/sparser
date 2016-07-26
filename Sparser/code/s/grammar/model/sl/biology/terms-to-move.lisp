;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2016 SIFT LLC. All Rights Reserved
;;;
;;;    File: "term-to-move"
;;;  Module: "grammar/model/sl/biology/
;;; version: June 2016

#| These are definitions that were in terms.lisp. They need
to be moved to more general places and be modified to no longer
be biology specific, since they aren't. |#



(define-adverb "barely")
(define-adverb "a bit more")
(define-adverb "even")
(define-adverb "primarily") ;; keyword: ENDS-IN-LY
(define-adverb "uniquely")

(define-adverb "next")
(define-adverb "finally")


(adj "downstream" :super pathway-direction
  :realization 
  (:adj "downstream"))
(noun "upstream" :super pathway-direction
      :realization
      (:noun "upstream"))

(noun "route" :super bio-mechanism)

(adj "also known as" :super bio-relation)
(define-adverb "in part")
(define-adverb "namely")

(noun "surface" :super bio-entity)


(find-or-make-individual 'qualitative-rate :name "slow")
(adj "lesser" :super bio-predication)
;;> Error: Unexpected POS marker: 'QUANT' on #<word "lesser">
;; While executing: #<STANDARD-METHOD UNAMBIGUOUS-COMLEX-PRIMED-DECODER (WORD T)>, in process Listener(4).


(noun "the next day" :specializes abstract)

(define-category orientation-top
  :realization
  (:noun "top"))
(define-category orientation-bottom
  :realization
  (:noun "bottom"))
(define-category orientation-left
  :realization
  (:noun "left"))
(define-category orientation-right
  :realization
  (:noun "right"))

;; want something for magnitude, size, etc. TO-DO
(adj "single" :super abstract)
(adj "double" :super abstract)

#|   ###################################################
;; merge this attrivute predicate with its
;; set of values in core/qualities/size.lisp
(define-category bio-size :specializes size-of
  :binds ((measured-item biological))
  :realization
  (:noun "size" :of measured-item))  |#

;; "high";;ambiguous between (ADJECTIVE ADVERB)


;; led to incorrect Comlex stemming
(noun "asides" :super abstract)
(noun "backs" :super abstract)
(noun "cans" :super abstract)
(noun "downs" :super abstract)
(noun "ups" :super abstract)



;;--- bio-relation

(define-category ability :specializes bio-relation
      :binds ((ability bio-process))
      :realization
      (:noun "ability" :adj "able"
             :to-comp ability
             :of subject
             :to ability
	     :control-relations (subject ability)))

(define-category capability :specializes ability
  :restrict ((subject bio-entity))
  :realization
  (:noun "capability" :adj "capable"
	 :of ability
	 :control-relations (subject ability)))

(adj "common" :super bio-relation
  :realization 
  (:adj "common"
        :to theme))

(adj "critical" :super bio-relation
  :realization 
  (:adj "critical"
        :to theme
        :for theme))
(define-adverb "critically")

(define-category exclusivity :specializes bio-relation ;; this is actually a lot more general
  :binds ((alternative biological))
  :realization
  (:noun "exclusivity" :adj "exclusive"
	 :with alternative))


(define-category positive :specializes bio-relation
  :realization
  (:adj "positive"
	:for theme))
(define-category negative :specializes bio-relation
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


;;--- bio-scalar

(define-category bio-amount :specializes bio-scalar
  :realization
  (:noun "amount"))

(define-category duration :specializes bio-scalar
  :restrict ((subject (:or process bio-method bio-mechanism)))
  :realization
  (:noun "duration"))

(noun "length" :super bio-scalar)
(noun "level" :super bio-scalar) ;;levels of incorporated 32P (January sentence 34)
(define-category period :specializes amount-of-time
  :binds ((context bio-context)
          (state bio-state))
  :realization (:noun "period"
                      :m context
                      :in context
                      :in state))

(noun ("period of time" :plural "periods of time") :super period)


;;--- bio-rhetorical

(noun "issue" :super bio-rhetorical) ;; not quite, but what 

(noun "hint" :super bio-rhetorical)

(delete-adj-cfr (resolve/make "important"))
(define-category importance :specializes bio-rhetorical
      :realization
      (:noun "importance"
             :adj "important"))

(define-category significance :specializes bio-rhetorical
      :realization
      (:noun "significance"
             :adj "significant"))

(define-category possibility :specializes bio-rhetorical
      :mixins (bio-thatcomp)
      :realization
      (:noun "possibility"))

(adj "unclear" :super bio-rhetorical)

(adj "unexpected" :super bio-rhetorical)
(define-adverb "unexpectedly") ;; TO-DO wants to be  :super-category 'bio-rhetorical)


;;--- bio-predication

(adj "best" :super bio-predication)

(adj "close" :super bio-predication)
(adj "closed" :super bio-predication)

(adj "compelling" :super bio-predication)

(adj "current" :super bio-predication)

(adj "dead" :super bio-predication)
(adj "deadliest" :super bio-predication) ;;//// no -- define shortcut, morphology extensions
;; to define the whole comparative paradigm

(delete-adj-cfr (resolve/make "different"))
(adj "different" :super bio-relation)
(noun "difference" :super biological ;;THIS IS DONE SIMPLY TO ALLOW THE VERB ALTER TO TAKE DIFFERENCE AS A SUBJECT
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
;;Error: Comlex -- new POS combination for "#<word "forward">:: (ADJECTIVE ADVERB ADVPART NOUN VERB)
(adj "full" :super bio-predication)
(adj "further" :super bio-predication)
(define-adverb "further")


(adj "high" :super bio-predication)
(define-category HIGHER :specializes bio-relation
  :realization 
  (:adj "higher"))
(adj "initial" :super bio-predication)
(adj "least" :super bio-predication)

(delete-adj-cfr (resolve "novel"))
(adj "novel" :super bio-predication)

(adj "rapid" :super bio-predication)

(define-adverb "readily")


(adj "spatial" :super bio-predication)


(adj "wide" :super bio-predication)

(adj "long" :super bio-predication)
(adj "long-term" :super bio-predication)


(adj "low" :super bio-predication)
(define-comparative "lower")
;;--- "lower"  ("raise")
;;/// N.b. the adjective variant is commented out in the modifiers dossier
;; "(RasGEFs) lower the transition energy for ..."
(adj "measurable" :super bio-predication) ;; keyword: (able ADJ) 
(adj "same" :super bio-predication)


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
  :realization 
  (:adj "independent"))

(define-category lack :specializes bio-relation
                 :realization (:noun "lack" :of theme))


(adj "similar" :super bio-relation
  :realization 
  (:noun "similarity"
         :to theme))

(adj "related" :super similar)

(define-adverb "similarly")

;;is likely to be mediated by
;;is likely that this possible feedback
;;will likely be useful
(define-category likely :specializes bio-relation
  :realization
  (:adj "likely" 
        :to-comp theme
	:thatcomp theme))
;; almost never an adverb in our texts
;; need a good way to distinguish the cases
;; "is likely to ..." vs "is likely due..."
;; want the POS to be based on category of next word...
;;(define-adverb "likely")



;;---- other

(noun "content" :super measurement)

(delete-noun-cfr (resolve/make "number"))
(delete-noun-cfr (resolve/make "numbers"))
(define-category bio-number :specializes measurement
  :realization
  (:noun "number"))


(noun "example" :super variant)
(noun "form" :super variant)

(noun "position" :super residue-on-protein)

(noun "region" :super molecular-location
      :binds ((bounds biological))
      :realization
      (:noun "region"
             :between bounds))


(noun "activity" :super other-bio-process
      :binds ((theme biological))
      :realization
      (:noun "activity"
             :of subject
             :towards theme
             :on theme))

(noun "behavior" :super bio-quality)
