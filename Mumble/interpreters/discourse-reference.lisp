;;; -*- Mode: Lisp; Syntax: Common-Lisp; -*-
;;; Copyright 2016-2017 SIFT LLC. All Rights Reserved.

(in-package :mumble)

;;; Focus

(defvar *current-focus* nil
  "The current discourse focus.")

(defgeneric in-focus? (object &key)
  (:documentation "References to any object for which this predicate
returns true will be pronominalized. By default, only the current
discourse focus is considered. Methods should supply more selective
criteria based on context or supplied by keyword arguments.")
  (:method-combination or)
  (:method or (object &key (focus *current-focus*))
    (and focus (eql object focus))))

(defgeneric type-in-focus? (object &key)
  (:documentation "References to any object for which this predicate
returns true will be replaced with a one-anaphor.")
  (:method-combination or)
  (:method or (object &key (focus *current-focus*))
    (and focus (typep object (type-of focus)))))

(defgeneric set-the-focus (object &key)
  (:documentation "Set the current discourse focus.")
  (:method (object &key)
    (setq *current-focus* object)))

;;; Mentions

(defvar *mentions* nil
  "A list of mention records containing the objects referenced
 and the way they were mentioned. Initialized by initialize-mumble-state
 at the beginning of each call to say")

(defgeneric local-mentions (object)
  (:documentation "Return a list of local (e.g., c-commanded)
references to the given object that are to be pronominalized.")
  (:method-combination append)
  (:method append (object)
    (remove-if-not (lambda (mentioned) (eql object mentioned))
                   *mentions*
                   :key #'object-mentioned)))

(defgeneric mention (object realization dominating-clause)
  (:documentation "Record a realized reference to an object
for which subsequent references should be pronominalized.")
  (:method-combination progn)
  (:method :around ((object null) realization dominating-clause))
  (:method :around (object (realization null) dominating-clause))
  (:method progn ((dtn derivation-tree-node) realization dominating-clause)
    (mention (referent dtn) realization dominating-clause))
  (:method progn (object realization dominating-clause)
    (push (make-mention :name (if (mobject-p object)
                                (name object)
                                (princ-to-string object))
                        :object-mentioned object
                        :mention-realization realization
                        :mention-dominating-clause dominating-clause)
          *mentions*))
  (:method progn (object realization (dominating-clause phrasal-context))
    (declare (ignore realization))
    (when object
      (pushnew object (objects-referenced dominating-clause)))))

(defun record-unadorned-mention (object)
  (mention object nil nil))

;;; Uniqueness

(defvar *unique-objects-in-situation* nil
  "Hack to avoid type machinery or too much thinking to define
the notion of being unique. If it's on this list, it's unique.")

(defgeneric unique? (object)
  (:documentation "Is there only one of these in the situation?")
  (:method (object)
    (member object *unique-objects-in-situation*)))

(defgeneric stipulate-to-be-unique (object)
  (:documentation "There is only one of these.")
  (:method (object)
    (pushnew object *unique-objects-in-situation*)))
