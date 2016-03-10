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

(defgeneric set-the-focus (item)
  (:documentation "External interface to the focus system.
    Given some criteria, a process has concluded that the
    item is in focus. The impact of that will be to have
    the item be pronominalized. Use this method to trigger
    Mumble machinery that acts on this."))

(defmethod set-the-focus ((item t))
  ;;/// check that it's a reasable sort of object?
  (assert item)
  (setf (object-in-focus *current-turn*) item))

(defun in-focus? (obj)
  "Called by should-be-pronominalized-in-present-context
  but determined by a discourse-level assessment of the
  situation. We asking this during the current turn so the
  answer is established by the prior turn."
  (when *previous-turn*
    (eq obj (object-in-focus *previous-turn*))))
  


;;;-------------------------------------------------------------
;;; what -kinds- of objects (events) have we been talking about
;;;-------------------------------------------------------------

(defun record-use-of-object-type (category)
  (push category (object-types-referenced *current-turn*)))

(defun assumed-object-types ()
  "There's an aspect of decay here, but don't have enough
  use-cases to assess it, so just going to look at the
  previous turn."
  (when *previous-turn*
    (object-types-referenced *previous-turn*)))



;;;-------------------------------
;;; history of particular objects
;;;-------------------------------

(defun local-mentions (obj)
  "Called by should-be-pronominalized-in-present-context
  which is written to expect this object to have been
  mentioned earlier in the ongoing utterance, probably
  in a higher clause. That distinction is hard to do
  unless we own the parser/generator, and even then I'm
  not entirely sure of the use case."
  (let ((entry (assoc obj (references *current-turn*)
                      :test #'eq)))
    ;;/// unclear yet what older Mumble code would
    ;; actually want to know. See c-command stub function
    entry))

(defun record-reference (dtn result dominating-clause)
  "Called from general-np-bundle-driver"
  ;;/// we need to work up more use cases so we can
  ;; determine how much structure might bo into a 'mention-record'
  (let ((obj (referent dtn)))
    (when dominating-clause
      (push obj (objects-referenced (dominating-clause))))
    (let ((record (record-discourse-context
                   obj result dominating-clause)))
      (push record (references *current-turn*))
      record)))

(defun record-discourse-context (obj result dom)
  "Work in progress since it's not clear what to consider.
   Set up as an alist on the object"
  ;; the current slot isn't available while we're building ????
  `(,obj ,result ;; how it was realized
         ,dom)) ;; the clause that immediately dominated it


(defun record-unadorned-mention (obj &optional result)
  "When we're simulating the other side of the conversation we don't
   have anything like a dominating clause or other functional 
   information.  This it to just let you push the objects on
   without making too much up."
  (let ((record `(,obj ,result)))
    (push record (references *current-turn*))))

;;;------------
;;; uniqueness
;;;------------
#| If an object is unique we should always use "the".
 We'll just stipulate that an object is unique. In the
 blocks world there's really only one -- the table. 
|#

(defgeneric unique? (item)
  (:documentation "Is there only one of this item
   in the situation? For the moment, this should
   only apply to objects that are always unique, "))

(defvar *unique-objects-in-situation* nil
  "Hack to avoid type machinery or much thinking to 
   define the notion of being unique. If it's on
   this list it's unique")

(defmethod unique? ((item t))
  (member item *unique-objects-in-situation*
          :test #'eq))

(defun stipulate-to-be-unique (item)
  (push item *unique-objects-in-situation*))

