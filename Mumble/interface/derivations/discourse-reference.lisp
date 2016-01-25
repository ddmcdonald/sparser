;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id: discourse-reference.lisp 100 2007-07-04 14:31:27Z dmcdonal $
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved

;; initiated 4/24/07

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
     the things that were mentioned in this turn."))
  (:documentation "Also interits sp::next and sp::previous
     from sp::ordered. Might consider a record of the KQML
     slot as well."))

(defvar *current-turn* nil
  "The turn that is happening right now, regardless of who
   is speaking.")

(defvar *previous-turn* nil
  "The turn just prior to the current one. Earlier turns
   we get by chaining along previous links")

(defun next-turn (&key index speaker)
  (setq *previous-turn* *current-turn*)
  (let ((turn (make-instance 'turn
                :index index
                :speaker speaker)))
    (setq *current-turn* turn)))

(defun initial-turn (&key index speaker)
  "Placeholder if we should do something special here
   such as marking the previous tun as something
   other than nil"
  (next-turn :index index :speaker speaker))

(defun local-mentions (obj)
  "Called by should-be-pronominalized-in-present-context"
  (let ((entry (assoc obj (references *current-turn*)
                      :test #'eq)))
    ;;/// placeholder if we want more done
    entry))

(defun record-reference (dtn result dominating-clause)
  (let ((obj (referent dtn)))
    (when dominating-clause
      (push obj (objects-referenced (dominating-clause))))
    (let ((record (record-discourse-context
                   obj result dominating-clause)))
      (push record (references *current-turn*))
      ;;(format t "~&Recording reference to ~a~%" obj)
      record)))

(defun record-discourse-context (obj result dom)
  "Work in progress since it's not clear what to consider.
   Set up as an alist on the object"
  ;; the current slot isn't available while we're building ????
  `(,obj ,result ;; how it was realized
         ,dom)) ;; the clause that immediately dominated it




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


;;;-----------
;;; focus API
;;;-----------

(defgeneric set-the-focus (item)
  (:documentation "External interface to the focus system.
    Given some criteria, a process has concluded that the
    item is in focus. The impact of that will be to have
    the item be pronominalized. Use this method to trigger
    Mumble machinery that acts on this."))

(defvar *item-in-focus* nil)

(defmethod set-the-focus ((item t))
  ;;/// check that it's a reasable sort of object?
  (setq *item-in-focus* item))

(defun in-focus? (obj)
  "Called by should-be-pronominalized-in-present-context
  but determined by a discourse-level assessment of the
  situation"
  (let ((result (eq obj *item-in-focus*)))
    ;(format t "~&The *item-in-focus* is ~a~%" *item-in-focus*)
    ;(if result 
    ;  (format t "~&  it is~%" obj)
    ;  (format t "~&  no~%" obj))
    result))
