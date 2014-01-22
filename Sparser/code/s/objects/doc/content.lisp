;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "content"
;;;   Module:  "objects;doc:"
;;;  Version:  October 2013

;; initiated 3/13/13. Elaborated through 3/29/13. 9/17/13 fan-out
;; from sections make-over. 10/2/19 Fleshed out general notion of
;; a container and set up simple accumulator for sentences.

(in-package :sparser)

;;;------------------
;;; container object
;;;------------------

(defclass container ()
  ((backpointer :initarg :in :accessor bkptr
    :documentation "backpointer to the document object that it's part of"))
  (:documentation "Common super class for all container-like things"))


(defclass simple-container (container)
  ((list :initform nil :accessor items
    :documentation "Simple list. Items are just pushed onto it
      making them in reverse cronological order.")
   )
  (:documentation "Maintains a simple list. Up to the reader of
     the list to sort it into various kinds of things."))

(defmethod print-object ((c simple-container) stream)
  (print-unreadable-object (c stream :type t)
    (let ((items (items c))
          (doc-object (bkptr c)))
      (format stream "~a  " (type-of doc-object))
      (if items
        (format stream "~a items" (length items))
        (format stream "empty")))))


;;--- adding items

(defgeneric add-to-container (item container)
  (:documentation "Handles the odities of putting the items into
     the correct place according to the type of the container."))

(defmethod add-to-container ((item t) (s sentence))
  (tr :adding-to-container item s)
  (let* ((container (contents s))
         (list (items container)))
    (setf (items container) (cons item list))))


;;--- other operations

(defgeneric display-contents (container &optional stream)
  (:documentation "Print the contents of the container to
     the stream in a form designed to inform people"))

(defmethod display-contents  ((c simple-container)
                              &optional (stream *standard-output*))
  (format stream "~&~a" (bkptr c))
  (dolist (item (items c))
    (format stream "~%~5T~a~%" item)))





;;--- sentences

(defparameter *container-for-sentence* :simple ;; :situation
  "Switch parameter for the kind of container we make for 
   a sentence, which could be designed for simple accumulation,
   presumably structured accumulation, long-distance parse state
   or (the motive for all this) a situation.")

(defun make-sentence-container (sentence)
  ;; called from start-sentence
  (declare (ignore sentence))
  (error "No version of make-sentence-container has been specified"))

(defun designate-sentence-container (&optional (keyword *container-for-sentence*))
  (setf (symbol-function 'make-sentence-container)
        (ecase keyword
          (:simple (symbol-function 'make-sentence-container/simple))
          (:situation (symbol-function 'make-sentence-container/situation)))))

;; (designate-sentence-container :simple)  => switch setting
(defun make-sentence-container/simple (sentence)
  (make-instance 'simple-container :in sentence))



          
;;----------- original, clumsy Grok code below here ----------

(defclass text-relation-contents (named-object
                                  has-content-model;; adds contents slot
                                  container)
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
  ;;(push-debug `(,relation ,instance)) (break "add text relation: ~a" relation)
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
