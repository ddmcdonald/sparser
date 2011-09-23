;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2005 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "looking under"
;;;    Module:   "analyzers;psp:edges:"
;;;   Version:   March 2005

;; initiated 3/14/05

(in-package :sparser)


(defun make-edge-below-top-edge (left-edge right-edge rule)
  
  ;; Called from a CA action (/// and perhaps added to the main line
  ;; of psp) when we recognize that we've stranded an edge on the right
  ;; side of a boundary such that its corresponding left-edge has been
  ;; covered by other edges before we got the chance to see the
  ;; opportunity for combining them.  So we apply the rule, but we
  ;; try to propagate the effects through all the relevant edge,
  ;; especially for treetop parsing.

  (let ((new-category (cfr-category rule))
        (given-category (edge-category left-edge)))

    (unless (eq new-category given-category)
      (break "Make below top: rule isn't simple adjunction"))

    (let* ((highest-sister-edge (highest-edge-used-by-of-category
                                 left-edge given-category))
           (next-up (edge-used-in highest-sister-edge))
           (highest-spanning-edge (highest-edge-used-by left-edge))
           (new-edge (make-default-binary-edge 
                      highest-sister-edge right-edge rule)))

      (when next-up
        (setf (edge-used-in new-edge) next-up)
        (cond ((eq (edge-right-daughter next-up)
                   highest-sister-edge)
               (setf (edge-right-daughter next-up) new-edge))
              ((eq (edge-left-daughter next-up)
                   highest-sister-edge)
               (break "It's not the right daughter"))
              (t (break "It's not knit in"))))

      (when highest-spanning-edge
        (let ((end-vector (edge-ends-at new-edge)))
          (knit-edge-into-position highest-spanning-edge end-vector)
          (setf (edge-ends-at highest-spanning-edge) end-vector)
          (check-impact-on-quiescence-pointer highest-spanning-edge)))

      highest-spanning-edge)))


(defun highest-edge-used-by (edge)
  (if (edge-used-in edge)
    (highest-edge-used-by (edge-used-in edge))
    edge))

(defun highest-edge-used-by-of-category (edge category)
  ;; caller has to ensure that the input edge is of this category
  (let ((next-up (edge-used-in edge)))
    (if (eq (edge-category next-up) category)
      (highest-edge-used-by-of-category next-up category)
      edge)))
      
