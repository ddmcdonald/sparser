;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "peek"
;;;   Module:  "objects/chart/edge vectors/"
;;;  Version:  September 2013

;; Initiated 9/19/13 from code formerly in diverse other
;; files, all of which look for and edge on a vector

(in-package :sparser)


(defun da/look-under-edge/rightwards (edge label)
  ;; called from da/look-under-edge
  (da/look-under-edge/scan-edges 
   (pos-starts-here (pos-edge-starts-at edge))
   label))

(defun da/look-under-edge/leftwards (top-edge label)
  ;; called from da/look-under-edge
  (da/look-under-edge/scan-edges 
   (pos-ends-here (pos-edge-ends-at top-edge))
   label))



(defun da/look-under-edge/scan-edges (ev label)
  (let ((edge-vector (ev-edge-vector ev))
        (max (ev-number-of-edges ev))
        edge  edge-that-matches )
    (dotimes (i (1- max))
      (setq edge (elt edge-vector (- max i 1)))
      (when (eq (edge-category edge) label)
        (setq edge-that-matches edge)
        (return)))
    edge-that-matches))
;; These three functions do the same thing over the same 
;; parameters, so we find out which one is used the most
;; then which has the cleanest / thoroughest code
;; and we revise all the other callers.
(defun search-ev-for-edge (ev label)
  "Scan up from the bottom-most edge on the edge-vector for 
   an edge that has the indicated label. Return that edge
   if it exists. look-for-submerged-matching-conj-edge is
   the motivating case."
  (when (eq *edge-vector-type* :kcons-list)
    (push-debug `(,ev ,label))
    (break "Stub: search-ev-for-edge needs to be extended to ~
            handle :kcons-list edge-vectors"))
  (let ((vector (ev-edge-vector ev))
        edge )
    (dotimes (i (ev-number-of-edges ev))
      (setq edge (aref vector i))
      (when (eq (edge-category edge) label)
        (return-from search-ev-for-edge edge)))
    nil))
;;
(defun find/edge-with-category (edge-vector category)
  (declare (special *edge-vector-type*))
  (ecase *edge-vector-type*
    (:kcons-list
     (break "write the code for the kcons variation"))
    (:vector
     (let ((vector (ev-edge-vector edge-vector))
           edge )
       (dotimes (i (ev-number-of-edges edge-vector))
         (setq edge (aref vector i))
         (when (eq (edge-category edge)
                   category)
           (return-from find/edge-with-category edge)))
       nil ))))
