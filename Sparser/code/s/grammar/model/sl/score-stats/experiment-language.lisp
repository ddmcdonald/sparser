;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2020-2022 SIFT LLC. All Rights Reserved
;;;
;;;    File: "experiment-language"
;;;  Module: "grammar/model/sl/score-stats
;;; version: June 2022

;; Started 10/29/20 to collect vocabulary and relations
;; that are used in writing about conducting and evaluating
;; experiments

(in-package :sparser)


#|
(p/s "Participants were 57 female and 28 male persons, most of whom were students at the Heinrich-Heine-Universität Düsseldorf.")
[Participants ][were ][57 female ]and [28 male persons], [most ]of [whom ][were ][students ]at [the Heinrich-Heine-Universität Düsseldorf]
|#


#|
SP> (p "The within-subject independent variables were behavioral history (cheating, irrelevant, trustworthy) and whether the behavioral description
was exceptional or ordinary.")
[The within-subject independent variables ][were ][behavioral history ](cheating, irrelevant, trustworthy) and whether [the behavioral description
][was ][exceptional or ordinary] |#

(define-category experiment-design :specializes state
  :mixins (has-uid) 
  :realization
  (:noun ("experiment design" "experiment design")))

(define-category within-subjects :specializes experiment-design
  :realization (:noun "within-subjects"))

(define-category between-subjects :specializes experiment-design
  :realization (:noun "between-subjects"))

(define-category variable/term
  :binds ((experimental-design experiment-design))
  :specializes label
  :realization (:noun "variable"
                :m experimental-design))

(define-category covariate :specializes variable/term
  :realization (:noun "covariate"))

(define-category variable/attribute
  :specializes attribute
  :lemma (:adjective "variable"))


#+ignore ;; experimental-condition needs to be filled out!!! Laurel?
(define-category within-subject
  :specializes experimental-condition ; << need a lighterweigh version
  :lemma (:adjective "within-subject"))


;; Maybe some kind of quality -- like in a product review?
(define-adjective "exceptional" :super-category 'modifier)
(define-adjective "ordinary" :super-category 'modifier)

;; We could cover the conjunction with a da rule
;;   :pattern ( s conjunction whethercomp )
;; But the actual conjunction is after the verb:
;;   {behavoral history ..} and {whether ...}

#|
(p "The authors decided to carry out this study using an internet based survey due to the current national strict measures on the face to face communication")
[The authors ][decided ]to [carry ]out [this study ][using ][an internet based survey ]due to the current national strict [measures ]on [the face ]to [face ][communication] |#

;; "study" is in taxonomy as 'evidence'
;; "measure" defined as a verb in taxonomy

#| (p "We began with 16,805 women who were age 18 to 40 years when first observed in the survey, lived in a couple household, and were followed from the first time they began working")
[We ][began ]with [16,805 women ][who ][were ][age ]18 to [40 years ]when [first observed ]in [the survey], [lived ]in [a couple household], and [were followed ]from [the first time they ][began ][working]  |#

    


#+ignore ;; now moved to model/core/mid-level/things.lisp
(define-category evidence
  :specializes information
  :binds ((fact #|biological|#))
  :documentation "Evidence provides support for a proposition
    or conjecture. Calling it just 'information' is to miss
    some potentially quite interesting intermediate categories.
    But we can come back to it"
  :realization
    ;; takes a statement, has a :thatcomp realization
    (:noun "evidence"
           :for fact
           :of fact))





;; These are activities that accumulate evidence
;; to test hypotheses and draw conclusions

;; They are much more specific that perdurant
;; but this is a rush job -- give them both
;; a supercategory where we spell all that out

(define-category experiment
  :specializes activity-with-a-purpose
  :realization (:noun "experiment"))

(define-category study :specializes directed-activity-with-a-purpose
  :mixins (purposive-activity-with-instrument )
  :binds ((participant top))
  :realization
  (:noun ("study" :plural "studies")
   :on participant
   :in participant))


(define-category pilot :specializes study
  :binds ((object (:or bio-rhetorical biological)) ;; "test X on <participant>"
          (presence-of biological))
  :realization
  (:verb ("pilot" :past-tense "piloted" :past-participle "piloted" :present-participle "piloted")
         :etf (svo-passive)
         :for presence-of
   :o object))

(def-synonym pilot (:noun "pilot study"))
