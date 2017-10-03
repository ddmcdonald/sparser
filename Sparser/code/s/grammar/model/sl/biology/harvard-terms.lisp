;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "harvard-terms"
;;;  Module: "grammar/model/sl/biology/
;;; version: September 2017

;; Isolating terms, etc. that are specific to handling the texts
;; from HMS.

(in-package :sparser)

;;;--------------------------------------
;;; certainty -- target for generalizing
;;;--------------------------------------

;;--- adjective perspective

(define-category certain
  :specializes bio-rhetorical
  ;; inherits 'statement' from bio-complement > bio-thancomp
  ;;  > bio-rhetorical. Should we restrict it
  :mixins (qualifiable) ;; "quite certain", "entirely certain"
           ;;adj-complement)
  :documentation "Using just the adjective reading goes with
    the reading of the canonical category that it's an
    attitude of the speaker."
  :realization (:adj "certain"
                :mumble ("certain" adj-that-comp :c statement)))
#| Dropping "certainty" (noun) and "certainly" (adv) on the floor
to not muddy NLG story on the adjective. ddm 9/12/17
;; ... :noun "certainty" |#

(adj "confident" :super certain
 :realization (:adj "confident" :mumble ("confident" adj-that-comp :c statement)))
(adj "sure" :super certain)
(adj "uncertain" :super certain)

;; Need a notion of polarity on certainty.
;; If it's via a mixin, we can have a method on "not" that
;; flips the polarity (!!)

;;(define-adverb "certainly" :super-category category::certainty) 
;; can't seem to get this to work -- DAVID??
;; n.b. "certainly" is an adverb in modifiers - default superc  


