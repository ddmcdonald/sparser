;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1998 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "dispatch"
;;;    Module:   "analyzers;psp:referent:"
;;;   Version:   2.0 March 1998

;; initiated 12/91
;; 1.0 (7/17/92 v2.3) added :instantiate-individual-with-binding
;; 1.1 (10/24) flushed the out-of-date referent actions and added some
;;      cases in the new semantics
;; 1.2 (12/31) expanded number of arguments 'function' option can take
;; 1.3 (6/4/93) tweeked the way binding arguments are passed on
;; 1.4 (6/15) put in ugly special case to smooth over inconsistency in the
;;      packaging of "binding" by rdata and others.
;; 2.0 (3/22/98) Put in machinery to record annotations on lattice-points.

(in-package :sparser)

(defvar *head* nil)  ;; These are set by the individual cases.
(defvar *arg* nil)   ;; They're global so we don't have to worry about
                     ;; passing them as arguments. 


(defun dispatch-on-rule-field-keys
       (rule-field left-referent right-referent right-edge)

  (setq *head* (setq *arg* nil)) ;; initialize

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
       (dolist (binding-exp (rest rule-field))
         (ref/binding binding-exp
                      left-referent right-referent right-edge)))
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

      (otherwise
       (break "Threading bug in referent expression decoding.~
               ~%Unexpected key: ~A" rule-field)))

    (annotate-realization-pair *head* *arg* *rule-being-interpreted*)))

