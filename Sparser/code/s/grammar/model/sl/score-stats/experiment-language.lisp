;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2020 SIFT LLC. All Rights Reserved
;;;
;;;    File: "experiment-language"
;;;  Module: "grammar/model/sl/score-stats
;;; version: October 2020

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


(define-category variable/term
  :specializes label
  :lemma (:common-noun "variable"))

(define-category variable/attribute
  :specializes attribute
  :lemma (:adjective "variable"))


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

    

