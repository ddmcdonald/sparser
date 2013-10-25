;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "state"
;;;            grammar/rules/situation/
;;;  version:  October 2013

;; Initiated 10/9/13. Elaborated 10/10/13

(in-package :sparser)

#| This treats states as just keywords so the
transition can be done with an eql method signature.
That's probably simplistic
|#


;;--- lookup and set

(defun situation-state ()
  (state (contents (sentence))))

(defun set-situation-state (state)
  (let ((situation (contents (sentence))))
    (setf (state situation) state)
    state))


;;--- state transitions

(defmethod update-situation-state ((edge edge))
  (let ((state (situation-state))
        (form (cat-symbol (edge-form edge))))
     (state-transition-table form state)))


(defmethod state-transition-table ((e (eql 'category::adjective))
                                   (s (eql :initial-state)))
  (let* ((new-state (set-situation-state :assembling-np))
         (peg (setup-a-peg new-state)))
    (activate-current-np-referent peg)
    new-state))
