;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990,1992  Content Technologies Inc.
;;; copyright (c) 1992,1993  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "whitespace"
;;;   Module:  "objects;words:"
;;;  Version:   2.0     June 1990

;; initiated 6/90

(in-package :sparser)


(defun whitespace (word)
  "A predicate that tests whether a word has been designated as
   whitespace."
  ;; no data check because it's such a centrally located test
  ;; within the analysis process -- every word is checked as it
  ;; comes out of the tokenizer.  ///If it's important to supply
  ;; this as part of the API we should probably specialize it so
  ;; that there are two versions and the check is made
  (eq (word-rules word) :whitespace))



(defun define-to-be-whitespace (string-for-word_or_word)
  (let ((word
         (etypecase string-for-word_or_word
           (string
            (word-named string-for-word_or_word))
           (word string-for-word_or_word))))

    (if (null word)
      (format t "~%~%!!! There is no definition for the word \"~A\"~
                   ~%    Consequently it cannot be defined as whitespace"
              string-for-word_or_word)
      (else
        (setf (word-rule-set word)
              :whitespace)
        word))))

