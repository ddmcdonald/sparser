;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990  Content Technologies Inc.  -- all rights reserved
;;; copyright (c) 1993 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "switch complete"
;;;    Module:   "analyzers;psp:finish:"
;;;   Version:   1.0  November 1990
;;;

(in-package :sparser)


(defun complete (obj
                 &optional position next-position)
  (declare (ignore obj position next-position))
  (error "The Complete routine has not been initialized"))



(defparameter *version-of-complete* :psp)


(defun establish-version-of-complete (keyword)
  (ecase keyword
    (:psp (setf (symbol-function 'complete)
                (symbol-function 'complete/psp)))
    (:no-op (setf (symbol-function 'complete)
                (symbol-function 'complete/no-op)))
    (:ca/ha (setf (symbol-function 'complete)
                  (symbol-function 'complete/hugin)))
    (:subsume (setf (symbol-function 'complete)
                  (symbol-function 'complete/subsume))))
  (setq *version-of-complete* keyword))
