;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "adjacency"
;;;    Module:   "analyzers;forest:"
;;;   Version:   May 1991    (v1.8.5)

(in-package :sparser)

#|  Predicates involving adjacent edges  |#


(defun edges-abutt (left-edge right-edge)
  (eq (pos-edge-ends-at   left-edge)
      (pos-edge-starts-at right-edge)))


(defun edge-with-label-at/ends-there? (label position)
  ;; generic predicate/access function
  ;; Returns the highest edge with the label that ends at the position
  ;; if there is one, otherwise Nil.

  (let* ((ev (pos-ends-here position))
         (array (ev-edge-vector ev))
         (count (ev-number-of-edges ev))
         (i (1- count)) 
         edge )

    (when (> count 0)
      (loop
        (setq edge (aref array i))
        (when (eq label (edge-category edge))
          (return edge))
        
        (decf i)
        (when (< i 0)
          (return nil))))))

