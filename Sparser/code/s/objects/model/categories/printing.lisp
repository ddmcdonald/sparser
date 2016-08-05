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

(defmethod pname ((c category))
  (pname (cat-symbol c)))

(defun print-model-category-structures (c stream depth)
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

;;;-----------------------------------------------
;;; printing the rules associated with a category
;;;-----------------------------------------------

(defmethod display-rules ((category-name symbol)
                          &optional (stream *standard-output*))
  (display-rules (category-named category-name :break) stream))

(defmethod display-rules ((category category)
                          &optional (stream *standard-output*))
  (let ((rules (collect-rules category)))
    (when rules
      (format stream "~&The phrase-structure rules for ~a are~%"
              (cat-symbol category))
      (format stream "~{~&   ~a~%~}" rules))))


(defmethod collect-rules ((i individual))
  (scrape-rules-out-of-property-list (indiv-plist i)))

(defmethod collect-rules ((c category))
  (scrape-rules-out-of-property-list (cat-plist c)))

(defun scrape-rules-out-of-property-list (plist)
  (let ((rule-blocks (loop for element on plist
                       as tag = (car element)
                       as value = (cadr element)
                       when (eq tag :rules)
                       collect value)))
    (apply #'append rule-blocks)))


