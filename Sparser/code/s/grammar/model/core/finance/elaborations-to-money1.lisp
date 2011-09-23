;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1996-2001  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "elaborations to money"
;;;   Module:  "model;core:finance:"
;;;  Version:  1.0 February 2001

;; initiated 1/13/96
;; 1.0 (9/6/00) Started a complete redesign. Resumed 2/24/01.

(in-package :sparser)


;;;--------
;;; object
;;;--------

(define-category  money/per-share
  :specializes money
  :instantiates money
  :binds ((money . money)
          (amount-per-share . amount-per-share))
  :realization (:tree-family conventional-or
                :mapping ((first . money)
                          (second . amount-per-share)
                          (result . :self)
                          (A . money)
                          (B . amount-per-share)
                          (tail . or-amount-per-share)
                          (top . money))))



;;;---------
;;; printer
;;;---------

(defun string/money/per-share (ms)
  (let ((money (value-of 'money ms))
        (amt/shr (value-of 'amount-per-share ms)))
    (cond
     ((and money amt/shr)
      (format nil "~A + ~A"
              (string-for money) (string-for amt/shr)))
     (t (when *break-on-new-cases*
          (break "new case of what subfields are available:~
                  ~%  ~A~%" ms))
        "..." ))))


(define-special-printing-routine-for-category  money/per-share
  :full ((format stream "#<money+  ~A  ~A,~A>" 
                 (string/money/per-share obj)
                 (indiv-id obj) (indiv-uid obj)))
  :short ((format stream "#<~A>" (string/money/per-share obj))))
