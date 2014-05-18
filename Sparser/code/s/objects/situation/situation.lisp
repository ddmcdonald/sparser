;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project 
;;;
;;;     File:  "situation"
;;;   Module:  objects/situation/
;;;  version:  May 2014

;; Initiated 9/18/13. Fleshed out 10/9/13. 1/23/14 Added sentence state.
;; 4/9/14 added a tailored container. 5/13/14 Starting discourse level. 

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
    :documentation "Predicates over entities, or something like that")
   (latent-predicates :type list :initform nil :accessor latent-predicates
    :documentation "List of latents-wrapper objects"))
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

(defclass sentence-situation (core-situation ordered has-parent)
  ((sentence-state :type state 
                   :initform (state-named :initial-sentence-state)
                   :accessor sentence-state
    :documentation "The state of core-situation is now effectively
      the state of an accumulating phrase, while this state records
      the accumulation of the elements of a sentence."))     
  (:documentation "Additional elements needed to organize a situation
      that spans a sentence-worth of content."))


;;--- Discourse level

(defclass discourse-situation (has-children)
  ((first-situation :initarg :first :accessor first-situation
    :documentation "Points to the first sentence situation.
      Provides the reference point to chain forward from.")
   (current-situation :accessor current-situation
    :documentation "Caches the current situation. The last,
      most recent sentence situation in the chain.")
)
  (:documentation
   ""))

;;;----------------
;;; initialization
;;;----------------

;;/////////////// Give these an initialization routine. Setup resource
(defvar *current-situation* nil
  "Designates the currently active sentence-level situation object.")

(defvar *previous-situation* nil
  "Managed by make-sentence-container/situation.")

(defvar *discourse-situation* nil
  "There's only one. 
   Extended by make-sentence-container/situation.")


;; (designate-sentence-container :situation)  
;; This is a computed function. Re-eval after any change
;;
(defun make-sentence-container/situation (sentence)
  ;; Called from make-sentence-container when the sentence's
  ;; document element is being laid down by start-sentence, where the only
  ;; thing we actually know is the starting position.
  ;;//////// revise to use allocation
  (let ((s (make-a-situation sentence)))
    (when *current-situation*
      (unless *discourse-situation*
        (initialize-discourse-situation *current-situation*))
      (extend-discourse-situation s)
      (setq *previous-situation* *current-situation*))
    (setq *current-situation* s)))

(defun make-a-situation (sentence) ;;//////// revise to use allocation
  (let ((model (make-instance 'model-of-situation)))
    (make-instance 'sentence-situation 
      :in sentence
      :model model)))

(defun initialize-discourse-situation (first-sentence-situation)
  "Create and setup the first discourse-situation object based on
   the initial sentence-situation and the one just created."
  (let ((ds (make-instance 'discourse-situation
              :first first-sentence-situation)))
    (setf (parent first-sentence-situation) ds)
    (setf (children ds) first-sentence-situation)
    (setf (current-situation ds) first-sentence-situation)
    (setq *discourse-situation* ds)
    ds))

(defun extend-discourse-situation (new-sit)
  (let ((ds *discourse-situation*))
    (unless ds
      (error "Threading bug: no discourse situation."))
    (let ((last (current-situation ds)))
      (setf (next last) new-sit)
      (setf (previous new-sit) last)
      (setf (current-situation ds) new-sit)
      (make-necessary-adjustments-to-situations ds last))))

(defun make-necessary-adjustments-to-situations (ds last)
  ;; Here is where we set up functors, entities to
  ;; reference, things like that.
  (push-debug `(,ds ,last)))


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
  ;; Lookup the present situation. (Would be nice if didn't have
  ;; to go via the current sentence.)
  ;; do an add-to-container to the situation that knows that
  ;; the result goes into the relations slot of the situation's model
  (unless (= 2 (length args))
    (push-debug `(,var-name ,args))
    (error "Unexpected situation. ~a arguments to add relation"
           (length args)))
  ;;/// type check both args are individuals
  (let* ((i (car args))
         (value (cadr args))
         (variable (find-variable-from-individual var-name i)))
    (let ((b (bind-variable variable value i))
          (s (the-situation))) ;; who would know about the level?
      ;; that makes the associaton on the instance
      ;; Now we add it to the content as another relation
      (tr :adding-relation-to-situation variable i value) ;; + situation?
      (integrate-into-situation b s)
      ;; return value isn't consumed
      b)))

(defgeneric integrate-into-situation (item situation)
  (:documentation "Provides a hook for doing interesting things
    when an item of a particular type is being added into
    a particular type of situation. Default is to just add
    to the appropriate slot in the vanila model-of-situation."))

(defmethod integrate-into-situation ((b binding) (s core-situation))
  (let ((model (model s)))
    (push b (relations model) )))


(defgeneric add-entity (item)
  (:documentation "Incorporate the item into the ongoing situation
    at the appropriate level, carrying out any associated inferences
    or priming operations."))

(defmethod add-entity ((item t))
  "Just stash it in the entity field of the model just to park it.
   Essentially a no-op."
  ;;/// trap unexpected types here?
  (let ((model (model (the-situation)))) ;; level ?? 
    (push item (entities model))))

(defmethod add-entity ((i individual))
  (let ((model (model (the-situation))) ;; level ?? 
        (wrapper (wrap-latent-predicates i)))
    (push-debug `(,wrapper ,i ,model))
    (push wrapper (latent-predicates model))
    (tr :adding-entity-to-situation i)
    (push i (entities model))))
    


