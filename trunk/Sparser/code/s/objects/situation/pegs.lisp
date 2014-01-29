;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "pegs"
;;;            objects/situation/
;;;  version:  January 2014

;; Initiated 10/9/13. 10/17 decided pegs were typed, taken right from
;; the variable. 1/23/14 Transfer it all to an individual, with type-checker
;; and more specific accessor.

(in-package :sparser)

(defclass peg (named-object)
  ((categories :type list :initform nil :accessor peg-type-list
    :documentation "More natural to call it 'type', but Lisp
      would object. Holds a list of categories, just  like the
      type field of an individual does.")
   (variables :type list :initform nil :accessor peg-v+v-alist
    :documentation "draft -- make it a alist vs. v+v's")))

(defvar *current-peg* nil
  "There will only ever be one, since interesting things are
   associated with indexicals after we finish off the individual
   we're assembling on the peg.")

(defun current-peg ()
  (let ((p *current-peg*))
    (unless p
      (error "There is no current peg."))
    p))

(defun setup-a-peg (state)
  ;; through back a peg. When it's clearer what they are
  ;; then setup a resource
  (setq *current-peg*
        (make-instance 'peg :name state)))



(defmethod bind-variable-on-peg ((peg peg) (variable lambda-variable)
                                 (value t))
  (let ((category (var-category variable)))
    (pushnew category (peg-type-list peg))
    (push `(,variable ,value)
          (peg-v+v-alist peg))))


(defun transfer-peg-bindings-to-individual (peg i)
  ;; Called by incorporate-phrasal-head to cache-out the peg.
  ;; Convert the alist of v+v pairs on the peg to bindings
  ;; on the individual. Return the list of bindings to use
  ;; in indexing the individual.
  (loop for pair in (peg-v+v-alist peg)
    as variable = (car pair)
    as value = (cadr pair)
    collect (bind-variable/expr variable value i)))

(defun check-validity-of-individual (i peg)
  (let ( failed )
    (dolist (c (peg-type-list peg))
      (unless (itypep i c)
        (push c failed)))
    (when failed
      (push-debug `(,i ,peg))
      (error "The individual does not fit all the types ~
              of the peg ~a~%~a does not fit ~a"
             peg i failed))))


