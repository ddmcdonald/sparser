;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2013,2016,2012 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "time-of-day"
;;;   Module:  "model;core:time:"
;;;  version:  February 2021

;; The dossier for these is time-of-day.lisp

;; initiated 8/27/08 (CG). 9/23/13 Adding and revising a lot.
;; 4/1/16 Added specialization

(in-package :sparser)


;;;------------------
;;; phase of the day
;;;------------------

(define-category phase-of-day ;; morning, night
  :instantiates  self
  :specializes  time-interval
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:common-noun name))

(defun define-phase-of-day (string)
  ;; hook to add arguments later
  (define-or-find-individual 'phase-of-day :name string))


;;;-------------
;;; time of day
;;;-------------

(define-category time-of-day
  :instantiates  self
  :specializes  time-interval
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:common-noun name))

(defun define-time-of-day (string)
  ;; hook to add arguments later
  (define-or-find-individual 'time-of-day :name string))


;;;-----------
;;; meal time
;;;-----------

(define-category meal-time ;; sort of similar "having a late dinner"
  :instantiates  self   ;; but lots more content
  :specializes  time-of-day
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:common-noun name))

(defun define-meal-time (string)
  (define-or-find-individual 'meal-time :name string))



;;;------------
;;; Numeric times
;;;------------

#| From Charlie Greenbacker's analysis circa 2009
(define-category numeric-time
  :instantiates  self
  :specializes  time-of-day
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :documentation "Intended for 'a.m.' and such, but needs
    work. See dossiers/time-of-day.lisp"
  :realization (:common-noun name))

(defmacro def-numeric-time (string) 
  (let ((word (define-word string))) ;; reuses any already defined word
    (define-individual 'numeric-time
        :name word)))  |#


;;;---------------------------------
;;; post-modifying reference points
;;;---------------------------------

(define-category am-pm
  :specializes temporal-index
  :instantiates nil
  :documentation "Common label for use in semantic rules")

(define-category ante-meridian
  :specializes am-pm
  :instantiates self
  :rule-label am-pm
  :index (:permanent :key name)
  :realization (:noun (#|"am"|# "a.m.")))
;;/// Put AM back when we know the typical capitalization facts
;;  about how it's used. Also learn the usual external context.

(define-category post-meridian
  :specializes am-pm
  :instantiates self
  :rule-label am-pm
  :index (:permanent :key name)
  :realization (:noun ("pm" "p.m.")))


#| These are the synset of ont::event-time-rel in TRIPS

after, afterward, afterwards, ago, anytime, as, as quick as possible,
as soon as, as soon as possible, awhile, before, earlier, early,
following, forthcoming, from, immediately, in progress, in the
meantime, late, later, nowadays, once, one day, pending, previously,
prior to, recently, right away, simultaneously, since, sometime, soon,
then, til, till, to, today, tomorrow, tonight, underway, until,
upcoming, when, whenever, while, yesterday, yet,  |#


;;;------------
;;; Time zones
;;;------------

(define-category timezone
  :instantiates  self
  :specializes time
  :mixins (bounded-region  cyclic)
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:common-noun name))

(defmacro def-timezone (string) 
  ;; offset from GMT is another good argument, also the fully-spelled out
  ;; name, presumably as a polyword ("Eastern Daylight Time").
  ;; Otherwise this is just syntactic sugar
  (let ((word (define-word string))) ;; reuses any already defined word
    (define-individual 'timezone
       :name word)))


;;--- offsets from a timezone
#| These may as well be straight rules since they're idiosyncratic.
But if we see other cases of this sort off "offset" then it would be
better to workup some sort of ETF for the pattern.

N.b. This offset and its direction should also be encoded in the instances
we create, and they ought to be interned (two cases of the same text
string should go to the same object rather than create new ones.
The simplest way to do that is to create a category that specializes
timezone.  |#

;;/// There can be offsets from any timezone 
;; (Nepal is central India + 20 minutes), so these can be generalized.

#| This old scheme of Charlie G's calls into rollout-naries-from-the-left
   and then hits a gratuitous duplication on the second rule because it
   shares a prefix with the first.
   To revive it, these patterns should be recast as early DA rules
;;;-----------------------
;;; offsets from Coordinated Universal Time
;;;-----------------------

(def-cfr timezone ("UTC" plus-sign number))
(def-cfr timezone ("UTC" plus-sign number colon number))
(def-cfr timezone ("UTC" hyphen number))
(def-cfr timezone ("UTC" hyphen number colon number))
(def-cfr timezone ("UTC"))

;;;-----------------------
;;; offsets from Greenwich Mean Time
;;;-----------------------

(def-cfr timezone ("GMT" plus-sign number))
(def-cfr timezone ("GMT" plus-sign number colon number))
(def-cfr timezone ("GMT" hyphen number))
(def-cfr timezone ("GMT" hyphen number colon number))
(def-cfr timezone ("GMT"))
|#

;;;------------
;;; clock time 
;;;------------
;;  which will extend to timezone (with offsets) and seconds

;;;-------------------------------------------------------------------------
;;; shift from generic time periods to actual ones grounded in the calendar
;;;-------------------------------------------------------------------------

(define-category particular-time-of-day
  :specializes time-interval
  :binds ((phase (:or phase-of-day time-of-day))
          (grounding time))
  :documentation "This represents situating a general phase on
 a specific time. Shifts from the generic concept of, e.g., 'morning'
 to the actual time 'morning of March 5th'")

(defun make-particular-time-of-day (phase time)
  "Called from compose-of method in time-methods by way of
   interpret-pp-adjunct-to-np"
  (define-or-find-individual 'particular-time-of-day
      :phase phase
      :grounding time))
