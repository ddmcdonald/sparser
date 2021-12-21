;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2021 David D. McDonald all rights reserved
;;;
;;;      File: "note-classes"
;;;    Module: analyzers/sdmp/note-classes
;;;   Version: September 2021

;; Initiated 6/14/21 to separate out the classes and code from their use.

(in-package :sparser)

;;;-----------------------------
;;; classes and print functions
;;;-----------------------------

(defclass note-group (named-object)
  ((notables :initform nil :accessor get-notables))
  (:documentation "Holds a list of instances of the notable class
 that have something in common semantically or textually.
 Instances of note-group are the types for which note-group-instance
 objects are the tokens.
   For notes, these are created by define-note-group and stashed on
 *note-groups*."))

(defclass note-group-instance (named-object)
  ((note-instances :initform nil :accessor note-instances
     :documentation "a 'count' long list of note-entry objects")
   (count :initform 0 :accessor group-count))
  (:documentation "Aggregates all of the note-entry objects created
 in the process of reading a particular article. Created in the
 after-actions method of an article. One instance for each
 note-group. See consolidate-notes in content-methods.lisp."))

(defclass notable (named-object)
  ((kind :initform nil :initarg :kind :accessor kind-of-notable)
   (group :initform nil :initarg :group :accessor part-of-group)
   (trigger :initform nil :initarg :trigger :accessor note-trigger
     :documentation "the category specified as being noteworthy.
       It's cat-name becomes the key under which instantiating
       note-entry's are store on the contents alist"))
  (:documentation "A noteworthy category or something we identify
 via word-spotting and treat like a note for reporting purposes.
 This is the type for which a note-entry is the token."))

(defclass note-entry (named-object)
  ((notable :initform nil :accessor notable) ; backpointer
   (count :initform 0 :accessor instance-count)
   (text-strings :initform nil :accessor text-strings
     :documentation "A list of the edge-record instances for
        the edges that motivated this instance of the notable."))
  (:documentation "Represents the instances of a notable throughout
 a particular document. Does what the base implementation did, i.e.
 keep a count of the instances and facilitate their aggregation
 at higher levels of the document, but adds things like tracking
 the edges involved to facilitate debugging."))

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
    then find or make its note-entry in the current sentence.
    The note-entry instances are created by find-or-make on the
    identity of the notable. That means that they will exist until
    the note-entry cache is cleared, which happens at the start of
    the next run of analysis-core when the per-run initialization
    functions all clear-note-tables.
      Note entries are stored in alists in the items slots of
    the contents object of the sentence in which they were identified,
    then aggreggated and merged with others as we move up the
    levels of document structure. See, collect-noted-items and
    merge-items-alists in objects/doc/content-methods.lisp.
      We use the Sparser package version category name of the
    note-trigger as the key in each alist.
      Spreading these onto the contents fields of the currently active
    sentence is just book keeping, and doesn't carry any information
    as an analysis continues.")
  (:method ((e edge))
    (let ((n (noteworthy? e)))
      (when n
        (get-entry-for-notable n))))
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


(defun increment-note-entry (entry)
  "Called by note and handle-spotted-word"
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


