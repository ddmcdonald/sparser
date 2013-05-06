;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994,1995 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "many-many"
;;;   Module:  "analyzers;psp:check:"
;;;  Version:  1.1 October 1995

;; 0.0 (9/4/92 v2.3) broken out from drivers;chart:psp
;;     (5/14/93) renamed a routine
;; 1.0 (5/15/93) took out the constraint about not changing the category
;;      of a right-boundary edge within a segment.  Make it the driver's
;;      problem.  Since the edge-construction trace is with the edge code,
;;      that pretty much gutted the routine.
;; 1.1 (10/13/95) added check against dotted-rules when two come up.


(in-package :sparser)


(defun check-many-many (left-ending-vector right-ending-vector)
  (declare (special *break-on-unexpected-cases*))

  (let ((left-count  (ev-number-of-edges left-ending-vector))
        (left-vector (ev-edge-vector     left-ending-vector))
        (right-count  (ev-number-of-edges right-ending-vector))
        (right-vector (ev-edge-vector     right-ending-vector))
        left-edge  right-edge  rule  single-edge  already-have-a-rule )

    (dotimes (left-index left-count)
      (setq left-edge (aref left-vector left-index))
      (dotimes (right-index right-count)
        (setq right-edge (aref right-vector right-index))
        (setq rule (multiply-edges left-edge right-edge))
        (when rule
          (if already-have-a-rule
            (if (or (dotted-rule rule)
                    (dotted-rule already-have-a-rule))
              (complete-non-dotted-rule-of-two rule already-have-a-rule
                                               left-edge right-edge)

              (else
                (tr :multiple-completions already-have-a-rule rule)
                (when *break-on-unexpected-cases*
                  ;; /// should we pick one as the default ??
                  (break "stub -- multiple toplevel completions"))))

            (let ((edge (make-completed-binary-edge
                         left-edge right-edge rule)))
              (setq already-have-a-rule rule)
              (setq single-edge edge))))))

    single-edge ))



(defun complete-non-dotted-rule-of-two (r1 r2
                                        left-edge right-edge)
  ;; subroutine of Check-many-many. One of the two rules is dotted
  ;; or we wouldn't be here.
  (let ((rule
         (if (dotted-rule r1)
           r1
           r2)))

    (let ((edge (make-completed-binary-edge
                 left-edge right-edge rule)))
      edge )))

  

