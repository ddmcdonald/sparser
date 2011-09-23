;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2011 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$

;;;      File: "infer categories"
;;;    Module: "grammar;rules:SDM&P:
;;;   Version: August 2011

;; Initiated 9/4/07 on code from 8/16/07 that burns-in the assumption that
;; the value is the head-line. Updated calls 8/7/11.

(in-package :sparser)

(defun bind-open-var (open-relation value)
  ;; Given the machinery in Referent-from-rule, the last expression in 
  ;; a referent to run becomes the referent of the edge. /// Could consider
  ;; being clever about noticing that there's a head statement in the
  ;; form rules below, but could also just appreciate what's going to happen
  ;; and embed it in this code
  (tr :top-of-bind-open-var open-relation value)
  (if (typep open-relation 'psi)
    (let* ((lp (psi-lattice-point open-relation))
           (open-in (lp-variables-free lp)))
      (tr :relation-open-in open-in)
      (if (= 1 (length open-in))
	    (let* ((open-variable (car open-in))
               (psi (find-or-make-psi-with-binding
                     open-variable value open-relation)))
          (tr :psi-binding-open-relation-is psi)
          psi)
        (else
          (break "Stub - its open in more than one variable: ~a"  lp)
          nil)))
    (else
      (tr :bind-open-var/relation-not-psi open-relation value)
      nil))

  ;; assumes that value is the head, and that the fact that we've added another
  ;; fact about it doesn't change the fact about what the referent of the
  ;; edge should be.
  value)


;;;--------
;;; traces
;;;--------

(defparameter *trace-bind-open-var* nil)

(defun trace-bind-open-var ()
  (setq *trace-bind-open-var* t))
(defun untrace-bind-open-var ()
  (setq *trace-bind-open-var* nil))

(deftrace :top-of-bind-open-var (open-relation value)
  (when *trace-bind-open-var*
    (trace-msg "[bind-open-var]~%  open = ~a  of type ~a~%  value = ~a  of type ~a" 
	       open-relation (type-of open-relation)
	       value (type-of value))))

(deftrace :relation-open-in (open-in)
  (when *trace-bind-open-var*
    (trace-msg "[bind-open-var] the relation is open in ~a" open-in)))

(deftrace :psi-binding-open-relation-is (psi)
  (when *trace-bind-open-var*
    (trace-msg "[bind-open-var] the new psi is ~a" psi)))

(deftrace :bind-open-var/relation-not-psi (open-relation value)
  (when *trace-bind-open-var*
    (trace-msg "[bind-open-var] The open-var (~a) is not a PSI.~%  value = ~a"
	       open-relation value)))

