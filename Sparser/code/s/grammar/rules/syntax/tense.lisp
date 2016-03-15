;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1998,2011-2016 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "tense"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  March 2016

;; moved from [syntax;aux verbs] 5/7/93 v2.3
;; 0.1 (5/15) giving it some real semantic content
;;     (1/10/94) added event.  1/11 added negative
;; 0.2 (6/14) defined 'anonymouse-agentive-action' as referent of do
;; 0.3 (7/12) added rule for infinitive.  7/14 for "don't"   7/26 rules
;;      for "does not {verb}"  8/8 made 'event' referential
;; 0.4 (1/3/98) Gave event a time variable.
;; 0.5 (5/20/09) Added additional bindings to event. Added modifier 6/9/09
;;     (7/14/09) Added participant binding to event. (4/7/11) Cleaning up.
;;     (7/31) moved event category model/core/kinds/object.
;; 0.6 (3/28/13) Removed indexing from anonymous-agentive-action as a stop-
;;      gap action in lieu of taking the time to rework the meaning of "do"
;;      properly -- the word by itself does not  have an agent linked to it.
;; 0.7 (1/14/15) Converting mixins to regular categories because they're
;;      somehow getting interpretations as psi, which is presently outlawed.
;; 1/14/2015 support for negation and other tense/aspect features
;; 4/26/15 gave negative a lemma
;; 9/22/15 Hooked up negative to quantifier, deleted the variable
;;  negative

(in-package :sparser)

;;--- negation

(define-category  negative
  :specializes  quantifier 
  :instantiates nil
  :lemma (adjective "negative"))
;; "no" and "not" are quantifiers in words/quantifiers1

(define-mixin-category takes-neg
  :binds ((negation)))


;;--- tense & aspect 

;; Needs a better name
(define-category  tense/aspect-vector
  :instantiates nil
  :specializes  linguistic
  :binds ((occurs-at-moment) ;; future, past
          (modal)
          (present)
          (past)
          (progressive)
          (perfect))
  :mixins (takes-neg)
  :documentation "Stored on the aspect variable of
  any event, see find-or-make-aspect-vector.")


(define-category  tense/aspect
  :instantiates nil
  :specializes  linguistic)


(define-category  future
  :instantiates nil
  :specializes  tense/aspect)


(define-category  past
  :instantiates nil
  :specializes  tense/aspect)


(define-category  progressive    ;; be + ing
  :instantiates nil
  :specializes  tense/aspect )


(define-category  perfect   ;; have + en
  :instantiates nil
  :specializes  tense/aspect )



;;;------------
;;; infinitive
;;;------------

(def-form-rule ("to" verb)
  :form infinitive
  :referent (:daughter right-edge))

;; We need this version of the rule because the
;; usual chunking is, e.g. to [ phosphorylate]
;; with the "to" stranded. 
(def-form-rule ("to" vg)
  :form infinitive
  :referent (:daughter right-edge))


;;;------------------------------------
;;;                do
;;;------------------------------------

(define-category  anonymous-agentive-action
  :specializes event
  :instantiates self
  :mixins (takes-neg))
;; Has sort of an anaphoric feel sometimes, 


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

(def-cfr do (do not)
  :form verb
  :referent (:head anonymous-agentive-action
             :bind (negation right-edge)))

(def-cfr do ("doesn" apostrophe-t)
  :form verb
  :referent (:head anonymous-agentive-action
              :bind (negation right-edge)))

(def-cfr do ("don" apostrophe-t)
  :form verb
  :referent (:head anonymous-agentive-action
             :bind (negation right-edge)))

(def-cfr do ("didn" apostrophe-t)
  :form verb
  :referent (:head anonymous-agentive-action
             :bind (negation right-edge)))

;;--- intensifier

(def-form-rule (do verb)
  :form verb
  :referent (:function absorb-auxiliary left-edge right-edge))
