;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "descriptor"
;;;   Module:  "model;core:companies:"
;;;  version:  September 1994

;; initiated 9/28/94 v2.3

(in-package :sparser)

;;;--------
;;; object 
;;;--------

(define-category  company-descriptor
  :specializes nil
  :instantiates self
  :binds ((head)
          (kind-of-company . kind-of-company)  ;; group
          (activity)                           ;; publishing
          (location)                           ;; Dutch
          )
  :index (:key head))

;;;-------
;;; rules
;;;-------

;;(def-cfr company-description (

