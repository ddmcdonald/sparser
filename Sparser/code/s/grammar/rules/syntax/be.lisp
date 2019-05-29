;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1994,2013-2019  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "be"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  May 2019

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
;;; category for 'be' and for copula
;;;--------------------------------------

(define-category  be
  :instantiates  self
  :specializes perdurant ;; as specific as 'state' ?
  :binds ((subject top)
          (predicate top))
  :index (:temporary :list)
  :realization (:verb ("be" :ed-form "was" :s-form "is" :ing-form "being")
                :etf svo ;; see [note]
                :s subject
                :o predicate
                :mumble ("be" SVBeComp :s subject :c predicate))   
  :documentation "Represents the relation, broadly speaking,
 between a subject and a predicate that is established by
 the verb to-be (the 'copula') and similar verbs. This is
 the general relation. More particular relationships are
 represented by specializations of this category that add
 or change the variables and provide restrictions on them.
 Note that because this category ihherits from perdurant
 it carries all of the variables that record information
 about tense and aspect.")

#| Note -- We don't need to give subject or predicate
value restrictions. The tests understand that the absence
of a restriction implies that it takes anything. We do have
to provide restrictions, however, when we're using an etf
since they're part of the process that makes semantic rules
(even though we handle 'be' mostly syntactically because
it indeed has no restrictions on what its two variables might
be bound to.
   We're providing an explicit statement of "be" being
the verb realization for 'be' in order to make the mumble
processing happy (see setup-mumble-data). This has the
unfortunate side-effect of generating a bunch of rules
and lexical forms that we do not use, but the alternative
is to define a new top-level def-form for 'standalone mumble
mappings' (could call it define-mumble-data), which would
end up using much of the same subroutines as the eft+explicit
verb scheme does, and we only need it for irregulars like
this -- 'have' is done the same way. |#


(defparameter *the-category-to-be* (category-named 'be)
  "For use by code that's loaded before the grammar is.")


;;;-------------------------
;;; forms of the verb to be
;;;-------------------------

(def-cfr be ("be")
  :form verb
  :referent be )

(def-cfr be ("am")
  :form verb+present
  :referent be)

(def-cfr be ("are")
  :form verb+present ;; n.b. not worrying about number concord
  :referent be)

(def-cfr be ("is")
  :form verb+present
  :referent be)

(def-cfr be ("was")
  :form verb+past
  :referent be)

(def-cfr be ("were")
  :form verb+past
  :referent be)

(def-cfr be ("been")
  :form verb+ed
  :referent be)

(def-cfr be ("being")
  :form verb+ing
  :referent be)

#+ignore ;; done by rule? ;; #<PSR-985 {verb} → to verb>
;; this definition confuses find-verb
(def-cfr be ("to be")
  :form infinitive
  :referent be)




(def-form-rule (be subordinate-clause)
  :form subordinate-clause
  :referent (:function add-tense/aspect-to-subordinate-clause left-edge right-edge))



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

;;---- tns + not

(def-cfr be (be not)
  :form vg
  :referent (:head left-edge
             :bind (negation right-edge)))


;;---- "be" + "en" (passive)

(def-form-rule (be verb+ed)
  :form vg+passive
  :referent (:head right-edge
             :function check-passive-and-add-tense/aspect left-edge right-edge))

(def-form-rule (be vg+ed)
  :form vg+passive
  :referent (:function check-passive-and-add-tense/aspect left-edge right-edge))

(def-form-rule (be vg+passive) ;; "were previously used"
  :form vg+passive
  :referent (:head right-edge
                   :function check-passive-and-add-tense/aspect left-edge right-edge))

(def-form-rule (be vp+ed) ;; get vp+ed when there is an intervening NP premod to the verb
    ;; as in "is serine phosphorylated by ERK"
  :form vp+passive
  :referent (:function check-passive-and-add-tense/aspect left-edge right-edge))

 


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

(def-csr apostrophe-re "are"
  :left-context "we" )

(def-csr apostrophe-m "am"
  :left-context "I")


;;--- "I'd" -> "I would"
;; (belongs elsewhere, but not clear where)

(def-csr apostrophe-d "would"
  :left-context pronoun)
;; Overgenerates since this expansion only applies to
;; nominative ('subject') pronouns

;; (def-csr apostrophe-d "would"
;;   :left-context "I")


(defparameter *lefthand-side-CW-words*
  `(,word::|is| ,word::|are| ,word::|am| ,word::|would|)
  "This is a hack. At the point when the CS rule introduces it
   the rewrite rules has a word in its category slot. 
   That's usually not what we do, though it does make sense
   when we are expanding a contraction, just as it does when
   expanding an abbreviation.
   This is an explicit list of these words.")


;;;--------------------------
;;; contractions -- "...n't"
;;;--------------------------

(def-cfr aren ("aren")
  :form verb+present
  :referent be )

(def-cfr be (aren apostrophe-t)
  :form verb
  :referent (:head be
             :bind (negation right-edge)))


(def-cfr isn ("isn")
  :form verb+present
  :referent be )

(def-cfr be (isn apostrophe-t)
  :form verb
  :referent (:head be
             :bind (negation right-edge)))

(def-cfr wasn ("wasn")
  :form verb+past
  :referent be )

(def-cfr be (wasn apostrophe-t)
  :form verb
  :referent (:head be
             :bind (negation right-edge)))


(def-cfr weren ("weren")
  :form verb+past
  :referent be )

(def-cfr be (weren apostrophe-t)
  :form verb
  :referent (:head be
             :bind (negation right-edge)))




;;;----------------------------------------
;;; unambiguously contracted forms of 'be'
;;;----------------------------------------

;; The Apostrophe-fsa already has these checked for specially and gives
;; them reasonable forms and referents, but aux-hopping want's an explicit
;; labeling of 'be'.
#|  8/20/16 these are getting in the way of the CS rules
(def-cfr be  ( apostrophe-m )
  :form verb
  :referent be )

(def-cfr be  ( apostrophe-re )
  :form verb
  :referent be )  |#


;; Given those rewrite rules, we have to include this assignment of brackets
;; otherwise the 'verb'ness of what's been discovered by the Apostrophe-fsa
;; won't be noticed.  These are seen as edge-introduced brackets by the
;; scan process at the moment that the fsa returns.

(assign-brackets/expr (category-named 'be)
                      (list (symbol-value '].verb)
                            (symbol-value '.[verb )))



;;;--------------------------------------------
;;; contentless "there", existance assertions
;;;--------------------------------------------

(define-category there-exists ;; There is a cat on the mat"
  :specializes predication
  :binds ((predicate)
          (value))
  :index (:temporary :list)
  :documentation "Paired down copular predication. Unless you
 want to imagine a transformation ('there is a cat on the mat'
 => 'the cat is on the mat') there is no 'item', just
 the predicate ('(there) has frequently been (a cat on the mat)')
 and the value holds the description we are asserting
 the existence of.")

(define-category syntactic-there 
  :specializes phrase-interpretation
  :lemma (:word "there")) ;; n.b. form on the rule is content-word

(def-cfr there-exists (syntactic-there be)
  :form subj+verb
  :referent (:function make-there-exists right-edge))

(defun make-there-exists (vg)
  "Instantiate a there-exists and fill in its predicate variable.
   Another rule will add the value we're asserting the existence of."
  (declare (special category::s))
  (if *subcat-test*
    t
    (let ((i
           (cond
             ((and (itypep vg 'be) (value-of 'predicate vg))
              (format t "~&predicate~%")
              (let* ((value (value-of 'predicate vg))
                     (i (find-or-make-individual 'there-exists :value value)))
                (revise-parent-edge :form category::s) ;; vs subj+verb
                i))
             (t
              (make-an-individual 'there-exists :predicate vg)))))
      ;; This is from "there + be" => there-exists
      ;; The 'be' may well have tense and/or aspect information
      ;; on it that we need to lift
      ;; (predicate (#<be 1340> (modal (#<should 1338>))))
      ;;(lsp-break "lift from prediate")
      i)))


(loop for n in '(np n-bar proper-noun common-noun common-noun/plural)
   do (def-form-rule/expr `(there-exists ,n)
          ;;/// Because it's a form rule this makes the category of
          ;; the edge be the category of the NP, which is odd looking.
          ;; The function could fix it if we care enough.
          :form 's
          :referent '(:function make-exist-claim left-edge right-edge)))

(defun make-exist-claim (there+vg np)
  "Fill the other variable of the there-exists individual"
  (if *subcat-test*
    t
    (let ((i (bind-variable 'value np there+vg)))
      (revise-parent-edge :category (edge-category (left-edge-for-referent)))
      i)))

