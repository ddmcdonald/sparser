;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1996,2013-2015 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "have"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  0.4 January 2015

;; moved from [syntax;aux verbs] 5/7/93 v2.3.  Fleshed out 6/4.
;; Added negative contractions 1/11/94.  7/21 switch aux rule to use
;; category rather than words.  7/29 added explicit bracket assignments
;; 8/1 added neg rule.  9/6 added " 've ".  1/27/95 added do+have
;; 0.1 (4/24) pulled the def. as a main verb in favor of the aux definition
;;      in [words;aux verbs]
;; 0.2 (5/27/96) disabled subtypes for the timebeing
;; 0.3 (5/23/13) Disabled the realization for have. Need to make it
;;      conditional on SDM&P or the like. (9/18/13) Added variant for
;;      have+verb-ed since it can also be verb+passive
;; 0.4 (1/15/15) Substantial make over of rules for tense/aspect. Gave it
;;      bindings inspired by what's in possessive. Resistered the variables.

(in-package :sparser)


;;;----------------------------------------
;;; the verb "to have" and its conjugation
;;;----------------------------------------

(define-category  have
  :instantiates  self
  :specializes   state
  :binds ((possessor)
	  (thing-possessed))
  :mixins (takes-neg)
  :index (:temporary :list))

(register-variable category::have
 (find-variable-in-category 'possessor 'have)
 :subject-variable)

(register-variable category::have
 (find-variable-in-category 'thing-possessed 'have)
 :object-variable)




(def-cfr have ("have")
  :form verb
  :referent have )

(def-cfr have ("has")
  :form verb+s
  :referent have )

(def-cfr have ("had")
  :form verb+ed
  :referent (:head have
             ;;:subtype past  ;;subtypes need to be reimplemented
             ))

(def-cfr have ("having")
  :form verb+ing
  :referent (:head have
             ;;:subtype progressive
             ))




;;;-------------------
;;; aux-hopping rules
;;;-------------------

;;---- "have" + "ed"  perfect

(def-form-rule (have verb+ed)
  :form vg
  :referent (:head right-edge
             :function add-tense/aspect left-edge right-edge))

(def-form-rule (have verb+passive) 
  :form verb
  :referent (:head right-edge
             :function add-tense/aspect left-edge right-edge))



;;---- tns + not

(def-cfr have (have not)
  :form verb
  :referent (:head left-edge
             :bind (negation right-edge)))


;;---- "do(n't)" + have

(def-cfr have (do have)
  :form verb
  :referent (:head right-edge
             :function absorb-auxiliary left-edge right-edge))



;;;-------------------------
;;; contractions with "not"
;;;-------------------------

(def-cfr have ("haven" apostrophe-t)
  :form verb
  :referent (:head have
             :bind (negation right-edge)))

(def-cfr have ("hasn" apostrophe-t)
  :form verb+s
  :referent (:head have
             :bind (negation right-edge)))

(def-cfr have ("hadn" apostrophe-t)
  :form verb+ed
  :referent (:head have
             :bind (negation right-edge)))


;;--- others

(def-cfr have ( apostrophe-ve )
  :form verb
  :referent have )

