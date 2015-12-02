;;; -*- Mode: Lisp; Package:MUMBLE; Syntax: COMMON-LISP; Base:10; -*-
;;;
;;; MUMBLE-86:  grammar > transformations
;;;
;;; Copyright (c) 2015 SIFT LLC. All Rights Reserved

(in-package :mumble)

(defun do-any-label-driven-transformations (labels phrase-node)
  "Called from process-slot just after the realization-cycle has
   updated the contents. The labels are from the slot"
  (push-debug `(,labels ,phrase-node)) ;;  (break "transform: ~a" labels)
)


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

