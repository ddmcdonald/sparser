;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994,1995 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008-2010 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "adverbs"
;;;   Module:  "grammar;rules:words:"
;;;  Version:  February 2010

;; initiated 5/16/93 v2.3. Populated 1/11/94. Added to 1/12,1/13
;; 0.1 (5/26) redid the bracket label as 'adverb'
;; 0.2 (1/30/95) redid the adverb-adverbs as 'phrase' rather than 'adverb'
;;      to block triggering vg-mining of the segments they start
;; 0.3 (4/12) redone as 'define-adverb', etc.
;; 0.4 (10/13) redefined Define-adverb and moved it to [syntax;adverbs]
;;     (4/24/08) added more words. Moved in the category and def form
;;      from rules/syntax/adverbs to make this file more in the style
;;      of words/quantifies1, largely to keep "despite" from being spanned
;;      as a head noun because the 'adverb' aspect isn't introducing
;;      an edge. 
;;     (2/3/10) removed "few" since it should really be taken as a quantifier
;;     (2/10) Gave "too" and "very" ].adverb brackets: "a very small ..."

(in-package :sparser)

;;;------------------------------------------------------------------------
;;; an anonymous category to go with anonymous adverbs combined in by form
;;;------------------------------------------------------------------------

(define-category anonymous-adverb)

(defun define-adverb (string &optional brackets)
  ;; called when a word is auto-def'd as a semantics-free adverb
  (unless brackets
    (setq brackets '( ].adverb )))
  (let ((word (define-function-word string
                :brackets brackets
                :form (category-named 'adverb))))
    (define-cfr (category-named 'anonymous-adverb)  (list word)
      :form (category-named 'adverb)
      :referent word)))

;;;---------- adverb adverbs

;; Since these don't start verb groups, they can't be marked 'adverb'

(define-function-word "too"   :brackets '( ].adverb .[adverb ))
(define-function-word "very"  :brackets '( ].adverb .[adverb ))



;;;---------- approximators

;; (A)  "I have just seven days left"
;; (B)  "I just came back from there"
;;
;;  These bind to their left,
;;  and they terminate whatever is ongoing

(define-function-word "about"   :brackets '( ].adverb ))
(define-function-word "around"  :brackets '( ].adverb ))

(define-function-word "fairly"  :brackets '( ].adverb ))

(define-function-word "just"    :brackets '( ].adverb ))
(define-function-word "only"    :brackets '( ].adverb ))



;;;---------- comparatives
;;
;; All of these are determiners

;; These combine to their right with adverbs
;;
(define-function-word "less"   :brackets '( ].adverb ))
(define-function-word "more"   :brackets '( ].adverb ))
(define-function-word "most"   :brackets '( ].adverb ))

;; These don't combine with adverbs
;;
(define-function-word "fewer" :brackets '( ].adverb  ))


;; ??
(define-function-word "than" )


;;;---------- frequency

(define-function-word "always"     :brackets '( ].adverb ))
(define-function-word "frequently" :brackets '( ].adverb ))
(define-function-word "never"      :brackets '( ].adverb ))
(define-function-word "often"      :brackets '( ].adverb ))
(define-function-word "rarely"     :brackets '( ].adverb ))
(define-function-word "seldom"     :brackets '( ].adverb ))
(define-function-word "usually"    :brackets '( ].adverb ))


;;;---------- position within a process
; These can be positioned sentence initial or final as well
; a pre-verb, so they need bracketing that can indicate
; segment starts too.

(define-function-word "initially"    :brackets '( ].adverb  adverb.[ ))
(define-function-word "finally"    :brackets '( ].adverb  adverb.[ ))
(define-function-word "eventually"    :brackets '( ].adverb  adverb.[ ))


;;;---------- likelyhood

(define-function-word "probably"   :brackets '( ].adverb ))



;;;---------- sequencers, can start NPs

(define-function-word "last"   :brackets '( ].adverb .[np ))
(define-function-word "next"   :brackets '( ].adverb .[np  ))


;;;------
;;; time
;;;------

;;;---------- deictic, standalone

(define-function-word "immediately" :brackets '( ].adverb  adverb.[ ))
(define-function-word "soon"        :brackets '( ].adverb  adverb.[ ))


;;;---------- deictic, complement-taking

(define-function-word "earlier"  :brackets '( ].adverb  adverb.[ ))
(define-function-word "later"  :brackets '( ].adverb  adverb.[ ))


;;;------------
;;; {attitude}
;;;------------
;  Take nominalized clauses/participials

(define-function-word "despite" :brackets '( ].adverb .[phrase ))
;; If we had a "starts clause" bracket that might help

(define-function-word "in spite of" :brackets '( ].adverb .[np ))
(define-function-word "regardless of" :brackets '( ].adverb .[np ))


;;;------------
;;; enablement
;;;------------

;; These take interesting complements. Refine the brackets?
(define-function-word "in order to" :brackets '(].phrase .[phrase))
(define-function-word "so that" :brackets '(].phrase .[phrase))


