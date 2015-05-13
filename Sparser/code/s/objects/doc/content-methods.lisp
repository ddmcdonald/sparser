;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2013-2015 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "content-methods"
;;;   Module:  "objects;doc;"
;;;  Version:  May 2015

;; Created 5/12/15 to hold the container mixings and such that need
;; to have the document model elements already defined so they can
;; be referred to. 


(in-package :sparser)

;;;------------------------------------
;;; aggregating entities and relations
;;;------------------------------------

(defclass aggregated-bio-terms ()
  ((aggregated-entities :initform nil :accessor aggregated-entities
    :documentation "Table of entity and the number of times
     it was mentioned")
   (aggregated-relations :initform nil :accessor aggregated-relations
    :documentation "Table of relations and the number of times
     it was mentioned"))
  (:documentation "Collects the entities and relations of
     the document layer below them summarizes them as
     tables of categorry and count."))

(defgeneric after-actions (document-element)
  (:documentation "Carry out the actions to be taken when all of
     the children of a given document element have been read."))

(defmethod after-actions ((element has-content-model))
  "Call a method that has both the element and its contents"
  (after-actions-on-content element (contents element)))


(defgeneric after-actions-on-content (document-element content-model)
  (:documentation "Carry out the actions on the document element
    and its content that are approriate to the type of the content model."))

(defmethod after-actions-on-content ((e document-element) (c aggregated-bio-terms))
  (push-debug `(,e ,c)) (break "stub"))
  

(defmethod after-actions-on-content ((p paragraph) (c aggregated-bio-terms))
  (push-debug `(,p ,c))
  ;; Loop over the sentences, access their entity and relation fields
  ;; and collect them in a hash table keeping counts by category
  (break "paragraph content"))


;;;----------------------------------
;;; what did we find in the sentence
;;;----------------------------------

(defclass entities-and-relations ()
  ((entities :accessor entities-in-sentence)
   (relations :accessor relations-in-sentence))
  (:documentation "Copies the output of identify-relations
     from the post-analysis-operations function. Note that
     this is dependent on the *readout-relations* flag."))

(defmethod set-entities ((s sentence) (list list))
  (setf (entities-in-sentence (contents s)) list))
(defmethod set-relations ((s sentence) (list list))
  (setf (relations-in-sentence (contents s)) list))


;;;----------------------------------------------
;;; functionally salient aspects of the sentence
;;;----------------------------------------------

(defclass sentence-text-structure ()
  ((subject :initform nil :accessor sentence-subject
    :documentation "The subject of the sentence if we
     were able to identify it."))
  (:documentation
   "Provides long-term representation of the contents of
    the sentence that will be relevant to later sentences.
    Alusion to the NLG notion of text structure."))

(defmethod set-sentence-subject ((e edge) (s sentence))
  ;; (let ((referent (edge-referent e)))
    ;;/// should it be an individual ?
    (setf (sentence-subject (contents s)) e)) ;;referent)))

(defmethod get-sentence-subject ((s sentence))
  (sentence-subject (contents s)))



;;;--------------------------
;;; ordered list of entities
;;;--------------------------

(defclass sentence-discourse-history ()
  ((individuals :accessor sentence-individuals
    :documentation "This is a version of *lifo-instance-list* 
     that been reversed to that is in left-to-right order
     and had its edges removed.")))

(defmethod set-discourse-history ((s sentence) (history t))
  (setf (sentence-individuals (contents s)) history))
          


;;;---------------------
;;; status of the parse
;;;---------------------

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


