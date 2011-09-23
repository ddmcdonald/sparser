;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "one-many"
;;;   Module:  "analyzers;psp:check:"
;;;  Version:  1.0 March 1993

;; 0.0 (9/4/92 v2.3) broken out from drivers;chart:psp
;; 1.0 (5/15/93) took out the constraint about not changing the category
;;      of a right-boundary edge within a segment.  Make it the driver's
;;      problem.  Since the edge-construction trace is with the edge code,
;;      that pretty much gutted the routine.
;;     (3/16/94) Added a version that just checked.

(in-package :sparser)


(defun check-one-many (left-edge right-ending-vector)
  (let ((count (ev-number-of-edges right-ending-vector))
        (vector (ev-edge-vector right-ending-vector))
        right-edge rule single-edge already-have-a-rule )

    (dotimes (index count)
      (setq right-edge (aref vector index))
      (setq rule (multiply-edges left-edge right-edge))
      (when rule
        (if already-have-a-rule
          (then
            (tr :multiple-completions already-have-a-rule rule)
            (unless (eq rule already-have-a-rule)
              (break "multiple completions")))
          (let ((edge (make-completed-binary-edge
                       left-edge right-edge rule)))
            (setq already-have-a-rule rule)
            (setq single-edge edge)))))

    single-edge ))


(defun one-many/just-check-labels (left-label right-vector)
  ;; same idea, but it just does the check and doesn't also
  ;; create the edge. It also takes the first completion
  ;; rather than wait and worry about whether there's more
  ;; than one. It's used by Lookahead-at-pair, where we're looking
  ;; for a possibility rather than immediately committing, so
  ;; this operates over labels rather than edges. 

  (let ((count (ev-number-of-edges right-vector))
        (vector (ev-edge-vector right-vector))
        rule  right-label )

    (dotimes (index count
                    nil )
      (setq right-label (edge-category (aref vector index)))
      (when (setq rule (multiply-labels left-label right-label))
        (return rule)))))



(defun apply-cfr-to-first-compatible-right-neighbor (cfr
                                                     left-edge
                                                     right-vector)
  (let ((count (ev-number-of-edges right-vector))
        (vector (ev-edge-vector right-vector))
        (left-label (edge-category left-edge))
        right-edge  right-label  edge )
    (dotimes (index count
                    (break "An earlier check of this right vector ~
                            showed~%an edge compatible with~
                            this edge and rule, but it didn't repeat.~
                            ~% rule: ~A~
                            ~% left edge: ~A~
                            ~% vector: ~A" cfr left-edge vector))
      (setq right-edge (aref vector index)
            right-label (edge-category right-edge))
      (when (multiply-labels left-label right-label)
        (setq edge
              (make-completed-binary-edge left-edge right-edge cfr))
        (return edge)))))

