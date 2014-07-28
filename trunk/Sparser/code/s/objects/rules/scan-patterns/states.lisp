;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-1996,2014  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "states"
;;;   Module:  "objects;rules:scan-patterns:"
;;;  version:  July 2-14

;; initiated 9/21/95. Added deletion routines 7/17/96.  Fixed duplication
;; problem in Mark-as-sp-pattern-accept-state 9/11. Quieted the trace
;; burned into define-scan-pattern-state 7/28/14.

(in-package :sparser)

;;;-----------
;;; structure
;;;-----------

(defstruct (scan-pattern-state
            (:include label)
            (:conc-name #:state-)
            (:print-function  print-scan-pattern-state))

  ;; given what's included, it has fields for
  ;;  'plist', 'symbol', and 'rule-set'

  ;; Rather than use the 'rule-set' field for the id it seems
  ;; more to the point just to provide a specific field for
  ;; it and avoid the storage cost of a full rule-set object
  ;; (just leave that field empty)
  id 

  is-an-accept-state?
  
  continuations

  )



;;;------------------------
;;; managing accept states
;;;------------------------

(defun mark-as-sp-pattern-accept-state (state pattern)
  ;; Called from Decode-scan-pattern-definition.
  (let ((other-patterns (state-is-an-accept-state? state)))
    (if other-patterns
      (unless (if (consp other-patterns)
                (member pattern other-patterns :test #'eq)
                (eq pattern other-patterns))
        ;; don't duplicate this pattern when we re-evaluate
        ;; its define formn.
        (if (consp other-patterns)
          (setf (state-is-an-accept-state? state)
                (cons pattern other-patterns))
          (setf (state-is-an-accept-state? state)
                (list pattern other-patterns))))

      (setf (state-is-an-accept-state? state) pattern))))


(defun state-set-includes-accept-state/s (list-of-states)
  (dolist (state list-of-states)
    (when (state-is-an-accept-state? state)
      (return-from state-set-includes-accept-state/s t)))
  nil )


;;;----------
;;; printers
;;;----------

(defun print-scan-pattern-state (obj stream depth)
  (declare (ignore depth))
  (format stream "#<pattern-state ~A>" (state-symbol obj)))

(defun princ-scan-pattern-state (sps stream)
  (format stream "~A" (state-symbol sps)))


;;;----------
;;; indexing
;;;----------

(defparameter *keywords-to-scan-pattern-states* (make-hash-table
                                                 :test #'eq))

(defun scan-pattern-state-named (keyword)
  (gethash keyword *keywords-to-scan-pattern-states*))


(defun define-scan-pattern-state (keyword)
  (let ((obj (make-scan-pattern-state :symbol keyword)))
    (setf (gethash keyword *keywords-to-scan-pattern-states*) obj)

    (let ((id# (next-right-looking-id)))
      (setf (state-id obj) id#)

      ;; (format t "~&Making ~A, id = ~A~%" obj id#)
      obj )))


(defun delete/scan-pattern-state (state/name)
  (let ((state (etypecase state/name
                 (symbol (scan-pattern-state-named state/name))
                 (scan-pattern-state state/name))))
    (when state
      (remhash (state-id state)
               *keywords-to-scan-pattern-states*))))


;;;---------------
;;; initial state
;;;---------------

(defun define-the-initial-scan-pattern-state ()
  (let ((s (define-scan-pattern-state :initial)))
    (setf (state-is-an-accept-state? s) nil)
    (setf (state-continuations s) nil)
    s ))

(defparameter *the-initial-scan-pattern-state*
  (define-the-initial-scan-pattern-state))

