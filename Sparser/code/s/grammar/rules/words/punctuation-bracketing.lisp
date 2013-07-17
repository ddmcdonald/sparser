;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-2005,2013  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "punctuation bracketing"
;;;   Module:  "grammar;rules:words:"
;;;  Version:  0.2 July 2013

;; initiated 4/26/91, extended 4/28,10/2
;; Required assignments to the source start/end pulled 11/24
;; (12/17/92 v2.3) pulled the assignments on function words
;;  and moved them to there [words;] files.  1/11/94 added more cases
;; 0.1 (7/26) moved assignments to apostrophe-s to [rules;FSAs:single quote]
;; 0.2 (3/18/05) Gave ".", "?", and "!" a .[phrase bracket so that periods would  
;;  have segments over them, which, since they never extend, will force a move
;;  to the forest-level at the end of every sentence.
;;  (7/17/13) added square and curly brackets

(in-package :sparser)


;;;----------------------------------
;;; (...), "..." <...>  [...]  {...}
;;;----------------------------------

(assign-bracket  open-paren  ].phrase )
(assign-bracket  open-paren  phrase.[ )
(assign-bracket  close-paren  ].phrase )
(assign-bracket  close-paren  phrase.[ )

(assign-bracket  open-angle-bracket  ].phrase )
(assign-bracket  open-angle-bracket  phrase.[ )
(assign-bracket  close-angle-bracket  ].phrase )
(assign-bracket  close-angle-bracket  phrase.[ )

(assign-bracket  open-square-bracket ].phrase)
(assign-bracket  open-square-bracket phrase.[)
(assign-bracket  close-square-bracket ].phrase)
(assign-bracket  close-square-bracket phrase.[)

(assign-bracket  open-curly-bracket ].phrase)
(assign-bracket  open-curly-bracket phrase.[)
(assign-bracket  close-curly-bracket ].phrase)
(assign-bracket  close-curly-bracket phrase.[)

(assign-bracket  double-quote  ].phrase )
(assign-bracket  double-quote  phrase.[ )


;;;----------------
;;;  ","  ";"  ":"
;;;----------------

(assign-bracket  comma  ].punctuation )
(assign-bracket  comma  punctuation.[ )

(assign-bracket  semi-colon  ].punctuation )
(assign-bracket  semi-colon  punctuation.[ )

(assign-bracket  colon  ].punctuation )
(assign-bracket  colon  punctuation.[ )


;;;---------------
;;; "."  "?"  "!"
;;;---------------

(assign-bracket  period  ].phrase )
(assign-bracket  period  .[phrase )
(assign-bracket  period  phrase.[ )
(assign-bracket  period  phrase]. )

(assign-bracket  question-mark  ].phrase )
(assign-bracket  question-mark  .[phrase )
(assign-bracket  question-mark  phrase.[ )
(assign-bracket  question-mark  phrase]. )

(assign-bracket  exclamation-point  ].phrase )
(assign-bracket  exclamation-point  .[phrase )
(assign-bracket  exclamation-point  phrase.[ )
(assign-bracket  exclamation-point  phrase]. )

#|
(assign-bracket/expr *newline* *open-after-newline*)
;;(symbol-value *close-before-newline*))
(assign-bracket/expr *newline* *open-after-newline*)
;;(symbol-value *open-after-newline*))|#
