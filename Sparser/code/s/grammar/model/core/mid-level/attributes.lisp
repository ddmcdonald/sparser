;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017-2020 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis CwC project
;;;
;;;     File:  "attributes"
;;;   Module:  "grammar/core/mid-level/
;;;  version:  November 2020

;; Initiated 1/11/17 to collect all the attributes together

(in-package :sparser)

;;;------
;;; name
;;;------

(define-category  name
  :specializes attribute 
  :instantiates self
  :lemma (common-noun "name")
  :documentation "This is the root for all (real) names.
   Something 'has' a (real) name, which is why name is a quality.
   See model/core/names.lisp, particularly its fsa subdirectory,
   and specializations in core/people & companies.")



;;;---------------------
;;; standard attributes
;;;---------------------
;; Their values are defined in model/dossiers/modifiers.lisp
;; along with their values for comparatives by using the
;; functions these definitions created

(define-attribute color)  ;; "blue"
(define-attribute size)   ;; "big"
(define-attribute height) ;; "tall"
(define-attribute width)  ;; "narrow"
(define-attribute length) ;; "long"

(define-attribute amount-as-level ;; high, low
    :subcat (modifies-scalar))
;; The word "level" is a bio-scalar in bio, and used extensively
;; so have to prepare for fanout when naming this 'level'

(define-attribute rate-of-change ;; fast, slow
    ;; vs 'rate' as defined in amounts/measurements.lisp
    :subcat (modifies-scalar))

(define-attribute goodness) ;; better, worst
;; would be 'quality' except that's taken by the upper model
;;//// the attributes are nouns -- morphology makes a hash of a word
;; that ends in 'ness': :inflection-of-noun #<word "goodnesses">
;;                      :noun-inflections (#<word "goodnesses">)
