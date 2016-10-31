;;; -*- Mode: Lisp; Package:MUMBLE; Syntax: COMMON-LISP; Base:10; -*-
;;;
;;; MUMBLE-86:  grammar > transformations
;;;
;;; Copyright (c) 2015-2016 SIFT LLC. All Rights Reserved

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

(defgeneric remove-subject (clause)
  (:method ((clause phrasal-context))
    (let* ((positions (position-table clause))
           (subject-slot (cdr (assoc 'subject positions))))
      (unless subject-slot
        (error "There is no subject in the position table of ~a" clause))
      (splice-out-slot subject-slot))))


(defgeneric add-dummy-subject (dtn)
  (:documentation  "Called from the command accessory. That accessory 
   will call remove-subject, but given the present timing in realize-dtn
   the phrase is expanded before the accessories apply, and the
   expander (build-phrase) will expect a subject. 
   This checks whether there already is a value for the subject
   parameter (s) and adds a dummy if there isn't.")
  (:method ((dtn derivation-tree-node))
    (let ((complements (complements dtn))
          (s-var (parameter-named 's)))
      (unless (find s-var complements :key #'phrase-parameter)
        (let ((trace (build-trace 'dummy)))
          (make-complement-node 's trace dtn))))))

(defun carry-out-passive-transformation ()
  "Called from process-passive-accessory to add a slot label
   that do-any-label-driven-transformations will notice and
   have us move the object to subject position. 
   Operates under the assumption that it is called inside
   the dynamic scope of process-slot's call to the realization-cycle
   when the resource phrase has been expanded but we haven't
   begun to walk through it. "
  ;; Confirm that the phrase has the expected structure.
  ;; Find the contents of the direct object and the subject slot
  ;;  and put the direct object in subject position.
  ;; Splice-out the direct-object position
  (let ((root *current-phrasal-root*)) ;; a phrasal context
    (when (phrase-is-a-clause? root)
      (let* ((positions (position-table root))
             (subject-slot (cdr (assoc 'subject positions)))
             (object-slot (cdr (assoc 'direct-object positions)))
             (object (contents object-slot)))
        (setf (contents subject-slot) object)
        (splice-out-slot object-slot)))))

;; (do-test '(say was snapped bone))

(defgeneric splice-out-slot (slot)
  (:documentation "Used the pointers on the slot to determine
 what links have to be changed to remove the slot from the
 position-path structure. Cases lifted from splice-in, which
 is used by attach-by-splicing to put add a new slot. Its
 helper functions ensure that all links are changed. To get
 your head around this it helps to look at the diagram on
 page 69 of the Mumble-86 documentation.")
  (:method ((slot slot))
    (let ((before (previous slot))
          (after (next slot)))
      (cond ((and (slotp before) (slotp after))
             ;;(set-links-for-slot before slot)
             ;;(set-links-for-slot  slot after)
             (set-links-for-slot before after))
          
            ((and (slotp before) (nodep after))
             ;;(set-links-for-slot before slot)
             ;;(set-links-for-last-constituent after slot)
             (set-links-for-last-constituent after before))
          
            ((and (nodep before) (slotp after))
             ;;(set-links-for-first-constituent before slot)
             ;;(set-links-for-slot  slot after)
             (set-links-for-first-constituent before after))

            (t
             (push-debug `(,before ,after ,slot))
             (break "Splice-out-slot: unexpected case: ~
                   ~%  before = ~a~
                   ~%  after = ~a" before after))))))

          
(defgeneric phrase-is-a-clause? (phrase)
  (:documentation "The name field of a node is set in
 build-phrase to the name of the first node in the
 definition of the phrase being built.")
  (:method ((phrase phrasal-root))
    (eq (name phrase) 'clause))
  (:method ((context phrasal-context))
    (phrase-is-a-clause? (node context))))
