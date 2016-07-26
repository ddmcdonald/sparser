;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1994,2013-2016  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "be"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  July 2016

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
;;    (9/15/14) fixed form on be+adjective
;;  1/14/2015 correct the head for BO+AJD to be the ADJ
;;  (1/15/15) Substantial make over of rules for tense/aspect
;; 3/4/2015 make the rules that should produce VGs do so 
;;    (such as (def-form-rule (be verb+ing) ...)
;; SBCL suggested speedup on computation of passive label (VERB+ED label 
;;  created to allow passive rule to work)
;;    (4/15/15) Reformated 'there' and made it its' own section
;;  5/8/2015 handle vp+ed and vp+ing, handle AP as well as adjectives
;; 5/30/2015 take into account the introduction of vg+passive, etc.
;;  update super-catgory of there-exists to be relation
;; 9/17/15 added (be vg+ed) form rule. Worth going through the rest
;;  and ensuring they have every variant they need. 

(in-package :sparser)


;;;--------------------------------------
;;; the verb "to be" and its conjugation
;;;--------------------------------------

(define-category  be
  :instantiates  self
  :specializes event
  :binds ((subject)
          (predicate))
  :mixins (takes-neg)
  :index (:temporary :list))

(register-variable category::be 
 (find-variable-in-category 'subject 'be)
 :subject-variable)

(register-variable category::be 
 (find-variable-in-category 'predicate 'be)
 :object-variable)

(defparameter *the-category-to-be* (category-named 'be)
  "For use by code that's loaded before the grammar is")



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
             :subtype past))

(def-cfr be ("were")
  :form verb
  :referent (:head be
             :subtype past))

(def-cfr be ("been")
  :form verb+ed
  :referent (:head be
             :subtype past))

(def-cfr be ("being")
  :form verb+ing
  :referent be )


;;;----------------------------
;;; be + adjective
;;;----------------------------

(def-form-rule (be adjective)
  :form vg
  :referent  (:function make-copular-adjective left-edge right-edge))

(def-form-rule (be ap)
  :form vp
  :referent (:function make-copular-adjective left-edge right-edge))
  

;;;-------------------------------
;;; be + prepositional complement
;;;-------------------------------
;; "the cat is on the mat"

(define-category copular-pp ;; "the cat is on the mat"
  :specializes be
  :binds ((copula)
          (prep)
          (pobj))
  :documentation "Provides a scaffolding that the syntax function
    make-copular-pp can use to package preposition and complement
    it got from a [be-ref + pp] rule."
  :index (:temporary :list))

(def-form-rule (be pp)
  :form vp
  :new-category copular-pp
  ;; copular-pp is used in a syntatic-rule where it's folded
  ;; in with all the NP sources and gerundive vps to form rules
  ;; that call apply-copular-pp to create copular-predicate objects
  :referent (:function make-copular-pp left-edge right-edge))


(define-category copular-predicate
  :specializes be
  :binds ((predicate)
          (predicated-of)
          (copula))
  :documentation "Provides a scaffolding that the syntax function
    apply-copular-pp can use to package the predicate it creates
    from the np in an [np + copular-pp] rule."
  :index (:temporary :list))



;;;----------------------------
;;; form rules for aux-hopping
;;;----------------------------

;;---- "be" + "ing"  progressive

(def-form-rule (be verb+ing)
  :form vg
  :referent (:head right-edge
             :function add-tense/aspect left-edge right-edge))

(def-form-rule (be vg+ing) ;; "are currently using"
  :form vg
  :referent (:head right-edge
             :function add-tense/aspect left-edge right-edge))

(def-form-rule (be subordinate-clause)
  :form subordinate-clause
  :referent (:function add-tense/aspect-to-subordinate-clause left-edge right-edge))

;;---- tns + not

(def-cfr be (be not)
  :form vg
  :referent (:head left-edge
             :bind (negation right-edge)))


;;---- "be" + "en" (passive)

(def-form-rule (be verb+ed)
  :new-category  :passive
  :form vg+passive
  :referent (:head right-edge))

(def-form-rule (be vg+ed)
  :new-category  :passive
  :form vg+passive
  :referent (:head right-edge))

(def-form-rule (be vg+passive) ;; were previously used
  :new-category  :passive
  :form vg+passive
  :referent (:head right-edge))


;;;---------
;;; passive
;;;---------

(defparameter *passive-label* (make-hash-table))

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
          (or
           (gethash stem *passive-label*)
           (setf (gethash stem *passive-label*)
                 (intern ;;(concatenate 'string stem "+ED")))
                  (string-append stem '#:+ed)
                  (find-package :category)))))
         (passive-category
	  (and
	   (boundp name-of-passive-label)
	   (category-named/c-symbol name-of-passive-label))))

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

#| This operation has two steps. First the CS rule changes
the apostrophe-s (see apostrophe-fsa) into the word "is".
Then in the edge construction process (e.g. make-default-binary-edge)
the call to complete is immediately followed by a call to
assess-edge-label, which rewrites the word as the category BE.
|#

;;--- "there"
(def-csr apostrophe-s  "is"
  :left-context "there" )

;;--- "it"

#|  Prefer the form rule that combines with an NP to the left.
    That will get the pronoun interpretation of "it" into the
    chart, which has more potential even if the contruction 
    turns out to be cleft.        |#
(def-csr apostrophe-s "is"
  :left-context "it" ) 


;;--- "that"    ;; glossed as a determiner for bracketing purposes

(def-csr apostrophe-s "is"
  :left-context "that" )


;;;--------------------------------------------
;;; contentless "there", existance assertions
;;;--------------------------------------------

(define-category syntactic-there 
  :specializes abstract
  :lemma (:common-noun "there"))

(define-category there-exists ;; There is a cat on the mat"
  :specializes relation
  :binds ((object)
          (context))
  :index (:temporary :list))

(def-cfr there-exists (syntactic-there BE)
  :form S
  :referent (:function make-there-exists right-edge))

#+ignore
(def-form-rule (there-exists np)
  :form s
  :referent (:head left-edge
             :function make-exist-claim right-edge))



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

;;;--------------------------
;;; hedged copular relations
;;;--------------------------

;; See syntax/copulars.lisp for an effort to generalize this

#| Have to figure out an equivalent of biological in the restriction.
Examples in the localization articles -- exhaustive list

  "Mouse embryo fibroblasts (MEFs) isolated from ERK1 knockout mice 
seemed to proliferate faster than control cells."
  "These experiments seem to indicate that the proliferative signal 
is mediated by ERK2."
  "Bradykinin stimulation of protein kinase C seems to be 
such a required pathway."
  "this mechanism seems unlikely at present."
  "Therefore, it seems unlikely that the receptor is simply 
phosphorylated by Src."
  "but rather seem dependent on phosphatidylinositol 
3-kinase activity."
  "The initiating event seems to be an influx of extracellular Ca."
  "UV seems to provoke receptor activation."
  "the possible role of ligand involvement would seem unlikely."
  "While UV does seem to mimic growth factor activation of the receptor."
  "this interaction seems to be of  low stoichiometry."

(define-category seem :specializes bio-rhetorical
    :binds ((tocomp (:or be biological)))
    :realization
    (:verb "seem"
	   :etf (svo)
           :to-comp tocomp))

(def-synonym seem (:verb "appear" :etf (svo)))

(def-form-rule (seem adjective)
  :form vg
  :referent (:function make-copular-adjective left-edge right-edge))

(def-form-rule (seem ap)
  :form vp
  :referent (:function make-copular-adjective left-edge right-edge))
|#
