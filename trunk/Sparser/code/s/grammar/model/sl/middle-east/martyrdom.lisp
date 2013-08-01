;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "martyrdom"
;;;    Module:   "sl;middle-east"
;;;   version:   July 2013

;; initiated 7/22/13

(in-package :sparser)

#|  From javan-online
---- martyrdom
;; "the martyrdom of martyr Alimohammadi, a nuclear scientist"
the anniversary of the martyrdom of martyr Majid Shahriari, another Iranian nuclear scientist,
 and martyred him

--- title/adjective
Martyr Mostafa Ahmadi-Rowshan was s graduate of Sharif University

He was martyred in Golnabi Street
please pray that I may be martyred.
what you should do to become a martyr.
 Mostafa Ahmadi-Rowshan was immediately martyred,
he too achieved martyrdom after being transferred to hospital
After the martyrdom of Martyr Mostafa Ahmadi-Rowshan
16 days after the assassination of Martyr Mostafa Ahmadi-Rowshan

Someone is a martyr because they have been martyred, i.e. died in
service to the cause.  Feels like an attributive adjective rather than
some sort of verb. ///Calls for a new schema for predicate adjectives
Goes with verbs to-be, become. 
Has nominal form martyrdom
|#

(define-category martyrdom
  :instantiates self  ;; not really
  :specializes  event ;; very abstract - the concept
  :realization (:common-noun "martyrdom"))

(define-category martyred
  :instantiates self
  :specializes  event
  :binds ((who person)
          (what . martyrdom)) ;; syntactic placeholder
  :index (:key who)
  :realization ((:tree-family simple-of-complement
                 ;; "the martyrdom of <person>"
                 :mapping ((np-item . what)
                           (of-item . who)
                           (result-type . :self)
                           (base-np . martyrdom)
                           (complement . person)
                           (np . :self)))
                (:tree-family passive
                 :mapping ((patient . who)
                           (vp . :self)
                           (vg . :self)
                           (np/object . person))
                 :main-verb "martyr")))
;;/// We only want the passive (+ed) form of the verb,
;; which will entail a new keyword and some refactoring

;; With it as a regular verb it clobbers the title interpretation
;; of the word. 
(define-title-base-word "martyr")
;; Will need co-composition to transfer the full relation
;; to the person. And this is evidence of a person.