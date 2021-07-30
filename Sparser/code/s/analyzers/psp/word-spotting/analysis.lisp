;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;;
;;;      File: "analysis"
;;;    Module: "analyzers;psp:word-spotting:"
;;;   Version:  July 2021

;; Initiated 7/29/21 to hold routines to explore the context
;; of motif triggers in their articles

(in-package :sparser)


(defgeneric find-note-group (name container)
  (:documentation "Retrieve the note-group-instance
    with this name from an article's contents.")
  (:method ((name symbol) (a article))
    (let ((group-list (items (contents a))))
      (find name group-list :key #'name :test #'eq))))


(defgeneric print-used-in-context (note)
  (:documentation "Starting with a group-instance (or the symbol
 that names a group-instance) then walk down to the edge-strings
 and call upward-used-in-chain to make an easily examined view
 of the chart context about that instance.")
  (:method ((name symbol))
    (let ((group (get-note-group-instance name)))
      (print-used-in-content group)))
  (:method ((group note-group-instance))
    (let ((entries (note-instances group)))
      (format t "~&Note-group-instance ~a" (name group))
      (loop for note-entry in entries
         do (print-used-in-context note-entry))))
  (:method ((entry note-entry))
    (let ((edge-strings (text-strings entry)))
      (format t "~%Note-entry ~a" (name entry))
      (loop for pair in edge-strings
         as edge-number = (second pair)
         as chain = (upward-used-in-chain edge-number)
         do (format t "~&  e~a  ~a" edge-number chain)))))


(defparameter *categories-over-names*
  '(name  named-object )
  "List the category labels that indicate we have a name")

(defgeneric edge-context-for-name? (edge-list)
  (:documentation "Does this chain of edges include an edge
    whose label indicates that spans some sort of names?
    Note that the chain is from lowest to highest.")
  (:method ((edge-list list))
    (dolist (edge edge-list nil)
      (when (memq (edge-cat-name edge) *categories-over-names*)
        (return t)))))
