;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,2010-2011,2018-2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "relative moments"
;;;   Module:  "model;core:time:"
;;;  version:  September 2023

;; initiated 7/8/93 v2.3.
;; 0.1 (5/24/94) redid the rdata as 'time-deictic'. 6/26 fixed omission of
;;      var referenced in the rule  
;; 0.2 (10/19) reconceptualized the whole notion.
;; 0.3 (12/6/10) Added the other cases in the mapping to the category v/r's
;;     (3/15/11) Added treatment of 'this' & 'that' + time-unit.
;;     (9/26/11) Added rule-label to noun and adverb definitions

(in-package :sparser)
        
;;;--------
;;; object
;;;--------

;; These are variations on the pure temporal anaphors defined in
;; [time;anaphors] which are standalone, these adverbs form up into
;; phrases, and if they do appear by themselves there is an implicit
;; complement accessible from the context.


;; These take complements
;; e.g. "(immediately) after dinner"
;;
(define-category  relative-time-adverb
  :instantiates time
  :specializes time
  :rule-label time
  :binds ((name  :primitive word))
  :index (:permanent :key name)
  :realization (:adverb name))

(defun define-relative-time-adverb (string)
  (define-adverb string :super-category 'relative-time-adverb))

;; These are a section in dossiers/modifiers


;;---- relative time - "next month"

(define-category  relative-time
  :instantiates time
  :specializes time
  :binds ((relativizer (:or relative-time-adverb approximator sequencer))
          (reference-time (:or time time-unit month weekday)))
  :index (:sequential-keys reference-time relativizer)
  :realization (:tree-family  modifier-creates-definite-individual
                :mapping ((n-bar . time)
                          (modifier . (approximator
                                       sequencer ))
                          (np-head . (time
                                      time-unit
                                      month
                                      weekday ))
                          (result-type . relative-time)
                          (individuator . relativizer)
                          (base-category . reference-time))))


(defun make-a-relative-time (relative reference)
  (find-or-make-individual 'relative-time
    :relativizer relative
    :reference-time reference))


;;--- times relative to an event

(define-category offset-time ;; "seven days before he arrives"
  :instantiates time
  :specializes time
  :binds ((offset (:or amount-of-time time-unit))
          (relation) ;/// refine the sequencers to this set
          (reference-event))
  :documentation "Picks out a point or an interval in time
 depending on the identity of the relation (before, during) and
 the eventuality that it is relative to ('before I get to Phoenix')")

(defun plausible-time+event? (time event)
  (when (or (itypep time 'amount-of-time) ; "seven days"
            (itypep time 'time-unit)) ; "the week"
    (value-of 'subordinate-conjunction event)))

(defun make-offset-time (time event)
  (let ((operator (value-of 'subordinate-conjunction event))
        (i (copy-indiv-minus-variable event 'subordinate-conjunction)))
    (define-or-find-individual 'offset-time
        :offset time
        :relation operator
        :reference-event i)))


#| Calculation -- needs sancition, or an additional 'value' slot
(def-cfr time (sequencer/determiner  ;; e.g. "next"
               weekday)
  :form np
  :referent (:function calculate-time left-edge right-edge))

(def-cfr time (sequencer/determiner time-unit)
  :form np
  :referent (:function calculate-time left-edge right-edge))
|#
;;;------------------------------------------
;;; Computing position in temporal sequences
;;;------------------------------------------

;;/// No callers s
(defun relative-time-value (category before/after)
  ;; The day after today -- the unit after current
  ;; or before, or two days before, ...
  ;; The index unit always matches the category of the unit
  (let* ((index (current-temporal-index))
         (sequence ;; caller knows it's sequential
          (value-of 'sequence category))
         (cycle-length (when (category-inherits-type? 
                              category category::cyclic)
                         (value-of 'cycle-length category)))
         (category-name (cat-symbol category))
         (reference
          (time-current-value index category-name)))
    (push-debug `(,index ,before/after ,reference ,cycle-length))
    ;; That gives us an individual, e.g., month
    ;; and we need is position in its sequence.
    ;;/// perhaps collapse all variables that bind ordinals
    ;; to 'position' ??
    (let ((ordinal
           (ecase category-name ;; mimics case in
             ;; category-of-time-unit for its range
             (category::month
              (value-of 'position-in-year reference)))))
      (push-debug `(,ordinal ,sequence))
      (break "next"))))

;;;-----
;;; ago
;;;-----

(define-category ago
  :specializes relative-time
  :realization (:adverb "ago")
  :documentation "Used in refering to a past time.
 'it happened a long ago', or as part of an amount
 of time 'ten years ago'. Doesn't have a meaning
 outside of a phrase.")

(def-cfr ago ("-" ago)
  :form adverb
  :referent (:daughter right-edge))


(define-category  amount-of-time-ago ;; "10 years ago"
  :specializes amount-of-time
  :instantiates time
  :binds ((age-ago . amount-of-time))
  :index (:sequential-keys age-ago)
  :documentation "Picks out a time a specific distance in the past,
 compare 'ten years from now' which has the same formulation of
 an amount of time followed by a temporal adverb. word. 
 We could change this when we find more patterns to formulate.")

(def-cfr time (amount-of-time ago)
  :form n-bar
  :referent (:instantiate-individual amount-of-time-ago
             :with (age-ago left-edge)))

;;/// "not long ago (event)"
;;    "it happened a long time ago"

;;;----------
;;; deictics
;;;----------

;;--- Specific instance of time (units): "that day", "last month"
;;  These become particular times that can be dereferenced in context
;;     "Later that day it ..."
#+ignore
(define-category deictic-time-period
   :instantiates time
   :specializes relative-time
   :binds ((time-period . time-unit) ;; (or phase-of-day time-of-day meal-time ...)
           (relativizer (:or relative-time-adverb 
                             approximator sequencer
                             modifier
                             ;; The variable decoder doesn't yet know what to do with a
                             word))) ;; "that", "this" /// make a deictic category?
   :realization
        (:tree-family modifier-creates-definite-individual
         :mapping ((np . time)
                   (modifier . ("that" "this"))
                   (np-head . (time time-unit)) ;; month, weekday too? or fix them
                   (result-type . deictic-time-period)
                   (individuator . relativizer)
                   (base-category . time-period))))


#|/// Have to sort out the status of the form categories
  temporal-adjective, spatial-adjecive, ... which don't seem
  to be doing any work

Davids-macbookpro-2:s ddm$ grep temporal-adjective  **/*.lisp **/**/*.lisp **/**/**/*.lisp **/**/**/**/*.lisp **/**/**/**/**/*.lisp
grammar/model/dossiers/modifiers.lisp:(define-adjective "eventual" :form 'temporal-adjective)
grammar/model/dossiers/modifiers.lisp:(define-adjective "recent" :form 'temporal-adjective)
grammar/rules/sdmp/create-categories.lisp:        (category::temporal-adjective)
grammar/rules/syntax/categories.lisp:(def-form-category  temporal-adjective)
grammar/rules/syntax/categories.lisp:                spatial-adjective  temporal-adjective approximator)
grammar/rules/tree-families/adverbs.lisp:     (:modifier (temporal-adjective (adverb temporal-adjective)
grammar/rules/words/fn-word-routine.lisp:            ((adjective spatial-adjective temporal-adjective) *adjective-brackets*)
grammar/rules/words/fn-word-routine.lisp:    ((or adjective spatial-adjective temporal-adjective) :adjective)
|#