;;--- nominal perspective
#| Wasn't a good way to determine desired POS if we included
noun or adverb reading on certain, as before. But there's the
other framing that's based on nouns. Hacking up an equivalent 
of 'certain'. Not particularly thought through |#
;; copies original except for nlg
(define-category certainty
  :specializes bio-rhetorical
  :realization (:noun "certainty")
  :documentation "The word 'certainty' doesn't pattern like
     'likelyhood' or 'probability' but this probably does
     no substantial harm")

(noun "chance" :super certainty)
(noun "likelihood" :super certainty)
(noun "probability" :super certainty)

;; modifiers -- likelihood adverbs (where "likely" was)
;; make sense here too. 



;; is likely to be mediated by
;; is likely that this possible feedback
;; will likely be useful
(define-category likely
  :mixins (raising-to-subject)
  :specializes certainty ;; bio-relation
  :realization
    (:adj "likely"
     :adverb "likely" ;;want likely to ambiguously be an adjective or adverb
     :thatcomp theme))
;; bio-relation and bio-rhetorical appear to differ mostly
;; on their value restrictions. 

(define-category unlikely
  :mixins (raising-to-subject)
  :specializes certainty ;;bio-relation
  :realization
    (:adj "unlikely"
     :thatcomp theme))
;; almost never an adverb in our texts
;; need a good way to distinguish the cases
;; "is likely to ..." vs "is likely due..."
;; want the POS to be based on category of next word...
;;
;; These still fail in "It is likely that this possible feedback loop..."
;; and "This effect is likely to be mediated..."

;; presently has to follow all the definitions
(define-canonical-category 'certainty)




;;;---------------------

(define-category scalar-variation
  :specializes bio-predication)

(adj "noisy" :super scalar-variation)
(adj "persistent" :super scalar-variation)
(adj "unchanged" :super scalar-variation)
(adj "transient" :super scalar-variation)

(noun "peak" :super bio-scalar)

(define-category bio-concentration
  :specializes bio-scalar
  :realization
    (:noun "concentration"))


;; Verbs added temporarily for Localization articles
;; -- to be reviewed and corrected
(define-category become :specializes be
  :mixins (bio-rhetorical)
  :realization
    (:verb ("become" :third-singular "becomes" :past-tense "became"
		     :present-participle "becoming")
      :etf (svo)))
(make-copular-def "become")

;;;----------------------
;; failed to find a treatment for pancreatic cancer

(define-category fail :specializes aspectual-relation
  :restrict ((theme bio-process))
  :realization 
    (:verb "fail"  
     :etf (sv) ))


;; mostly passive -- "... are found ..."
(define-category bio-find
  :specializes bio-process
  :mixins (bio-rhetorical) ;; to allow composition as comp. of "fail"
  :binds ((object biological)) ;; "found a treatment for ..."
  :realization
    (:verb ("find" :past-tense "found")
     :etf (svo-passive)
     :o object))

(define-category finding
  :specializes bio-process
  :mixins (bio-rhetorical)
  :realization (:noun "finding")) ;; really for "findings"
#| From show-sents
(aspp2 62
 "These findings established ASPP2 as a tumor suppressor and an activator
 of p53 family.") 
(dry-run 13 "These data support our in vitro findings that monoubiquitination
increases the population of active, GTP–bound Ras through a defect in
sensitivity to GAP–mediated regulation.") 
(dec-test 19
 "The mechanism we describe is another paradigm of RAF activation downstream 
of RAS and based on our findings, we propose the following mechanism 
by which this occurs.") |#


(define-category bio-amount :specializes bio-scalar
  :realization
  (:noun "amount"))


(define-category decrease
  :specializes negative-bio-control
  :binds ((theme biological)
          (level (:or measurement bio-scalar)))
  :realization
  (:verb "decrease" 
   :etf (svo-passive)
   :for theme
   :in theme
   :to level))

(def-synonym decrease (:verb "drop" :etf (svo-passive)))
(def-synonym decrease (:verb ("taper off" :present-participle "tapering off"
                              :past-tense "taper off")
                       :etf (sv)))

;; Potentially problematic since the plural will misparse
;; "monoubiquitination decreases". Committing horrible hack
;; of putting in a dummy plural to circumvent that.
;; When we finally encounter are legitimate use of the
;; plural noun form we'll have to reconsider all this.
(def-synonym decrease (:noun ("decrease" :plural "ddddecrease")))


(define-category increase
  :specializes positive-bio-control
  :restrict ((object (:or ;;bio-chemical-entity
                      bio-entity ;; allows for "population"
                      scalar-quality)))
  :realization
    (:verb ("increase" :third-singular "increases"  :past-tense "increased"
            :present-participle "increasing")
     :etf (svo-passive)
     :for object
     :in object
     :in affected-process
     :of object
     :optional-object t))
;; DAVID -- why can't I put this in the previous definition -- the NOUN form gets clobbered
(def-synonym increase
    (:noun "increase"))



;; (p/s "Decrease the binding rate of NRAS and BRAF.")
(delete-noun-cfr (resolve "rate")) ;;/// override it
(define-category process-rate
 :specializes bio-scalar
 :binds ((components biological)
         (process bio-process))
 :realization 
    (:noun "rate"
     :for components
     :m process))

(def-synonym process-rate (:noun "kinetics"))


#|
;; binding rate, dissociation rate, catalysis rate (from Ben Gyori)
(define-category binding-rate :specializes process-rate
		 :realization (:noun "binding rate"))

(define-category dissociation-rate :specializes process-rate
		 :realization (:noun "dissociation rate"))

(define-category catalysis-rate :specializes process-rate
		 :realization (:noun "catalysis rate"))
|#





(define-category make-double :specializes positive-bio-control
  :restrict ((object (:or biological scalar-quality)))
  :binds ((theme biological)
          (level (:or measurement bio-scalar)))
  :realization
  (:verb "double" 
         :etf (svo-passive)
         :for theme
         :in theme
         :to level))



(define-category reach :specializes bio-relation
  :restrict ((participant (:or scalar-quality biological))
             (theme (:or scalar-quality measurement)))
  :realization
  (:verb "reach"
         :etf (svo)))

(define-category remain :specializes be
  :mixins (bio-relation)
  :restrict ((participant biological)) 
  ;; got 'subject' from be where there is no restriction, though
  ;; there is a subject v/r on bio-relation
  :realization
    (:verb "remain" ;; keyword: ENDS-IN-ED 
	   :etf (sv)
           ;; remains to be determined
           :to-comp theme))
(make-copular-def "remain") ;; gives it the adjective rules

(define-category follow :specializes bio-event-relation
                 ;; this is intended to suppress definitions of "followed" and "follows"
  :realization
  (:verb ("follow" :past-tense "followed" :present-participle "followingxx"
                   :third-singular "follows")
         :etf (svo-passive)))

(define-category precede :specializes bio-event-relation
                 ;; this is intended to suppress definitions of "followed" and "follows"
  :realization
  (:verb "precede"
         :etf (svo-passive)))

;; "vanish" comes in from Comlex
#|(:source :comlex :comlex ((:subc ((pp :pval ("from" "into")) (intrans))))
 :inflection-of-verb #<word "vanishes"> :verb-inflections
 (#<word "vanishing"> #<word "vanished"> #<word "vanishes">)) |#

;; e.g. displayed sustained ERK phosphorylation
(define-category sustained :specializes scalar-variation
   :binds ((theme (:or process scalar-quality))
           (level scalar-quality)
           (above-level scalar-quality))
   :realization
   (:verb "sustain" ;; keyword: ENDS-IN-ED 
          :etf (svo-passive)
          :adj "sustained"
          :o theme
          :at level
          :above above-level))
