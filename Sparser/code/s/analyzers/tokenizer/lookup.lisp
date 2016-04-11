;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992,2012-2016 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "lookup"
;;;   Module:  "analysers/tokenizer/"
;;;  Version:  February 2016

;;  1.1 (v1.6 12/14/90) Cleans up the mess in Lookup as part of doing :ignore
;;      unknown words.
;;  2.0 (9/15/92 v2.3) utterly revamped to handle the different tokenizer
;;      (11/5/12) Guarded the symbol-value lookup because of cases when
;;       introducing words via Comlex where you can get a word started
;;       but not finished right away.
;; 2.1 (7/23/15) Got through the unknown word machinery in new cases
;;      were we have words that are introduced by polywords and will
;;      appear in the chart as words rather words covered by edges.
;; (2/5/16) Adjusted logic to appreciate capitalized variants.

(in-package :sparser)


;; (trace-morphology)

(defun find-word (char-type)
  "Called from finish-token to find or make the word that corresponds
  to the sequence of characters we just delimited and is resident in
  the lookup buffer right now."
  (declare (special *capitalization-of-current-token*))
  (let ((symbol (lookup-word-symbol))) ;; pull it from the buffer
    (if symbol
      (if (boundp symbol)
        (let ((word (symbol-value symbol)))
          ;; The word was cataloged, but that doesn't necessarily
          ;; mean that it's known in the sense of having associated
          ;; rules (unary edge or edges). It may only have been
          ;; defined as part of a polyword rather than in its
          ;; own right as an independent word.
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
                ;; (tr :tw-is-a-function-word word) - noisy
                word)
               ((punctuation? word) ;; see with Latin A with ring above
                word)
               ((null (rs-single-term-rewrites rs))
                ;; This indicates that this word, in its canonical
                ;; lowercase form, does not have an associated rule.
                ;; However this instance of the word may well be
                ;; capitalized (e.g.) and that 'variant' word 
                ;; may well have a rule. 
                (cond
                 ((eq *capitalization-of-current-token* :lower-case)
                  ;; actual capitalization matches word
                  (tr :tw-no-unary-rule word)
                  (establish-unknown-word char-type word))
                 ((word-capitalization-variants word)
                  ;; /// n.b. the :mixed-case version glosses over details
                  ;; so might consider something more specific if
                  ;; a miss-match causes us to redefine words with
                  ;; rules.
                  (let* ((v (capitalized-version
                             word *capitalization-of-current-token*))
                         (variant-rs (when v (rule-set-for v))))
                    (if variant-rs
                      (if (rs-single-term-rewrites variant-rs)
                        word ;; it's good
                        (establish-unknown-word char-type word))
                      (establish-unknown-word char-type word))))
                 ((memq char-type '(:number :alphabetical))
                  ;; In the tested cases, a rule set for a number 
                  ;; means that it's been referred to in a polyword
                  ;; and the rule set holds a pw-state in its fsa field.
                  ;; We pass it through the unknown word code to get it
                  ;; other properties
                  (establish-unknown-word char-type word))
                 ((rs-fsa rs) ;; typically a polyword state
                  (establish-unknown-word char-type word))
                 ((rs-completion-actions rs)
                  (establish-unknown-word char-type word))
                 (t (push-debug `(,word ,rs))
                    (cerror "Use it anyway."
                            "New char-type ~a in find-word." char-type)
		    (establish-unknown-word char-type))))

               (t ;; it has a rule-set and none of the 'is unknown' tests 
                  ;; fired so it must be a known word.
                word)))

            ;; We're not making edges over unknown words
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

