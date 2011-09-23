;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1996 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "have"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  0.1 May 1996

;; moved from [syntax;aux verbs] 5/7/93 v2.3.  Fleshed out 6/4.
;; Added negative contractions 1/11/94.  7/21 switch aux rule to use
;; category rather than words.  7/29 added explicit bracket assignments
;; 8/1 added neg rule.  9/6 added " 've ".  1/27/95 added do+have
;; 0.1 (4/24) pulled the def. as a main verb in favor of the aux definition
;;      in [words;aux verbs]
;; 0.2 (5/27/96) disabled subtypes for the timebeing

(in-package :sparser)


;;;----------------------------------------
;;; the verb "to have" and its conjugation
;;;----------------------------------------

(define-category  have
  :instantiates  self
  :specializes   event
  :binds ((agent)
          (stuff))
  :index (:temporary :list)
  :realization (:tree-family transitive
                :mapping ((agent . agent)
                          (patient . stuff)
                          (s . state)
                          (np/subject . np)
                          (vp . have-something)
                          (np/object . np)
                          (vg . :self))
                :special-case-head t
                ))


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

;;---- "have" + "ed"

(def-form-rule (have verb+ed)
  :form verb
  :referent (:head right-edge
             ;;:subtype perfect
             ))


;;---- tns + not

(def-cfr have (have "not")
  :form verb
  :referent (:head left-edge
             ;;:subtype negative
             ))


;;---- "do(n't)" + have

(def-cfr have (do have)
  :form verb
  :referent (:head right-edge))
             ;; ?? how do we promulgate the negative ??



;;;-------------------------
;;; contractions with "not"
;;;-------------------------

(def-cfr have ("haven" apostrophe-t)
  :form verb
  :referent (:head have
             ;;:subtype negative
             ))

(def-cfr have ("hasn" apostrophe-t)
  :form verb+s
  :referent (:head have
             ;;:subtype negative
             ))

(def-cfr have ("hadn" apostrophe-t)
  :form verb+ed
  :referent (:head have
             ;;:subtype negative
             ))


;;--- others

(def-cfr have ( apostrophe-ve )
  :form verb
  :referent have )

