;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995,2016-2022 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "directional rules"
;;;   Module:  "model;core:places:"
;;;  version:  April 2022

;; initiated in 1/9/95

(in-package :sparser)


(def-cfr direction ("to" direction)    ;; "to the left"
  :form np
  :referent (:daughter right-edge))


(def-cfr from-direction ("from" direction)
  ;;///// replace with schema
  :form np
  :referent (:daughter right-edge))

#| determiners now need to be incorporated into the interpretation
   Dropping this rule exposes the syntactic rule that goes through
   the function determiner-noun where this happens
(def-cfr direction ("the" direction)   ;; "the left"
  ;; This overgenerates (*"the westwards"), but since that phrase
  ;; won't be produced it's moot. 
  :form np
  :referent (:daughter right-edge))
|#

;;--- of-complement ("south of the Lee exit")
#| Needs a different analysis to fit current definition
of the category relative-location

(define-additional-realization relative-location
  ;; category defined in places/relational)
  (:tree-family simple-of-complement
   :mapping ((np-item . prep)
             (of-item . ground)
             (np . location)
             (complement . location)
             (base-np . direction) ;; compass-point
                ;; some directions as well, but not all
             (result-type . relative-location))))  |#


;; moved here from places/object to get them out of the way 4/1/22 
;;;--------------------------
;;; labeled transparent pp's
;;;--------------------------
#| These all need generalization, probably flush them in favor of
 identifying a class of prepositions that we use to talk about
 where we are as we move relative to some location.

(dont-check-rule-form-for-etf-named 'transparent-pp)

(define-marker-category to-location
  :realization (:tree-family transparent-pp
                :mapping ((pp . to-location)
                          (preposition . "to")
                          (complement . location))))

(define-marker-category onto-location
  :realization (:tree-family transparent-pp
                :mapping ((pp . onto-location)
                          (preposition . "onto")
                          (complement . location))))


(define-marker-category past-location
  :realization (:tree-family computed-pp
                :mapping ((pp . past-location)
                          (preposition . past) ;; "past" -> past
                          (complement . location))))

(define-marker-category at-location
  :realization (:tree-family transparent-pp
                :mapping ((pp . at-location)
                          (preposition . "at")
                          (complement . location))))
|#

