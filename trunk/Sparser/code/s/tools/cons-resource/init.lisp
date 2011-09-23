;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:(SPARSER LISP)
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "init"
;;;   module:  "tools;cons-resource:"
;;;  Version:  July 1992

;; started 7/13/92

(in-package :sparser)


;;;---------------------------
;;; initializing the resource
;;;---------------------------

(defun initialize-cons-resource ()
  (let ( ptr )
    (dotimes (i *number-of-cons-cells-in-initial-allocation*)
      (setq ptr (cons (cons nil nil)
                      ptr)))
    (setq *next-cons-cell* ptr)
    (length *next-cons-cell*)))

