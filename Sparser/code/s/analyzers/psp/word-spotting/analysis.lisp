;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;;
;;;      File: "analysis"
;;;    Module: "analyzers;psp:word-spotting:"
;;;   Version:  August 2021

;; Initiated 7/29/21 to hold routines to explore the context
;; of motif triggers in their articles

(in-package :sparser)

;;;---------------                                        ;
;;; for exploring
;;;---------------                                        ;

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
    current article the note-group-instance with this name.
    Signal an error if there is no instance with this name.")
  (:method ((name symbol))
    (let* ((group-list (items (contents (article))))
           (group (find name group-list :key #'name :test #'eq)))
      (unless group (error "There is no note-group-instance of ~a ~
                            in the current article" name))
      group)))


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
    (format t "~%Note-entry ~a" (name entry))
    (show-edge-records entry)))



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


(defparameter *debug-context-predicates* nil
  "Incorporated into predicates to flag cases that go beyond what they
 anticipated that we want to look into. If this flag is up we'll go into
 a break, otherwise the predicate will return nil")

(defgeneric analyze-trigger-contexts (key)
  (:documentation "Walk down through the germane note-group instances in
 the current article. Each instance contains one or more note-entry objects.
 Each note-entry contains a list of more or more edge-record instances,
 one for each edge the spotter creates over that notable's trigger phrase.
   We pass these edge records through a set of increasingly more heuristic
 categorizing predicates on their chains, storing their conclusions on the
 edge-record, presently just as a keyword.
   Called from apply-context-predicates, which has the germane group instances
 in its hand already")
  
  (:method ((name symbol)) ; for debugging
    "We are systematically using 'group' as shorthand for what are
     actually note-group-instance objects"
    (analyze-trigger-contexts (find-note-group name)))
  
  (:method ((group note-group-instance))
    (loop for entry in (note-instances group)
       do (loop for record in (text-strings entry)
             as number = (edge-record-number record)
             as edge = (edge# number)
             as chain = (edge-record-chain record)
             do (identify-edge-configuration record edge chain)))))


(defun identify-edge-configuration (record edge chain)
  "Try the edge and its chain against the context predicates looking for
   one that succeeds and provides a categorization of the edge configuration
   that this edge is in"
  (declare (special *debug-context-predicates*))
  (let ((configuration nil))
    (setq configuration
          (edge-context-for-name? chain))
    (unless configuration
      (setq configuration
            (position-in-np-head edge chain)))
    (if configuration
      (setf (edge-record-configuration record) configuration)
      (else
        (when *debug-context-predicates*
          (push-debug `(,edge ,chain))
          (break "New configuration~
                ~%  chain ~a~
                ~%  edge ~a" chain configuration))
        nil))))

(defgeneric edge-config (edge)
  (:documentation "For testing individual cases. Depends on the tables
   managed by store-edge-chain to get the edge-record and the chain from
   just the edge.")
  (:method ((number integer))
    (edge-config (edge# number)))
  (:method ((edge edge))
    (when (polyword-p (edge-category edge)) ;; "tir na nog"
      (setq edge (edge-used-in edge)))
    (let ((record (get-edge-record edge))
          (chain (get-chain edge)))
      (identify-edge-configuration record edge chain))))
