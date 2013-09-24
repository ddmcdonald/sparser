;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "tuck"
;;;   Module:  "objects/chart/edge vectors/"
;;;  Version:  September 2013

;; Initiated 9/19/13 from code formerly in DA. 9/22/13 modifying it
;; to work in either direction. 

(in-package :sparser)


(defun tuck-new-edge-under-already-knit (subsumed-edge new-edge 
                                         dominating-edge direction)
  ;; We looked under an edge, identified an edge along its
  ;; fringe (subsumed-edge), and composed that edge with one adjacent
  ;; to the right (left) to form a new edge (new-edge).
  ;; Now we have to reconstruct pointers so that the edge that
  ;; had dominated the subsumed one dominates the new pair.
  (push-debug `(,subsumed-edge ,new-edge ,dominating-edge ,direction))
  ;; (setq subsumed-edge (car *) new-edge (cadr *) dominating-edge (caddr *))

  ;; Cleanup the used-in of the subsumed-edge
  (setf (edge-used-in subsumed-edge) new-edge)

  ;; plug in top-edge in place of subsumed-edge
  (set-used-by new-edge dominating-edge)

  ;; replace old subsumed daughter (... presumes binary)
  (ecase direction
    (:right (setf (edge-right-daughter dominating-edge) new-edge))
    (:left  (setf (edge-left-daughter dominating-edge) new-edge)))

  (let ((dominating-edge-ev
         (ecase direction
           (:right (edge-ends-at dominating-edge))
           (:left (edge-starts-at dominating-edge))))
        (new-edge-ev
         (ecase direction
           (:right (edge-ends-at new-edge))
           (:left (edge-starts-at new-edge)))))
    (push-debug `(,dominating-edge-ev ,new-edge-ev))
    ;; (setq dominating-ev (car *) new-ev (cadr *))

    ;; Remove the dominating edge from its ends/start-at vector
    (if (eq dominating-edge (highest-edge dominating-edge-ev))
      (then ;; easy case
       (pop-topmost-edge dominating-edge-ev)
       ;; insert the dominating edge just above the top edge
       ;; at the end location
       (tuck-in-just-above new-edge-ev new-edge dominating-edge direction))
      (else
       ;; Several edges are above the edge now just above the
       ;; subsumed-edge. They all have to be repositioned (in order)
       ;; at the end-position of the top-edge where sit above it
       (move-edges-above-to-new-pos 
        subsumed-edge
        (ecase direction
          (:left (edge-starts-at subsumed-edge))
          (:right (edge-ends-at subsumed-edge)))
        new-edge-ev
        direction)))
    ;;(break "and what else?")
    ;;/// We now have two edges that are adjacent that weren't before
    ;; so we should see if there's a rule and recompute the referent
    ))


(defun move-edges-above-to-new-pos (above-this-one
                                    old-edge-vector new-edge-vector
                                    direction)
  (push-debug `(,above-this-one ,old-edge-vector ,new-edge-vector))
  (let* ((index (index-of-edge-in-vector above-this-one old-edge-vector)))
    (break "index = ~a" index)
    (let ((edges-to-move (edges-higher-than old-edge-vector index)))
      (push-debug `(,edges-to-move))
      (break "edges-to-move")
      (dolist (edge edges-to-move)
        (ecase direction
          (:left (setf (edge-starts-at edge) new-edge-vector))
          (:right (setf (edge-ends-at edge) new-edge-vector))))
      (loop for edge in edges-to-move
        do (knit-edge-into-position edge new-edge-vector)))))


(defun tuck-in-just-above (ev edge-below edge-above direction)
  ;; Assumes that the edge-below (top-edge) is already in the ev.
  ;; We add the edge-above (dominating-edge) just above it
  ;; in the vector and adjust things accordingly. 
  (push-debug `(,ev ,edge-below ,edge-above))
  (unless (eq direction :left)
    (break "Stub: no code for tuck-in just above when it's ~
            from the right."))
  (let ((below-starts-at (edge-starts-at edge-below)))
    (setf (edge-starts-at edge-above) below-starts-at)
    (knit-edge-into-position edge-above below-starts-at)))

(defun pop-topmost-edge (ev)
  "Remove the topmost edge from this vector and adjust
   the other fields to fit."
  (let* ((topmost (ev-top-node ev))
         (index (index-of-edge-in-vector topmost ev))
         (count (ev-number-of-edges ev))
         (array (ev-edge-vector ev)))
    (setf (aref array index) nil) ;; remove it
    (setf (ev-number-of-edges ev) (1- count)) ;; adjust count
    (let ((next-item-down (aref array (1- index))))
      (setf (ev-top-node ev) next-item-down))))
