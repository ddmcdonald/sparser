;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;;
;;;      File: "analysis"
;;;    Module: "analyzers;psp:word-spotting:"
;;;   Version:  November 2021

;; Initiated 7/29/21 to hold routines to explore the context
;; of motif triggers in their articles

(in-package :sparser)

;;;---------------                                        
;;; for exploring
;;;---------------                                       

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



;;;--------------------------------------------
;;; setup the context after parsing an article
;;;--------------------------------------------

(defgeneric apply-context-predicates (article)
  (:documentation "Called as part of the after-actions method on articles.
 We identify what group instances we should work on, then we iterate through
 the edges in their entries to create and store their used-in chains.
 That's the raw material we apply context predicates to, or explore as part
 of developing the predicates.")
  (:method ((a article))
    (declare (special *compute-items-contexts*))
    (when *compute-items-contexts*
      (let* ((items-field (items (contents a)))
             (group-instances (collect-germane-group-instances items-field)))
        (setf (germaine-items (contents a)) group-instances)
        (loop for group in group-instances
           do (loop for entry in (note-instances group)
                 do (loop for record in (text-strings entry)
                       as edge-number = (edge-record-number record)
                       as chain = (upward-used-in-chain edge-number)
                       do (store-edge-chain record chain))))
        (loop for gi in group-instances
             do (analyze-trigger-contexts gi))))))

(defvar *germaine-spotter-group-instances* nil)

(defun collect-germane-group-instances (list-of-group-instances)
  "We want the motif-spotting group instances. Right now we only want
   word spotters since those are where the motifs have been stored."
  (declare (special *motif-groups*))
  (let ((groups
         (loop for group in list-of-group-instances
            as name = (name group)
            when (find name *motif-groups* :key #'name)
            collect group)))
    (setq *germaine-spotter-group-instances* groups)
    groups))



;;;--------
;;; driver
;;;--------

(defgeneric analyze-trigger-contexts (key)
  (:documentation "Called from apply-context-predicates.
 Walks down through the germane note-group instances in
 the current article. Each instance contains one or more note-entry objects.
 Each note-entry contains a list of more or more edge-record instances:
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
          (chain (get-chain edge))
          (*configuration-break* t))
      (declare (special *configuration-break*))
      (identify-edge-configuration record edge chain))))


(defvar *configuration-break* nil
  "If not nil the config-break gate will fire")

(defun config-break ()
  "The breaks are seeded in the code. We really only want them
   while we're working on these -not- while they're being computed,
   which is when using edge-config"
  (declare (special *configuration-break*))
  *configuration-break*)
  
;; Long-term option -- tailor a macro
(defparameter *debug-context-predicates* nil
  "Incorporated into predicates to flag cases that go beyond what they
 anticipated that we want to look into. If this flag is up we'll go into
 a warn-or-error or a break, otherwise the predicate will just return nil")

