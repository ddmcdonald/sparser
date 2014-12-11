;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1995,2014  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "forest scan"
;;;   Module:  "analyzers;traversal:"
;;;  Version:  0.4 December 2014

;; initiated 5/7/94 v2.3
;; 0.1 (10/24) it was attempting to do checks with words rather than literals
;; 0.2 (12/5) debugged it on :multiple-initial-edges.  Fleshed out a stub 2/2/95
;;     (3/7/07) Added debugging information - left scan can get into a loop
;;     (7/28/14) experimented with alternatives, but didn't change anything.
;; 0.3 (9/10/14) Parser had been ignoring words, so it misses rules with 
;;     literals in them like measurement -> number + "fold". 9/11/14 ripped out
;;     some of that because the actual problem was upstream and kept edges
;;     from being put over the literals. 
;; 0.4 (12/10/14) Made try-combination-to-the-left/bounded throw if it
;;     encountered a word. 

(in-package :sparser)


(defun parse-between-boundaries (left-bound right-bound)
  ;; the caller has determined that there the two positions aren't
  ;; the same and that there's some chance of there being an edge
  ;; across the whole span, e.g. Evaluate-angle-bracket-interior
  (push-debug `(,left-bound ,right-bound)) ;(break "parse-between")
  (catch :done-parsing-region
    (parse-from-to/topmost left-bound right-bound))
  (analyze-segment-layout
   ;; /// it ought to be possible to keep a running model of this
   ;; rather than have to recalculate it here
   left-bound right-bound))


(defun parse-from-to/topmost (left-bound right-pos)
  "Called recursively to march leftwards"
  (let ((right-edge (left-treetop-at/edge right-pos)))
    ;; Returns the topmost edge if there is one, 
    ;; otherwise returns the word that ends there.
    ;; N.b. This ignores multiple edges over a single word,
    ;; so another alternative is adapting find-rightmost-edge
    ;; to also return words . 
    (if right-edge
      (let ((left-pos-of-right-edge
             (etypecase right-edge
               (edge (pos-token-index
                      (pos-edge-starts-at right-edge)))
               (word (pos-token-index
                      (chart-position-before right-pos))))))
        ;; is there something to parse? If not then throw back
        ;; to the top (parse-between-boundaries). 
        (if (> left-pos-of-right-edge
               (pos-token-index left-bound))
          (try-combination-to-the-left/bounded left-bound right-edge)
          (throw :done-parsing-region nil)))
      (throw :done-parsing-region nil))))


(defun try-combination-to-the-left/bounded (left-bound right-edge)
  (let* ( multiple-on-right?
         (middle-pos
          (etypecase right-edge
            (edge (pos-edge-starts-at right-edge))
            (edge-vector
             (setq multiple-on-right? t)
             (chart-position-before (ev-position right-edge)))
            (word
             ;; if there's not a pretermal edge over this word
             ;; then we're not going to get a parse, so bail now.
             (throw :done-parsing-region nil)))))

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
             (edge-vector
              (check-many-one left-item ;;(pos-ends-here middle-pos)
                              right-edge))
             (word nil))))
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
             (word nil)
             (edge-vector
              (check-many-many left-item
                               right-vector)))))
      (if new-edge
        (try-combination-to-the-left/bounded left-bound new-edge)
        (parse-from-to/topmost left-bound middle-pos)))))



