;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994-1996  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "cases"
;;;   Module:  "model;core:pronouns:"
;;;  version:  1.0 June 1994

;; 1.0 (7/11/94) completely redone from scratch.
;; 1.1 (6/27/96) made "i" into "I" so that it would be correctly recognized.

(in-package :sparser)


;;--- subject pronouns   "X did it"

(define-pronoun "I"    'first/singular 'np)
(define-pronoun "you"  'second         'np)
(define-pronoun "he"   'male           'np)
(define-pronoun "she"  'female         'np)
(define-pronoun "it"   'inanimate      'np)

(defparameter *you* (find-individual 'pronoun/second
                                     :word "you"))


(define-pronoun "we"   'first/plural 'np)
(define-pronoun "they" 'plural       'np)


;;--- object pronouns   "known to X"

(define-pronoun "me"   'first/singular 'np)
(define-pronoun "us"   'first/plural   'np)
(define-pronoun "him"  'male           'np)
(define-pronoun "them" 'plural         'np)


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

(define-pronoun "mine"   'first/singular 'possessive/np)
(define-pronoun "ours"   'first/plural   'possessive/np)
(define-pronoun "yours"  'second         'possessive/np)
(define-pronoun "theirs" 'plural         'possessive/np)


;;-- reflexives

(define-pronoun "myself"     'first/singular 'reflexive/np)
(define-pronoun "ourselves"  'first/plural   'reflexive/np)
(define-pronoun "yourself"   'second         'reflexive/np)
(define-pronoun "yourselves" 'second         'reflexive/np)
(define-pronoun "himself"    'male           'reflexive/np)
(define-pronoun "herself"    'female         'reflexive/np)
(define-pronoun "itself"     'inanimate      'reflexive/np)
(define-pronoun "themselves" 'plural         'reflexive/np)

