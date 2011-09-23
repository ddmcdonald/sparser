;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,2010-2011 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "relative moments"
;;;   Module:  "model;core:time:"
;;;  version:  0.2 March 2011

;; initiated 7/8/93 v2.3.
;; 0.1 (5/24/94) redid the rdata as 'time-deictic'. 6/26 fixed omission of
;;      var referenced in the rule  
;; 0.2 (10/19) reconceptualized the whole notion.
;; 0.3 (12/6/10) Added the other cases in the mapping to the category v/r's
;;     (3/15/11) Added treatment of 'this' & 'that' + time-unit


(in-package :sparser)

;;;--------
;;; object
;;;--------

;; These are variations on the pure temporal anaphors defined in [time;anaphors].
;; Those standalone, these form up into phrases or if they do appear by themselves
;; there is an implicit complement accessible from the context.  


;; These take complements
;; e.g. "immediately"
;;
(define-category  relative-time-adverb
  :instantiates time
  :specializes time
  :binds ((name  :primitive word))
  :index (:permanent :key name)
  :realization (:standalone-word name))


;; These do not take complements, but are still only meaningful when their
;; reference time (e.g. an event) has been identified.  Before that happens
;; we only have a partially saturated individual, albeit a fixed one.
;; e.g. "afterwards", "soon", "eventually"
;;
(define-category  relative-time-noun
  :instantiates time
  :specializes time
  :binds ((name  :primitive word))
  :index (:permanent :key name)
  :realization (:standalone-word name))



;; These are the phrases formed from the adverbs
;;
(define-category  relative-time
  :instantiates time
  :specializes time
  :binds ((relativizer (:or relative-time-adverb approximator sequencer))
          (reference-time (:or time time-unit month weekday)))
  :index (:sequential-keys reference-time relativizer)
  :realization (:tree-family  modifier-creates-definite-individual
                :mapping ((np . time)
                          (modifier . (approximator
                                       sequencer
                                       modifier))
                          (np-head . (time
                                      time-unit
                                      month
                                      weekday ))
                          (result-type . relative-time)
                          (individuator . relativizer)
                          (base-category . reference-time))))



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



