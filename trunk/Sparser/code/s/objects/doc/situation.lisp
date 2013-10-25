;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project <elaborate>
;;;
;;;     File:  "situation"
;;;   Module:  "objects/doc/"
;;;  version:  October 2013

;; Initiated 9/18/13. Fleshed out 10/9/13.

(in-package :sparser)


(defclass core-situation (container)
  ((model :type list :initform nil :accessor model
    :documentation "an unordered list of the objects in the situation")
   (state :type symbol :initform :initial-state :accessor state
    :documentation "a keyword naming the current state of the analysis")
   (variable-values :type list :initform nil :accessor variable-values
    :documentation "The present value of the indexical functional variables
      that apply to this text and discourse. Draft design is just an alist."))
  (:documentation "These are the elements that any situation has, 
    without considering how one situation builds on another."))

(defclass sentence-situation (core-situation)
  ()
  (:documentation "a hook in case we want to be more specific or record
    more data at some point"))


;; (designate-sentence-container :situation)  ;; re-eval after any change
(defun make-sentence-container/situation (sentence)
  ;; Called from make-sentence-container. This happens when the sentence's
  ;; document element is being laid down by start-sentence, where the only
  ;; thing we actually know is the starting position.
  (make-instance 'sentence-situation :in sentence))


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

