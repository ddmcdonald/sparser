;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1998,2011 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "dispatch"
;;;    Module:   "analyzers;psp:referent:"
;;;   Version:   2.2 September 2011

;; initiated 12/91
;; 1.0 (7/17/92 v2.3) added :instantiate-individual-with-binding
;; 1.1 (10/24) flushed the out-of-date referent actions and added some
;;      cases in the new semantics
;; 1.2 (12/31) expanded number of arguments 'function' option can take
;; 1.3 (6/4/93) tweeked the way binding arguments are passed on
;; 1.4 (6/15) put in ugly special case to smooth over inconsistency in the
;;      packaging of "binding" by rdata and others.
;; 2.0 (3/22/98) Put in machinery to record annotations on lattice-points.
;; 2.1 (6/30) moved the annotator up out of here.
;; 2.2 (5/10/11) Redesign staging of annotation of the whole rule ('pair')
;;      for the :bindings case.
;;     (9/1/11) Added dispatch for :method.

(in-package :sparser)


(defun dispatch-on-rule-field-keys (rule-field left-referent 
                                    right-referent right-edge)
  (declare (special  *head-edge* *arg-edge* *rule-being-interpreted*))

  (let ((key (first rule-field)))
    (case key
      (:daughter (ref/daughter (second rule-field)
                               left-referent right-referent))
      (:head (ref/head (second rule-field)
                       left-referent right-referent))

      (:instantiate-individual
       (ref/instantiate-individual
        rule-field left-referent right-referent right-edge))

      (:instantiate-individual-with-binding
       (ref/instantiate-individual-with-binding
        rule-field left-referent right-referent right-edge))

      (:bindings
       (let ( ref )
         (dolist (binding-exp (rest rule-field))
           (setq ref (ref/binding binding-exp left-referent
                                  right-referent right-edge)))
         ;;(break "head = ~a~%arg = ~a" *head-edge* *arg-edge*)
         (annotate-realization-pair
          ref (psi-lp ref) *rule-being-interpreted*
          *head-edge* *arg-edge*)
         ref))

      (:binding
       ;; /// special checks patch over an inconsistency
       (if (lambda-variable-p (cadr rule-field))
         (ref/binding (cadr rule-field)
                      left-referent right-referent right-edge
                      (caddr rule-field))
         (ref/binding (cadr rule-field)
                      left-referent right-referent right-edge)))

      (:subtype (ref/subtype (second rule-field)
                             left-referent right-referent))

      (:funcall
       (ref/function (cdr rule-field)))

      (:method
       (ref/method (cdr rule-field) left-referent right-referent))

      (otherwise
       (break "Threading bug in referent expression decoding.~
               ~%Unexpected key: ~A~%in ~a"
              (car rule-field) rule-field)))))



;;;---------------------------------------------------
;;; facility for caching realization nodes with edges
;;;---------------------------------------------------

(defvar *head-edge* nil)
(defvar *arg-edge* nil)

(defun indicate-head (direction)
  (ecase direction
    (:left (setq *head-edge* *left-edge-into-reference*))
    (:right (setq *head-edge* *right-edge-into-reference*))))

(defun indicate-arg (direction)
  (ecase direction
    (:left (setq *arg-edge* *left-edge-into-reference*))
    (:right (setq *arg-edge* *right-edge-into-reference*))))

