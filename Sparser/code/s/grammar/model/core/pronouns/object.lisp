;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994,2011-2017 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "object"
;;;   Module:  "model;core:pronouns:"
;;;  version:  March 2017

;; 1.0 (7/11/94) completely redone from scratch. (7/22) made 'pronoun' a referential
;;      category so it would pass the filter in the discourse history.
;;     (8/7/07) Fixed a bug where it was creating new words for the WH words already
;;      defined with the correct brackets in rules/words.
;;     (7/6/11) Mods for working with Clozure or alisp

(in-package :sparser)

;;;-------------------
;;; kinds of pronouns
;;;-------------------

(define-category  pronoun
  ;; never instantiated itself, just provides a common supercategory
  ;; for the discourse history
  :instantiates nil
  :specializes phrase-interpretation
  :mixins (endurant)
  :documentation "Strictly speaking, a pronoun is an indicator of
    an anaphoric reference, and shouldn't per se have any substantive
    meaning. The object that the pronoun refers to is what provides 
   that meaning. However, if that information can not be computed
   immediately, then we need some placeholder.")

(defmethod is-pronoun? ((ref individual))
  (declare (special category::pronoun))
  (when (individual-p ref)
    (itypep ref category::pronoun)))

(defmethod is-pronoun? ((e edge))
  (is-pronoun? (edge-referent e)))

(defmethod is-pronoun? ((e t))
  nil)


#| The category will be the basis of the referent.  Most syntactic properties
   will be handled separately by a form label on the rule.  |#

(define-category  pronoun/first/singular   ;; "I" "me" "my" "mine" "myself"
  :specializes pronoun
  :instantiates pronoun
  :binds ((word  :primitive word))
  :index (:permanent :key word)
  :realization ( :word word ))

(define-category  pronoun/first/plural  ;; "we" "us" "our" "ours"
  :specializes pronoun
  :instantiates pronoun
  :binds ((word  :primitive word))
  :index (:permanent :key word)
  :realization ( :word word ))

(define-category  pronoun/second  ;; singular and plural both (usually)
  :specializes pronoun
  :instantiates pronoun
  :binds ((word  :primitive word))
  :index (:permanent :key word)
  :realization ( :word word ))

(define-category  pronoun/male    ;; "he" "his" "himself"
  :specializes pronoun
  :instantiates pronoun
  :binds ((word  :primitive word))
  :index (:permanent :key word)
  :realization ( :word word ))

(define-category  pronoun/female
  :specializes pronoun
  :instantiates pronoun
  :binds ((word  :primitive word))
  :index (:permanent :key word)
  :realization ( :word word ))

(define-category  pronoun/inanimate
  :specializes pronoun
  :instantiates pronoun
  :binds ((word  :primitive word))
  :index (:permanent :key word)
  :realization ( :word word ))

(define-category  pronoun/plural  ;; all the third plural forms
  :specializes pronoun
  :instantiates pronoun
  :binds ((word  :primitive word))
  :index (:permanent :key word)
  :realization ( :word word ))



;;;-----------------------------------------
;;; defining form for conventional pronouns
;;;-----------------------------------------

(defun define-pronoun (string category-suffix form)
  ;; This adds form information ////and common dereferencing routine
  ;; to the rule that is provided by the regular krisp definition of
  ;; these individuals
  (let* ((prefix #+mlisp "pronoun/"
                 #-mlisp "PRONOUN/")
         (category-name (concatenate 'string prefix
                                     (symbol-name category-suffix)))
         (category (find-symbol category-name *category-package*))
         (form-category (category-named form))
	 (pronoun-word (word-named string))

         ;; this will make a rule that rewrites the word as the
         ;; category with the category as its referent, but we'll
         ;; make it more specific below.
         (pronoun (define-individual category :word pronoun-word))

         (rule (first (get-rules pronoun))))

    (setf (cfr-form rule) form-category)
    ;;///(setf (cfr-referent rule) xx )

    pronoun ))


;;;-----------------------------------------------
;;; Indefinite pronouns: Quirk et al. 645 pg. 376
;;;-----------------------------------------------

(define-category indefinite-pronoun
  :specializes pronoun
  :instantiates pronoun
  :binds ((word :primitive word))
  :index (:permanent :key word)
  :realization (:word word)
  :documentation "See Quirk et al. #645, p.376, 
 e.g. 'something', 'no one', 'each'. These are odd ducks
 that are both like quantifiers in terms of how they
 compose and like pronouns in that they will get a
 specific value in context. Quirk lays out a large
 set of properties that they have and which differentiate
 them. Ignoring that for now pending a use-case.")

(defun define-indefinite-pronoun (string)
  ;; There's much to be said for doing these in the same
  ;; style as quantifiers (define-quantifier) because they're
  ;; behaviours will all be specific to the pronoun.
  ;; For the moment just making them instances so there's
  ;; something on the board to tally and see patterns on.
  (let* ((word (resolve string)) ;; see words/pronouns.lisp
         (i (find-or-make-individual 'indefinite-pronoun
                                     :word string))
         (rs (when word (rule-set-for word)))
         (rule (when rs (car (rs-single-term-rewrites rs)))))
    (assert rule (string) "find-or-make-individual did not ~
                           make a rule for ~s" string)
    (setf (cfr-form rule) category::pronoun)
    (values i rule)))



