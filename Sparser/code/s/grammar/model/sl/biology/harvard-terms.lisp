;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "harvard-terms"
;;;  Module: "grammar/model/sl/biology/
;;; version: January 2017

;; Isolating terms, etc. that are specific to handling the texts
;; from HMS.

(in-package :sparser)


(define-category certainty :specializes bio-rhetorical
  :realization
  (:noun "certainty" :adj "certain"))

;; can't seem to get this to work -- DAVID??
;;(define-adverb "certainly" :super-category category::certainty)

(adj "sure" :super certainty)
(adj "uncertain" :super certainty)
(noun "chance" :super certainty)
(adj "confident" :super certainty)
(noun "likelihood" :super certainty)
(noun "probability" :super certainty)

(define-category scalar-variation
  :specializes bio-predication)

(adj "noisy" :super scalar-variation)
(adj "persistent" :super scalar-variation)
(adj "unchanged" :super scalar-variation)
(adj "transient" :super scalar-variation)

(noun "peak" :super bio-scalar)

(define-category bio-concentration :specializes bio-scalar
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
(eval (make-copular-def "become"))

;;;----------------------
;; failed to find a treatment for pancreatic cancer

(define-category fail :specializes aspectual-relation
  :binds ((process bio-process))
  :realization 
    (:verb "fail"  
     :etf (sv)))

;; mostly passive -- "... are found ..."
(define-category find
  :specializes bio-rhetorical
  :binds ((object biological)) ;; "found a treatment for ..."
  :realization
    (:verb ("find" :past-tense "found")
     :noun "finding" ;; to allow for "findings"
     :etf (svo-passive)
     :o object
     :mumble ("find" svo)))

;; bio-rhetorical includes bio-thatcomp
;;;----------------------




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






;;//// are these even "bio" at all?
(delete-noun-cfr (resolve "rate"))
(define-category process-rate :specializes bio-scalar ;;(noun "rate" :super bio-scalar 
                 :binds ((components biological)
                         (process bio-process))
  :realization 
  (:noun "rate"
         :for components
         :m process))

(def-synonym process-rate 
    (:noun "kinetics"))


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
(eval (make-copular-def "remain")) ;; gives it the adjective rules


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
