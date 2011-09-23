;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-1996  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "patterns"
;;;   Module:  "objects;rules:scan-patterns:"
;;;  version:  July 1996

;; initiated 9/21/95. Added category for the pattern 10/18. Futzed with the interning
;; and deletion 7/12/96. Tweeked deletion 7/17

(in-package :sparser)

;;;-----------
;;; structure
;;;-----------

(defstruct (scan-pattern
            (:include unit)
            (:conc-name #:sp-)
            (:print-function  print-scan-pattern))

  name  ;; a symbol
  accept-function   ;; a symbol naming a function
  accept-states     ;; a list of states
  transitions       ;; a list of transitions
  initial-literals  ;; a list of pattern-elements
  )


;;;----------
;;; printing
;;;----------

(defun print-scan-pattern (obj stream depth)
  (declare (ignore depth))
  (format stream "#<pattern ~A>" (sp-name obj)))


;;;----------
;;; indexing
;;;----------

(defparameter *names-to-scan-patterns* (make-hash-table :test #'eq))

(defun scan-pattern-named (symbol)
  (gethash symbol *names-to-scan-patterns*))

(defun delete/scan-pattern (sp/name)
  (let ((pattern (etypecase sp/name
                   (symbol (scan-pattern-named sp/name))
                   (scan-pattern sp/name))))
    (let ((transitions (sp-transitions pattern)))
      (mapc #'delete/sp-transition transitions))
    (let ((states (sp-accept-states pattern)))
      (mapc #'delete/scan-pattern-state states))
    (remhash (sp-name pattern) *names-to-scan-patterns*)))


(defun define-scan-pattern (symbol)
  (let ((obj (make-scan-pattern :name symbol)))
    (setf (gethash symbol *names-to-scan-patterns*) obj)

    (unless (category-named symbol)
      ;; This is used when referencing a pattern within
      ;; a transition since it's what we hang the multiplication
      ;; index on.  It can also provide the label for the resulting edge.
      (resolve-or-make/symbol-to-category symbol))

    obj ))

