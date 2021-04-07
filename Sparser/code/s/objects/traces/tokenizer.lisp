;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992,2014-2019 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "tokenizer"
;;;   Module:  "objects;traces:"
;;;  Version:  May 2019

;; Initiated 11/90 (v1.5)
;; 11/12/14 Adding traces for giving unknown words light content because of
;; their morphology and such. More 8/22/14 to cover individual cases
;; Adding as needed through 2/5/16

(in-package :sparser)


(defparameter *trace-next-token* nil)

(defparameter *trace-token-&-character-indicies* nil)

(defun trace-morphology ()
  (setq *trace-morphology* t))
(defun untrace-morphology ()
  (setq *trace-morphology* nil))

(defun trace-find-word ()
  (setq *trace-find-word* t))
(defun untrace-find-word ()
  (setq *trace-find-word* nil))

(defun trace-delay-unknown-judgment ()
  (setq *trace-delay-unknown-judgment* t))
(defun untrace-delay-unknown-judgment ()
  (setq *trace-delay-unknown-judgment* nil))

(defun trace-unknown-words ()
  (setq *show-word-defs* t))
(defun untrace-unknown-words ()
  (setq *show-word-defs* nil))

(defun trace-unknowns ()
  (trace-morphology)
  (trace-find-word)
  (trace-unknown-words))
(defun untrace-unknowns ()
  (untrace-morphology)
  (untrace-find-word)
  (untrace-unknown-words))


;;--- *trace-find-word*

(deftrace :fw-no-rule-set (word)
  ;; in find-word
  (when *trace-find-word*
    (trace-msg "[find] ~s does not have a rule set" (word-pname word))))

