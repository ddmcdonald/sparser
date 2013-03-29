;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "content"
;;;   Module:  "objects;doc:"
;;;  Version:  March 2013

;; initiated 3/13/13

(in-package :sparser)

(defclass text-relation-contents ()
  ((head-relations #|:type (or null common-tr-instance)|# ;; unclear why doesn't work
    ;; since the typep is ok.
    :initform nil :accessor head-relations)
   (classifier-heads :initform nil :accessor classifier-head-relations)
   (modifier-heads :initform nil :accessor modifier-head-relations)
   (adjacencies :initform nil :accessor adjacency-relations))
  (:documentation ""))


(defun fresh-contents ()
  ;; placeholder for resource -- but via a generating macro
  (make-instance 'text-relation-contents))

(defun add-text-relation-to-article (relation instance)
  (unless *current-article*
    (error "Initialization/threading error. No value for *current-article*"))
  (let ((content-obj (article-contents *current-article*)))
    (case (name relation)
      (text-relationships::head
       (push instance (head-relations content-obj)))
      (text-relationships::classifier-head
       (push instance (classifier-head-relations content-obj)))
      (text-relationships::modifier-head
       (push instance (modifier-head-relations content-obj)))
      (text-relationships::adjacent
       (push instance (adjacency-relations content-obj)))
      (otherwise
       (push-debug `(,relation ,instance))
       (error "No provision for storing ~a yet" relation))))
  (format t "~&Added ~a~%" instance))
