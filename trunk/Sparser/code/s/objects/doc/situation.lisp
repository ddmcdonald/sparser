;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project <elaborate>
;;;
;;;     File:  "situation"
;;;   Module:  "objects/doc/"
;;;  version:  January 2014

;; Initiated 9/18/13. Fleshed out 10/9/13. 1/23/14 Added sentence state.
;; 4/9/14 added a tailored container.

(in-package :sparser)

;;;-----------------------------------------
;;; Situation containers and adding to them
;;;-----------------------------------------

(defclass model-of-situation ()
  ((entities :type list :initform nil :accessor entities
    :documentation "Things, events, etc that were present.
     Ought to parallel the discourse history. Probably want
     more than just a list, but it's a start.")
   (relations :type list :initform nil :accessor relations
    :documentation "Predicates over entities, or something like that"))
  (:documentation "Provides some organization to the
    content model of a situation. Perhaps specializes by level?"))


;;;-------------------
;;; Situation classes
;;;-------------------

;;--- Base case

(defclass core-situation (container)
  ;; from container we get a bkptr slot, init arg :in that points
  ;; to the document container we're part of. Also supplies a print-method

  ((model :initarg :model :type model-of-situation
          :accessor model
    :documentation "an unordered list of the objects in the situation")

   (state :type state 
          :initform (state-named :initial-state)
          :accessor state
    :documentation "a keyword naming the current state of the analysis")

   (variable-values :type list :initform nil 
                    :accessor variable-values
    :documentation "The present value of the indexical functional variables
      that apply to this text and discourse. Draft design is just an alist."))

  (:documentation "These are the elements that any situation has, 
    without considering how one situation builds on another."))


;;--- Sentence level

(defclass sentence-situation (core-situation)
  ((sentence-state :type state 
                   :initform (state-named :initial-sentence-state)
                   :accessor sentence-state
    :documentation "The state of core-situation is now effectively
      the state of an accumulating phrase, while this state records
      the accumulation of the elements of a sentence."))     
  (:documentation "Additional elements needed to organize a situation
      that spans a sentence-worth of content."))


;;--- Discourse level
;; tbd

;;;-------------------------------------
;;; tracking the stuff in the situation
;;;-------------------------------------

(defgeneric add-relation (relation &rest args)
  ;; This is essentially the same code structure as in the function
  ;; note in the text-relations code. That's a better namme
  ;; if these could be merged down the line
  (:documentation 
   "A hook to let us adapt to how the relation is represented"))

;; e.g. (add-relation 'type-of-product mgfr head)

(defmethod add-relation ((var-name symbol) &rest args)
  ;; decode to a variable
  ;; make a binding: 1st arg is the individual, 2d is the value
  ;; Lookup the present situation. (Would be nice if didn't h vae
  ;; to go via the current sentence.)
  ;; do an add-to-container to the situation that knows that
  ;; the result goes into the relations slot of the situation's model
  (push-debug `(,var-name ,args)) (break "write add-relation now?")
  nil)

;; Do add-entity the same way





;;;----------------
;;; initialization
;;;----------------

;; (designate-sentence-container :situation)  
;; This is a computed function. Re-eval after any change
(defun make-sentence-container/situation (sentence)
  ;; Called from make-sentence-container when the sentence's
  ;; document element is being laid down by start-sentence, where the only
  ;; thing we actually know is the starting position.
  (let ((model (make-instance 'model-of-situation)))
    (make-instance 'sentence-situation 
      :in sentence
      :model model)))



;;;--------------------------
;;; retrieving the situation
;;;--------------------------

(defun the-situation ()
  ;; ok for now when just in one sentence / a single situation
  (let ((sentence (sentence)))
    (unless sentence
      (error "Threading bug: there no active sentence"))
    (let ((contents (contents sentence)))
      (unless contents
        (error "The current sentence has no content model"))
      (unless (typep contents 'sentence-situation)
        (push-debug `(,sentence ,contents))
        (error "Unexpected type of situation: ~a"
               (type-of contents)))
      contents)))

