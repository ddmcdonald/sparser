;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990-1992  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:   "table"
;;;    Module:   "objects;chart:edges:"
;;;   Version:   1.2 August 2009

;; design settled 11/90
;; 1.0 (8/92 v2.3) removed unneeded variations
;; 1.1 (10/12) put multiply-ids back in for use in checking for duplication
;;      of form rules when they're defined.
;; 1.2 (8/19/09) Parameterizing the size of the rule hash table. Picked the
;;      sizes out of a hat. Should explore what's really needed by working
;;      backwards from several actual cases.

(in-package :sparser)

;;;------------
;;; parameters
;;;------------

(unless (boundp '*grammar-size*)
  (defparameter *grammar-size* :sublanguage-rule-set
    "Dictates the initial size of the *edge-multiplication-table* 
     hash table. The set of possible values and the corresponding
     sizes are spelled out in the function initial-rule-table-size."))

(defun initial-rule-table-size ()
  (case *grammar-size* 
    (:base-rules             1500)
    (:sublanguage-rule-set  10000)
    (:large-vocabulary     200000)
    (otherwise
     (error "Unknown value for *grammar-size*: ~a" *grammar-size*))))

;;;--------
;;; table
;;;--------

(defparameter *edge-multiplication-table*
              (make-hash-table :test #'eql
                               :size (initial-rule-table-size)
                               :rehash-size 1.5
                               ; :rehash-threshold .75
                               ))

(defparameter *base-for-right-looking-label-IDs*
              (expt 2 12))

(defparameter *increment-for-right-looking-label-IDs*
              (expt 2 12))

(defparameter *base-for-left-looking-label-IDs*
              0 )

(defvar *next-right-looking-label-ID*
        *base-for-right-looking-label-IDs*)

(defvar *next-left-looking-label-ID*
        *base-for-left-looking-label-IDs*)


;;;---------
;;; drivers
;;;---------

(defun multiply-ids (left-id right-id)
  (gethash (+ left-id right-id)
           *edge-multiplication-table*))


(defun multiply-labels (left-label right-label)
  ;; called as part of defining phrase structure rules, and from
  ;; the polyword fsa, which doesn't create intermediate edges.
  ;; Because of the polyword, it has to be pretty robust in its
  ;; data checks.

  (let* ((left-rs (rule-set-for right-label))
         (left-id  (when left-rs
                     (car (rs-left-looking-ids left-rs))))
         (right-rs (rule-set-for left-label))
         (right-id (when right-rs
                     (car (rs-right-looking-ids right-rs)))))

    (when (and left-id right-id)
      (gethash (+ left-id right-id)
               *edge-multiplication-table*))))

