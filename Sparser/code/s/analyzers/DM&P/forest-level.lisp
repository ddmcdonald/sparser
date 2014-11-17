;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "forest level"
;;;    Module:  "analyzers;DM&P:"
;;;   version:  January 1995

;; initiated 9/28/94 v2.3. Respelled "quiescent" correctly 1/17/95

(in-package :sparser)

;;;--------------------------------------
;;; controlling global for experimenting
;;;--------------------------------------

(defparameter *dm&p-forest-protocol* nil)


;;;----------
;;; dispatch
;;;----------

(defun dm&p-forest-Level (rightmost-position)
  (unless *dm&p-forest-protocol*
    (break "*dm&p-forest-protocol* isn't set"))
  (funcall *dm&p-forest-protocol* rightmost-position))


;;---- no op

;;(setg *dm&p-forest-protocol* 'no-forest-level-operations)
;;
(defun no-forest-level-operations (rightmost-position)
  (declare (special *where-the-last-segment-ended*
                    *rightmost-quiescent-position*))
  (tr :forest-level-turned-off)
  (setq *rightmost-quiescent-position* rightmost-position)
  (scan-next-segment *where-the-last-segment-ended*))


;;---- the default

;(setq *dm&p-forest-protocol* 'parse-forest-and-do-treetops)



