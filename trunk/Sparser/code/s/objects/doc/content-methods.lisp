;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2013-2015 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "content-methods"
;;;   Module:  "objects;doc;"
;;;  Version:  June 2015

;; Created 5/12/15 to hold the container mixings and such that need
;; to have the document model elements already defined so they can
;; be referred to. 5/27/15 Subject is now the referent rather than
;; the edge. 6/8/15 Added get-element methods and began to play with
;; after methods. 6/10/15 Added paragraph aggregator


(in-package :sparser)


(defclass aggregated-bio-terms ()
  ((proteins :initform nil)
   (residues :initform nil)
   (bio-processes :initform nil)
   (other :initform nil))
  (:documentation "Collects the entities and relations of
     the document layer below them summarizes them as
     tables of individuals and their count."))


;;;---------------------------------------------------
;;; Action hook for after a document element finishes
;;;---------------------------------------------------

(defparameter *apply-document-after-actions* nil
  "Gates whether to run after actions. Makes it possible to commit
  the file while they're still being debugged.")

;; (setq *apply-document-after-actions* t)

(defgeneric after-actions (document-element)
  (:documentation "Carry out the actions to be taken when all of
     the children of a given document element have been read."))

(defmethod after-actions ((element has-content-model))
  "Call a method that has both the element and its contents"
  (when *apply-document-after-actions*
    (after-actions-on-content element (contents element))))


(defgeneric after-actions-on-content (document-element content-model)
  (:documentation "Carry out the actions on the document element
    and its content that are approriate to the type of the content model."))

(defmethod after-actions-on-content ((e document-element) (c aggregated-bio-terms))
  (when *apply-document-after-actions*
    (push-debug `(,e ,c))
    (break "after action stub on ~a" e)
    (summarize-bio-terms e c)))


(defmethod after-actions-on-content ((p paragraph) (c aggregated-bio-terms))
  (when *apply-document-after-actions*
    (aggregate-bio-terms p)))


;;;------------------------------------
;;; aggregating entities and relations
;;;------------------------------------

(defmethod summarize-bio-terms ((e document-element) (c aggregated-bio-terms))
  ;; The sentence's contents have aggregated into instances of
  ;; aggregated-bio-terms on their paragraphs. At levels above the
  ;; paragraph we just lump all of that content together without
  ;; doing anything more interesting (for now).
  (push-debug `(,e ,c))
  (break "summarize-bio-terms"))
  

;;--- sentences => paragraph contents

(defmethod aggregate-bio-terms ((p paragraph))
  "Collect the raw lists of entities and relations from 
  the sentences of the paragraph and distribute them
  into buckets (slots on the content object) at whatever
  degree of delicacy seems the most useful."
  (let ((sentences (sentences-in-paragraph p)))
    ;;/// something should attend to the topic sentence
    (dolist (s sentences)
      (aggregate-sentence-bio-terms s p))))

(defun aggregate-sentence-bio-terms (s p)
  (aggregate-terms p (get-entities s))
  (aggregate-terms p (get-relations s)))

(defun aggregation-target (i)
  ;; Return the name of the slot that this individual 
  ;; should be added to.
  (typecase i
    (individual
     (cond
      ((itypep i 'bio-process) 'bio-processes)
      ((or (itypep i 'protein)
           (itypep i 'human-protein-family))
       'proteins)
      ((itypep i 'residue-on-protein) ;; or other regions
       'residues)
      ;; Could consider mutations, drugs, cell-lines, what else?
      (t 'other)))
    (category ;; really ignore them?
     nil)
    (otherwise
     (error "Unexpected type of thing passed to aggregatoin-target: ~
             ~a~%  ~a" (type-of i) i))))


(defun aggregate-terms (paragraph terms)
  (when terms
    (let ((c (contents paragraph)))
      (dolist (term terms)
        (let ((slot (aggregation-target term)))
          (when slot
          (let ((bucket (slot-value c slot)))
            (cond
             ((null bucket)
              (let* ((entry `(,term . 1))
                     (bucket `( ,entry  )))
                (setf (slot-value c slot) bucket)))
             (t
              (let ((entry (when bucket (get-from-bucket term bucket))))
                (if entry
                  (incf-bucket-entry entry)
                  (make-bucket-entry term bucket slot c))))))))))))

(defun get-from-bucket (term bucket)
  (assq term bucket))

(defun incf-bucket-entry (entry)
  (incf (cdr entry)))

(defun make-bucket-entry (term bucket slot-name contents-instance)
  ;; bucket exists. Need to add this term to it
  (let* ((entry `(,term . 1))
         (new-bucket-value (cons entry bucket)))
    (setf (slot-value contents-instance slot-name)
          new-bucket-value)))
   


;;;----------------------------------------------
;;; convenience accessors to parts of an article
;;;----------------------------------------------

(defmethod sections-in-article ((a article))
  (children a))

(defmethod has-paragraphs? ((s section))
  (some #'(lambda (c) (typep c 'paragraph))
        (children s)))
(defmethod has-paragraphs? ((s section-of-sections))
  (some #'(lambda (c) (typep c 'paragraph))
        (children s)))

(defmethod has-subsections ((s section))
  (break "stub for ~a" s))

(defmethod first-section ((a article))
  (first (children a))) ;; what else could it be?


(defmethod first-paragraph ((a article))
  (first-paragraph (first-section a)))
(defmethod first-paragraph ((s section))
  (cond
   ((has-paragraphs? s)
    (loop for c in (children s)
      when (typep c 'paragraph) return c))
   ((has-subsections? s)
    (first-paragraph (first-section XXXX)))))

(defmethod sentences-in-paragraph ((p paragraph))
  ;; They chain off the child. ////elevate?
  (let* ((s1 (children p))
         (sentences (list s1))
         (s s1)
         next )
    (loop 
      (unless (slot-boundp s 'next)
        (return))
      (setq next (next s))
      (when (string-equal (sentence-string next) "")
        (return))
      (setq s next)
      (push s sentences))
    (nreverse sentences)))


;;;----------------------------------
;;; what did we find in the sentence
;;;----------------------------------

(defclass entities-and-relations ()
  ((entities :initform nil :accessor entities-in-sentence)
   (relations :initform nil :accessor relations-in-sentence))
  (:documentation "Copies the output of identify-relations
     from the post-analysis-operations function. Note that
     this is dependent on the *readout-relations* flag."))

(defmethod set-entities ((s sentence) (list list))
  (setf (entities-in-sentence (contents s)) list))
(defmethod set-relations ((s sentence) (list list))
  (setf (relations-in-sentence (contents s)) list))

(defmethod get-entities ((s sentence))
  (entities-in-sentence (contents s)))
(defmethod get-relations ((s sentence))
  (relations-in-sentence (contents s)))


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
  (let ((referent (edge-referent e)))
    ;;/// should we insist that it be an individual ?
    (setf (sentence-subject (contents s)) referent)))

(defmethod get-sentence-subject ((s sentence))
  (sentence-subject (contents s)))

(defmethod get-sentence-subject ((ignore null))
  nil)


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


