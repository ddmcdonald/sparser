;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:(SPARSER LISP)
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "heap"
;;;   module:  "tools;cons-resource:"
;;;  Version:  July 1992

;; started 7/13/92

(in-package :sparser)


(defvar *next-cons-cell* :not-initialized
  "Points to the first available cons cell in the resource list
   used by Kons.")

;(cons-resource-remaining)
(defun cons-resource-remaining ()
  (length *next-cons-cell*))


