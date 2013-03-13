;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013 David D. McDonald all rights reserved
;;;
;;;      File: "text-relations"
;;;    Module: "analyzers;SDM&P:
;;;   Version: March 2013

;; Initiated 3/9/13. Distributed to other files for easier development
;; 3/12/13.

(in-package :sparser)

(defpackage text-relationships
  (:nicknames #:tr))

;;;-----------
;;; interning
;;;-----------

(defvar *tr-names-to-objects* (make-hash-table)
  "Interning table for text-relation types")

(defvar *all-text-relationships* nil
  "A simple list of the text-relation objects that have been
   defined. Useful for re-initializing.")

(defun canonical-tr-name (symbol)
  (intern (symbol-name symbol)
          (find-package :text-relationships)))

(defun index-text-relation-type (tr-name tr)
  (pushnew tr *all-text-relationships*)
  (setf  (gethash tr-name *tr-names-to-objects*) tr))

(defun text-relation-named (symbol)
  (let ((tr-name (canonical-tr-name symbol)))
    (gethash tr-name *tr-names-to-objects*)))

;;--- clear
;(defun initialize-text-relationships ()
;  (dolist (tr *all-text-relationships*)
;    (setf


(defun tr-class-name (tr)
  "What name do we use for the class for instances"
  (intern (string-append (name tr) "-" '#:tr-instance)
          (find-package :sparser)))


;;;--------
;;; driver
;;;--------

(defun note (relation-name &rest args)
  (let ((tr (text-relation-named relation-name)))
    (unless tr (error "No text-relation named ~a" relation-name))
    (let ((instance
           (or (find-text-relation-instance tr args)
               (make-text-relation-instance tr args))))
      (push-debug `(,instance))

      ;; inc its count
      ;; 'do' its superc's
      ;; count > threshold, reify it.
      ;; stash it on the section
      instance)))



