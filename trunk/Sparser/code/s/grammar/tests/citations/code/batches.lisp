;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,2013  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "batches"
;;;   Module:  "grammar;tests:citations:code:"
;;;  version:  August 2013

;; initiated 12/23/93 v2.3. 8/19/13 Added test-modules-citations.

(in-package :sparser)

(defun test-all-citations ()
  (dolist (c *citations-defined*)
    (test-citation c)))

(defgeneric test-modules-citations (gmod)
  (:documentation "Run test-citation over all the citations
    listed with that grammar module."))

(defmethod test-modules-citations ((gmod-name symbol))
  (let ((gmod (grammar-module-named gmod-name)))
    (unless gmod
      (error "There is no grammar module with the name ~a" gmod-name))
    (test-modules-citations gmod)))

(defmethod test-modules-citations ((gmod grammar-module))
  (let ((citations (gmod-citations gmod)))
    (unless citations
      (error "No citations listed with ~a" gmod))
    (dolist (c citations)
      (test-citation c))))

