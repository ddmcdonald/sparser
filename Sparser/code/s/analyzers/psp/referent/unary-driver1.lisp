;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1998 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "unary driver"
;;;    Module:   "analyzers;psp:referent:"
;;;   Version:   2.0 March 1998

;; broken out as its own file 11/91
;; 1.0 (10/23/92 v2.3) Got the options set up to date with actions in
;;      the new semantics.
;; 1.1 (12/31) added function and daughter options
;; 1.2 (5/14/93) fixed the bug in the daughter option
;; 1.3 (6/3) revised the arguments that ref/head is called with
;;     (6/17) ditto for ref/sub-type.
;;     (10/19/97) Referent-from-unary-rule choked on a symbol where it expected
;;      a rule, so put a gate on that.
;; 2.0 (3/22/98) direct referents now initiate psi's.

(in-package :sparser)


(defvar *single-daughter-edge* nil)


(defun referent-from-unary-rule (edge
                                 rule
                                 daughter)

  ;; This is analogous to Referent-from-rule except for its specialization
  ;; to the case of having just a single daughter.

  (let ((*parent-edge-getting-reference* edge)
        (*single-daughter-edge* daughter)
        (rule-field 
         (when (cfr-p rule)
           (cfr-referent rule))))

    (when rule-field  ;;return nil for empty fields
      (if (listp rule-field)
        (then
          (if (listp (first rule-field))
            (let ((*referent*
                   (dispatch-on-unary-ref-actions (first rule-field))))
              (dolist (ref-action (rest rule-field))
                (dispatch-on-unary-ref-actions ref-action))
              *referent*)
            (else
              (dispatch-on-unary-ref-actions rule-field))))
        (else
          (find-or-make-psi rule-field)                   
          rule-field )))))


(defun dispatch-on-unary-ref-actions (rule-field)
  (ecase (car rule-field)
    (:instantiate-individual
     (ref/instantiate-individual
      rule-field (second rule-field) nil nil))
    (:head
     (ref/head (second rule-field) ;; will be "daughter"
               nil
               nil))
    (:subtype
     (ref/subtype (second rule-field)
                  *single-daughter-edge* nil))

    (:daughter
     (edge-referent *single-daughter-edge*))
    (:funcall
     (cond ((cddr rule-field)
            ;; there is more than one argument, we have to go through
            ;; them for any reference to 'daughter, and if there's
            ;; one cons an argument list with it dereferenced
            (if (member 'daughter (cdr rule-field) :test #'eq)
              (apply (first rule-field)
                     (mapcar #'(lambda (item)
                                 (if (eq item 'daughter)
                                   (edge-referent *single-daughter-edge*)
                                   item))
                             (rest rule-field)))

              (apply (first rule-field)
                     (rest rule-field))))

           ((cdr rule-field)
            (funcall (first rule-field)
                     (if (eq (second rule-field) 'daughter)
                       (edge-referent *single-daughter-edge*)
                       (second rule-field))))
           (t
            (funcall (first rule-field)))))
    ))

