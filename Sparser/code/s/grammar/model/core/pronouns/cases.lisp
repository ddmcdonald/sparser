;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994-1996,2013  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "cases"
;;;   Module:  "model;core:pronouns:"
;;;  version:  1.2 March 2013

;; 1.0 (7/11/94) completely redone from scratch.
;; 1.1 (6/27/96) made "i" into "I" so that it would be correctly recognized.
;; 1.2 (3/15/13) Replaced np form with prounoun

(in-package :sparser)


;;--- subject pronouns   "X did it"

(define-pronoun "I"    'first/singular 'pronoun)
(define-pronoun "you"  'second         'pronoun)
(define-pronoun "he"   'male           'pronoun)
(define-pronoun "she"  'female         'pronoun)
(define-pronoun "it"   'inanimate      'pronoun)

(defparameter *you* (find-individual 'pronoun/second
                                     :word "you"))


(define-pronoun "we"   'first/plural 'pronoun)
(define-pronoun "they" 'plural       'pronoun)


;;--- object pronouns   "known to X"

(define-pronoun "me"   'first/singular 'pronoun)
(define-pronoun "us"   'first/plural   'pronoun)
(define-pronoun "him"  'male           'pronoun)
(define-pronoun "them" 'plural         'pronoun)


;;--- ambiguous between object and possessive
;;       "known to X" or "X birthday"

(define-pronoun "her"   'female 'possessive/np)


;;--- possessive pronouns  "X birthday"

(define-pronoun "my"    'first/singular  'possessive)
(define-pronoun "his"   'male            'possessive)
(define-pronoun "its"   'inanimate       'possessive)

(define-pronoun "our"   'first/plural 'possessive)
(define-pronoun "your"  'second       'possessive)
(define-pronoun "their" 'plural       'possessive)



;;--- possessive, non-determiner pronouns   "X are bigger"

(define-pronoun "mine"   'first/singular 'possessive/pronoun)
(define-pronoun "ours"   'first/plural   'possessive/pronoun)
(define-pronoun "yours"  'second         'possessive/pronoun)
(define-pronoun "theirs" 'plural         'possessive/pronoun)


;;-- reflexives

(define-pronoun "myself"     'first/singular 'reflexive/pronoun)
(define-pronoun "ourselves"  'first/plural   'reflexive/pronoun)
(define-pronoun "yourself"   'second         'reflexive/pronoun)
(define-pronoun "yourselves" 'second         'reflexive/pronoun)
(define-pronoun "himself"    'male           'reflexive/pronoun)
(define-pronoun "herself"    'female         'reflexive/pronoun)
(define-pronoun "itself"     'inanimate      'reflexive/pronoun)
(define-pronoun "themselves" 'plural         'reflexive/pronoun)

