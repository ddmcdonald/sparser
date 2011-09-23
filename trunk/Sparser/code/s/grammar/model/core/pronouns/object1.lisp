;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994,2011  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "object"
;;;   Module:  "model;core:pronouns:"
;;;  version:  1.0 July 2011

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
  :specializes nil)


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



;;;---------------
;;; defining form
;;;---------------

(defun define-pronoun (string category-suffix form)
  ;; This adds form information ////and common dereferencing routine
  ;; to the rule that is provided by the regular krisp definition of
  ;; these individuals
  (let* ((prefix #+(or :ccl :alisp) "PRONOUN/"
                 #+mlisp "pronoun/") ;; or any lisp that preserves case
         (category-name (concatenate 'string prefix
                                     (symbol-name category-suffix)))
         (category (find-symbol category-name *category-package*))
         (form-category (category-named form))
	 (pronoun-word (word-named string))

         ;; this will make a rule that rewrites the word as the
         ;; category with the category as its referent, but we'll
         ;; make it more specific below.
         (pronoun (define-individual category
                    :word pronoun-word))
         (rule
          (first (cadr (member :rules (indiv-plist pronoun))))))

    (setf (cfr-form rule) form-category)
    ;;///(setf (cfr-referent rule) xx )

    pronoun ))


