;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1994,2013  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "be"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  0.2 August 2013

;; redesigned from scratch 5/12/93 v2.3, completed category's realization
;; data 5/27. Added "there's" -> "there is", and negative contractions 1/11/94
;; 7/21 redid the aux-hopping rule in terms of the category 'be' instead of
;; each word individually.  8/1 added neg rule.  8/5 added general calculation
;; for the passive category.
;; 0.1 (8/16) flushed contraction with "it" in favor of pronoun anlysis 
;;      (///of sorts) put in by [???].
;;     (8/19) added contraction with "that".  9/6 " 'm "  11/21 " 're "
;;     5/27/96 Disabled subtyping until it's reimplemented
;; 0.2 (5/10/09) Removed the realization. It's getting in the way of things
;;     like "where are you going" by creating a 'be-something' over "are you"
;;     which is just wrong.
;;    (8/24/13) Modified lookup-passive-counterpart to use #:ed for forming
;;     the passive symbol. 

(in-package :sparser)


;;;--------------------------------------
;;; the verb "to be" and its conjugation
;;;--------------------------------------

(define-category  be
  :instantiates  self
  :specializes   event
  :binds ((theme)
          (description))
  :index (:temporary :list)
;  :realization (:tree-family transitive
;                :mapping ((agent . theme)
;                          (patient . description)
;                          (s . state)
;                          (np/subject . np)
;                          (vp . be-something)
;                          (np/object . np)
;                          (vg . :self))
;                :special-case-head t
;                )
  )

(defun string/be (i)
  "be")


(def-cfr be ("be")
  :form verb
  :referent be )

(def-cfr be ("am")
  :form verb
  :referent be )

(def-cfr be ("are")
  :form verb
  :referent be )

(def-cfr be ("is")
  :form verb
  :referent be )

(def-cfr be ("was")
  :form verb
  :referent (:head be
             ;;:subtype past
                   ))

(def-cfr be ("were")
  :form verb
  :referent (:head be
             ;;:subtype past
                   ))

(def-cfr be ("been")
  :form verb+ed
  :referent (:head be
             ;;:subtype past
                   ))

(def-cfr be ("being")
  :form verb+ing
  :referent be )


;;;----------------------------
;;; be + adjective
;;;----------------------------

(def-form-rule (be adjective)
  :form adjective
  :referent (:head right-edge))


;;;----------------------------
;;; form rules for aux-hopping
;;;----------------------------


;;---- "be" + "ing"

(def-form-rule (be verb+ing)
  :form verb
  :referent (:head right-edge
             ;;:subtype progressive
                   ))


;;---- tns + not

(def-cfr be (be "not")
  :form verb
  :referent (:head left-edge
             ;;:subtype negative
                   ))


;;---- "be" + "en" (passive)

(def-form-rule (be verb+ed)
  :new-category  :passive
  :form verb
  :referent (:head right-edge))



;;;---------
;;; passive
;;;---------

(defun lookup-passive-counterpart (verb-category)
  ;; The passive rule dictates the new-category ':passive'.
  ;; This is a pseudo category that is checked for specifically
  ;; in the form-rule edge-builder Form-rule-completion/explicit-lhs.
  ;; It is done in conjunction with a capability in the rdata to
  ;; define a category that will be an automatically constructed
  ;; variant on what is substituted in e.g. "vg/+ed".  The "+ed"
  ;; is concatentated onto the name of the substituted category
  ;; and a new category constructed with that name.
  
  (let* ((stem (symbol-name (cat-symbol verb-category)))
         (name-of-passive-label
          (intern ;;(concatenate 'string stem "+ED")))
           (string-append stem '#:+ed)
           (find-package :sparser)))
         (passive-category
          (category-named name-of-passive-label)))

   #| letting the called change the form category instead of complaining
    (unless passive-category
      (break "Expected there to be a category named ~A~
              ~%Check the realization data for ~A~
              ~%If you continue, a category with that named will be~
              ~%constructed and used." name-of-passive-label stem)
      (setq passive-category
            (find-or-make-category-object
             name-of-passive-label :def-category))) |#

    passive-category ))
 



;;;--------------------------------------------
;;; contractions with other closed class words
;;;--------------------------------------------

;;--- "there"
(def-csr apostrophe-s  "is"
  :left-context "there" )

(def-cfr there-is ("there" be)
  :form subj+verb )


;;--- "it"

#|  Prefer the form rule that combines with an NP to the left.
    That will get the pronoun interpretation of "it" into the
    chart, which has more potential even if the contruction 
    turns out to be cleft.
(def-csr apostrophe-s "is"
  :left-context "it" )         |#


;;--- "that"    ;; glossed as a determiner for bracketing purposes

(def-csr apostrophe-s "is"
  :left-context "that" )


;;;--------------------------
;;; contractions -- "...n't"
;;;--------------------------

(def-cfr be ("aren" apostrophe-t)
  :form verb
  :referent (:head be
             ;;:subtype negative
                   ))

(def-cfr be ("isn" apostrophe-t)
  :form verb
  :referent (:head be
             ;;:subtype negative
                   ))

(def-cfr be ("wasn" apostrophe-t)
  :form verb
  :referent (:head be
             ;;:subtype negative
                   ))

(def-cfr be ("weren" apostrophe-t)
  :form verb
  :referent (:head be
             ;;:subtype negative
                   ))



;;;----------------------------------------
;;; unambiguously contracted forms of 'be'
;;;----------------------------------------

;; The Apostrophe-fsa already has these checked for specially and gives
;; them reasonable forms and referents, but aux-hopping want's an explicit
;; labeling of 'be'.

(def-cfr be  ( apostrophe-m )
  :form verb
  :referent be )

(def-cfr be  ( apostrophe-re )
  :form verb
  :referent be )


;; Given those rewrite rules, we have to include this assignment of brackets
;; otherwise the 'verb'ness of what's been discovered by the Apostrophe-fsa
;; won't be noticed.  These are seen as edge-introduced brackets by the
;; scan process at the moment that the fsa returns.

(assign-brackets/expr (category-named 'be)
                      (list (symbol-value '].verb)
                            (symbol-value '.[verb )))

