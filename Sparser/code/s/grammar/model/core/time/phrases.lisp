;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1998,2011-2020 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "phrases"
;;;   Module:  "model;core:time:"
;;;  version:  December 2020

;; initiated 4/9 v1.8.2
;; 1.0 (12/15/92 v2.3) bumped version to prepare for new semantics
;;     (10/19/94) cleaned up the parts that are out of date
;;     (1/3/98) started adding form rules for adverbs
;;     (1/1/08) Added 'date' and the form and referents to the mapcar,
;;      Added the form rule for them with 's'.
;; 2.0 (4/6/11) Redone as a category with a realization rather than
;;      a map over a set of syntactic rules. This way we get schema
;;      and a basis of reversing it. 
;;3.0  (5/30/2013) generalized prep-time slightly
;;      month/weekday are now realized syntactically as time, thus removed
;;      added numeric-time to prep-time complement, e.g. "at five o'clock," "by two o'clock"

(in-package :sparser)


(define-category prep-time
  :specializes time
  :instantiates time
  :binds ((prep . (:primitive word))
          (time . (:or time-unit weekday month year time date)))
  :realization ((:tree-family content-pp
                 :mapping ((type . :self)
                           (articulator . prep)
                           (item . time)
                           (pp . :self)
                           (preposition . ("at" "by" "for" "in" "on"
                                           "over")) 
                           (complement . (time-unit numeric-time amount-of-time ;month weekday
                                          year time date
                                          day-of-the-month month-of-the-year))))))
                           

(def-form-rule (approximator weekday)
    :form np
    :head :right-edge
    :referent (:daughter right-edge))

;;;-----------------------------
;;; stray case to think through
;;;-----------------------------

(def-cfr of-time ("of" time)
  :form pp
  :referent (:daughter right-edge))

;;;--------------------------
;;; combination with clauses
;;;--------------------------

(def-form-rule (s calculated-day)
  :form s
  :head :left-edge
  :referent (:function add-time-to-event left-edge right-edge))

(def-form-rule (s time)
    :form s
    :head :left-edge
    :referent (:function add-time-to-event left-edge right-edge))


(defun add-time-to-event (event time)
  (unless (itypep event 'be)
    (let ((var (find-variable-for-category 'time event)))
      (cond (*subcat-test* var)
            (var 
             (bind-variable var time event))))))

(defun add-manner-to-event (event manner)
  (unless (itypep event 'be)
    (let ((var (find-variable-for-category 'manner event)))
      (cond (*subcat-test* var)
            (var 
             (bind-variable var manner event))))))

(defun add-location-to-event (event location)
  (unless (itypep event 'be)
    (let ((var (find-variable-for-category 'location event)))
      (cond (*subcat-test* var)
            (var 
             (bind-variable var location event))))))

(defun add-purpose-to-event (event purpose)
  (unless (itypep event 'be)
    (let ((var (find-variable-for-category 'purpose event)))
      (cond (*subcat-test* var)
            (var 
             (bind-variable var purpose event))))))


;;;----------
;;; oddities
;;;----------

(def-cfr time (time "ago"))

