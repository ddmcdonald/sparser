;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "edge-patterns"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  November 2015

;; Broken out from pattern-gophers 7/19/15. 8/22/15 fixed bug in
;; identify-edge-ns-pattern when we finally got a word "termini"
;; 11/27/15 No longer loaded. Gradually going through it for parts.

(in-package :sparser)

#| Test cases
 (p "Smad1/HsN3 complex.") (p "EphB1-induced.")
|#
;;;----------------------------------------
;;; prebuilt-multiword edges w/in the span
;;;----------------------------------------

(defun ns-patterns/edge-slash-edge (label-pattern start-pos end-pos
                                    &aux (edges (treetops-between start-pos end-pos)))
  (cond
   ((equal label-pattern '(:protein :forward-slash :protein))
    (make-ns-pair 'protein (first edges) (second edges) start-pos end-pos))
   (t (if *work-on-ns-patterns*
        (break "New edge slash pattern ~a" label-pattern)
        (edge-that-punts-edge-inside-pattern start-pos end-pos edges)))))

(defun ns-patterns/edge-hyphen-edge (label-pattern start-pos end-pos
                                     &aux (edges (treetops-between start-pos end-pos)))
  (cond
   ((equal label-pattern '(:protein :hyphen  :protein))
    (make-ns-pair 'protein (first edges) (second edges) start-pos end-pos))
   ((equal label-pattern '(:protein :hyphen :bio-entity))
    (make-protein-pair/convert-bio-entity start-pos end-pos :right))
   ((equal label-pattern '(:protein :hyphen :lower))
    ;; same as (:full :hyphen :lower))  "GTP-bound" "EGFR-positive"
    (resolve-hyphen-between-two-words label-pattern words start-pos end-pos))
   (t (if *work-on-ns-patterns*
        (break "New edge hyphen pattern ~a" label-pattern)
        (edge-that-punts-edge-inside-pattern start-pos end-pos)))))




(defun edge-that-punts-edge-inside-pattern (start-pos end-pos
                                            &aux (edges (treetops-between start-pos end-pos)))
  (let ((edge (make-edge-over-long-span
               start-pos
               end-pos
               (edge-category (car edges)) 
               :rule 'edge-that-punts-edge-inside-pattern
               :form (edge-form (car edges))
               :referent (edge-referent (car edges))
               :constituents edges
               :words edges)))
    ;;/// trace goes here
    edge))


;;; --------------------
;;; Obsolete code below here
;;; --------------------


#+ignore ;; no longer called
(defun identify-edge-ns-pattern (pattern start-pos end-pos)
  "All of the edges in the no-space region as over single words
  so we've not gone through the edge-based pattern route. Still,
  this can sometime yield a more informative pattern, and can
  permit things like coersion of bio-entities."
  (push-debug `(,pattern ,start-pos ,end-pos))
  ;; (setq pattern (car *) start-pos (cadr *) end-pos (caddr *))
  (let (;;(pos-count (length pattern)) -- unused
        (count 0)
        (next-start start-pos)
        edge  edges )
    (loop
      (incf count)
      (setq edge (top-edge-at/starting next-start))
      (unless (edge-p edge)
        (cond
         ((eq edge :multiple-initial-edges) ;; dev/s(#)
          ;; in other situations we take the top one.
          ;; Doesn't work in real ambiguities, but it's
          ;; easy. Another option is chasing up used-in.
          (setq edge (highest-edge (pos-starts-here next-start)))
          (push edge edges))
         ((null edge) ;; "re" in "re-activaton is a word without
          ;; an edge so put in this part of the pattern instead
          ;;//// need to give them meanings and not punt.
          (push (nth (1- count) pattern) edges))
         (t (error "Unexpected situation with edge vector ~
                    at p~a" (pos-token-index next-start)))))
      (setq next-start (chart-position-after next-start))
      (when (eq next-start end-pos)
        (return)))
    (convert-pattern-edges-to-labels (nreverse edges))))








