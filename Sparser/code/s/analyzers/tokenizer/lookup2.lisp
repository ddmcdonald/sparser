;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992,2012-2015  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "lookup"
;;;   Module:  "analysers/tokenizer/"
;;;  Version:  2.1 July 2015

;;  1.1 (v1.6 12/14/90) Cleans up the mess in Lookup as part of doing :ignore
;;      unknown words.
;;  2.0 (9/15/92 v2.3) utterly revamped to handle the different tokenizer
;;      (11/5/12) Guarded the symbol-value lookup because of cases when
;;       introducing words via Comlex where you can get a word started
;;       but not finished right away.
;; 2.1 (7/23/15) Got through the unknown word machinery in new cases
;;      were we have words that are introduced by polywords and will
;;      appear in the chart as words rather words covered by edges.

(in-package :sparser)


(defun find-word (char-type)
  ;; Called from finish-token to find or make the word that corresponds
  ;; to the sequence of characters we just delimited and is resident in
  ;; the lookup buffer right now.
  (let ((symbol (lookup-word-symbol)))
    (if symbol
      (if (boundp symbol)
        (let ((word (symbol-value symbol)))
          (tr :fw-symbol-bound-to word)
          (if *edge-for-unknown-words*
            ;; In this case we have to look at whether there is
            ;; a rule-set, and if there is that is has unary rule
            ;; (and a category the rule refers to) rather then
            ;; the typical case where there's an fsa but no rule.
            ;; If there isn't one, we pass the word through the
            ;; unknown word machinery, which will give it one
            (let ((rs (rule-set-for word)))
              (cond
               ((null rs)
                (tr :fw-no-rule-set word)
                (establish-unknown-word char-type word))
               ((memq :function-word (plist-for word)) ;; "than"
                (tr :tw-is-a-function-word word)
                word)
               ((null (rs-single-term-rewrites rs))
                (tr :tw-no-unary-rule word)
                (establish-unknown-word char-type word))
               (t
                word)))
            word))

        ;; Symbol exists but isn't bound
        (else
          (tr :fw-symbol-unbound symbol)
          (establish-unknown-word char-type)))

      ;; There's no symbol
      (else
        (tr :fw-no-symbol)
        (establish-unknown-word char-type)))))

#|
;; original
(defun find-word (char-type)
  (let ((symbol (lookup-word-symbol)))
    (if symbol
      (if (boundp symbol)
        (symbol-value symbol)
        (establish-unknown-word char-type))
      (establish-unknown-word char-type)))) |#

