;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-2005 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "printing"
;;;   Module:  "objects;model:categories:"
;;;  version:  February 2005

;; print routines grouped 8/12/94. Added string/category 4/19/95
;; Added case for subtypes 2/7/05.
;; Added string/object 7/6/09, modified through 8/13/09.

(in-package :sparser)


;;;-------------------------------
;;; print routines for categories
;;;-------------------------------

(defun print-ref-model-structures (c stream depth)
  (declare (ignore depth))
  (write-string "#<model-category " stream)
  (write-string (symbol-name (cat-symbol c)) stream)
  (write-string ">" stream))

(defun print-ref-category-structures (c stream depth)
  (declare (ignore depth))
  (write-string "#<ref-category " stream)
  (write-string (symbol-name (cat-symbol c)) stream)
  (write-string ">" stream))

(defun print-subtype-category-structures (c stream depth)
  (declare (ignore depth))
  (write-string "#<subtype-category " stream)
  (write-string (symbol-name (cat-symbol c)) stream)
  (write-string ">" stream))

(defun print-mixin-category-structures (c stream depth)
  (declare (ignore depth))
  (write-string "#<mixin " stream)
  (write-string (symbol-name (cat-symbol c)) stream)
  (write-string ">" stream))


(defun string/category (c)
  (string-downcase (symbol-name (cat-symbol c))))

(defun string/object (o)
  (string-downcase (symbol-name (var-name o))))

(defun string/object-as-list (o)
  (list (string-downcase (symbol-name (var-name o)))))


;;;-----------------------------------
;;; print routines for cat-operations
;;;-----------------------------------

(defun print-operations-data-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<operations for " stream)
  (princ-category (cat-ops-category obj) stream)
  (write-string ">" stream))