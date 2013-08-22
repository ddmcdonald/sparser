;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994-1997,2013 David D. McDonald  -- all rights reserved
;;;
;;;      File:  "others"
;;;    Module:  "grammar;model:core:adjuncts:"
;;;   version:  January 2013

;; initiated 1/18/13. Goes with the modifiers file in dossiers in that it
;; provides def-forms for all the other sorts of standard modifiers that
;; weren't handled on independently back in the day.

(in-package :sparser)


;;;------------
;;; enablement
;;;------------
;; These are subordinating conjunctions. The state that the term
;; to their left makes possible the term to their right. Both terms




;;;-----------------------
;;; Position in a process
;;;-----------------------

;; Like the sequencers ("next", "subsequent") but always modifies
;; a verb. Imposes a reading on the verb's event that it denotes 
;; a process.

(defun define-position-in-process (string)
  (define-function-term string 'adverb
    :super-category 'adverbial
    :brackets '( ].adverb  adverb.[ )
    :tree-families '(pre-verb-adverb post-verb-adverb sentence-adverb)))


;;;---------------
;;; reflection on 
;;;---------------
;; <A happened> despite <proposition P>
;;  Binds to a clause to its right creating an adjunct to the clause
;;  to its left in the same style as a purpose clause. 
;;  Functionally is a subordinating conjunction
;;  Takes nominalized clauses/participials

(defun define-reflection-on (string)
  (define-function-term string 'subordinate-conjunction
    ;; If we had a "starts clause" bracket that might help
    :brackets '( ].adverb .[np )
    ;; This isn't the right ETF, but it sort of patterns right
    :tree-families '(sentence-adverb)))


;;;-----------
;;; subjuncts
;;;-----------
; These are interesting semantically in the discourse relationships
; they create/evoke, but it's subtle so when we understand it we can
; handle it in the modified method. The different functions mostly
; follow Quirk. 
;//// Cries out for a few categories (specializing modifies) to
; carry at least a weak meaning. 

;; Letting it all flow thru adverb is laziness since there are
;; patterns that don't always apply
(defun define-focusing-adverb (string)
  (define-adverb string))
  