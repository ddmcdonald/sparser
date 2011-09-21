;;; -*- Mode: Lisp; Package:MUMBLE; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id: attachment-points.lisp 346 2010-02-01 19:28:19Z dmcdonal $

;;; Mumble-86; grammar; attachment-points
;;;
;;; Copyright (C) 1985, 1986, 1987, 1988  David D. McDonald and the
;;;    Mumble Development Group.  All rights reserved.
;;;    Permission is granted to use and copy this file of the Mumble-86 system for
;;;    non-commercial purposes.
;;; Copyright (c) 2006-2010 BBNT Solutions LLC. All Rights Reserved

(in-package :mumble)

#|

(def-type  ATTACHMENT-POINT    permanent ()
  (name              "a symbol")
  (type              "splice, lowering, trailing-edge")
  (reference-labels  "a list of labels this point may be spliced~
                           with reference to")
  (link              "previous or next--splice into this link" )
  (new-slot          "a label--splice in this structure")
  (new-phrase        "a phrase--lower current phrase into this phrase")
  (key-position      "a label--slot in phrase to put original tree")
  (actions	     "a list of actions to be carried out when the ~
                     attachment point is used"))


Attachment points of type SPLICE splice a slot into the existing phrase
structure at then position determined by LINK and REFERENCE-LABEL (for example
LINK: previous; REFERENCE-LABEL: subject splices in a slot before the subject
with the label NEW-SLOT).

Attachment points of type LOWERING build a new rooted phrase, determined by
NEW-PHRASE, and place the existing phrase as the contents of the slot indicated
by KEY-POSITION.

|#

;;;---------------------------------------------------------
;;; splicing APs (largely) specific to certain phrase types
;;;---------------------------------------------------------

;;--- on NPs

(define-splicing-attachment-point adjective 
  reference-labels (np)
  link (previous)
  new-slot (adjective))

(define-splicing-attachment-point quantifier-premod 
  reference-labels (np)
  link (first)
  new-slot (quantifier)
  actions (((:set-state (:determiner no-determiner)))))

(define-splicing-attachment-point quantifier-postmod 
  reference-labels (np)
  link (next)
  new-slot (quantifier)
  actions (((:set-state (:determiner no-determiner)))))

(define-splicing-attachment-point nominal-premodifier 
  reference-labels (np-head)
  link (previous)
  new-slot (nominal-premodifier))		

(define-splicing-attachment-point possessive 
  reference-labels (np)
  link (first)
  new-slot (possessive)
  actions (((:set-state (:determiner no-determiner)))))

(define-splicing-attachment-point determiner 
  reference-labels (np)
  link (first)
  new-slot (determiner)
  ; not sure if I need  actions (((:set-state (:determiner no-determiner))))
  )

(define-splicing-attachment-point RESTRICTIVE-RELATIVE-CLAUSE 
  reference-labels (nphead-cn)
  link (next)
  new-slot (relative-clause))

(define-splicing-attachment-point NON-RESTRICTIVE-RELATIVE-CLAUSE 
  reference-labels (nphead-cn nphead-pn)
  link (next)
  new-slot (nonres-relative-clause))

(define-splicing-attachment-point relative-clause 
  reference-labels (nphead-pn)
  link (next)
  new-slot (relative-clause))

(define-splicing-attachment-point restrictive-appositive 
  reference-labels (nphead-cn)
  link (next)
  new-slot (appositive))

(define-splicing-attachment-point non-restrictive-appositive 
  reference-labels (nphead-cn)
  link (next)
  new-slot (nonres-appositive))

(define-splicing-attachment-point np-prep-complement 
  reference-labels (np-head)
  link (next)
  new-slot (prepcomp))

(define-splicing-attachment-point of-complement 
  reference-labels (np-head adverb)
  link (next)
  new-slot (of-complement))

(define-splicing-attachment-point predicative-you
  ;; I can't locate a description of these in the literature, so
  ;; in lieu of that I'm making something up: This is very special
  ;; case -- just for "you dog!" and the like (also takes "that" when
  ;; the person isn't the interlocutor. 
  reference-labels (np)
  link (previous)
  new-slot (nominative))


;;-- on clauses

(define-splicing-attachment-point wh-marker  
  reference-labels (clause)
  link (previous)
  new-slot (interrogative-pronoun))

(define-splicing-attachment-point VP-PREP-COMPLEMENT 
  reference-labels (vp)
  link (last)
  new-slot (prepcomp))


(define-splicing-attachment-point ADVERBIAL-FOLLOWING 
  reference-labels (predicate adjective adverbial-phrase)
  link (next)
  new-slot (adverbial-phrase))

(define-splicing-attachment-point ADVERBIAL-PRECEDING
  reference-labels (predicate adjective adverbial-phrase)
  link (previous)
  new-slot (adverbial-phrase))

(define-splicing-attachment-point initial-adverbial 
  reference-labels (clause)
  link (first)
  new-slot ( ADVERBIAL-PHRASE))

(define-splicing-attachment-point final-adverbial 
  reference-labels (clause)
  link (last)
  new-slot ( ADVERBIAL-PHRASE))



(define-splicing-attachment-point clause-prep-complement 
  reference-labels (predicate)
  link (next)
  new-slot (prepcomp))

(define-splicing-attachment-point purpose-clause 
  reference-labels (vp)
  link (last)
  new-slot (infinitival-adjunct))

(define-splicing-attachment-point  rationale-clause
  reference-labels (clause)
  link (last)
  new-slot (infinitival-adjunct))



(define-splicing-attachment-point vp-final-adjunct
  reference-labels (vp)
  link (last)
  new-slot (prepcomp))

(define-splicing-attachment-point  post-verbal-adjunct
  reference-labels (verb)
  link (next)
  new-slot (prepcomp))


;;--- on adverbs / adjectives

(define-splicing-attachment-point intensifier
  reference-labels (adjective adverb)
  link (previous)
  new-slot (adverb))

(define-splicing-attachment-point than-complement
  reference-labels (comparative-head)
  link (next)
  new-slot (than-complement))



;#################################################################
;   attachment points of type lowering
;#################################################################

(define-lowering-attachment-point new-main-clause 
  new-phrase (svscomp)
  key-position (scomp))

(define-lowering-attachment-point new-main-clause_no-that
  new-phrase (SVSCOMP_no-that)
  key-position (scomp))

(define-lowering-attachment-point add-comp
  new-phrase (comp-s)
  key-position (s))

(define-lowering-attachment-point leading-conjunction  
  new-phrase (conjunction-S)
  key-position (sentence))


(define-lowering-attachment-point quantifier-OF  ;; "all of the ..."
  new-phrase (np_quant-head_of-comp)
  key-position (of-complement))


;#################################################################
; inserting attachment points 
;#################################################################
#|
(define-inserting-attachment-point interpose-verb-phrase
  reference-labels (vp)
  link-to-splice (contents)
  reference-slot (predicate))
|#


;#################################################################
;  Trailing edge attachment points
;#################################################################


(define-splicing-attachment-point next-sentence  
  reference-labels (sentence)
  link (next)
  new-slot (sentence))

(define-splicing-attachment-point next-paragraph  
  reference-labels (paragraph)
  link (next)
  new-slot (paragraph))


;#################################################################
;   Attachment-points for auxiliaries
;#################################################################

(define-splicing-attachment-point tense-modal  
  reference-labels (subject)
  link (next)
  new-slot (tense-modal))

(define-splicing-attachment-point preposed-tense-modal  
  reference-labels (subject)
  link (previous)
  new-slot (tense-modal))

(define-splicing-attachment-point next-aux  
  link (next)
  new-slot (auxiliary))


;#######################
; AP for the middle-way
;#######################

(define-splicing-attachment-point next-chunk
  reference-labels (chunk)
  link (next)
  new-slot (chunk))
