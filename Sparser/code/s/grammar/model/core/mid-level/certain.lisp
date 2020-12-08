;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2020 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "certain"
;;;   Module:  "model;core:mid-level:"
;;;  version:  November 2020

;; Broken out of Harvard-terms 11/16/20

(in-package :sparser)

(define-category certain
  :documentation "This is largely an attitude of the speaker
   toward the complement (when in adjective form). When in
   nominal form the holder of the attitude will be more explicit.
   ///Needs a notion of polarity, since many of these have
   'un' forms: 'uncertain', 'unlikely'. If we used a mixin for
   this we could have a method on 'not' that flips the polarity."
  :specializes top ;;bio-rhetorical//// need mid-level event types!!!
  ;; inherits 'statement' from bio-complement > bio-thancomp
  ;;  > bio-rhetorical. Should we restrict it
  :mixins (qualifiable ;; "quite certain", "entirely certain"
                       nominal-attribute
                       with-agent) ;; "I am confident ..."
  :realization (:adj "certain"
                :adverb "certainly"
                :s agent))

(adv "certainly" :super certain)

(adj "confident" :super certain)

(adj "sure" :super certain)

(adj "uncertain" :super certain
 :realization (:adj "uncertain" :mumble ("uncertain" adj-that-comp :c theme)))



;;--- nominal perspective

(define-category certainty
  :specializes certain
  :realization (:noun "certainty")
  :documentation "The word 'certainty' doesn't pattern like
     'likelyhood' or 'probability' but this probably does
     no substantial harm")

(noun "chance" :super certainty)

(noun "probability" :super certainty)

(adj "possible" :super certain)
(adj "likely" :super certain) ;; this is to handle uses like "it is likely that ..."
(adj "plausible" :super certain) ;; this is to handle uses like "it is likely that ..."

(adv "possibly" :super certain)

(adv "probably" :super certain)
(adv "definitely" :super certain)
(adv "potentially" :super certain)


(noun "likelihood" :super certainty)

;; modifiers -- likelihood adverbs
;; make sense here too. 
;; is likely to be mediated by
;; is likely that this possible feedback
;; will likely be useful
(define-category likely
  :mixins (raising-to-subject)
  :specializes certainty
  :realization
    (:adj "likely"
     :adverb "likely" ;;want likely to ambiguously be an adjective or adverb
     :thatcomp theme))
;; bio-relation and bio-rhetorical appear to differ mostly
;; on their value restrictions. 

(define-category unlikely
  :mixins (raising-to-subject) ;; to-comp
  :specializes certainty
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
