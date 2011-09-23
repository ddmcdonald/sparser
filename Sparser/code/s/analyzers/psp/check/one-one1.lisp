;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "one-one"
;;;   Module:  "analyzers;psp:check:"
;;;  Version:  1.0 May 1993

;; 0.0 (9/4/92 v2.3) broken out from drivers;chart:psp
;; 0.1 (9/13) revamped traces to new trace regime
;; 1.0 (5/15/93) took out the constraint about not changing the category
;;      of a right-boundary edge within a segment.  Make it the driver's
;;      problem.  Since the edge-construction trace is with the edge code,
;;      that pretty much gutted the routine.

(in-package :sparser)


(defun check-one-one (left-edge right-edge)
  (let ((rule (multiply-edges left-edge right-edge)))
    (if rule
      (let ((edge (make-completed-binary-edge
                   left-edge right-edge rule)))

        ;; broken out to facilitate breakpoints
        edge )

      (else
        nil ))))

