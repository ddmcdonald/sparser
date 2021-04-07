;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992,2012-2020 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "lookup"
;;;   Module:  "analysers/tokenizer/"
;;;  Version:  December 2020

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
#|
;; original
(defun find-word (char-type)
  (let ((symbol (lookup-word-symbol)))
    (if symbol
      (if (boundp symbol)
        (symbol-value symbol)
        (establish-unknown-word char-type))
      (establish-unknown-word char-type)))) |#

;; (trace-morphology)

(defparameter *trap-errors-inside-find-word* t
  "Controls whether or not use wrap the body of the find-word function
 inside an error handler. An error at any point from the initial
 handling of the word as a token through to constructing categories
 and realizations for the words that are unknown will be caught by
 the handler, which then returns a nonesense word to go into the chart.")

(defun find-word (char-type)
  "Called from finish-token to find or make the word that corresponds
   to the sequence of characters we just delimited and is resident in
   the lookup buffer right now."
  (if *trap-errors-inside-find-word*
    (handler-case
        (body-of-find-word char-type)
      (error (e) (resolve/make "ErrorInFindWord")))
    ;; let the error surface so we can debug it.
    (body-of-find-word char-type)))

(defun body-of-find-word (char-type)
  (let ((symbol (lookup-word-symbol))) ;; pull it from the buffer
    (if symbol
      (if (boundp symbol)
        (let ((word (symbol-value symbol)))
          (cond
            ((not (word-p word))
             ;; this should not occur
             (error "The symbol '~a' in package ~a~
                   ~%was returned from the tokenizer's lookup buffer~
                   ~%but is a ~a rather than a word."
                    symbol (symbol-package symbol)
                    (type-of word)))
            (*edge-for-unknown-words*
             ;; mostly concerned with portions of polywords
             (really-known-word? word char-type))
            (t
             ;; We're not making edges over unknown words
             word)))

        ;; Symbol exists but isn't bound
        (else
          (tr :fw-symbol-unbound symbol)
          (establish-unknown-word char-type)))

      ;; There's no symbol
      (else
        (tr :fw-no-symbol)
        (establish-unknown-word char-type)))))


 

(defun really-known-word? (word &optional char-type)
  "This is a subroutine of find-word, where we've established
   that the word symbol is bound and that it's a word.
      The word was cataloged, but that doesn't necessarily
   mean that it's known in the sense of having associated
   rules (unary edge or edges). It may only have been
   defined as part of a polyword rather than in its
   own right as an independent word."
  ;; Compare this to known-word? which just requires there to be
  ;; a rule set.
  (declare (special *edge-for-unknown-words*))

  (let ((rs (rule-set-for word)))
    (cond
      (rs ;; it has a rule set
       (cond
         ((memq :function-word (plist-for word)) ;; "than"
          word)
      
         ((punctuation? word) ;; see with Latin A with ring above
          word)

         ((rs-single-term-rewrites rs)
          (if (supress-rules? rs)
            (establish-unknown-word char-type word)
            word))

         ((and char-type (current-script :biology))
          ;; The test is really "do we require that this word is
          ;; associated with a category and will be covered by
          ;; an edge when it is scanned.
          (word-has-associated-category word rs char-type))

         (*edge-for-unknown-words*
          ;; The word has a rule set, but there is no evidence
          ;; that it has a corresponding category (softer version
          ;; of the case just above) so we have to push it
          ;; through the category-creating machinery.
          (establish-unknown-word char-type word))

         (t word)))

      ((null rs)
       (if (capitalization-variant-is-known? word char-type)
         word
         (establish-unknown-word char-type word))))))


(defun capitalization-variant-is-known? (word char-type)
  "But is it capitalized in this instance and
   does it have a matching capitalized variant with a rule set?
   Motivated specifically by lowercase single letters
   that in context are intended to be understood as
   capitalized letters. See initials. The variant will be
   used when we lookup the rule to use when the word is
   scanned."
  (declare (special *capitalization-of-current-token*))
  (cond
    ((eq *capitalization-of-current-token* :lower-case)
     (tr :fw-no-rule-set/lc word)
     nil)
    (t
     (let ((variants (word-capitalization-variants word)))
       (cond
         (variants
          (let ((word-with-rs (loop for w in variants
                                 ;;/// somewhere is a better test
                                 ;; that looks for the match
                                 when (rule-set-for w) return w)))
            (cond
              (word-with-rs
               ;; Does the capitalization match?
               (if (eq (word-capitalization word-with-rs)
                       *capitalization-of-current-token*)
                 (then
                   (tr :fw-variant-has-rule-set word word-with-rs)
                   (if (word-with-single-edge-rules? word-with-rs)
                     t ;;word-with-rs
                     (else
                       (tr :fw-variant-no-associated-category)
                       nil)))
                 (else
                   (tr :fw-no-rule-set/variant-wrong-cap
                       word word-with-rs *capitalization-of-current-token*)
                   nil)))
              (t
               (tr :fw-no-rule-set/no-variant-with-rs
                   word variants)
               nil))))
         (t
          (tr :fw-no-rule-set/no-variants word)
          nil))))))

(defun word-has-associated-category (word rs char-type)
  (declare (special *capitalization-of-current-token*))
  (cond
    ((rs-single-term-rewrites rs) word)
    (t
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
        ;; We pass it through the unknown word code to get its
        ;; other properties
        (establish-unknown-word char-type word))
       ((rs-fsa rs) ;; typically a polyword state
        (establish-unknown-word char-type word))
       ((rs-completion-actions rs)
        (establish-unknown-word char-type word))
       (t (push-debug `(,word ,rs))
          (cerror "Use it anyway."
                  "New char-type ~a in find-word." char-type)
          (establish-unknown-word char-type))))))
