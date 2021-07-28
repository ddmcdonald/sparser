;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;;
;;;      File: "object"
;;;    Module: "analyzers;psp:word-spotting:"
;;;   Version: July 2021

;; Initiated 5/18/21

(in-package :sparser)


;;;--------------------------------------------
;;; Word spotter versions of the note classes
;;;--------------------------------------------

(defclass word-spotting-group (note-group)
  ()
  (:documentation "Links a set of spotters. Stored in the inherited
    notables slot"))

(defclass word-spotting-group-instance (note-group-instance)
  ()
  (:documentation "An instance of a set of spotters in a particular document"))
     
(defclass spotter (notable)
  ((rdata :initarg :for :accessor language-spec
     :documentation "The information we use to make the referent for
       the edge we put over the span driver identifies"))
  (:documentation "This is the type of thing we want to identify
    via word-spotting -- a particular word or polyword. The setup
    routine supplies a name for it (in the name slot). We also use
    the kind and group fields of notable. The trigger field doesn't
    make sense for these."))

(defclass spot-entry (note-entry)
  ()
  (:documentation "Once we've spotted something we're looking for,
    we (try to) use get-entry-for-notable to get from the spotter instance
    to its set of entries, one for each instance, recording the edge
    when that makes sense."))

(setup-find-or-make spotter) ; notable)
(setup-find-or-make spot-entry) ;note-entry)
(setup-find-or-make word-spotting-group) ;note-group)
(setup-find-or-make word-spotting-group-instance) ;note-group-instance)

(defmethod print-object ((se spot-entry) stream)
  (print-unreadable-object (se stream)
    (let ((count (instance-count se)))
      (format stream "~a ~a" (name se) count))))

(defun clear-spotting-tables ()
  "Called from clean-out-history-and-temp-objects just before
   the next text analysis is about to start. Clearing the instances
   removes any influence from instances in earlier documents."
  (clear-spot-entry)
  (clear-word-spotting-group-instance))


;;;-----------------------
;;; tables for the driver
;;;-----------------------

(defvar *words-to-triggers* (make-hash-table)
  "Associates words or polywords with a instance of the spotter
   class that is executed when the word is encountered.
   This table feeds spot-word and spot-polyword via the
   lookup function target-word-to-spot")

(defun add-word-to-spot (word spotter)
  (setf (gethash word *words-to-triggers*) spotter))

(defun remove-word-to-spot (word)
  (remhash word *words-to-triggers*))


(defgeneric setup-word-to-spotter (phrase spotter)
  (:documentation "Add the word or polyword ('phrase') to the table
    associated with this spotter.
    If no spotter is supplied, then we fashion one from the phrase
    (/// but how do we tie it to a group??)")
  (:method ((w word) (s spotter))
    (add-word-to-spot w s))
  (:method ((pw polyword) (s spotter))
    (add-word-to-spot pw s)))


;;;--------------------------
;;; versions of what to spot
;;;--------------------------
;; Also see grammar/sl/motifs/base-categories.lisp

;; Do we need also a group-level class?

(defclass motif-spotter (spotter)
  ((kind :initarg :type :accessor kind-of-notable
     :documentation "one of the symbols char(acter) prop, event"))
  (:documentation "This the analog of notable (which spotter indeed inherits
    from). The name is formed from the word/polyword this goes with."))

(setup-find-or-make motif-spotter)

