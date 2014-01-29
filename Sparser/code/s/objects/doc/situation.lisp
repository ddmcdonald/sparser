;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project <elaborate>
;;;
;;;     File:  "situation"
;;;   Module:  "objects/doc/"
;;;  version:  January 2014

;; Initiated 9/18/13. Fleshed out 10/9/13. 1/23/14 Added sentence state

(in-package :sparser)


;;--- Base case

(defclass core-situation (container)
  ;; from container we get a bkptr slot, init arg :in that points
  ;; to the document container we're part of. Also supplies a print-method

  ((model :type list :initform nil 
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


;;--- Sentences

(defclass sentence-situation (core-situation)
  ((sentence-state :type state 
                   :initform (state-named :initial-sentence-state)
                   :accessor sentence-state
    :documentation "The state of core-situation is now effectively
      the state of an accumulating phrase, while this state records
      the accumulation of the elements of a sentence."))     
  (:documentation "Additional elements needed to organize a situation
      that spans a sentence-worth of content."))


;; (designate-sentence-container :situation)  ;; re-eval after any change
(defun make-sentence-container/situation (sentence)
  ;; Called from make-sentence-container when the sentence's
  ;; document element is being laid down by start-sentence, where the only
  ;; thing we actually know is the starting position.
  (make-instance 'sentence-situation :in sentence))


;;--- Discourse 




;;--- retrieving the situation

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

