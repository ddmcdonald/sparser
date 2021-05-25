;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1996,2013-2021 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "have"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  May 2021

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
;; 5/30-2015 update to take into accoun addition of new passive categories
;; 9/22/15 Turned back on the subtypes

(in-package :sparser)


;;;----------------------------------------
;;; the verb "to have" and its conjugation
;;;----------------------------------------

(define-category  have
  :instantiates  self
  :specializes   state
  :binds ((possessor top)
	  (thing-possessed top))
  :mixins (takes-neg)
  :index (:temporary :list)
  :realization
     (:verb "have" 
      :etf (svo)
      :mumble ("have" svo :s possessor :o thing-possessed)
      :s possessor
      :o thing-possessed))

(def-cfr have ("have")
  :form verb
  :referent have)

(def-cfr have ("has")
  :form verb+s
  :referent have)

(def-cfr have ("had")
  :form verb+ed
  :referent have)

(def-cfr have ("having")
  :form verb+ing
  :referent have)



;;;-------------------
;;; aux-hopping rules
;;;-------------------

;;---- "have" + "ed"  perfect

(def-form-rule (have verb) ; "has become"
  :form vg
  :referent (:head right-edge
             :function add-tense/aspect left-edge right-edge))

(def-form-rule (have verb+ed)
  :form vg
  :referent (:head right-edge
             :function add-tense/aspect left-edge right-edge))

(def-form-rule (have vg+ed)
  :form vg
  :referent (:head right-edge
             :function add-tense/aspect left-edge right-edge))


(def-form-rule (have vg+passive) 
  :form vg+passive
  :referent (:head right-edge
             :function add-tense/aspect left-edge right-edge))

(def-form-rule (have verb+passive)
    ;; "been visulaized" comes out like this ?!
  :form vg+passive
  :referent (:head right-edge
             :function add-tense/aspect left-edge right-edge))


(def-form-rule (have subordinate-clause)
  :form subordinate-clause
  :referent (:function add-tense/aspect-to-subordinate-clause left-edge right-edge))




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

