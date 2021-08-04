;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;;
;;;      File: "analysis"
;;;    Module: "analyzers;psp:word-spotting:"
;;;   Version:  July 2021

;; Initiated 7/29/21 to hold routines to explore the context
;; of motif triggers in their articles

(in-package :sparser)

#| (defvar a *)
sp> (items (contents a))
(#<note-group-instance quantities> #<note-group-instance vague-names>
 #<note-group-instance identified-names> #<note-group-instance places>
 #<note-group-instance leprechaun> #<note-group-instance time>
 #<note-group-instance verbs> #<note-group-instance speech-acts>)

sp> (find-note-group 'quantities a)
#<note-group-instance quantities>

sp> (find-note-group 'leprechaun a)
#<note-group-instance leprechaun>

|#

(defgeneric find-note-group (name)
  (:documentation "Retrieve from the contents field of the
    current article the note-group-instance with this name.")
  (:method ((name symbol))
    (let* ((group-list (items (contents (article))))
           (group (find name group-list :key #'name :test #'eq)))
      (unless group (break "There is no note-group-instance of ~a ~
                            in the current article" name))
      group)))


;;--- for exploration
;;
(defgeneric print-used-in-context (note)
  (:documentation "Starting with a note-group-instance (or the
 symbol that names one), walk down to the edge-strings
 and call upward-used-in-chain to make an easily examined view
 of the chart context about that instance.")
  (:method ((name symbol))
    (let ((group (get-note-group-instance name)))
      (print-used-in-context group)))

  (:method ((group note-group-instance))
    (let ((entries (note-instances group)))
      (format t "~&Note-group-instance ~a" (name group))
      (loop for note-entry in entries
         do (print-used-in-context note-entry))))

  (:method ((entry note-entry))
    (let ((edge-strings (text-strings entry)))
      (format t "~%Note-entry ~a" (name entry))
      (loop for record in edge-strings
         as edge-number = (edge-record-number record)
         as chain = (edge-record-chain record)
         do (format t "~&  e~a  ~a" edge-number chain)))))


;;--- predicate
;;
(defgeneric all-instances-are-inside-proper-names (group)
  (:documentation "Does every instance of one of the entries in
    this group occur inside a proper name?  Return those that
    do not, and compute the ratio.")
  ;;  How to represent the others?
  (:method ((name symbol))
    (all-instances-are-inside-proper-names (find-note-group name)))
  (:method ((group note-group-instance))
    (let ( satisfy  fail  )
      (loop for entry in (note-instances group)
         do (loop for record in (text-strings entry)
               as edge-number = (edge-record-number record)
               as chain = (edge-record-chain record)
               do (if (edge-context-for-name? chain)
                    (push record satisfy)
                    (push record fail))))
      (format t "~&~a pass, ~a fail~%" (length satisfy) (length fail))
      (if (null fail) t fail))))



(defparameter *categories-over-names*
  '(name  named-object )
  "List of the category labels that indicate we have a name")

(defgeneric edge-context-for-name? (edge-list)
  (:documentation "Does this chain of edges include an edge
    whose label indicates that spans some sort of names?
    Note that the chain is from lowest to highest.")
  (:method ((edge-list list))
    (dolist (edge edge-list nil)
      (when (memq (edge-cat-name edge) *categories-over-names*)
        (return t)))))

