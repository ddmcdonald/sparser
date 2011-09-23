;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993,1994,1995 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "driver"
;;;    Module:   "analyzers;psp:referent:"
;;;   Version:   1.4 January 1994

;; broken out from all-in-one-file 11/28/91
;; 1.0 (8/28/92 v2.3) Added global referring to the referent returned.
;; 1.1 (10/24) flushed the out-of-date referent actions and added some
;;      cases in the new semantics
;; 1.2 (5/15/93) Switched to setq'ing *referent* because the actions have
;;      to change it.
;; 1.3 (8/4) added keyword args so that it could be driven off referents
;;      directly without having to have the left-edge.
;; 1.4 (1/6/94) added switch that would pre-empt everything
;; 1.5 (4/19/95) zero'ing *referent* at the start of each call

(in-package :sparser)

;;;---------
;;; globals
;;;---------

(defvar *left-edge-into-reference*  nil)
(defvar *right-edge-into-reference* nil)
(defvar *parent-edge-getting-reference* nil)
(defvar *rule-being-interpreted* nil)

(defvar *referent* nil)

(defvar left-referent nil)
(defvar right-referent nil)

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
          (left-referent  (or left-ref
                              (edge-referent left-edge)))
          (right-referent (or right-ref
                              (edge-referent right-edge)))
          (rule-field (cfr-referent rule)))

      (if (null rule-field)
        nil
        (if (listp rule-field)
          (then
            (if (listp (first rule-field))
              (then ;;more than one referent action
                (setq *referent*
                      (dispatch-on-rule-field-keys
                       (first rule-field)
                       left-referent right-referent right-edge))

                (dolist (ref-action (rest rule-field))
                  (dispatch-on-rule-field-keys
                   ref-action left-referent right-referent right-edge))

                *referent*)

              (else  ;; just one action
                (dispatch-on-rule-field-keys
                 rule-field left-referent right-referent right-edge))))

          (else ;; direct pointer to referent
            rule-field ))))))

