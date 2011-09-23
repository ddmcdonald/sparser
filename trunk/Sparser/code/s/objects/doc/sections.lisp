;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "sections"
;;;   Module:  "objects;doc:"
;;;  Version:  0.1 November 1994

;; initiated 8/17/94 v2.3
;; 0.1 (11/30) Added token-index variable and sort routine

(in-package :sparser)


;;;-------------
;;; root object
;;;-------------

(define-category  section-object     ;; "section" is a form-category (?)
  :instantiates nil
  :specializes nil

          ;; These v/rs are too complex for the implemented decoder 
  :binds ((type) ;;  :primitive (:or section-marker keyword))
          (parent) ;;  (:or section (:primitive keyword)))
          (daughters  :primitive list)
          (prior-sibling) ;;  (:or section (:primitive keyword)))
          (following-sibling . section)

          (title)
          (count :primitive integer)
          (token-index :primitive integer)
          )

  :index (:temporary :sequential-keys parent prior-sibling))



;;;--------------
;;; sort routine
;;;--------------

(defun sort-section-objects (so1 so2)
  (let ((i1 (value-of 'token-index so1))
        (i2 (value-of 'token-index so2)))
    (< i1 i2)))

