;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2021 David D. McDonald all rights reserved
;;;
;;;      File: "note-classes"
;;;    Module: analyzers/sdmp/note-classes
;;;   Version: June 2021

;; Initiated 6/14/21 to separate out the classes and code from their use.

(in-package :sparser)

;;;-----------------------------
;;; classes and print functions
;;;-----------------------------

(defclass note-group (named-object)
  ((notables :initform nil :accessor get-notables))
  (:documentation "Holds a group of notables that have something
 in common semantically or textually. For notes, these are created
 by define-note-group and stashed on *note-groups* when defined."))

(defclass note-group-instance (named-object)
  ((doc-element :initform nil :accessor for)
   (note-instances :initform nil :accessor note-entries)
   (count :initform 0 :accessor group-count))
  (:documentation "Created after an article is finished
    as a sort of summary."))

(defclass notable (named-object)
  ((kind :initform nil :accessor kind-of-notable)
   (group :initform nil :accessor part-of-group)
   (trigger :initform nil :accessor note-trigger))
  (:documentation "A noteworthy category or something we identify
 via word-spotting and treat like a note for reporting purposes.
 This is the type for which a note-entry is the token."))

(defclass note-entry (named-object)
  ((notable :initform nil :accessor notable) ; backpointer
   (count :initform 0 :accessor instance-count)
   (text-strings :initform nil :accessor edge-strings
     :documentation "A list of the edge-span strings and edge-numbers
        that motivated this instance of the notable."))
  (:documentation "Represents the instances of a notable throughout
 a particular document. Does what the base implentation did, i.e.
 keep a count of the instances and facilitate their aggregation
 at higher levels of the document, but adds things like tracking
 the edges (text strings) involved to facilitate debugging."))

(setup-find-or-make notable)
(setup-find-or-make note-entry)
(setup-find-or-make note-group)
(setup-find-or-make note-group-instance)

(defmethod print-object ((ne note-entry) stream)
  (print-unreadable-object (ne stream)
    (let ((name (cat-name (note-trigger (notable ne))))
          (count (instance-count ne)))
      (format stream "~a ~a" name count))))


;;;------------
;;; operations
;;;------------

(defgeneric get-entry-for-notable (notable)
  (:documentation "Given an edge, look up the corresponding notable,
    then find or make its note-entry in the current sentence.")
  (:method ((e edge))
    (let ((n (noteworthy? e)))
      (get-entry-for-notable n)))
  (:method ((n notable))
    (let* ((name (cat-name (note-trigger n)))
           (s (sentence))
           (container (contents s))
           (alist (items container))
           (entry (when alist (assoc name alist :test #'eq))))
      (flet ((make-initial-note-entry (notable)
               (let ((entry (find-or-make-note-entry name)))
                 (setf (notable entry) notable)
                 entry)))
        (cond
          ((null alist) ; first case of any note
           (setq entry (make-initial-note-entry n))
           (setf (items container)
                 (list (list name entry))))
          ((null entry) ; a new case
           (setq entry (make-initial-note-entry n))
           (setf (items container)
                 (cons (list name entry) alist))))
        entry))))


(defun add-edge-to-note-entry (edge entry)
  "Look up the span of text the edge covers, and push that
   along with the index number of the edge onto the
   edge-strings slot of the entry."
  (let* ((string (string-for-edge edge))
         (number (edge-position-in-resource-array edge))
         (pair (list string number)))
    (push pair (edge-strings entry))
    entry))

(defun increment-note-entry (entry)
  (incf (instance-count entry)))
  

;;;----------------------------------------------
;;; construction from noteworthy categories list
;;;----------------------------------------------

(defun takeup-noteworthy-categories (list-of-groups)
  "Applied to the *noteworthy-categories* list that's in
   grammar/rules/SDM&P/noteworthy.lisp. Creates the
   groups, which create the notables. When it executes
   the result is stored on *note-groups* "
  (loop for group in list-of-groups
     collect (define-note-group (car group) (cdr group))))

(defun define-note-group (name cases)
  (let* ((group (find-or-make-note-group name))
         (notables (loop for case in cases
                      collect (define-notable case group))))
    (setf (get-notables group) notables)
    group))
          
(defun define-notable (item group)
  "Define the class instance. Link it to the category for
   noteworthy? to see"
  (let ((name (etypecase item (symbol item))))
    (let ((n (find-or-make-notable name))
          (category (category-named name :error)))
      (setf (kind-of-notable n) :category)
      (setf (part-of-group n) group)
      (setf (get-tag :noteworthy category) n)
      (setf (note-trigger n) category)
      n)))


;;;----------------------
;;; pre-article cleaning
;;;----------------------

(defun clear-note-tables ()
  "Called from clean-out-history-and-temp-objects just before
   the next text analysis is about to start. Since notables
   and note-groups persist across articles and are accessed by
   name, we have to clean out their per-article instance counterpart
   objects or else we would have misleading counts."
  (clear-note-entry)
  (clear-note-group-instance))

