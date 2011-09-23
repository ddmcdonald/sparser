;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "subsidiaries"
;;;   Module:  "model;core:names:companies"
;;;  version:  February 1991      (v1.8.1)

(in-package :CTI-source)


;;;----------------------
;;; subsidiary companies
;;;----------------------

(define-category  subsidiary)
;  :slots ((name name-of-a-company)
;          (type-of-unit  company-unit)
;          (parent-company company))
;  :index ///down from the parent///


(defstruct (subsidiary
            (:conc-name #:subsid-)
            (:print-function print-subsidiary-structure))
  name type-of-unit parent-company )


(defun print-subsidiary-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<subsidiary " stream)
  (let ((name (subsid-name obj)))
    (if name
      (typecase name
        (company
         (princ-name-of-a-company (company-name name) stream))
        (name-of-a-company
         (princ-name-of-a-company name stream))
        (otherwise
         (format t "~A" name)))
      (else
        (break/debug "Write display routine for subsidiary w/o a name"))))
  (write-string ">" stream))

(defun display-subsidiary (s stream)
  (let ((name (subsid-name s)))
    (if name
      (write-string "the " stream)
      (write-string "a " stream))
    (when name
      (princ-name-of-a-company name stream))
    (princ-company-unit (subsid-type-of-unit s) stream)
    (write-string " of " stream)
    (princ-name-of-a-company (subsid-parent-company s) stream)))


;;;------------
;;; ancilaries
;;;------------

(setf (cat-index (category-named 'category::subsidiary))
      (make-index/hash-on-slot))

(defun find/subsidiary (company name)
  (let ((entry (gethash company (cat-index category::subsidiary))))
    (when entry
      (cdr (assoc name entry :test #'equal)))))

(defun index/subsidiary (subsidiary name company)
  (let ((entry (gethash company (cat-index category::subsidiary))))
    (if entry
      (setf (gethash company (cat-index category::subsidiary))
            (cons (cons name subsidiary)
                  entry))
      (setf (gethash company (cat-index category::subsidiary))
            (list (cons name subsidiary))))))


(defun make/subsidiary (name type-of-unit company)
  (let ((s (make-subsidiary
            :name name
            :type-of-unit type-of-unit
            :parent-company company)))

    (index/subsidiary s name company)
    s))

