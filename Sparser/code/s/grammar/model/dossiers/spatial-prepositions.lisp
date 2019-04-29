;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1999,2019  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "spatial prepositions"
;;;   Module:  "model;dossiers:"
;;;  version:  April 2019

;; n.b. remember that we also have standalone-directions ("left") and adjectival
;; directions ("lefward"). All of these 'spatial prepositions' create locations
;; by combining with an np: "over the house"

;; initiated 11/25/99 by moving in selected prepositions from [words;prepositions2].
;; 8/13/07 Added "beyond" and "past"
;; 6/26/09 Added "out"
;; 7/23/09 Added "ahead"

(in-package :sparser)


(define-preposition "abaft" :form 'spatial-preposition)
(define-preposition "abeam" :form 'spatial-preposition)
(define-preposition "aboard" :form 'spatial-preposition)

(define-preposition "above" :form 'spatial-preposition)
(define-preposition "across" :form 'spatial-preposition) ;; spatial?
(define-preposition "across from" :form 'spatial-preposition)
(define-preposition "afore" :form 'spatio-temporal-preposition)

(when nil ;;current-script :biology)
  ;; => sequencer in modifiers
  (define-preposition "after" :form 'spatio-temporal-preposition))

(define-preposition "against" :form 'spatial-preposition) ;;what about non-spatial sense
;; Seems like an adverb (define-preposition "ahead" :form 'spatial-preposition)
(define-preposition "ahead of" :form 'spatial-preposition)
(define-preposition "along" :form 'spatial-preposition)

(define-preposition "at" :form 'spatial-preposition) ;;what about "at 5PM"
(define-preposition "at or above")
(define-preposition "at or below")

(define-preposition "atop" :form 'spatial-preposition)

(when nil ;;(current-script :biology)
  ;; => sequencer in modifiers
  (define-preposition "before" :form 'spatio-temporal-preposition))

(define-preposition "behind" :form 'spatial-preposition)
(define-preposition "below" :form 'spatial-preposition)
(define-preposition "beneath" :form 'spatial-preposition)
(define-preposition "beside" :form 'spatial-preposition)
(define-preposition "between" :form 'spatial-preposition)
(define-preposition "beyond" :form 'spatial-preposition)

(define-preposition "close to" :form 'spatial-preposition)
;; can also be temporal, even an approximator?

(define-preposition "down"  :form 'spatial-preposition) ;; as in, 'down the street' ?

(define-preposition "in"  :form 'spatial-preposition)
(define-preposition "in back of" :form 'spatial-preposition)
(define-preposition "in between" :form 'spatial-preposition) ;;also adverb "..and everything in between"
(define-preposition "in front of" :form 'spatial-preposition)

(define-preposition "inside" :form 'spatial-preposition)
(define-preposition "inside of" :form 'spatial-preposition)

(define-preposition "into" :form 'spatial-preposition)

(define-preposition "near" :form 'spatial-preposition)
(define-preposition "near to" :form 'spatial-preposition)
(define-preposition "nearer" :form 'spatial-preposition) ;;comparative
(define-preposition "nearer to" :form 'spatial-preposition) ;;comparative
(define-preposition "next to" :form 'spatial-preposition)

(define-preposition "on" :form 'spatial-preposition)
;; (define-preposition "on top of" :form 'spatial-preposition) ;; doing it compositionally
(define-preposition "onto" :form 'spatial-preposition)

(define-preposition "outside" :form 'spatial-preposition)
(define-preposition "outside of" :form 'spatial-preposition)
(define-preposition "over" :form 'spatial-preposition )

(define-preposition "past" :form 'spatial-preposition) ;; cf. "in the past"

(define-preposition "through" :form 'spatial-preposition)
(define-preposition "toward")
(define-preposition "towards")
(define-preposition "under" :form 'spatial-preposition)

(define-preposition "up" )
(define-preposition "up against") ;; do it compositionally?
(define-preposition "up to")

(define-preposition "within" :form 'spatial-preposition)
