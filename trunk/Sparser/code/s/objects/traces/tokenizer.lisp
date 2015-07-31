;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992,2014 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "tokenizer"
;;;   Module:  "objects;traces:"
;;;  Version:  December 2014

;; Initiated 11/90 (v1.5)
;; 11/12/14 Adding traces for giving unknown words light content because of
;; their morphology and such. More 8/22/14 to cover individual cases
;; Adding as needed through 12/9/14

(in-package :sparser)


(defparameter *trace-next-token* nil)

(defparameter *trace-token-&-character-indicies* nil)

(defun trace-morphology ()
  (setq *trace-morphology* t))

(defun untrace-morphology ()
  (setq *trace-morphology* nil))

(deftrace :fw-symbol-bound-to (word)
  ;; in find-word
  (when *trace-morphology*
    (trace-msg "[find] symbol is bound to ~s" (word-pname word))))

(deftrace :fw-no-rule-set (word)
  ;; in find-word
  (when *trace-morphology*
    (trace-msg "[find] ~s does not have a rule set" (word-pname word))))

(deftrace :tw-is-a-function-word (word)
  ;; in find-word
  (when *trace-morphology*
    (trace-msg "[find] ~s is a function word" (word-pname word))))

(deftrace :tw-no-unary-rule (word)
  ;; in find-word
  (when *trace-morphology*
    (trace-msg "[find] ~s does not have a rule" (word-pname word))))

(deftrace :fw-symbol-unbound (symbol)
  ;; in find-word
  (when *trace-morphology*
    (trace-msg "[find] symbol ~a exists, but not bound to a word"
               (symbol-name symbol))))

(deftrace :fw-no-symbol ()
  ;; in find-word
  (when *trace-morphology*
    (trace-msg "[find] no symbol. Completely unknown")))

(deftrace :defining-unknown-word-from-morph (word morph-keyword)
  ;; called from assign-morph-brackets-to-unknown-word
  (when *trace-morphology*
    (trace-msg "[Morphology] unknown word ~s keyword: ~a"
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
  ;; called from setup-unknown-word-by-default
  (when *trace-morphology*
    (trace-msg "Defining the unknown word ~s as a noun by default"
               (word-pname word))))

(deftrace :word-corresponds-to-obo (word obo)
  ;; called from setup-unknown-word-by-default
  (when *trace-morphology*
    (trace-msg "Assignnig unknown word ~s to the OBO term ~a"
               (word-pname word) obo)))

