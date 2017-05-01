;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "lift"
;;;   Module:  "objects/chart/edge vectors/"
;;;  Version:  April 2017

;; Initiated 4/28/17 for cases where lower, possibly embedded
;; edge has to be raised up and reattached to a higher edge.

(in-package :sparser)

;;/// shares a lot with, e.g. respan-edge-for-new-referent so consider
;; refactoring. 
(defun detach-edge (edge)
  "Remove the edge from its edge vectors and its link to 
   the edge above it."
  (remove-edge-from-chart edge)
  ;; n.b. that doesn't change the positions recorded on the edge
  (setf (edge-used-in edge) nil)
  edge)

(defun remove-daughter-edge (edge direction)
  "Operates for side-effects on 'edge'. It removes the left
   or right daughter from the edge according to the value of
   'direction'. Resets the start/end points of the edge to match."
  (let ((left (edge-left-daughter edge))
        (right (edge-right-daughter edge)))
    (assert (and (edge-p left) (edge-p right)) ()
            "Code assumes daughters are edges, but left: ~a right: ~a"
            left right)
    (ecase direction
      (:left
       ;; remove edge from left-daughter's start's at
       (remove-edge-from-position (edge-starts-at edge) edge)
       ;; reset the start point of edge
       (setf (edge-starts-at edge) (edge-starts-at left))
       ;; move the right daughter over to the left
       (setf (edge-left-daughter edge) right)
       (setf (edge-right-daughter edge) :single-term))
      (:right
       (remove-edge-from-position (edge-ends-at edge) edge)
       (setf (edge-ends-at edge) (edge-ends-at left))
       (setf (edge-right-daughter edge) :single-term)))
    edge))

(defun chomsky-adjoin (head adjunct ref)
  "Make a new edge whose left daughter is the head edge
   and right daughter is the adjunct. The adjunct is
   presumed to be to the immediate right of the head
   The motivating case is lift-location-out-of-theme."
  (let ((new-edge
         (make-chart-edge ;; very basic edge creator
          :left-edge head
          :right-edge adjunct
          :starting-position (pos-edge-starts-at head)
          :ending-position (pos-edge-ends-at adjunct)
          :left-daughter head
          :right-daughter adjunct
          :category (edge-category head)
          :form (edge-form head)
          :referent ref
          :rule-name 'chomsky-adjoin)))
    new-edge))
          
