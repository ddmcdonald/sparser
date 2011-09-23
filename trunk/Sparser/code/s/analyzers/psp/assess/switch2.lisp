;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.  -- all rights reserved
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "swtich"
;;;    Module:   "analyzers;psp:assess:"
;;;   Version:   2.0 September 1992

;; initiated 11/90
;; 2.0 (9/3/92 v2.3) cleaned out the deadwood, zero'd the difference pending
;;      some new word.

(in-package :sparser)


;;;--------------------------------------------------------
;;; assess-edge-label switch, offshot of the edge protocol
;;;--------------------------------------------------------

(defun assess-edge-label (label edge)
  (declare (ignore label edge))
  (break "No definition established for assess-edge-label~
          An edge protocol must be declared."))


(defun establish-version-of-assess-edge-label (keyword)
  (ecase keyword
    (:all-edges
     (setf (symbol-function 'assess-edge-label)
           (symbol-function 'assess-edge-label/top))) ;; change if needed
    (:treetops
     (setf (symbol-function 'assess-edge-label)
           (symbol-function 'assess-edge-label/top)))))

