;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1999,2011-2012  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008-2010 BBNT Solutions LLC. All Rights Reserved
;;; $Id$
;;; 
;;;     File:  "types"
;;;   Module:  "grammar;rules:brackets:"
;;;  Version:  0.2 November 2012

;; initiated 4/26/91, extended 4/30
;;   Required assignments to the source start/end pulled 11/24
;;   6/15/93 v2.3 added punctuation.  Renamed 3/17/94.  5/26 Added adverbs
;;   6/7 added mvb.].  7/11 added .[article   7/13 added mvb.[   10/19 fixed typo
;; 0.1 (1/24/95) added 'rank' arguments.  1/30 added '[that'
;;     (4/19) added modal and aux
;;     (10/12) added a generic routine that has to go here so that it can reference
;;      a bracket via its symbol.
;;     (6/28/96) added ].[ around text-segment. 
;;     (11/26/99) added ].proper-noun, proper-noun.[ for single word realizations.
;;     (4/26/09) Added a set for prepositions on the pattern used for conjunctions.
;;     (10/13/09) Added adjectives. (2/10/10) Added quantifier.
;; 0.2 (8/1/11) Added a whole flock of new cases for words known to have multiple
;;      parts of speech. 11/8/12 added adj-verb 11/25/12 .[adj-adv

(in-package :sparser)

;;;------------------
;;; plain boundaries
;;;------------------

;; already loaded by the "required" file
;;
(define-bracket :[ :after  phrase 5)   ;; phrase.[
(define-bracket :] :before phrase 5)   ;; ].phrase

(define-bracket :] :after  phrase 5)  ;; phrase].
(define-bracket :[ :before phrase 5)  ;; .[phrase


;;;----------------------------
;;; phrase-specific boundaries
;;;----------------------------

(define-bracket :]  :before  adverb 1)   ;; ].adverb
(define-bracket :[  :before  adverb 1)   ;; .[adverb
(define-bracket :[  :after   adverb 1)   ;; adverb.[

(define-bracket :]  :before  verb 1)   ;; ].verb
(define-bracket :[  :before  verb 1)   ;; [.verb

(define-bracket :]  :after  mvb 1)  ;; mvb].
(define-bracket :[  :after  mvb 1)  ;; mvb.[

(define-bracket :]  :after  aux 1)  ;; aux].
(define-bracket :[  :after  aux 1)  ;; aux.[

(define-bracket :[  :before  modal 1)  ;; .[modal

(define-bracket :]  :before  adjective)    ;; ].adjective
(define-bracket :[  :before  adjective 1)  ;; .[adjective

(define-bracket :]  :before  quantifier 1) ;; ].quantifier

(define-bracket :[  :before  np 1)  ;; .[np
(define-bracket :]  :after   np 1)  ;; np].

(define-bracket :]  :before  proper-noun 1)  ;;  ].proper-noun
(define-bracket :[  :after   proper-noun 1)  ;;  proper-noun.[

(define-bracket :[  :before  article 1)  ;;  .[article
(define-bracket :[  :before  "that" 1)   ;;  |.[that|  <-- note ||

(define-bracket :]  :before  preposition 1)  ;; ].preposition
(define-bracket :]  :after   preposition 1)  ;; preposition].
(define-bracket :[  :after   preposition 1)  ;; preposition.[

(define-bracket :]  :before  treetop 1)  ;;  ].treetop
(define-bracket :[  :after   treetop 1)  ;;  treetop.[


(define-bracket :]  :before  conjunction 1)   ;; ].conjunction
(define-bracket :[  :after   conjunction 1)   ;; conjunction.[
(define-bracket :]  :after   conjunction 1)   ;; conjunction].

(define-bracket :]  :before  punctuation 1)  ;; ].punctuation
(define-bracket :[  :after   punctuation 1)  ;; punctuation.[

(defparameter *close-before-newline*
  (define-bracket :]  :before  newline 0))  ;; symbol is impractical because
(defparameter *open-after-newline*          ;; you have to quote a newline char
  (define-bracket :[  :after   newline 0))  ;; e.g. "].\
;; "

(define-bracket :]  :before  text-segment 0)   ;; ].text-segment
(define-bracket :[  :after   text-segment 0)   ;; text-segment.[


;;;---------------------
;;; for ambiguous words
;;;---------------------

(define-bracket :]  :before  adj-adv 1)   ;; ].adj-adv
(define-bracket :[  :before  adj-adv 1)   ;; .[adj-adv
;; Adjectives and adverbs both start phrases, so they should signal
;; the close of any ongoing segment and be part of the next one.

;; Adjective/verb treaked like a verb and like an adjective
(define-bracket :]  :before adj-verb 1) ;; ].adj-verb
(define-bracket :[  :before adj-verb 1) ;; .[adj-verb

(define-bracket :[  :before  np-vp 1)    ;; .[np-vp
;; Either a noun-phrase or a verb-group could start at this position

(define-bracket :]  :before  np-vp 1) ;; ].np-vp
;; Any ongoing phrase should stop (subject to the usual exceptions)

(define-bracket :]  :after  np-vp 1) ;; np-vp].
;; we're the end of the segment (usually)

(define-bracket :[  :after  np-vp 1) ;; np-vp.[
;; another segment can start here





;;;------------------------------------------------
;;; generic operations involving specific brackets
;;;------------------------------------------------

(defun introduce-segment-separating-brackets (position label
                                              &optional
                                                 newly-scanned-position? )
  (let ((end-bracket   (symbol-value '].phrase ))
        (start-bracket (symbol-value 'phrase.[ )))

    (if newly-scanned-position?
      (then
        (do-boundary/ends-before label position end-bracket)
        (do-boundary/begins-after label position start-bracket))

      (else
        ;; Uses different placement routine because of the need to check
        ;; for any bracket that might already be at that position and
        ;; only replacing it if this one has a higher rank.
        (place-boundary/ends-before label position end-bracket)
        (place-boundary/begins-after label position end-bracket)))))


