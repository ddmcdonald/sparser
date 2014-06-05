;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-2005,2011-2014 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "anaphors"
;;;   Module:  "model;core:time:"
;;;  version:  1.5 May 2014

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
;; 1.5 (6/13/13) Thoroughly reworked as indexicals with a real dereferenced
;;      value. 
;;     (5/28/14) Trying that again since previous effort didn't get too far.

(in-package :sparser)

;;;-----------
;;; indexical
;;;-----------

(define-mixin-category indexical
  :binds ((extension)))



;;;----------------
;;;  "now", "then"
;;;----------------
;; These get their extensional value from context.  They are usually to be
;; understood as clause adjuncts that specify the time at which some event
;; occured.  The unit of time involved is vague.

(define-category  calculated-time 
  :specializes time
  :instantiates time
  :rule-label time
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
  :rule-label time
  :mixins (indexical)
  :binds ((name :primitive word)
          (calculator :primitive symbol))
  :index (:key name))

;;--- should be possible to convert this to a macro 
;;
(defun define-calculated-day (string calculation-fn)
  (let* ((word (resolve/make string))
         (i (find-or-make-individual 'calculated-day 
                                     :name word
                                     :calculator calculation-fn)))
    (assign-brackets-as-a-common-noun word)

    ;; This is a completely ad-hoc rule, but pushing this
    ;; through the existing single-word rdata construction
    ;; was not going to happen easily
    (let* ((rule-form `(def-cfr time ;; knows about the rule-label
                               (,word)
                         :form noun
                         :referent (:function ,calculation-fn)))
           (rule (eval rule-form)))
      (add-rule-to-category rule category::calculated-day)
      (values rule i))))
      
      

              

;;;---------
;;; phrases
;;;---------

(defgeneric identify-this-time-unit (determiner time-unit)
  (:documentation "Uses the temporal-index to identify the
     current month or year, etc."))

;;/// Modify ref/method to be able to setup for
;; one argument method calls. 


(def-cfr time ("this" month) ;; "this December"
  :form np
  :referent (:method identify-this-time-unit left-edge right-edge))

(def-cfr time ("this" time-unit) ;; "this month"
  :form np
  :referent (:method identify-this-time-unit left-edge right-edge))

(def-k-method identify-this-time-unit ((ignore t) (unit time-unit))
  (declare (ignore ignore))
  (value-of-current-time-unit unit))


#| being overhauled 5/30/14
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
|#

;; 7/24/09 Doesn't work because there's no time variable anywhere
;; upstream from calculated-day or some way to construe 'time'
;; as sort of the equivalent of ':self' ddm 7/25/09
;(define-realization calculated-day pre-verb-adverb
;  ((modifier . time)
;   (adverb . calculated-day)))



