;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,2013-2016  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "batches"
;;;   Module:  "grammar;tests:citations:code:"
;;;  version:  June 2016

;; initiated 12/23/93 v2.3. 8/19/13 Added test-modules-citations.

(in-package :sparser)

(defun test-all-citations ()
  (loop for gmod in *grammar-modules-in-image*
       do (test-modules-citations gmod)))
;  (dolist (c *citations-defined*)
;    (test-citation c)))

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
    (when citations
      (dolist (c citations)
        (test-citation c)))))

