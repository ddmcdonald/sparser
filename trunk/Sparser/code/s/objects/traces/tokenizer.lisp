;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992,2014 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "tokenizer"
;;;   Module:  "objects;traces:"
;;;  Version:  August 2014

;; Initiated 11/90 (v1.5)
;; 11/12/14 Adding traces for giving unknown words light content because of
;; their morphology and such. More 8/22/14 to cover individual cases

(in-package :sparser)


(defparameter *trace-next-token* nil)

(defparameter *trace-token-&-character-indicies* nil)

(defun trace-morphology ()
  (setq *trace-morphology* t))

(defun untrace-morphology ()
  (setq *trace-morphology* nil))

(deftrace :defining-unknown-word-from-morph (word morph-keyword)
  ;; called from assign-morph-brackets-to-unknown-word
  (when *trace-morphology*
    (trace-msg "[Morphology] unknown word ~s keyword: ~a"
               (word-pname word) morph-keyword)))


(deftrace :defining-as-given-morph (pos-term morph-term)
  ;; called from assign-morph-brackets-to-unknown-word
  (when *trace-morphology*
    (trace-msg "[Morphology] defining as a ~a because of ~a"
               pos-term morph-term)))

(deftrace :defining-lemma-as-given-morph (lemma pos-term morph-term)
;; called from assign-morph-brackets-to-unknown-word
  (when *trace-morphology*
    (trace-msg "[Morphology] defining lemmaa ~s as a ~a because of ~a"
               (word-pname lemma)
               pos-term morph-term)))

