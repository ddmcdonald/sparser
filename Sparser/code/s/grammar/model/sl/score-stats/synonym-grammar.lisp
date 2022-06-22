;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2022 SIFT LLC. All Rights Reserved
;;;
;;;    File: "synonym-grammar"
;;;  Module: "grammar/model/sl/score-stats
;;; version: June 2022

;; Started 6/7/22. Intended to hold all the definitions, etc needed
;; for the synonym project in one place. When we like them they
;; should be disbursed. N.b. this is one of the last files loaded.

(in-package :sparser)

(defun explore-synonyms ()) ;; for meta-dot

;;-- "chickens" -- mid-level/organisms

(def-indiv-with-id bird "chicken" "NCIT:C14193" :name "chicken")
;; Gallus gallus - common domestic fowl
;; https://ncithesaurus.nci.nih.gov/ncitbrowser/  ConceptReport.jsp?dictionary=NCI_Thesaurus&version=22.05e&ns=ncit&code=C14193&key=n1216615523&b=1&n=null


(delete-rules-of-category 'modify)
;; in general-verbs, applies to molecular-location as bio-control.
;; Need to switch/expose it in any bio-heavy domain

(define-category simple-modify
  :specializes perdurant ;/// modify < transformation < event-of-change
  :mixins (action-verb)
  :realization (:verb "modify"
                :to-comp purpose) ; generalize?
  :documentation "Unmarked change to the :patient, very broad v/r")

;;-- "stop"  --> standard verbs dossier
(define-category stop
  :specializes inhibit-effect ;; < event-of-causation < event-of-action < event-of-change
  :mixins (action-on-eventuality) ;  unrestricted actor, perdurant theme
  :realization (:verb ("stop" :tensed/singular "stops"  :infinitive "stop"
                           :present-participle "stopping" :past-tense "stopped" ))
  :documentation "This is the 'stop' as in stop/cease/quit some activity. There is
 another reading of stopping forward motion as in 'come to a stop'. It's essentially
 the same concept. Will need a notion of current topic/situation/semantic-field
 before we can support all of them.")
#| The definition of "stop" in comlex-categories which has prepositional
variations "stop by", "stop off", "stop over", and "stop up". Except perhaps for
the last one, these expose a sense of "stop" as the equivalent of "get together" socially. |#

;;--- "spread" --> sl/disease/spread
(delete-rules-of-category 'spread) ; in bio;attributes
(define-category spread
  :specializes disperse-generic
  :mixins (action-verb) ; svo with an actor and a patient
  :restrict ((patient physical-object))
  :realization (:verb ("spread" :tensed/singular "spreads"
                                :infinitive "spread" :past-tense "spread")
                :noun "spread"
                :of patient  ) ;/// needs subcat pattern
  :documentation "///Levin: 11.2 spray/load verbs: 'Someone spread something' and
 'somthing spreads (rapidly)'
  In another reading it is a large array/expanse of something: food laid out for
  a banquet, a ranch in the west.
  Has a movement reading with most of its prepositions 'out', 'through', etc. ")

;;-- "stop"  --> standard verbs dossier
(define-category prevent
  :specializes inhibit-effect
  :mixins (double-np-ing)
  :realization
    (:verb "prevent"))


;;----------------
;; Women exposed to second-hand smoke while pregnant
;; maternal secondhand smoke exposure during pregnancy

(delete-rules-of-category 'experimental-condition) ; in bio;taxonomy
(define-category condition ;; ----> mid-level/things ??
  :specializes state ;/// look up more specific eci
  :realization (:noun "condition")
  :documentation "For the sense of 'what condition is this used book in?'
 with answers like 'good' or 'poor'. Also 'fresh' vs. 'stale' fruit.
 Stamp collectors talk about being in 'mint condition'. Not the verb
 sense of conditioning leather (to make it softer) or experimental condition
 with its a set of properties of things that effect the experiment.")

(define-category second-hand ;----> attributes ?
  :specializes condition
  :realization (:adj ("second-hand" "secondhand"))
  :documentation "A second-hand book or car has been used before. 
 Colins: 'things that are not new and have been owned by someone else'.
 Second-hand smoke is idiomatic, except that when we're exposed to it
 the point is that we breath it in.")


;;------------------
;; Breast-fed babies turn into better behaved children
;; Breastfeeding for four months or more is associated with fewer behavioural problems in children


