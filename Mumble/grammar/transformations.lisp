;;; -*- Mode: Lisp; Package:MUMBLE; Syntax: COMMON-LISP; Base:10; -*-
;;;
;;; MUMBLE-86:  grammar > transformations
;;;
;;; Copyright (c) 2015 SIFT LLC. All Rights Reserved

(in-package :mumble)

(defun do-any-label-driven-transformations (phrase-node position)
  "Called from process-slot just after the realization-cycle has
   updated the contents."
  (cond
    ((find 'relative-clause (labels position) :key #'name)
     (let* ((subject-slot-contents (contents (first-constituent phrase-node)))
	    (trace (build-trace subject-slot-contents)))
      (set-contents (first-constituent phrase-node) trace)
      (push (slot-label-named 'that) (labels position))))))

#+ignore
(defun feature-driven-prepocessing (features dtn)
  ;; This is an experiment that could turn into a hook when
  ;; the editing style of 'transformations' matures.
  ;; Writing it with just one case in mind, as more cases
  ;; accumulate might want to move from location inside
  ;; realize-dtn in the lexicalized-phrase case
  (when features
    (when (assoc (accessory-type-named :command) features)
      ;; bind the value of the subject to a trace
      (let* ((lexp (resource dtn))
             (free-vars (free lexp))
             (subject (parameter-named 's))
             (trace (build-trace nil))) 
        ;; replace the nil of the trace with designator for
        ;; the interlocutor ("you")
        (unless (memq subject free-vars)
          (error "The subject isn't free. Something's wrong"))
        (make-complement-node subject trace dtn)))))

(defmethod remove-subject ((clause phrasal-root))
  (let ((subject-slot (first-constituent clause)))
    (let ((predicate-slot (next subject-slot)))
      (setf (first-constituent clause) predicate-slot))))

(defmethod add-dummy-subject ((dtn derivation-tree-node))
  "Called from the command accessory. That accessory will call
   remove-subject, but given the present timing in realize-dtn
   the phrase is expanded before the accessories apply, and the
   expander (build-phrase) will expect a subject. 
   This checks whether there already is a value for the subject
   parameter (s) and adds a dummy if there isn't."
  (let ((complements (complements dtn))
        (s-var (parameter-named 's)))
    (unless (find s-var complements :key #'phrase-parameter)
      (let ((trace (build-trace 'dummy)))
        (make-complement-node 's trace dtn)))))

