;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-2005,2011-2013 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "cases"
;;;    Module:   "analyzers;psp:referent:"
;;;   Version:  1.8 May 2012

;; (2/27/92 v2.2) fixed a bug in Ref/composite where it was offset
;;   by one when extracting a literal from the rule's referent field
;; 1.0 (7/17/92 v2.3) added :instantiate-individual-with-binding, and
;;      switched to categories from gl.
;; 1.1 (8/28) Reworked the binding case to fit current dogma rather than the
;;      original (12/91) treatment.
;; 1.2 (10/24) flushed the out-of-date referent actions and added some
;;      cases in the new semantics.
;; 1.3 (12/31) expanded number of arguments 'function' option can take
;; 1.4 (6/3/93) tweeked ref/head to do referential-categories, and again
;;      on 6/10 to do individuals
;;     (6/20) patched over ref/binding for inconsistency in packaging
;;      between rdata and cfrs
;; 1.5 (7/8) changed data-checks in ref/binding to distinguish badly threaded
;;      calls from null variable values
;; 1.6 (8/24) broke out the cases for the new semantics.
;; 1.7 (2/14/05) Removed annotation call from Ref/function.
;; 1.8 (5/17/11) Putting it back. 5/26/12 it needs an additional
;;      lattice-point argument now, but blocked case of keywords that
;;      indicate no value, so postposing looking it up.

(in-package :sparser)

;;;----------
;;; daughter
;;;----------

(defun ref/daughter (edge-designator left-referent right-referent)
  (multiple-value-bind (ref head arg)
      (ecase edge-designator
        (left-referent (values left-referent 
                               *left-edge-into-reference*
                               *right-edge-into-reference*))
        (right-referent (values right-referent
                               *right-edge-into-reference*
                               *left-edge-into-reference*)))
    (annotate-daughter ref *rule-being-interpreted* head arg)
    ref))



;;;-----------
;;; function
;;;-----------

(defun ref/function (rule-field)
  (let ((n-ary-rule
         (cadr (member :rolled-out-from
                       (cfr-plist *rule-being-interpreted*)))))
    (if n-ary-rule
      (ref/function/n-ary-rules n-ary-rule rule-field)
      (else
        ;; it's binary
        (let ((value
               (ecase (length rule-field)
                 (1
                  (funcall (first rule-field)))
                 (2
                  (funcall (first rule-field)
                           (ecase (second rule-field)
                             (left-referent  left-referent)
                             (right-referent right-referent)
                             (left  left-referent)
                             (right right-referent))))
                 (3
                  (funcall (first rule-field)
                           (ecase (second rule-field)
                             (left-referent  left-referent)
                             (right-referent right-referent)
                             (first  left-referent)
                             (second right-referent))
                           (ecase (third rule-field)
                             (left-referent  left-referent)
                             (right-referent right-referent)
                             (first  left-referent)
                             (second right-referent)))))))

          ;; Annotating a ref/function is funny business because we don't
          ;; know what it's going to do when it executes. However we do
          ;; know that all the only raw material it will have to work 
          ;; with (other than burned-in constants) will come from the 
          ;; referents of the edges that take part in the rule.
          ;; We'll assume by default that all the edges in the rule
          ;; should be noted in the annotation, which is probably always
          ;; the correct judgement from a generation perspective.
          (when n-ary-rule
            (break "Stub for annotating an n-ary :function rule"))
          (let ((arity
                 (if *right-edge-into-reference*
                   :binary-rule   ;; terms match options in
                   :unary-rule))) ;; annotate-individual
            (unless (keywordp value) ;; e.g. :no-value-computed-yet
              (cond 
               ((individual-p value)
                (annotate-individual value arity))
               ((eq arity :binary-rule)
                (annotate-realization-pair
                 value 
                 ;;/// Lattice-point argument goes here !!
                 *rule-being-interpreted*
                 *right-edge-into-reference*  ;; presumed head /////
                 *left-edge-into-reference*)) ;; presumed adjunct
               ((eq arity :unary-rule)
                (annotate-unary-realization *rule-being-interpreted*))
               (t (break "Threading bug: shouldn't have gotten here"))))
          
            value))))))



(defun ref/function/n-ary-rules (rule rule-field)
  (let* ((length-of-rhs (length (cfr-rhs rule)))
         (daughters
          (immediate-constituents/n-ary/length
           *parent-edge-getting-reference* length-of-rhs)))

    (when (> length-of-rhs 10)
      (error "The :function reference action cannot be applied ~
              to more than ten arguments~%This instance has ~A"
             length-of-rhs))

    (mapcar #'(lambda (daughter var)
                (set var daughter))
            daughters
            '(first-daughter second-daughter third-daughter
              fourth-daughter fifth-daughter sixth-daughter
              seventh-daughter eighth-daughter ninth-daughter
              tenth-daughter ))

    (let ((value
           (apply (first rule-field)
                  (mapcar #'eval (rest rule-field)))))
      (break "Stub: no provision for annotating ref/function ~
              over n-ary rules")
      value)))


(defun immediate-constituents/n-ary/length (edge number-of-daughters)
  (let ((n-2 (- number-of-daughters 2))
        (left-edge edge)
        daughters )

    (dotimes (i number-of-daughters)
      ;(format t "~&i = ~A  left-edge = ~A~%" i left-edge)
      (if (= i n-2)
        (then
          (push (edge-referent (edge-right-daughter left-edge))
                daughters)
          (push (edge-referent (edge-left-daughter left-edge))
                daughters)
          (return))
        (else
          (push (edge-referent (edge-right-daughter left-edge))
                daughters)
          (setq left-edge (edge-left-daughter left-edge)))))

    (nreverse daughters)))
