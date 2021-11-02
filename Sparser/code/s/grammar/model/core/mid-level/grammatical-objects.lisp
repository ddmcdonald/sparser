;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "grammatical-objects"
;;;   Module:  "model;core:mid-level:"
;;;  version:  October 2021

;; Initiated 10/19/21. Could have been an extension to the
;; document-parts file, but these are different

(in-package :sparser)

(define-category grammatical-element
  :specializes physical
  :instantiates nil
  :binds ((word :primitive word))
  :index (:permanent :key word)
  :documentation "This is for reference to thing
 in a text or the dictionary, e.g. 'the verb in the
 last sentence'. Instances of these things have locations,
 though the locations are always relative to some other
 aspect of the structure of some text.
    There is a very big overlap between the terms
 we want here, and the syntactic form categories.
 They don't have realizations, but are still found
 in the process of parsing.")


(defun define-type-of-grammatical-element (string)
  (let* ((word (resolve/make string))
         (category-spelling
          (string-append string ':-grammatical))
         (category-name (name-to-use-for-category category-spelling)))
    (let* ((category-form
            `(define-category ,category-name
               :specializes grammatical-element
               :instantiates :self
               :bindings (word ,word)))
           (category (eval category-form)))
      (let* ((object (define-individual category
                         :word word))
             (cfr (def-cfr/expr category (list word)
                    :form (category-named 'noun)
                    :referent object)))
        (add-rule cfr category)
        object))))



(eval-when (:compile-toplevel :load-toplevel :execute)
  ;; This list originated in the old list in
  ;; category-defining-words.
  ;; Other than the major parts of speech and grammatical
  ;; structures, many of these words are going to be
  ;; used with very different meanings (e.g. 'definite')
  ;; but we can revisit them when we have use-cases.
  (mapcar #'define-type-of-grammatical-element
          '(
            "adjective"
            "conjunction"
            "definite"
            "demonstrative"
            "imperative"
            "indefinite"
            "modal"
            "noun"
            "verb"

            "adjunct"
            
            "thematic" ; discourse level form category
            "anonymous"

            "punctuation"
            )))

