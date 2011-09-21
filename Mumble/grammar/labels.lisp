;; -*- Mode: Lisp; Package:MUMBLE; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id: labels.lisp 349 2010-02-01 23:15:35Z cgreenba $

;;; MUMBLE-86: grammar; labels
;;;
;;; Copyright (C) 1985-2000  David D. McDonald and the
;;;    Mumble Development Group.  All rights reserved.
;;;    Permission is granted to use and copy this file of the Mumble-86 system for
;;;    non-commercial purposes.
;;; Copyright (c) 2006-2010 BBNT Solutions LLC. All Rights Reserved

;; ChangeLog
;;  6/6/95 added grammatical constraints to COMPLEMENT-OF-BE
;;  7/15/99 added labels for digit-sequences. 6/26/00 Added some for elements 
;;   of nps.
#|  @Zoesis 
  8/15/03 Added slot-label pronoun for use in the phrase personal-pronoun.
  1/26/04 Removed single-choice definitions (has to be done anyway, and was
     needlessly complicating matters.
  3/4 Added vp to the grammatical constraints of adverbial phrase so there
     would be a place to attach "using a telescope".  |#
;; 1/10/05 Added externs for zo constants
;; 2/1/10 Added new quantifier-postmod to np

(in-package :mumble)

(export '(clause np vp ap advp s) (find-package :mumble))


;#################################################################
;     NODE LABELS
;#################################################################

(define-node-label discourse-unit
   ;;need to think about how this differs from the next
   ;;link of a sentence slot
   ;; trailing-edge-attachment-points (next-sentence)

   word-stream-actions (;;(new-line initial)
		;;	(indent initial)
   ))

(define-node-label compound-sentence)  ;; initial motivation from the S-Vocative phrase

(define-node-label clause
   associated-attachment-points (new-main-clause new-main-clause_no-that
                                 wh-marker  rationale-clause
                                 initial-adverbial final-adverbial
                                 add-comp))

(define-node-label relative-clause)

(define-node-label np
   word-stream-actions ((determiner initial))
   associated-attachment-points (possessive determiner
                                 quantifier-premod quantifier-of
				 quantifier-postmod quantifier-of
                                 predicative-you))

(define-node-label np/no-det) ;; for "there", "home"

(define-node-label vp
   associated-attachment-points (vp-prep-complement purpose-clause
                                 interpose-verb-phrase
                                 vp-final-adjunct #|path vp-final-destination|#
                                 ))

(define-node-label pp
  outgoing-attachment-points (vp-prep-complement np-prep-complement))

(define-node-label ap  ;; deprecated
  outgoing-attachment-points (adjective))
(define-node-label adjp  ;; deprecated
  outgoing-attachment-points (adjective))

(define-node-label advp
  outgoing-attachment-points (adverbial-preceding adverbial-following
                              initial-adverbial final-adverbial))

(define-node-label qp)  ;; 'quantifier phrase'

(define-node-label whp)  ;; for 'how' at least

(define-node-label number)

(define-node-label conjunction)

(define-node-label proper-name
   word-stream-actions ((capitalize-phrase initial)
			(end-capitalization final)))

(define-node-label dp
  outgoing-attachment-points (determiner)) ; determiner-phrase

;--- for the middle-way

(define-node-label middleway)

(define-node-label unanalized-chunk)

(define-node-label arbitrary-node)


;--- for purpose clauses (node labels so we can ignore characteristics)

(define-node-label for-infinitive)
(define-node-label subject-reducible)
(define-node-label subject-deletion)


;--- for minimal phrases only needed for parsing or fixed phrases

(define-node-label modal
  outgoing-attachment-points (tense-modal preposed-tense-modal))

(define-node-label vg)  ;; verb group -- see vg phrase

(define-node-label polyword)

(define-node-label expletive-phrase)
(define-node-label exclamation-phrase)
(define-node-label interjection-phrase)
(define-node-label particle-phrase)



;#################################################################
;      SLOT LABELS
;#################################################################

;;--- labels for the sentence and above

(define-slot-label turn
   grammatical-constraints (clause np vp pp ap advp))
   ;;not using these now, but when testing paragraphs they should be 
   ;;turned on
   ;;word-stream-actions ((new-line initial)
   ;;		       (indent initial)))


(define-slot-label paragraph
   associated-attachment-points (next-paragraph))

(define-slot-label sentence
   grammatical-constraints (clause)
   word-stream-actions ((punctuation final period)
			(capitalize-the-next-word initial))
   associated-attachment-points (next-sentence))

(define-slot-label s  
  ;; for the comp-s phrase -- an 'S' in conventional syntactic theory
  ;; Embedded 's' nodes, not toplevel 'sentences'.
  grammatical-constraints (clause))

(define-slot-label comp ;; as in 'comp position' - sister to 's'
   grammatical-constraints (whp wh-pronoun np interrogative-pronoun))

(define-slot-label question)


;;--- labels for the interior of a clause

(define-slot-label subject
   grammatical-constraints (np vp)
   associated-attachment-points (tense-modal preposed-tense-modal))

(define-slot-label predicate
  associated-attachment-points 
     (clause-prep-complement  adverbial-preceding adverbial-following))

(define-slot-label verb
  associated-attachment-points (post-verbal-adjunct #|post-verbal-path post-verbal-destination|#
                                ))

(define-slot-label particle)

(define-slot-label preposition)

(define-slot-label indirect-object
   grammatical-constraints (np))

(define-slot-label direct-object
   grammatical-constraints (np))

(define-slot-label second-object  ;; /// For "what we like about him" SVPO1O2
  grammatical-constraints (np))  ;; so it's probably spurious

(define-slot-label complement-of-be
  grammatical-constraints (ap adjective adverb vp np))

(define-slot-label scomp
   grammatical-constraints (clause))

(define-slot-label vpcomp
   grammatical-constraints (vp))

(define-slot-label predicate-adjective
  grammatical-characteristics (ap))

(define-slot-label pp-object
   grammatical-constraints (np))

(define-slot-label npcomp
   grammatical-constraints (np))

(define-slot-label prepcomp
   grammatical-constraints (pp))

(define-slot-label pred-loc
   grammatical-constraints (np))

(define-slot-label pred-nom
   grammatical-constraints (np))

(define-slot-label infinitival-adjunct
 grammatical-constraints (for-infinitive))

(define-slot-label inf-comp
  grammatical-constraints (subject-reducible vp))

(define-slot-label gerund)


(define-slot-label adverbial-phrase
    grammatical-constraints (adverb ap np vp pp))

(define-slot-label leading-detached-adverbial-phrase
  ;; Using this for the 'short replies' that are written as though
  ;; they were attached to the sentence that follows even though
  ;; there's no grammatical relationship between them, e.g.
  ;;  "Ok, I come along if I have to"
  word-stream-actions ((punctuation final comma))
  grammatical-constraints (adverb ap np vp pp))

(define-slot-label adverb
   associated-attachment-points (of-complement
				 np-prep-complement
				 nominal-premodifier))

(define-slot-label adjp-head
  associated-attachment-points (intensifier adverbial-preceding adverbial-following))

(define-slot-label comparative-head
  grammatical-constraints (np clause)
  associated-attachment-points (intensifier adverbial-preceding adverbial-following
                                than-complement))

(define-slot-label superlative-head
  associated-attachment-points (intensifier adverbial-preceding adverbial-following))

(define-slot-label than-complement
   word-stream-actions ((function-word initial "than" lexical-contents)))

(define-slot-label vocative
  grammatical-constraints (np/no-det))
  ;;/// add a leading comma?


;;--- ///// labels for the interior of a noun phrase

(define-slot-label modifier
  grammatical-constraints (adjp advp adjective adverb))

(define-slot-label adj-premodifier)

(define-slot-label quantifier)  ;; "all", "each", etc.

(define-slot-label determiner)  ;; "the" "a"


(define-slot-label np-head
   associated-attachment-points
       (non-restrictive-relative-clause non-restrictive-appositive
        np-prep-complement  of-complement nominal-premodifier
	adjective restrictive-relative-clause restrictive-appositive))


(define-slot-label compound-noun-head)

(define-slot-label common-noun)

(define-slot-label pronoun
  associated-attachment-points (non-restrictive-relative-clause 
                                non-restrictive-appositive))
    
(define-slot-label indefinite-pronoun) ;; "which", "where" ...


(define-slot-label proper-noun		   
   word-stream-actions ((capitalize-phrase initial)
			(end-capitalization final)))

(define-slot-label possessive
  grammatical-constraints (np)
  word-stream-actions ((add-possessive-ending final nil not-a-pronoun-contents))
  )

(define-slot-label nominal-premodifier
   grammatical-constraints (np )
     associated-attachment-points
       (adjective ))

(define-slot-label qualifier
   grammatical-constraints (noun))

(define-slot-label adjective
   grammatical-constraints (adjective))

(define-slot-label quantifier
   grammatical-constraints (QP))

(define-slot-label wh
   grammatical-constraints (wh-pronoun))

(define-slot-label of-complement
   grammatical-constraints (np)
   word-stream-actions ((function-word initial "of" lexical-contents)))

(define-slot-label for-dative
   grammatical-constraints (np)
   word-stream-actions ((function-word initial "for")))

(define-slot-label to-dative
   grammatical-constraints (np)
   word-stream-actions ((function-word initial "to")))

(define-slot-label for-subject
  grammatical-constraints (np subject-deletion) ;; not clause ???
  word-stream-actions ((function-word initial "for" lexical-contents)))

(define-slot-label nonres-appositive
  grammatical-constraints (np)
  word-stream-actions ((punctuation initial comma)
		       (punctuation final comma)))

(define-slot-label appositive
  grammatical-constraints (np))


(define-slot-label relative-clause
   grammatical-constraints (relative-clause))

(define-slot-label nonres-relative-CLAUSE
   grammatical-constraints (relative-clause)
   word-stream-actions ((punctuation initial comma)
			(punctuation final comma)))


(define-slot-label prep)

(define-slot-label prep-obj
   grammatical-constraints (np))

(define-slot-label number)

(define-slot-label relative-pronoun
   grammatical-constraints (relative-pronoun))

(define-slot-label interrogative-pronoun
   grammatical-constraints (interrogative-pronoun))


;;--- 'additional' labels

(define-slot-label participle)  ;; to force an 'ing'

(define-slot-label nominative)
(define-slot-label objective)
(define-slot-label genitive)
(define-slot-label reflexive)
(define-slot-label possessive-np)



;####################################################
; labels for introducing function words, punctuation
;####################################################

(define-slot-label conjunction) ;; just for recognition

(define-slot-label and
   word-stream-actions ((function-word initial "and")))

(define-slot-label but
   word-stream-actions ((function-word initial "but")))

(define-slot-label or
   word-stream-actions ((function-word initial "or")))

(define-slot-label either
   word-stream-actions ((function-word initial "either")))

(define-slot-label neither
   word-stream-actions ((function-word initial "neither")))

(define-slot-label nor
   word-stream-actions ((function-word initial "nor")))

(define-slot-label both
   word-stream-actions ((function-word initial "both")))

(define-slot-label that
    word-stream-actions ((function-word initial "that")))

(define-slot-label comma
   word-stream-actions ((punctuation initial comma)))

(define-slot-label trailing-comma
   word-stream-actions ((punctuation final comma)))




;################################################################
;   AUXILIARY VERBS
;################################################################

(define-slot-label tense-modal
  associated-attachment-points (adverbial-preceding)
  grammatical-constraints (modal))

(define-slot-label have+en)

(define-slot-label be+ing)

(define-slot-label be+en)

(define-slot-label auxiliary)


(define-slot-label negative)





;#################################################################
;    Labels USED ON WORDS
;#################################################################

(define-word-label verb)
(define-word-label past-participle)
(define-word-label present-participle)

(define-word-label adverb)
 
(define-word-label adjective)
(define-word-label comparative-adjective)
(define-word-label superlative-adjective)

(define-word-label noun)

(define-word-label pronoun)

(define-word-label proper-noun)

(define-word-label abstract-noun)  ; "cleverness", "wisdom" -- no determiner

(define-word-label interrogative-pronoun)
(define-word-label wh-pronoun) ;; generalization over them
(define-word-label relative-pronoun)

(define-word-label preposition)
(define-word-label particle)

(define-word-label determiner)


(define-word-label complementizer)

(define-word-label modal)

(define-word-label number)

(define-word-label quantifier)

(define-word-label exclamation)

(define-word-label expletive)

(define-word-label interjection)

(define-word-label vocative)

(define-word-label punctuation)
