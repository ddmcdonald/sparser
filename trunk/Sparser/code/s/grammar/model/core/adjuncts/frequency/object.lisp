;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1994,2011-2013 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "object"
;;;   Module:  "grammar;model:core:adjuncts:frequency:"
;;;  Version:  0.3 May 2013

;; initiated 5/16/93 v2.3
;; 0.1 (6/4) drastically reconceptualized how it works, 9/21 moved to [adjuncts]
;;      and split out the rules
;;     (5/25/94) added def-form with bracket assignment and autodef data
;; 0.2 (7/12) added define-function-word to the def-form
;; 0.3 (9/23/11) Reworked define-event-frequency as call to define-adverb.
;;     (5/26/13) changed that signature to adapt to its new signature

(in-package :sparser)

;; Dossier in [frequency-adverbs]

;;;--------
;;; object
;;;--------

(define-category  frequency-of-event
  :instantiates self
  :specializes adverbial
  :binds ((name :primitive word))
  :index (:permanent :key name)
  :realization (:adverb name))


;;---- object for subtyping these individuals

(define-mixin-category  at-specific-frequency
  :instantiates nil
  :specializes modified
  :binds ((frequency . frequency-of-event)))



;;;----------
;;; def form
;;;----------

(defun define-event-frequency (string)
  (define-adverb string :super-category 'frequency-of-event))



;;;---------
;;; autodef
;;;---------

(define-autodef-data  'frequency-of-event
  :display-string "fequency"
  :form 'define-event-frequency
  :dossier "dossiers;frequency adverbs"
  :module *frequency*
  :description "an adverb that describes how often an event happens"
  :examples "\"always\" \"usually\" \"seldom\"" )

