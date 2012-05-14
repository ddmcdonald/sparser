;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-2005,2011-12 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id$
;;;
;;;     File:  "anaphors"
;;;   Module:  "model;core:time:"
;;;  version:  1.2 May 2012

;; 1.1 (10/19/94) completely reconceptualized.  10/30 fixed bad v/r
;;     (8/28/95) added simple phrases with sequencers
;;     (3/9/05) added form rules.
;; 1.2 (9/24/09) Commented out the define-realization for calculated-time
;;      at the end of the file because the tighter treatment of variables
;;      makes it untenable since there's no variable named 'time' to associate
;;      with 'modifier' (or perhaps the ETF needs to be changed ??)
;; 1.3 (3/15/11) Changed the rule categories of the 'calculated' categories
;;      to be just 'time' by changing their :instantiates values
;; 1.4 (5/14/12) Extended realization of calculated day to accommodate
;;      "today's date", where the "date" is ignored.

(in-package :sparser)

;;;----------------
;;;  "now", "then"
;;;----------------
;; These get their extensional value from context.  They are usually to be
;; understood as clause adjuncts that specify the time at which some event
;; occured.  The unit of time involved is vague.

(define-category  calculated-time 
  :specializes time
  :instantiates time
  :binds ((name :primitive word))
  :index (:key name)
  :realization (:standalone-word name))  ;; //this needs a hook for doing 
                                         ;; the calculation


;;;----------------------------------
;;; "yesterday", "today", "tomorrow"
;;;----------------------------------

(define-category  calculated-day 
  :specializes calculated-time
  :instantiates time
  :binds ((name :primitive word)
          (actual-date calculated-day))  ;; should be time if we calculated it
  :index (:key name)
  :realization (:standalone-word name
                :tree-family item+idiomatic-head
                :mapping ((np . :self)
                          (modifier . calculated-day)
                          (np-head . date)
                          (result-type . :self)
                          (item . actual-date))))

              


;;;---------
;;; phrases
;;;---------

;;--- dummy function as a stand-in

(defun calculate-time (sequencer unit)
  (declare (ignore sequencer unit))
  :no-value-calculated-yet )


(def-cfr time ("this" weekday)
  :form np
  :referent (:function calculate-time left-edge right-edge))

(def-cfr time (sequencer/determiner  ;; e.g. "next"
               weekday)
  :form np
  :referent (:function calculate-time left-edge right-edge))


(def-cfr time ("this" time-unit)   ;; "month", "year"
  :form np
  :referent (:function calculate-time left-edge right-edge))

(def-cfr time (sequencer/determiner time-unit)
  :form np
  :referent (:function calculate-time left-edge right-edge))


;; 7/24/09 Doesn't work because there's no time variable anywhere
;; upstream from calculated-day or some way to construe 'time'
;; as sort of the equivalent of ':self' ddm 7/25/09
;(define-realization calculated-day pre-verb-adverb
;  ((modifier . time)
;   (adverb . calculated-day)))



