;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1995,2014  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "forest scan"
;;;   Module:  "analyzers;traversal:"
;;;  Version:  0.2 July 2014

;; initiated 5/7/94 v2.3
;; 0.1 (10/24) it was attempting to do checks with words rather than literals
;; 0.2 (12/5) debugged it on :multiple-initial-edges.  Fleshed out a stub 2/2/95
;;     (3/7/07) Added debugging information - left scan can get into a loop
;;     (7/28/14) experimented with alternatives, but didn't change anything

(in-package :sparser)


(defun parse-between-boundaries (left-bound right-bound)
  ;; the caller has determined that there the two positions aren't
  ;; the same and that there's some chance of there being an edge
  ;; across the whole span, e.g. Evaluate-angle-bracket-interior
  (catch :done-parsing-region
    (parse-from-to/topmost left-bound right-bound))
  (analyze-segment-layout
   ;; /// it ought to be possible to keep a running model of this
   ;; rather than have to recalculate it here
   left-bound right-bound))


(defun parse-from-to/topmost (left-bound right-pos)
  
  (let ((right-edge (find-rightmost-edge right-pos left-bound)))
                    ;(left-treetop-at right-pos)))
    ;; returns an edge or an edge-vector
    (if (and right-edge
	     (edge-thing-is-to-the-right-of-pos right-edge left-bound))
      (try-combination-to-the-left/bounded left-bound right-edge)
      (throw :done-parsing-region nil))))

(defun edge-thing-is-to-the-right-of-pos (edge-etc position)
  (let ((edge-pos-index
	 (typecase edge-etc
	   (edge
	    (pos-token-index (ev-position (edge-starts-at edge-etc))))
	   (edge-vector
	    (pos-token-index (ev-position edge-etc)))
	   (otherwise
	    (break "New type: ~a~%~a"
		   (type-of edge-etc) edge-etc)))))
    (> edge-pos-index
       (pos-token-index position))))



(defun try-combination-to-the-left/bounded (left-bound right-edge) ;; (break)
  (let* ( multiple-on-right?
         (middle-pos
          (etypecase right-edge
            (edge (pos-edge-starts-at right-edge))
            (edge-vector
             (setq multiple-on-right? t)
             (chart-position-before (ev-position right-edge))))))

    (when (eq middle-pos left-bound)
      (throw :done-parsing-region right-edge))
    (when (< (pos-token-index middle-pos)
	     (pos-token-index left-bound))
      (break "Bad threading - middle-pos (~a) is the left of the left-bound (~a)"
	     middle-pos left-bound))

    (if multiple-on-right?
      (pbb-multiple-on-right/looking-left right-edge middle-pos left-bound)
      (pbb-single-right/looking-left right-edge middle-pos left-bound))))


(defun pbb-single-right/looking-left (right-edge middle-pos left-bound)
  (let ((left-item (span-ending-at middle-pos)))
    ;; returns an edge, a word, or an edge-vector if there are multiple
    ;; initial edges over a single word.
    (let ((new-edge
           (etypecase left-item
             (edge (check-one-one left-item right-edge))
             (word )
             (edge-vector
              (check-many-one left-item ;;(pos-ends-here middle-pos)
                              right-edge)))))
      (if new-edge
        (try-combination-to-the-left/bounded left-bound new-edge)
        ;(break "Stub: no edge formed")
        (parse-from-to/topmost left-bound middle-pos)))))


(defun pbb-multiple-on-right/looking-left (right-vector middle-pos left-bound)
  ;; We're walking from the right, where there are multiple edges.
  ;; We see if there's an edge just to the left and get it checked
  ;; accordingly.
  (let ((left-item (span-ending-at middle-pos)))
    (let ((new-edge
           (etypecase left-item
             (edge (check-one-many left-item right-vector))
             (word )
             (edge-vector
              (check-many-many left-item
                               right-vector)))))
      (if new-edge
        (try-combination-to-the-left/bounded left-bound new-edge)
        (parse-from-to/topmost left-bound middle-pos)))))



