;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "operations"
;;;   Module:  "objects;model:individuals:"
;;;  version:  July 1992

;; initiated 7/16/92 v2.3

(in-package :sparser)

;;;--------
;;; object
;;;--------

(defstruct (category-operations
            (:conc-name #:cat-ops-)
            (:print-function print-operations-data-structure))

  category  ;; backpointer to the category whose operations these are

  instantiate  ;; a category or list of categories that any individual
               ;; of this category is to be cross-indexed against

  find  ;; a symbol fbound to a function of a category and
        ;; (optionally) a list of bindings.

  index  ;; ditto -- these functions are specific to the description
         ;; of the category's index as given in its definition.

  reclaim  ;; ditto

  print  ;; a function of an individual and a stream

  )


;;;---------------
;;; print routine
;;;---------------

(defun print-operations-data-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<operations for " stream)
  (princ-category (cat-ops-category obj) stream)
  (write-string ">" stream))

