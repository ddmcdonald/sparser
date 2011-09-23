;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1998,2011 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "tense"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  0.5 July 2011

;; moved from [syntax;aux verbs] 5/7/93 v2.3
;; 0.1 (5/15) giving it some real semantic content
;;     (1/10/94) added event.  1/11 added negative
;; 0.2 (6/14) defined 'anonymouse-agentive-action' as referent of do
;; 0.3 (7/12) added rule for infinitive.  7/14 for "don't"   7/26 rules
;;      for "does not {verb}"  8/8 made 'event' referential
;; 0.4 (1/3/98) Gave event a time variable.
;; 0.5 (5/20/09) Added additional bindings to event. Added modifier 6/9/09
;;     (7/14/09) Added participant binding to event. (4/7/11) Cleaning up.
;;     (7/31) moved event category model/core/kinds/object

(in-package :sparser)


(define-mixin-category  tense/aspect
  :instantiates nil
  :specializes  nil
  :binds nil )


(define-mixin-category  negative
  :instantiates nil
  :specializes  tense/aspect )


(define-mixin-category  future
  :instantiates nil
  :specializes  tense/aspect
  :binds ((occurs-at-future-moment . nil)))


(define-mixin-category  past
  :instantiates nil
  :specializes  tense/aspect
  :binds ((occurs-at-earlier-moment . nil)))


(define-mixin-category  progressive    ;; be + ing
  :instantiates nil
  :specializes  tense/aspect )


(define-mixin-category  perfect   ;; have + en
  :instantiates nil
  :specializes  tense/aspect )



;;;------------
;;; infinitive
;;;------------

(def-form-rule ("to" verb)
  :form infinitive
  :referent (:daughter right-edge))



;;;------------------------------------
;;;                do
;;;------------------------------------

(define-category  anonymous-agentive-action
  :specializes event
  :instantiates self
  :binds ((agent . anything))
  :index (:temporary :key agent))


(def-cfr do ("do")
  :form verb
  :referent  anonymous-agentive-action )

(def-cfr do ("does")
  :form verb
  :referent  anonymous-agentive-action )

(def-cfr do ("did")
  :form verb
  :referent  anonymous-agentive-action )

(def-cfr do ("done")
  :form verb+ed
  :referent (:head anonymous-agentive-action
             :subtype perfect ))

(def-cfr do ("doing")
  :form verb+ing
  :referent (:head anonymous-agentive-action
             :subtype progressive ))



;;--- negatives

(def-cfr do (do "not")
  :form verb
  :referent (:head anonymous-agentive-action
             :subtype negative ))

(def-cfr do ("doesn" apostrophe-t)
  :form verb
  :referent (:head anonymous-agentive-action
             :subtype negative ))

(def-cfr do ("don" apostrophe-t)
  :form verb
  :referent (:head anonymous-agentive-action
             :subtype negative ))

(def-cfr do ("didn" apostrophe-t)
  :form verb
  :referent (:head anonymous-agentive-action
             :subtype negative ))


;;--- intensifier

(def-form-rule (do verb)
  :form verb
  :referent (:daughter right-edge))
