;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2020 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "triggers"
;;;   Module:  "objects;rules:scan-patterns:"
;;;  version:  July 2020

;; initiated 7/18/20 to hold the representation on instances of rule-patterns
;; having occurred.

(in-package :sparser)


;;--- classes

(defclass pattern-instance ()
  ()
  (:documentation "Superclass over particular kinds of patterns
    and what we record about their instances"))
;;// Move slots up when we see what generalizes

(defclass preposition-triggered (pattern-instance)
  ((prep )))



;;--- invoking function

(defun record-instance-of-preposition-pattern (preposition pp-edge head-edge)
  (let* ((head-string (string-for-edge head-edge))
         (pobj-edge (find-pobj-edge pp-edge)))
    (unless pobj-edge (break "unknown-pobj in ~a" pp-edge))       
    (let ((head-ref (edge-referent head-edge))
          (pobj-ref (edge-referent pobj-edge)))
      (tr :sweep/takes-prep head-ref preposition))))

         
