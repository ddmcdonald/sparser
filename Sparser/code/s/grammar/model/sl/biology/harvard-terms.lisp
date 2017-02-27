;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "harvard-terms"
;;;  Module: "grammar/model/sl/biology/
;;; version: February 2017

;; Isolating terms, etc. that are specific to handling the texts
;; from HMS.

(in-package :sparser)

;;;--------------------------------------
;;; certainty -- target for generalizing
;;;--------------------------------------

(define-category certainty
  :specializes bio-rhetorical
  ;; inherits 'statement' from bio-complement > bio-thancomp
  ;;  > bio-rhetorical. Should we restrict it
  :mixins (qualifiable) ;; "quite certain", "entirely certain"
  :realization (:noun "certainty"
                :adj "certain"))

;; --- fold in to test return value of comparatives
;; can't seem to get this to work -- DAVID??
;;(define-adverb "certainly" :super-category category::certainty)

(adj "sure" :super certainty)
(adj "uncertain" :super certainty)
;; Need a notion of polarity on 'certainty'.
;; If it's via a mixin, we can have a method on "not" that
;; flips the polarity (!!)

(adj "confident" :super certainty)
(noun "chance" :super certainty)
(noun "likelihood" :super certainty)
(noun "probability" :super certainty)

;; modifiers -- likelihood adverbs (where "likely" was)
;; make sense here too. 

;; is likely to be mediated by
;; is likely that this possible feedback
;; will likely be useful
(define-category likely
  :specializes certainty ;; bio-relation
  :realization
    (:adj "likely"
     :adverb "likely" ;;want likely to ambiguously be an adjective or adverb
     :to-comp theme
     :thatcomp theme))
;; bio-relation and bio-rhetorical appear to differ mosly
;; on their value restrictions. ///would be worth reworking
;; the display of subcat keys by what category introduces
;; them and tune accordingly

(define-category unlikely
  :specializes certainty ;;bio-relation
  :realization
    (:adj "unlikely"
     :to-comp theme
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
  :binds ((process bio-process))
  :realization 
    (:verb "fail"  
     :etf (sv)
     :to-comp process ))

;; mostly passive -- "... are found ..."
(define-category find
  :specializes bio-rhetorical
  :mixins (bio-process) ;; to allow composition as comp. of "fail"
  :binds ((object biological)) ;; "found a treatment for ..."
  :realization
    (:verb ("find" :past-tense "found")
     :noun "finding" ;; to allow for "findings"
     :etf (svo-passive)
     :o object))

;; bio-rhetorical includes bio-thatcomp
;;;----------------------


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

(define-category increase
  :specializes positive-bio-control
  :restrict ((object (:or biological scalar-quality)))
  :realization
    (:verb ("increase" :third-singular "increases"  :past-tense "increased"
            :present-participle "increasing")
     :etf (svo-passive)
     :for object
     :in object
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

;; Potentially problematic since the plural will misparse
;; "monoubiquitination decreases". Committing horrible hack
;; of putting in a dummy plural to circumvent that.
;; When we finally encounter are legitimate use of the
;; plural noun form we'll have to reconsider all this.
(def-synonym decrease (:noun ("decrease" :plural "ddddecrease")))



(define-category reach :specializes bio-relation
  :restrict ((subject (:or scalar-quality biological))
             (theme (:or scalar-quality measurement)))
  :realization
  (:verb "reach"
         :etf (svo)
         :o theme))

(define-category remain :specializes be
  :mixins (bio-relation)
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
