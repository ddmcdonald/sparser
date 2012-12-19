;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "grammar;tests:citations:code:"
;;;  version:  November 1993

;; initiated 11/4/93 v2.3

(in-package :sparser)


;;;--------
;;; object
;;;--------

(defstruct (citation
            (:include unit)
            (:print-function print-citation-structure)
            (:conc-name #:cite-))
  string
  bracketing
  edge-descriptors )


(defun print-citation-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<citation " stream)
  (format stream "\"~A\"" (cite-string obj))
  (write-string ">" stream))


;;;---------------------
;;; interning machinery
;;;---------------------

(defparameter *citations-defined* nil
  "A list that keeps them in the order they were defined")

(defparameter *string-to-citation-mapping*
              (make-hash-table :test #'equal)
  "Used to intern citations to avoid duplications")


(defun citation-named (string)
  (gethash string *string-to-citation-mapping*))


;;;----------
;;; def form
;;;----------

(defmacro define-citation (string &rest descriptors)
  `(define-citation/expr ,string ',descriptors nil))

(defmacro define-bracket-citation (string bracketing)
  `(define-citation/expr ,string nil ',bracketing))

(defun define-citation/expr (string descriptors bracketing)
  (let ((obj (citation-named string)))
    (unless obj
      (setq obj (make-citation :string string))
      (setf (gethash string *string-to-citation-mapping*)
            obj)
      (push obj *citations-defined*))

    ;; always assume that we should accept the descriptors
    ;; even if this is a re-execution of the same definition
    (setf (cite-edge-descriptors obj) descriptors)
    (setf (cite-bracketing obj) bracketing)
    obj ))