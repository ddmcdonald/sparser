;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "WH-word-semantics"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  0.1 May 2009

;; initiated 8/8/07. Added relatives 1/1/08
;; 0.1 Changed the names of the categories to just be the name of the pronoun.
;;     Had been, e.g., WHERE-OBLIQUE-PRONOUN-PRONOUN. Changed the from from NP to
;;     wh-pronoun.


(in-package :sparser)

;;;---------------
;;; base category
;;;---------------

(define-category interrogative-pronoun
  :specializes pronoun
  :binds ((word :primitive word))
  ;; We'd have them also bind the 'answer', sort of treat it like a trace
  ;; if we had already incorporated something like M's upper structure
  ;; and could provide value restrictions with the right kind of abstraction,
  ;; but they're not there yet, and we don't gratuitously make a PSI
  ;; for these right now (8/07).
  )

;; Could either do the specific sorts explicitly or in the rule,
;; but don't need it until they get value restriction

(define-category relative-pronoun
  :specializes pronoun
  :binds ((word :primitive word)))

;; There's not much pragmatic difference between interrogative and relative
;; pronouns. It's more a functional matter. So here's the wrong name for
;; a category that might span both of them and let us define the grammar
;; for these pronouns just once.

(define-category oblique-pronoun
  :specializes pronoun
  :binds ((word :primitive word)))



;;;----------------
;;; defining forms
;;;----------------

(defun define-pronoun-and-rule (string type)
  (let* ((pronoun-word (word-named string))
	 (category-name
	  (intern string (find-package :sparser)))
                ;(string-append string 
		;		 "-" 
		;		 (symbol-name type)
		;		 "-PRONOUN")
	 (category
	  (define-category/expr category-name
	     `(:specializes ,type
	       :instantiates 'self
	       :bindings (word (word-named ,string)))))
	 (rule-form `(def-cfr ,type (,string)
		       :form wh-pronoun
		       :referent ,category))
	 (rule (eval rule-form)))
    rule))

; Do we need to differentiate like this? Or would it be enough to
; get the functional properties (relative vs. interrogative) from
; a form-rule providing the context?

(defun define-interrogative-pronoun (string)
  (define-pronoun-and-rule string 'oblique-pronoun)
)

; Trying it. Now they specialize pronoun and (as before) have the
; category-name '<word>-pronoun'

(defun define-relative-pronoun (string)
  (define-pronoun-and-rule string 'oblique-pronoun)
)

;;;-------
;;; cases
;;;-------

;; keep this in sync with rules/words/WH words

(define-interrogative-pronoun "who")
(define-interrogative-pronoun "which")
(define-interrogative-pronoun "what")
(define-interrogative-pronoun "where")
(define-interrogative-pronoun "when")
(define-interrogative-pronoun "whom")
(define-interrogative-pronoun "whose")
(define-interrogative-pronoun "why")
(define-interrogative-pronoun "how")
(define-interrogative-pronoun "whether")
(define-interrogative-pronoun "how many")

;(define-relative-pronoun "who")
;(define-relative-pronoun "which")
(define-relative-pronoun "that")
;; Look up the rest
#|(define-relative-pronoun "")
(define-relative-pronoun "")
(define-relative-pronoun "")
(define-relative-pronoun "")
(define-relative-pronoun "")
(define-relative-pronoun "") |#