(deftrace :fw-no-rule-set/no-variants (word)
  ;; in find-word
  (when *trace-find-word*
    (trace-msg "[find] ~s does not have a rule set ~
                and no capitalization variants" (word-pname word))))

(deftrace :fw-no-rule-set/no-variant-with-rs (word variant)
  ;; in find-word
  (when *trace-find-word*
    (trace-msg "[find] ~s does not have a rule set ~
               and its variants ~a don't have a rule set either"
               (word-pname word) variant)))

(deftrace :fw-no-rule-set/lc (word)
  ;; in find-word
  (when *trace-find-word*
    (trace-msg "[find] ~s does not have a rule set. ~
                token capitalization is :lower-case" (word-pname word))))

(deftrace :fw-no-rule-set/variant-wrong-cap (word variant cap)
  ;; in find-word
  (when *trace-find-word*
    (trace-msg "[find] The is a capitalization variant of ~s: ~a~
              ~%   but it doesn't match the capitalization ~
              of this position: ~a" (word-pname word)
              variant cap)))

(deftrace :fw-variant-has-rule-set (word variant)
  ;; in find-word
  (when *trace-find-word*
    (trace-msg "[find] no rule set for ~s~
              ~%       but ~a has one" (word-pname word) variant)))

(deftrace :fw-variant-no-associated-category ()
  (when *trace-find-word*
    (trace-msg "[find] Though it doesn't have a category.")))

(deftrace :tw-is-a-function-word (word)
  ;; in find-word
  (when *trace-find-word*
    (trace-msg "[find] ~s is a function word" (word-pname word))))

(deftrace :tw-no-unary-rule (word)
  ;; in find-word
  (when *trace-find-word*
    (trace-msg "[find] ~s does not have a rule" (word-pname word))))

(deftrace :fw-symbol-unbound (symbol)
  ;; in find-word
  (when *trace-find-word*
    (trace-msg "[find] symbol ~a exists, but not bound to a word"
               (symbol-name symbol))))

(deftrace :fw-no-symbol ()
  ;; in find-word
  (declare (special *word-lookup-buffer*))
  (when *trace-find-word*
    (trace-msg "[find] \"~a\" no symbol. Completely unknown"
               *word-lookup-buffer*)))



;;--- *trace-delay-unknown-judgment*

(deftrace :storing-unknown-for-later (word pos-before)
  ;; called from store-word-and-handle-it-later
  (when *trace-delay-unknown-judgment*
    (trace-msg "[unknown] Delaying handling of unknown word ~a at p~a"
               (word-pname word)
              (pos-token-index pos-before))))

(deftrace :handling-unknown-word-stared-ot (pos-before)
  ;; called from deal-with-unhandled-unknown-words-at
  (when *trace-delay-unknown-judgment*
    (trace-msg "[unknown] (early) Handling unknown word at p~a"
               (pos-token-index pos-before))))

(deftrace :dealing-with-unknown-word-stared-ot (pos-before)
  ;; called from deal-with-unhandled-unknown-words-at
  (when *trace-delay-unknown-judgment*
    (trace-msg "[unknown] (late) Handling unknown word at p~a"
               (pos-token-index pos-before))))

(deftrace :unknown-word-is-known (edge)
  ;; called from deal-with-unhandled-unknown-words-at
  (when *trace-delay-unknown-judgment*
    (trace-msg "[unknown]   It's actual known: spanned by ~a" edge)))

(deftrace :unknown-word-is-spanned (edge)
  ;; called from deal-with-unhandled-unknown-words-at
  (when *trace-delay-unknown-judgment*
    (trace-msg "[unknown]   Nothing to do. It's been spanned: ~a" edge)))

(deftrace :unknown-word-is-covered ()
  ;; called from deal-with-unhandled-unknown-words-at
  (when *trace-delay-unknown-judgment*
    (trace-msg "[unknown]   Some edge covers it.")))

(deftrace :unknown-word-to-bio-entity (word)
  ;; called from handle-unknown-word-as-bio-entity
  (when *trace-delay-unknown-judgment*
    (trace-msg "[unknown] Defining ~s as a bio-entity" (pname word))))

(deftrace :unknown-word-bio-edge (edge)
  ;; called from handle-unknown-word-as-bio-entity
  (when *trace-delay-unknown-judgment*
    (trace-msg "[unknown] Put edge over unknown word: ~a" edge)))


;;--- *show-word-defs*

(deftrace :make-word/entry-and-properties (morph-keyword entry)
  ;; called from make-word/all-properties/or-primed
  (when *show-word-defs*
    (trace-msg "[unknown] morph-keyword: ~a~
              ~%   Comlex-entry: ~a"
               morph-keyword entry)))

(deftrace :make-word/entry (entry)
  ;; called from look-for-primed-word-else-all-properties
  (when *show-word-defs*
    (trace-msg "[unknown] Comlex-entry: ~a" entry)))

(deftrace :make-word/properties (morph-keyword)
  ;; called from make-word/all-properties
  (when *show-word-defs*
    (trace-msg "[unknown] morph-keyword: ~a" morph-keyword)))

(deftrace :verb+prep (verb prep)
  ;; setup-bound-preposition
  (when *show-word-defs*
    (trace-msg "Created ~s + ~s" (pname verb) (pname prep))))

(deftrace :required-verb (word category)
  ;; called from setup-word-based-verb-category
  (when *show-word-defs*
    (trace-msg "Created needed verb ~s as a ~a"
               (word-pname word) (cat-name category))))
    


;;--- *trace-morphology*

(deftrace :defining-unknown-word-from-morph (word morph-keyword)
  ;; called from assign-morph-brackets-to-unknown-word
  (when *trace-morphology*
    (trace-msg "[unknown]  unknown word ~s keyword: ~a"
               (word-pname word) morph-keyword)))

(deftrace :defining-as-given-morph (pos-term)
  ;; called from assign-morph-brackets-to-unknown-word
  (when *trace-morphology*
    (trace-msg "[Morphology] defining as a ~a" pos-term )))

(deftrace :defining-lemma-as-given-morph (lemma pos-term)
  ;; called from assign-morph-brackets-to-unknown-word
  (when *trace-morphology*
    (trace-msg "[Morphology] defining lemma ~s as a ~a"
               (word-pname lemma) pos-term)))

(deftrace :unknown-word-defaulted-to-noun (word)
  ;; called from setup-unknown-word-by-default, which is the
  ;; last case in, e.g., make-word/all-properties/or-primed
  (when *trace-morphology*
    (trace-msg "Defining the unknown word ~s as a noun by default"
               (word-pname word))))

(deftrace :word-corresponds-to-obo (word obo)
  ;; called from setup-word-denoting-an-OBO
  (when *trace-morphology*
    (trace-msg "Assigning unknown word ~s to the OBO term ~a"
               (word-pname word) obo)))

(deftrace :morph-edge-with-generated-category? (word category)
  ;; called from make-morph-edge-over-unknown-word
  (when *trace-morphology*
    (if category
      (trace-msg "Making morph edge over ~s as a ~a"
                 (pname word) category)
      (trace-msg "Making moph edge over ~s without a generated ~
                  category" (pname word)))))

