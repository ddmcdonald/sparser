;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2021 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "parsing-containers"
;;;   Module:  "drivers;forest:"
;;;  Version:  January 2021

;; Initiated 8/6/14 to hold the new class of containers to support
;; analysis and discourse structure to go with the new forest protocol
;; Extended with new cases through 9/26/14. 10/6/14 Added methods to
;; query and set parsing status. 
;; 1/28/15 adding more mixins. 2/3/15 added pronouns to layout
;; 5/12/15 moved most classes and methods to content-methods.lisp
;; so they're all in one place. Leaving just the sentence-layout that
;; was what started this file.

(in-package :sparser)


;;;-----------------
;;; sentence-layout
;;;-----------------

;;--------- This is nominally a mixin, but
;;  the fact that we use it to keep track of things -during-
;;  the parse makes it less what we want to preserve
;;  in the document structure, particularly since it stores edges.
;;  Long-term storage of this information will be in the text
;;  structure aspects of what we store on the document
;;
(defclass sentence-layout (container) 
  ((subject :initform nil :accessor subject
    :documentation "The first NP in the clause")
   (clauses :initform nil :accessor clauses
    :documentation "The edges over clauses, toplevel or
     subordinated. Like only relevant in second pass.")
   (subj+verb-phrases :initform nil :accessor subj+verb
    :documentation "In the first pass we formed one or
     more constituents labeled subj+verb.")
   (main-verb  :initform nil :accessor main-verb
    :documentation "The tensed VG in the clause")
   (post-mvb-verbs :initform nil :accessor post-mvb-verbs
    :documentation "Any verbs (VG) that have been seen
     after the main verb is seen.")
   (pre-mvb-verbs :initform nil :accessor pre-mvb-verbs
    :documentation "Any pariticipial form of verb that
      appears before the main (tensed) verb is seen.")
   (vps :initform nil :accessor verb-phrases
    :documentation "The edges over verb phrases,
      normally only makes sense on a second pass.")
   (loose-nps :initform nil :accessor loose-nps
    :documentation "NPs that don't fall into an immediately
      obvious syntactic relationship to the clause.")
   (loose-adjectives :initform nil :accessor loose-adjectives
    :documentation "Adjectives that appear outside of
      a segment. Potential appositive or reduced relatives.")
   (conjunctions :initform nil :accessor conjunctions
    :documentation "The locations of every conjunct,
      rightmost first")
   (subordinate-conjunctions :initform nil :accessor subord-conj
    :documentation "The locations of every subordinate conjunction,
      rightmost first")
   (includes-that :initform nil :accessor includes-that
    :documentation "The locations of edges over the word
      'that'. Could expand to other s-comp supordinating
      conjunctions that partition the parse.")
   (pronouns :initform nil :accessor included-pronouns
    :documentation "The edge over any pronoun of any sort.")
   (prepositions :initform nil :accessor prepositions
    :documentation "The locations of every preposition,
      rightmost first")
   (pps :initform nil :accessor prepositional-phrases
    :documentation "The edges over of any prepositional phrases,
      normally only makes sense on a second pass.")
   (of-mentions :initform nil :accessor of-mentions
    :documentation "Instances of the preposition 'of'.
      It has a different island status than other prepositions.")
   (starts-with-preposition :initform nil :accessor starts-with-prep
    :documentation "Flags sentences with leading prepositional
      phrases, which changes the usual criteria for the subject.")
   (starts-with-adverb :initform nil :accessor starts-with-adverb
    :documentation "Flags sentences that start with an adverb.
      Perhaps it will grow into an adverbial phrase, but it will
      always scope the sentence as a whole.")
   (loose-adverbs :initform nil :accessor loose-adverbs
    :documentation "These are unlikely given the segment rules,
      but we need to allow for them.")
   (parentheses :initform nil :accessor parentheses
    :documentation "The edges spanning any parenthesised
      portions of text.")
   (known-subcategorization :initform nil :accessor known-subcat-pattern
    :documentation "Any treetops whose category label has a
      subcategorization pattern associated with it."))
  (:documentation "Provides a view of salient reference
    points in a sentence. Populated by sweep-sentence-treetops
    and read by island-driven-forest-parse which is allowed
    to edit this if that helps control what to do. This is
    strictly scafolding information with no long term value."))


(defclass local-layout ()
  ((base-layout :accessor base-layout
    :documentation "The layout object created just after 
      a sentence has been chunked into phrases"))
  (:documentation
   "Wraps a sentence layout in to store on the sentence-content
    so we have a standard place to look for it. Note that the
    curency of the slots in the class is edges, which will
    loose their validity when they recycle."))

(defvar *current-sentence-layout* nil)

(defun layout ()
  *current-sentence-layout*)

(defun make-sentence-layout (sentence)
  "Used by sweep-sentence-treetops to create the layout instance
   that it populates and to set the variables for retrieving it.
   There's a new instance for every sentence."
  (let ((l (make-instance 'sentence-layout
             :in sentence)))
    (setq *current-sentence-layout* l)
    l))

