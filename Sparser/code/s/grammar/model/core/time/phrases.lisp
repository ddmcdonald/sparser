;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1998 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "phrases"
;;;   Module:  "model;core:time:"
;;;  version:  3.0 May 2013

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
                                          year time date))))))
                           



;;;-----------------------------
;;; stray case to think through
;;;-----------------------------

(def-cfr of-time ("of" time))

;;;--------------------------
;;; combination with clauses
;;;--------------------------

(def-form-rule (s calculated-day)
  :form s
  :referent (:head left-edge
             :bind (time right-edge)))

(def-form-rule (s time)
  :form s
  :referent (:head left-edge
             :bind (time right-edge)))


;;;----------
;;; oddities
;;;----------

(def-cfr time (time "ago"))

