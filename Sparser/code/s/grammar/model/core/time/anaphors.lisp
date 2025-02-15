;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-2005,2011-2018,2022 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "anaphors"
;;;   Module:  "model;core:time:"
;;;  version:  January 2022

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

(defparameter *compute-deictic-times* nil
  "When we reading something that has a specified date, or we're in
   a conversation (where everything is in the ongoing present), 
   then we can determine ('calculate') the time. That's usually not
   the case, and so we just treat the as descriptive categories
")

;;;----------------
;;;  "now", "then"
;;;----------------
;; These get their extensional value from context.  They are usually to be
;; understood as clause adjuncts that specify the time at which some event
;; occured.  The unit of time involved is vague.

(define-category  calculated-time 
  :specializes time
  :instantiates time
  :mixins (indexical)
  :rule-label time
  :binds ((name :primitive word))
  :index (:key name)
  :realization (:word name))

(defun define-calulated-time (string) ;; e.g. "now"
  (let* ((word (resolve/make string))
         (i (find-or-make-individual 'calculated-time :name word)))
    (assign-brackets-as-a-common-noun word)
    (make-corresponding-mumble-resource word :noun i)
    i))


;;;----------------------------------
;;; "yesterday", "today", "tomorrow"
;;;----------------------------------

(define-category calculated-day 
  :specializes calculated-time
  :instantiates time
  :rule-label time
  :binds ((name :primitive word)
          (calculator :primitive symbol))
  :index (:key name))

(defun define-calculated-day (string calculation-fn)
  "Defined as a category and specified individual. The choice
   of referent is either that individual or the calculation
   function. These have uses as both adverbs and nouns so we
   make two rules and hope the chunker can sort it out."
  (declare (special *compute-deictic-times*))
  (let* ((word (resolve/make string))
         (category-name (name-to-use-for-category string))
         (category-form
          `(define-category ,category-name
             :specializes calculated-day
             :instantiates time
             ;; :bindings ((name ,word)) --- format is wrong
             ))
         (category (eval category-form)))
    (let* ((i (define-individual category :name word))
           (referent (if *compute-deictic-times*
                       `(:function ,calculation-fn)
                       i))
           (adv-rule (define-cfr category (list word)
                       :form (category-named 'adverb)
                       :referent referent))
           (noun-rule (define-cfr category (list word)
                        :form (category-named 'noun)
                        :referent referent)))
      (add-rules (list noun-rule adv-rule) i)
      i)))
 
      


;;;---------
;;; phrases
;;;---------
 
(define-category proxal-moment  ;; "this minute", "this December"
  :specializes calculated-time
  :instantiates time
  :rule-label time
  :mixins (indexical)
  :binds ((unit (:or time-unit time)))
  :index (:key unit :temporary)
  :documentation "Provides a descriptive form of the demonstrative
    plus time element construction whose principal meaning resides
    in its extension at a particular time.")

(define-category distal-moment ;; "that minute", "that December"
    :specializes proxal-moment)

(def-cfr time (this month) ;; "this December"
  :form np
  :referent (:method identify-this-time-unit left-edge right-edge))

(def-cfr time (this time-unit) ;; "this month"
  :form np
  :referent (:method identify-this-time-unit left-edge right-edge))


(def-k-function identify-this-time-unit (determiner time-unit)
  (:documentation "Uses the temporal-index to identify the
     current month or year, etc. Assemble a proxil/distal-moment
     individual and compute the extension relative to 'today'.")
  (:method ((this category::this) (unit category::month))
    (let ((i (define-or-find-individual 'proxal-moment
                 :unit unit))
          (j (value-of-current-time unit)))
      (when j (setq i (bind-variable 'extension j i)))
      i))
  (:method ((this category::this) (unit category::time-unit))
    (let ((i (define-or-find-individual 'proxal-moment
                 :unit unit))
          (j (value-of-current-time unit)))
      (when j (setq i (bind-variable 'extension j i)))
      i))
  (:method ((that (eql category::that)) (unit category::time-unit))
    (let ((i (define-or-find-individual 'distal-moment
                 :unit unit))
          (j (value-of-current-time unit)))
      (when j (setq i (bind-variable 'extension j i)))
      i)))

(def-k-function value-of-current-time (unit)
  (:documentation "Use the current-temporal-index to lookup the
     extensional value of the unit relative to today.")
  (:method ((unit category::time-unit))
    (let* ((word (value-of 'name unit))
           (symbol (word-symbol word))
           (index (current-temporal-index)))
      (case symbol
        (word::|year| (current-year index))
        (word::|month| (current-month index))
        (word::|week| (current-month index)) ; <=== Explicitly represent weeks
        (word::|day| (today))
        ((or word::|hour| word::|minute| word::|second|)
         ;;//// pull out the rest of the 'now' data, on the fly?
         nil)
        (otherwise
         (push-debug `(,word ,unit))
         (break "What's the right default for 'this ~a'" unit)))))
  (:method ((m category::month))
    ;; Lookup the month in this year
    nil)
  (:method ((dow category::weekday))
    ;; lookup the day in the current week ///represent weeks
    nil))
  
