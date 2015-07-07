;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2013-2015 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "content"
;;;   Module:  "objects;doc:"
;;;  Version:  June 2015

;; initiated 3/13/13. Elaborated through 3/29/13. 9/17/13 fan-out
;; from sections make-over. 10/2/19 Fleshed out general notion of
;; a container and set up simple accumulator for sentences.
;; 5/12/15 Reorganized a good deal and pulled out fresh-contents
;; to go in drivers/forest/parsing-containers.lisp. Moved them
;; back here 6/11/15 reincarnated as 'install-contents' that only
;; does it once. Added more mixins to the content classes for
;; organizing aggregation of their relations and entities as well
;; as record their rhetorical aspects. 

(in-package :sparser)

;;;------------------
;;; container object
;;;------------------

(defclass container ()
  ((backpointer :initarg :in :accessor bkptr
    :documentation "backpointer to the document object that it's part of"))
  (:documentation "Common super class for all container-like things"))

;;;---------------------
;;; sentence containers
;;;---------------------

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
          (:situation (symbol-function 'make-sentence-container/situation))
          (:complex (symbol-function 'make-sentence-content-container)))))

;; (designate-sentence-container :simple)  => switch setting
(defun make-sentence-container/simple (sentence)
  (make-instance 'simple-container :in sentence))


;;;------------------------------------------
;;; content containers for document elements
;;;------------------------------------------

(defclass sentence-content (container parsing-status 
                            local-layout epistemic-status
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


;;---- Making it the container that's used with sentences

; (designate-sentence-container :complex)  ;; run with every change
;
(defun make-sentence-content-container (sentence)
  (make-instance 'sentence-content
    :in sentence
    :level :initial))


(defclass paragraph-content (container aggregated-bio-terms
                             epistemic-state discourse-relations
                             sentence-tt-counts)
  ()
  (:documentation "Will want a bunch more structure just over
    the enties for the purpose of facilitating anaphora. 
    Story structure might be paragraph based too."))

(defclass section-content (container aggregated-bio-terms
                           sentence-parse-quality)
  ())

(defclass article-content (container aggregated-bio-terms
                           sentence-parse-quality)
  ())


  
;;;---------------------------------------------------------
;;; Setting the context of the different levels of document
;;;---------------------------------------------------------

(defgeneric install-contents (document-element)
  (:documentation "Instantiate the appropriate content class for
    this class of document element. Assumes that the elements are
    permanent and checks to insure that multiple passses over
    an element will not replace the original contents instance."))

(defmethod install-contents ((a article))
  (unless (contents a)
    (setf (contents a) (make-instance 'article-content :in a))))

(defmethod install-contents ((sos section-of-sections))
  (unless (contents sos)
    (setf (contents sos) (make-instance 'section-content :in sos))))

(defmethod install-contents ((s section))
  (unless (contents s)
    (setf (contents s) (make-instance 'section-content :in s))))

(defmethod install-contents ((p paragraph))
  (unless (contents p)
    (setf (contents p) (make-instance 'paragraph-content :in p))))


#|   Definition for Grok
  "Supplies the content field of an article"
  ;; placeholder for resource -- but only via a generating macro that
  ;; has some generality. 
  (let ((contents (make-instance 'text-relation-contents :container article))
        (symbol (name article)))
    (if symbol 
      (setf (name contents) symbol)
      (setf (name contents) :no-name-in-article))
    contents))
|#

;;;---------------------------
;;; Grok code to rehabilitate
;;;---------------------------

;;----------------- simplistic accumulator

(defclass accumulate-items ()
  ((list :initform nil :accessor items
    :documentation "Simple list. Items are just pushed onto it
      making them in reverse cronological order."))
  (:documentation "Maintains a simple list. Up to the reader of
     the list to sort it into various kinds of things.
     Intended as a mixin for other containers."))

(defclass simple-container (container accumulate-items)
  ())
  
(defmethod print-object ((c accumulate-items) stream)
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
