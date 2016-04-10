;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Base:10; -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; Copyright (c) 2016 David D. McDonald  All Rights Reserved

;; initiated 4/24/07. Completely redone Jan/Feb/March 2016.

(in-package :mumble)

;;;-------------------------------------
;;; organization of the history by turn
;;;-------------------------------------

#| A dialog is a succession of turns, usually alternating
speakers. 
|#

(defclass turn (sp::ordered)
  ((index :initarg :index :accessor turn-index
    :documentation "Should be the index of the KQML sexp
     that led to this turn")
   (speaker :initarg :speaker :accessor turn-speaker
    :documentation "Who spoke (is speaking) this turn.
     Typically successive turns are by alternative speakers.")
   (references :initform nil :accessor references 
    :documentation "Reference records (i.e. with context) of
     the things that were mentioned in this turn.")
   (object-types :initform nil :accessor object-types-referenced
    :documentation "What concept(s) did we refer to in this
     turn? They become part of the context to permit
     substituting 'one' or the like.")
   (focus :initform nil :accessor object-in-focus
    :documentation "At the end of this utterance/turn what
     object, if any, is the discourse focus."))

  (:documentation "Also interits sp::next and sp::previous
     from sp::ordered. Might consider a record of the KQML
     slot as well."))

(defmethod print-object ((turn turn) stream)
  (print-unreadable-object (turn stream)
    (format stream "turn ~a ~a" (turn-index turn) (turn-speaker turn))))


(defvar *turn-counter* 0
  "Increments with each new turn. Could alternatively be done
  with something from the KQML transport, but want this for the
  print method so not waiting for that.")

(defvar *current-turn* nil
  "The turn that is happening right now, regardless of who
   is speaking. This the only way to get to the turns, though
   once you're retried this one you could chain back to get
   the others.")

(defvar *previous-turn* nil
  "The turn just prior to the current one. Earlier turns
   we get by chaining along previous links")

(defun start-next-turn (&key speaker)
  (let ((turn (make-instance 'turn
                :index (incf *turn-counter*)
                :speaker speaker
                :previous *previous-turn*)))
    (when *previous-turn*
      (setf (sp::next *previous-turn*) turn))
    (setq *previous-turn* *current-turn*)
    (setq *current-turn* turn)
    turn))


(defun initialize-nlg-discourse-history ()
  (setq *turn-counter* 0
        *previous-turn* nil
        *current-turn* nil))


;;;-----------
;;; focus API
;;;-----------

(defmethod set-the-focus ((object sp::individual) &key)
  (setf (object-in-focus *current-turn*) object))

(defmethod in-focus? or ((object sp::individual) &key)
  "Called by should-be-pronominalized-in-present-context
  but determined by a discourse-level assessment of the
  situation. We asking this during the current turn so the
  answer is established by the prior turn."
  (and *previous-turn* (eq object (object-in-focus *previous-turn*))))


;;;-------------------------------------------------------------
;;; what -kinds- of objects (events) have we been talking about
;;;-------------------------------------------------------------

(defmethod record-use-of-object-type ((type sp::category))
  (push type (object-types-referenced *current-turn*)))

(defun assumed-object-types ()
  "There's an aspect of decay here, but don't have enough
  use-cases to assess it, so just going to look at the
  previous turn."
  (when *previous-turn*
    (object-types-referenced *previous-turn*)))
