;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "shortcut-mechanics"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  September 2014

;; Lifted out of shortcuts 9/14/14

(in-package :sparser)

;;;--------
;;; macros
;;;--------
;; Simplify how slots, etc. are handled by sharing the parts
;; as a set of wrappers

;; Shared decoder
(defun decode-shortcut-var-spec (spec type)
  "A shortcut variable specification can be a single symbol or
 a list of as many as three symbols. If the specification is 
 a symbol it is interpreted as the label (or more generally
 the value restriction) for the semantic grammar built by
 the tree family. If the specification is a list, then the
 first element is the label for the semantic grammar.
 The second element (if there is one), is the value restriction
 on the slot that's to be bound. The third element specifies
 the name of the slot, replacing the default."
  (flet ((default-value-restriction (type)
           (case type
             ((or :subject :theme :agent :patient :goal)
              'endurant)
             (:complement 'event)
            (otherwise (error "Unknown v/r default: ~a" type))))
         (default-slot-name (type)
           (case type
             (:subject 'subject)
             (:agent 'agent)
             (:patient 'patient)
             (:theme 'theme)
             (:goal 'goal)
             (:complement 'complement)
             (otherwise (error "Unknown slot default: ~a" type)))))
    (let ( v/r var-v/r slot )
      ;; decode the spec into the semantic grammar label: v/r,
      ;; the category of slot (variable): var-v/r,
      ;; and the name of the variable itself: slot
      (typecase spec
        (symbol (setq v/r spec))
        (cons (cond
          ((null (cdr spec))
           (setq v/r (car spec)))
          ((null (cddr spec))
           (setq v/r (car spec)
                 var-v/r (cadr spec)))
          ((= 3 (length spec))
           (setq v/r (car spec)
                 var-v/r (cadr spec)
                 slot (caddr spec)))))
        (otherwise
         (push-debug `(,spec ,type))
         (error "Badly formed var spec: ~a" spec)))
      (values v/r
              (or var-v/r
                  (default-value-restriction type))
              (or slot
                  (default-slot-name type))))))

(defmacro with-name-and-superc (string super-category pos &body body)
  `(let ((name (name-to-use-for-category ,string))
         (superc (or ,super-category
                     (super-category-for-POS ,pos))))
     ,@body))


(defmacro with-subject (subj-spec &body body)
  `(multiple-value-bind (subj-v/r subj-var subj-slot)
                          (decode-shortcut-var-spec ,subj-spec :subject)
      ,@body))


(defmacro with-agent (agent-spec &body body)
  `(multiple-value-bind (agent-v/r agent-var agent-slot)
                        (decode-shortcut-var-spec ,agent-spec :agent)
       ,@body))

(defmacro with-complement (comp-spec &body body)
  `(multiple-value-bind (comp-v/r comp-var comp-slot)
                        (decode-shortcut-var-spec ,comp-spec :complement)
     ,@body))

(defmacro with-theme (theme-spec &body body)
  `(multiple-value-bind (theme-v/r theme-var theme-slot)
                        (decode-shortcut-var-spec ,theme-spec :theme)
     ,@body))

(defmacro with-patient (patient-spec &body body)
  `(multiple-value-bind (patient-v/r patient-var patient-slot)
                        (decode-shortcut-var-spec ,patient-spec :patient)
     ,@body))

(defmacro with-goal (goal-spec &body body)
  `(multiple-value-bind (goal-v/r goal-var goal-slot)
                        (decode-shortcut-var-spec ,goal-spec :goal)
     ,@body))


