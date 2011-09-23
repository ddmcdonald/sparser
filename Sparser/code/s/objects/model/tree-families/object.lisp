;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994,1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "objects;model:tree-families:"
;;;  version:  March 1995   

;; initiated 8/4/92. Added accumulator list and description field 2/22/95.
;; Added type field 3/7.  Tweeked def routine 4/27

(in-package :sparser)

;;;--------
;;; object
;;;--------

(defstruct (exploded-tree-family
            (:conc-name #:etf-)
            (:print-function print-tree-family-structure))

  name        ;; a symbol

  type        ;; a keyword. One of { :mixin :user-instantiable }

  parameters  ;; list of symbols used in the rule schema. Substituted
              ;; against by the rdata.  These are the generic names of
              ;; slots in the rules

  labels      ;; ditto. They are the names of the categories in the rules.

  cases       ;; an alist of rule schema by (loosely) the grammatical
              ;; relation involved.

  description ;; a string that helps people using the workbench decide
              ;; whether they should use this TF

  )



;;;----------
;;; printers
;;;----------

(defun print-tree-family-structure (tf stream depth)
  (declare (ignore depth))
  (write-string "#<etf " stream)
  (write-string (symbol-name (etf-name tf)) stream)
  (write-string ">" stream))


;;;----------
;;; indexing
;;;----------

(defparameter *tree-families-defined* nil)

(defparameter *symbol-to-exploded-tree-family* (make-hash-table))

(defun exploded-tree-family-named (symbol)
  (gethash symbol *symbol-to-exploded-tree-family*))

(defun delete/exploded-tree-family (etf)
  (remhash (etf-name etf)
           *symbol-to-exploded-tree-family*))

(defun find-or-make/exploded-tree-family (symbol)
  (let ((etf (exploded-tree-family-named symbol)))
    (unless etf
      (setq etf (make-exploded-tree-family :name symbol))
      (setf (gethash symbol *symbol-to-exploded-tree-family*)
            etf))
    (unless (member etf *tree-families-defined*)
      (push etf *tree-families-defined*))
    etf ))

