;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1993 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "grammar switch settings"
;;;    Module:   "grammar:model:core:"
;;;   Version:   June 1993

;; initiated  6/30/93 v2.3

(in-package :sparser)


(defun grammar-switch-settings (stream)
  (format stream "~%    single words are seen as names: ~A"
          *treat-single-Capitalized-words-as-names*)
  )

