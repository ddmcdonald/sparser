;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "dateline"
;;;   Module:  "grammar;rules:context:"
;;;  Version:  November 1995

;; initiated 11/17/95

(in-package :sparser)


(define-completion-action  (category-named 'pair-of-hyphens)  ;; label
                           :section-creator  ;; tag
                           'check-for-dateline  ;; function
                           )


(defun check-for-dateline (hyphen-edge)
  ;(break)
  )
