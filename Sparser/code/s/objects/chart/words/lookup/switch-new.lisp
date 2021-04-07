;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1994,2012-2015,2021  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "switch new"
;;;   Module:  "objects;chart:words:lookup:"
;;;  Version:   April 2021

;; 1.0 (2/6/92 v2.2) Pulled the original version of Make-new... and
;;      replaced it with two more specific cases
;;     (12/12/94 v2.3) added the :no-properties case
;;     (3/1/12) quiet compiler
;;     (10/14/14) added :capitalization-digits-&-morphology/or-primed
;;     (10/6/15) Added second optional to accommodate

(in-package :sparser)

(defun what-to-do-with-unknown-words (keyword)
  (declare (special *unknown-word-policy*))
  (setq *unknown-word-policy* keyword))

(defun establish-unknown-word (character-type &optional existing-word)
  "Called from find-word (and its subroutines) when the tokenizer
   returns a word that we don't know. There are different things we
   can do to enrich (or not) how much we know about the word.
   The options here are ordered from most-extensive to least.
   They all return a word."
  (declare (special *unknown-word-policy*))
  (ecase *unknown-word-policy*
    (:capitalization-digits-&-morphology/or-primed
     (make-word/all-properties/or-primed character-type existing-word))
    (:capitalization-digits-&-morphology
     (make-word/all-properties character-type existing-word))
    (:check-for-primed
     (look-for-primed-word-else-all-properties character-type existing-word))
    (:capitalization-&-digits
     (make-word/capitalization-&-digits character-type existing-word))
    (:no-properties
     (make-word/no-properties character-type existing-word))))
