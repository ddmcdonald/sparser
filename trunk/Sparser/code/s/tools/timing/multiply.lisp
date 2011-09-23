;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "multiply"
;;;    Module:   "tools;measurements:"
;;;   Version:   July 1991

;; initiated 7/23/91

(in-package :sparser)

#|  Counting how often multiply is called and what proportion of
  those calls are successful.   |#

;;;---------
;;; globals
;;;---------

(defvar *number-of-multiplies* 0)
(defvar *number-of-sucessful-multiplies* 0)

(defun initialize-multiplication-count ()
  (setq *number-of-multiplies* 0
        *number-of-sucessful-multiplies* 0))

;;;---------------------
;;; saving the original
;;;---------------------

(defvar *original-multiply-routine*
  (symbol-function 'multiply-edges))

(defun revert-to-original-multiply-routine ()
  (setf (symbol-function 'multiply-edges)
        *original-multiply-routine*))


;;;---------------------
;;; the mutated version
;;;---------------------

;; copied from version under "new;edges:" written circa April 1991
;;
(defun multiply-edges (left-edge right-edge)
  (let ((left-id  (edge-right-multiplier left-edge))
        (right-id (edge-left-multiplier  right-edge))
        rule )

    (incf *number-of-multiplies*)

    (when (and left-id right-id)
      (when (setq rule
                  (multiply-ids left-id right-id))
        (incf *number-of-sucessful-multiplies*)))

    rule ))


; (initialize-multiplication-count)
#|(format t "~%multiplications: successful/tried  ~A/~A"
         *number-of-sucessful-multiplies* *number-of-multiplies*)
|#
; (revert-to-original-multiply-routine)

