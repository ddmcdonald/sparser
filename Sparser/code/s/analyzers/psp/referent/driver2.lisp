;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1999,2011-2013 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:   "driver"
;;;    Module:   "analyzers;psp:referent:"
;;;   Version:   2.4 July 2013

;; broken out from all-in-one-file 11/28/91
;; 1.0 (8/28/92 v2.3) Added global referring to the referent returned.
;; 1.1 (10/24) flushed the out-of-date referent actions and added some
;;      cases in the new semantics
;; 1.2 (5/15/93) Switched to setq'ing *referent* because the actions have
;;      to change it.
;; 1.3 (8/4) added keyword args so that it could be driven off referents
;;      directly without having to have the left-edge.
;; 1.4 (1/6/94) added switch that would pre-empt everything
;; 1.5 (4/19/95) zero'ing *referent* at the start of each call.
;; 2.0 (3/22/98) direct referents now initiate psi's.
;;     (6/30) rethreaded to group common elements as part of handling annotations.
;;     (7/12) pulled them in favor of doing within the dispatches.
;; 2.1 (7/25) Because the psi keep going down the lattice as they get elaborated,
;;      changed to updating the referent with each action instead of just
;;      the first.
;; 2.2 (6/4/99) revised Referent-from-rule to pass more information through to
;;      the annotater, and cleaned up the now obsolete direct-pointer?
;; 2.3 (1/10/07) Refined decision for 2.1 so that only certain classes update
;;      the referent (cases from dm&p rules)
;;     (4/27/11) Cleanup. More on 5/10
;; 2.4 (7/22/13) Added some doc and the base of the redistribute method

(in-package :sparser)

;;;---------
;;; globals
;;;---------

;; Lexically bound immediately when referent-from-rule is called
(defvar *left-edge-into-reference*  nil)
(defvar *right-edge-into-reference* nil)
(defvar *parent-edge-getting-reference* nil)
(defvar *rule-being-interpreted* nil)
(defvar left-referent nil)
(defvar right-referent nil)

;; Used in setting up annotations and keeping track
;; of which edge is which in routines that are sensitive
;; to head constituents
(defvar *head-edge* nil)
(defvar *arg-edge* nil)

;; Tracks the referent as it morphs when looping
;; through successive terms in the rule-field
(defvar *referent* nil)


;; For N-ary rules
(defvar first-daughter nil)
(defvar second-daughter nil)
(defvar third-daughter nil)
(defvar fourth-daughter nil)
(defvar fifth-daughter nil)
(defvar sixth-daughter nil)
(defvar seventh-daughter nil)
(defvar eighth-daughter nil)
(defvar ninth-daughter nil)
(defvar tenth-daughter nil)


(defparameter *no-referent-calculations* nil)



;;;------------
;;; the driver
;;;------------

(defun referent-from-rule (left-edge
                           right-edge
                           parent-edge
                           rule
                           &key left-ref
                                right-ref )

  (setq *referent* nil) ;; cleanup from last time

  (unless *no-referent-calculations*
    (let ((*left-edge-into-reference*       left-edge)
          (*right-edge-into-reference*      right-edge)
          (*parent-edge-getting-reference*  parent-edge)
          (*rule-being-interpreted*         rule)
          (*head-edge* nil)  ;; set in ref/head
          (*arg-edge* nil)   ;; ditto
          (left-referent  (or left-ref
                              (edge-referent left-edge)))
          (right-referent (or right-ref
                              (edge-referent right-edge)))
          (rule-field (cfr-referent rule)))

      (declare (special 
                *left-edge-into-reference* *right-edge-into-reference*
                *parent-edge-getting-reference* *rule-being-interpreted*
                *head-edge* *arg-edge*))
                        
      (when (not (null rule-field))
        (if (listp rule-field)
          (then
            (if (listp (first rule-field))
              (then ;; more than one referent action
                (setq *referent*
                      (dispatch-on-rule-field-keys
                       (first rule-field)
                       left-referent right-referent right-edge))
                (let ( evolved-result )
                  (dolist (ref-action (rest rule-field))
                    (setq evolved-result
                          (dispatch-on-rule-field-keys
                           ref-action left-referent right-referent right-edge)))
                  (when (typecase evolved-result
                          (psi t)
                          (individual t)
                          (referential-category t)
                          (mixin-category t)
                          (category t)
                          (otherwise nil))
                    (setq *referent* evolved-result))))

              (else  ;; just one action
                (setq *referent*
                      (dispatch-on-rule-field-keys
                       rule-field left-referent right-referent right-edge)))))

          (else ;; direct pointer to referent
            (setq *referent* rule-field)
            (annotate-individual *referent* :immediate-referent)))

        (call-redistribute-if-appropriate left-referent right-referent)

        *referent* ))))



;;--- redistributing bindings

(defun call-redistribute-if-appropriate (left-referent right-referent)
  (when (and left-referent right-referent)
    (when (and (individual-p left-referent)
               (individual-p right-referent))
      (setup-args-and-call-k-method 
       left-referent right-referent
       (push-debug `(,left-referent ,right-referent))
       (funcall #'redistribute left-shadow right-shadow)))))

(defgeneric redistribute (left-referent right-referent)
  ;; or should it be head and arg ??
  (:documentation "Provides a mechanism for part of the referent of
    one edge (i.e. one or more bindings) to be transfered to the
    referent of the other edge."))

(defmethod redistribute ((left t) (right t))
  (declare (ignore left right))
  nil)
       

