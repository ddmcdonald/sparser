;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2015 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "parsing-containers"
;;;   Module:  "drivers;forest:"
;;;  Version:  January 2015

;; Initiated 8/6/14. To hold the new class of containers to support
;; analysis and discourse structure to go with the new forest protocol
;; Extended with new cases through 9/26/14. 10/6/14 Added methods to
;; query and set parsing status. 
;; 1/28/15 adding more mixins.

(in-package :sparser)

;;;--------
;;; mixins
;;;--------

;;--- status of the parse

(defclass parsing-status ()
  ((level-completed :initarg :level :accessor level-completed
    :documentation "The parsing is tiered into successive levels
      of analysis. Which one have we completed for this level of
      document structure?
      Possible values:
        :initial  -- we're at the start of the sentence and
                   haven't scanned any part of it.
        :scanned -- we've run scan-terminals-loop over it
        :chunked -- we've run the phrase delimiter over it"))
  (:documentation "Used by period-hook to keep track of what
     phase it's in. Less used now (11/14) because more of the
     multi-pass-over-sentence control is organized as direct
     calls."))

(defmethod set-sentence-status ((s sentence) (keyword symbol))
  (let ((c (contents s))) ;; for debugging
    (set-sentence-status c keyword)))

(defmethod set-sentence-status ((s parsing-status) (keyword symbol))
  (setf (level-completed s) keyword))

(defmethod parsing-status ((s sentence))
  (parsing-status (contents s)))

(defmethod parsing-status ((s parsing-status))
  (level-completed s))



;;--- what did we find in the sentence

(defclass entities-and-relations ()
  ((entities :accessor entities-in-sentence)
   (relations :accessor relations-in-sentence))
  (:documentation "Copies the output of identify-relations
     from the post-analysis-operations function."))

(defmethod set-entities ((s sentence) (list list))
  (setf (entities-in-sentence (contents s)) list))
(defmethod set-relations ((s sentence) (list list))
  (setf (relations-in-sentence (contents s)) list))


;;--- ordered list of entities

(defclass sentence-discourse-history ()
  ((individuals :accessor sentence-individuals
    :documentation "This is a version of *lifo-instance-list* 
     that been reversed to that is in left-to-right order
     and had its edges removed.")))

(defmethod set-discourse-history ((s sentence) (history t))
  (setf (sentence-individuals (contents s)) history))
          

;;--- functionally salient aspects of the sentence

(defclass sentence-text-structure ()
  ((subject :accessor sentence-subject
    :documentation "The subject of the sentence if we
     were able to identify it."))
  (:documentation
   "Provides long-term representation of the contents of
    the sentence that will be relevant to later sentences.
    Alusion to the NLG notion of text structure."))

(defmethod set-sentence-subject ((e edge) (s sentence))
  (let ((referent (edge-referent e)))
    ;;/// should it be an individual ?
    (setf (sentence-subject (contents s)) referent)))


;;;-----------
;;; the class
;;;-----------

(defclass sentence-content (container parsing-status 
                            entities-and-relations
                            sentence-discourse-history
                            sentence-text-structure
                            accumulate-items ordered)
  ()
  (:documentation "From container we get :in to point back to the
    sentence. From ordered we get previous and next so we can link
    the directly without having to go to the sentence objects."))

(defmethod print-object ((c sentence-content) stream)
  (print-unreadable-object (c stream :type t)
    (let ((sentence (bkptr c)))
      (format stream "p~a -- "
              (pos-token-index (starts-at-pos sentence)))
      (if (and (slot-boundp sentence 'ends-at-pos)
               (ends-at-pos sentence))
        (format stream "p~a" (pos-token-index (ends-at-pos sentence)))
        (format stream "?")))))


; (designate-sentence-container :complex)  ;; run with every change
;
(defun make-sentence-content-container (sentence)
  (make-instance 'sentence-content
    :in sentence
    :level :initial))



;;;-----------------
;;; sentence-layout
;;;-----------------

;;--------- This is nominally a mixin, but
;;  the fact that we use it to keep track of things -during-
;;  the parse makes it less what we want to presevere 
;;  in the document structure, particularly since it stores edges.
;;  Long-term storage of this information will be in the text
;;  structure
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
      a segment. Potential apposative or reduced relatives.")
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

(defvar *current-sentence-layout* nil)
(defun layout ()
  *current-sentence-layout*)
;;////// hook into the resource scheme
(defun make-sentence-layout (sentence)
  (let ((l (make-instance 'sentence-layout
             :in sentence)))
    (setq *current-sentence-layout* l)
    l))

  


