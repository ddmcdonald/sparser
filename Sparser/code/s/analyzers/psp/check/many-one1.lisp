;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "many-one"
;;;   Module:  "analyzers;psp:check:"
;;;  Version:  1.0 May 1993

;; 0.0 (9/4/92 v2.3) broken out from drivers;chart:psp
;; 1.0 (5/15/93) took out the constraint about not changing the category
;;  of a right-boundary edge within a segment.  Make it the driver's
;;  problem.  Since the edge-construction trace is with the edge code,
;;  that pretty much gutted the routine.
;;  (4/1/05) Handled the form-rule case of the multiple-completions stub.
;;  (7/20/09) Commented out break since it seems to work fine otherwise.

(in-package :sparser)


(defun check-many-one (left-ending-vector right-edge)
  (let ((count (ev-number-of-edges left-ending-vector))
        (vector (ev-edge-vector left-ending-vector))
        left-edge rule single-edge already-have-a-rule )

    (dotimes (index count)
      (setq left-edge (aref vector index))
      (setq rule (multiply-edges left-edge right-edge))
      (when rule
        (if already-have-a-rule
          (then
            (if (form-rule? rule)
              (tr :ignoring-multple-form-rule rule already-have-a-rule)
              (else
                (tr :multiple-completions already-have-a-rule rule)
                ;; (break "flesh out this stub")
                (setq single-edge
                      (make-completed-binary-edge
                       left-edge right-edge rule)))))

          (let ((edge (make-completed-binary-edge
                       left-edge right-edge rule)))
            (setq already-have-a-rule rule)
            (setq single-edge edge)))))

    single-edge ))
