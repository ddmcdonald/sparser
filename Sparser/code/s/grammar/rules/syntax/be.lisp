;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1994,2013-2016  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "be"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  August 2016

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
  :binds ((subject)
          (predicate))
  :index (:temporary :list)
  :documentation "Represents the relation, broadly speaking,
 between a subject and a predicate that is established by
 the verb to-be (the 'copula') and similar verbs. This is
 the general relation. More particular relationships are
 represented by specializations of this category that add
 or change the variables and provide restrictions on them.
 Note that because this category ihherits from perdurant
 it carries all of the variables that record information
 about tense and aspect.")

(register-variable category::be 
 (find-variable-in-category 'subject 'be)
 :subject-variable)

(register-variable category::be 
 (find-variable-in-category 'predicate 'be)
 :object-variable)

(defparameter *the-category-to-be* (category-named 'be)
  "For use by code that's loaded before the grammar is")



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
  :new-category  :passive
  :form vg+passive
  :referent (:head right-edge
             :function add-tense/aspect left-edge right-edge))

(def-form-rule (be vg+ed)
  :new-category  :passive
  :form vg+passive
  :referent (:head right-edge
             :function add-tense/aspect left-edge right-edge))

(def-form-rule (be vg+passive) ;; "were previously used"
  :new-category  :passive
  :form vg+passive
  :referent (:head right-edge
             :function add-tense/aspect left-edge right-edge))


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
  
  (let* ((stem (cond ((category-p verb-category)
                      (symbol-name (cat-symbol verb-category)))
                     (t
                      (warn "lookup-passive-counterpart for non-category ~s~%"
                            verb-category)
                      (return-from lookup-passive-counterpart nil))))
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

(def-csr apostrophe-re "are"
  :left-context "we" )

(def-csr apostrophe-m "am"
  :left-context "I")



;;;--------------------------
;;; contractions -- "...n't"
;;;--------------------------

(def-cfr be ("aren" apostrophe-t)
  :form verb
  :referent (:head be
             :bind (negation right-edge)))


(def-cfr be ("isn" apostrophe-t)
  :form verb
  :referent (:head be
             :bind (negation right-edge)))


(def-cfr be ("wasn" apostrophe-t)
  :form verb
  :referent (:head be
             :bind (negation right-edge)))


(def-cfr be ("weren" apostrophe-t)
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
 the predicate ('(there) has frequently been (at cat on the mat)')
 and the value holds the description we are asserting
 the existence of.")

(define-category syntactic-there 
  :specializes linguistic
  :lemma (:word "there")) ;; n.b. form on the rule is content-word

(def-cfr there-exists (syntactic-there be)
  :form subj+verb
  :referent (:function make-there-exists right-edge))

(loop for n in '(np n-bar proper-noun common-noun)
   do
     (eval `(def-form-rule (there-exists ,n)
                ;;/// the effect of this rule is to make the category of
                ;; the edge be the category of the NP, which is odd looking.
                ;; The function could fix it if we care enough.
                :form s
                :referent (:head left-edge
                                 :function make-exist-claim left-edge right-edge))))



(defun make-there-exists (vg)
  #| In R3, but not in CwC or Fire (though only tested smallish
  sentences), given the local treetops [there] [are] [no proteins...],
  the rule search prefer to compose the last two using {vg + np}
  rather than use {there-exists + be] as intended. ///The right thing
  to do is to hack the rule search since "there" is a very particular
  kind of subject and its search policy should be different.
  But that will take too long (8/31/16) so this looks for what it
  will see if it goes that way (an instance of 'be' with a predicate
  and rearranges things accordingly. |#
  (declare (special category::s))
  (if *subcat-test*
    t
    (cond
      ((and (itypep vg 'be) (value-of 'predicate vg))
       ;; this is the case where the search protocol should shift
       ;;/// we lose the vg -- the rule applied to get the be+np
       ;; is assimilate-np-to-v-as-object and it makes the vg
       ;; the basis of the individual
       (let* ((value (value-of 'predicate vg))
              (i (find-or-make-individual
                  'there-exists :value value)))
         (revise-parent-edge :form category::s) ;; vs subj+verb
         i))
       (t
        (make-an-individual 'there-exists :predicate vg)))))

(defun make-exist-claim (there+vg np)
  (if *subcat-test* t
      (bind-variable 'value np there+vg)))

