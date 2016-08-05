;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1994,2013  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "pname"
;;;    Module:   "objects;chart;generics;"
;;;   Version:   August 2016

;; (9/3/92 v2.3) added referential-category
;; (1/6/94) fixed accessor for polywords.  (7/11) added mixin-category
;; (3/18/13) Added psi and converted to regular typecase. 
;; (8/5/16) Replaced pname-for with generic pname.

(in-package :sparser)

(defgeneric pname (object)
  (:documentation "Return the print-name of an object.")
  (:method ((object null)) "")
  (:method ((s string)) s)
  (:method ((s symbol)) (symbol-name s))
  (:method ((w word)) (word-pname w))
  (:method ((pw polyword)) (pw-pname pw))
  #+mumble
  (:method ((w mumble::word)) (mumble::pname w)))

(declaim (inline pname-for))
(defun pname-for (object)
  "Alias for the new generic PNAME."
  (pname object))
