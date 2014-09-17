;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "parsing-containers"
;;;   Module:  "drivers;forest:"
;;;  Version:  August 2014

;; Initiated 8/6/14. To hold the new class of containers to support
;; analysis and discourse structure to go with the new forest protocol

(in-package :sparser)


;;; mixins

(defclass parsing-status ()
  ((level-completed :initarg :level :accessor level-completed
    :documentation "The parsing is tiered into successive levels
      of analysis. Which one have we completed for this level of
      document structure?
      Possible values:
        :initial  -- we're at the start of the sentence and
                   haven't scanned any part of it.
"))
  (:documentation ""))

(defclass sentence-layout (container) 
  ;;/// mixin, but trying standalone at first while sorting out
  ;; what goes where
  ((subject :initform nil :accessor subject
    :documentation "The first NP in the clause")
   (main-verb  :initform nil :accessor main-verb
    :documentation "The tensed VG in the clause")
   (post-mvb-verbs :initform nil :accessor post-mvb-verbs
    :documentation "Any verbs (VG) that have been seen
     after the main verb is seen.")
   (pre-mvb-verbs :initform nil :accessor pre-mvb-verbs
    :documentation "Any pariticipial form of verb that
      appears before the main (tensed) verb is seen.")
   (loose-nps :initform nil :accessor loose-nps
    :documentation "NPs that don't fall into an immediately
      obvious syntactic relationship to the clause.")
   (loose-adjectives :initform nil :accessor loose-adjectives
    :documentation "Adjectives that appear outside of
      a segment. Potential apposative or reduced relatives.")
   (conjunctions :initform nil :accessor conjunctions
    :documentation "The locations of every conjunct,
      rightmost first")
   (prepositions :initform nil :accessor prepositions
    :documentation "The locations of every preposition,
      rightmost first")
   (of-mentions :initform nil :accessor of-mentions
    :documentation "Instances of the preposition 'of'.
      It has a different island status than other prepositions.")
   (starts-with-preposition :initform nil :accessor starts-with-prep
    :documentation "Flags sentences with leading prepositional
      phrases, which changes the usual criteria for the subject.")
   (parentheses :initform nil :accessor parentheses
    :documentation "The edges spanning any parenthesised
      portions of text."))
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

  


;;; class

(defclass sentence-content (container parsing-status accumulate-items ordered)
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


