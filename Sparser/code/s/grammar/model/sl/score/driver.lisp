;;; Copyright (c) 2021 SIFT LLC. All Rights Reserved
;;;
;;;    File: "driver"
;;;  Module: "grammar/model/sl/score/
;;; version: August 2021

;; Created 8/24/21 to organize the process of comlex-derived words
;; to a file of categories defining them.

(in-package :sparser)

#| There are two way in to this process, bulk handling of a large list
of words, and the retail handling of a single word at a time when a new
unknown word is encountered while parsing a document. 

Both go through the same choke point, the 'setup' functions in grammar/
rules/brackets/assignments.lisp. Comlex based lookup (unpack-primed-word)
calls them directly, as do most cases assign-morph-brackets-to-unknown-word
assigns a POS do.

To get from an category and rule set that a setup function creates on the fly
to a conventional define-category expression that we can sort and save to
a file, we augment the setup function so that they each summarize what they
determined (disambiguating category namse, noticing irregulars, etc.) as
a record that is passed to make-category-form.
|#


(defgeneric comlex-lemma-to-category-forms (word)
  (:documentation  "Given a word that is expected to have a comlex entry,
   thread it through the setup routines for each of its POS alternative to
   make their defcategory expressions.")
  (:method ((pname string))
    (comlex-lemma-to-category-forms (resolve/make pname)))
  (:method ((word word))
    (let ((entry (comlex-entry/full word)))
      (unless entry (error "no Comlex entry for ~a" word))
      (continue-unpacking-lexical-entry word entry))))

(defun make-category-form (word pos comlex-clause
                           &key ((:cat name))
                             super
                             mixins
                             plural ; for nouns
                             irreg  ; for verbs
                             er-est) ; for graded-adjective
  "Transition path from setup routines to expressions.
   We call a part of speech specific constructor to make the appropriate
   version of define-category as an s-expression"
  (declare (special *comlex-form-output-stream*
                    *incrementally-save-comlex-categories*))
  (when *incrementally-save-comlex-categories*
    (when (category-p super)
      (setq super (cat-name super)))
    (unless (stringp word)
      (setq word (pname word)))
    (let ((form (ecase pos
                  (noun (make-category-form-for-a-noun word name super
                                                       mixins plural))
                  (verb (make-category-form-for-a-verb word name super mixins irreg))
                  (adj-simple (make-category-form-for-simple-adjective
                               word name super))
                  (adj-graded (make-category-form-for-graded-adjective
                               word name super er-est))
                  (adverb (make-category-form-for-an-adverb word name super))
                  )))
      (pprint-category-form form *comlex-form-output-stream*)
      form)))
