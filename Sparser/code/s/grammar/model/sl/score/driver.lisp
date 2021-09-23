;;; Copyright (c) 2021 SIFT LLC. All Rights Reserved
;;;
;;;    File: "driver"
;;;  Module: "grammar/model/sl/score/
;;; version: August 2021

;; Created 8/24/21 to organize the process of comlex-derived words
;; to a file of categories defining them.

(in-package :sparser)

#| There are two ways into this process, bulk handling of a large list
of words, and the retail handling of a single word at a time when a new
unknown word is encountered while parsing a document. 
  
Both go through the same choke point, the 'setup' functions in grammar/
rules/brackets/assignments.lisp. Comlex based lookup (unpack-primed-word)
calls them directly, as do most cases in assign-morph-brackets-to-unknown-word
when they can assign a POS.

The setup functions are setup-common-noun, setup-verb, setup-adjective, and
setup-adverb. Besides their normal actions to create categories and rules
for the words they are passed, they have all been augmented by calls to
make-category-form. When it flag is up, make-category-form makes calls to
one of the assemblers in make-definitions.lisp. These return the s-expression
they created, which is then pretty printed to the designated output stream.

The gating parameter - *incrementally-save-comlex-categories* - is defined
to default to nil. It is turned on in the dynamic extent of create-word-definitions
and create-category-from-word (used for verb+prep definitions). We have the
option doing this at normal runtime, where we would make stream to a file
that we append to. 
|#


(defgeneric comlex-lemma-to-category-forms (word)
  (:documentation  "Given a word that need to have a comlex entry,
   use the dispatch in the comlex entry-unpacking function to call
   the setup routines for each of its POS alternatives, knowing that
   they will lead to calls to make-category-form.")
  (:method ((pname string))
    (comlex-lemma-to-category-forms (resolve/make pname)))
  (:method ((word word))
    (declare (special *comlex-form-output-stream*))
    (let ((entry (comlex-entry/full word)))
      (unless entry (error "no Comlex entry for ~a" word))
      (format *comlex-form-output-stream* "~&~%~%") ; space between groups of definitions
      (continue-unpacking-lexical-entry word entry))))



(defun make-category-form (word pos comlex-clause
                           &key ((:cat name))
                             super
                             mixins
                             plural ; for nouns
                             irreg  ; for verbs
                             er-est) ; for graded-adjective
  "This is the transition path from setup routines to expressions.
   We call a part of speech specific constructor to make the appropriate
   version of define-category as an s-expression. The s-exps that
   they return are pretty printed to the output stream, which will be
   an open file unless we're debugging."
  (declare (special *comlex-form-output-stream*
                    *incrementally-save-comlex-categories*
                    *sparser-is-running*  *sparser-loaded*))
  (when *incrementally-save-comlex-categories*
    ;; The definitions are all in terms of symbols and strings, so we have
    ;; to convert what comes out of the setup functions.
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

      ;; where ddo we do with the form
      (if (or *sparser-is-running*
              (null *sparser-loaded*))
         (cache-comlex-expression word form)
         (pprint-category-form form *comlex-form-output-stream*))

      (when (and (eq pos 'verb)
                 (verb-particles word))
        (let ((forms (make-verb-particle-forms word)))
          (loop for form in forms
               do (if *sparser-is-running*
                    (cache-comlex-expression word form)
                    (pprint-category-form form *comlex-form-output-stream*)))))

      form)))
