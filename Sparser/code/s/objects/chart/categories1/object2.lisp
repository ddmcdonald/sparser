;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992,2012 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "object"
;;;   Module:  "objects;categories:"
;;;  Version:   1.3 December 2012

;; initiated 6/90
;; 1.1 (v1.5) added new fields to handle the new rule regime
;; 1.2 (7/16/92 v2.3) Drastically adjusted the field list to fit the
;;       new representation regime -- replaced 'unit' with 'label',
;;       which subsumed the symbol and rule-set fields
;; 1.3 (9/1 v2.3) gutted the fields in the object down to zip (all included
;;       from 'label') and moved them to objects;model:categories:object
;;       to make 'referential-category' that has more slots than this one
;;       used to.
;;     (3/2/12) moved accumulators up to here to quiet compiler,
;;     (12/15/12) added add-rules-to-category

(in-package :sparser)



(defstruct (category
            (:include label)
            (:conc-name #:cat-)
            (:print-function print-category-structures))

  )


;;;--------------
;;; accumulators
;;;--------------

(defvar *categories-defined* nil)  ;; all of them
(defvar *referential-categories* nil)
(defvar *mixin-categories* nil)
(defvar *grammatical-categories* nil)
(defvar *dotted-categories* nil)
(defvar *form-categories* nil)
(defvar *derived-categories* nil)


;;;--------------------
;;; rules on the plist
;;;--------------------
;; /// feels redundant, but exemplars so far seem open-coded

(defun add-rules-to-category (category rules)
  (let ((existing-rules (get-tag-for :rules category)))
    (declare (ignore existing-rules)) ;;/// need a protocol
    (push-onto-plist category rules :rules)))

