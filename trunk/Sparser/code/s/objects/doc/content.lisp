;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "content"
;;;   Module:  "objects;doc:"
;;;  Version:  September 2013

;; initiated 3/13/13. Elaborated through 3/29/13. 9/17/13 fan-out
;; from sections make-over.

(in-package :sparser)

;;;------------------
;;; container object
;;;------------------

(defclass text-relation-contents (named-object)
  ((container :initarg :container :accessor container
     :documentation "The article or doc-set or whatever that this goes with")
   (head-relations #|:type (or null common-tr-instance)|# ;; unclear why doesn't work
    ;; since the typep is ok.
    :initform nil :accessor head-relations)
   (classifier-heads :initform nil :accessor classifier-head-relations)
   (modifier-heads :initform nil :accessor modifier-head-relations)
   (adjacencies :initform nil :accessor adjacency-relations))
  (:documentation ""))


(defmethod display ((tc text-relation-contents)) ;; add a stream?
  (format t "~&  ~a heads~
             ~%  ~a clasifier-heads~
             ~%  ~a modifier-heads~
             ~%  ~a adjacencies  "
          (length (head-relations tc))
          (length (classifier-head-relations tc))
          (length (modifier-head-relations tc))
          (length (adjacency-relations tc)))
  tc)



(defun fresh-contents (article)
  "Supplies the content field of an article"
  ;; placeholder for resource -- but only via a generating macro that
  ;; has some generality. 
  (let ((contents (make-instance 'text-relation-contents :container article))
        (symbol (name article)))
    (if symbol 
      (setf (name contents) symbol)
      (setf (name contents) :no-name-in-article))
    contents))




(defun add-text-relation-to-article (relation instance)
  (unless *current-article*
    (error "Initialization/threading error. No value for *current-article*"))
  (let ((content-obj (contents *current-article*)))
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
       (error "No provision for storing ~a yet" relation)))))
;; Noisy -- put it under a trace
;;  (format t "~&Added ~a~%" instance)
