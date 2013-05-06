;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "extract"
;;;    Module:   "analyzers;forest:"
;;;   Version:   0.3 June 1995

;; 0.1 (6/13/93 v2.3) changed the definition of Edge-{starting/ending}-at
;;      and marked the rest as not necessarily in use now
;;     (12/27) added routine to see if there's a treetop of a given category
;;      within a region.
;;     (1/21/94) wrote Sibling-to-the-right
;; 0.2 (3/15) flushed the change of 6/13 since it was blocking the HA routines
;;      whenever there were multiple edges.
;;     (3/28) wrote Word-before-pos
;; 0.3 (6/9) added flag to Find-tt.. to inhibit it returning the parent edge
;;      and wrote Second-highest-tt-starting-at
;;     (6/13/95) fixed probable bug in Rightmost-daughter-edge

(in-package :sparser)

;;;-------------------
;;; region predicates
;;;-------------------

(defun find-tt-in-region (tt-category region-start region-end
                          &optional (not-whole-span? nil))
  (let ((start-pos region-start)
        end-pos  tt )
    (loop
      (multiple-value-setq (tt end-pos)
        (span-starting-at start-pos))

      (when not-whole-span?
        (when (edge-spans-region tt region-start region-end)
          (setq tt (second-highest-tt-starting-at start-pos)
                end-pos (if (edge-p tt)
                          (pos-edge-ends-at tt)
                          (chart-position-after start-pos)))))

      (when (eq tt-category
                (edge-category tt))
        (if not-whole-span?
          (unless (edge-spans-region tt region-start region-end)
            (return-from find-tt-in-region tt))
          (return-from find-tt-in-region tt)))

      (when (>= (pos-token-index end-pos)
                (pos-token-index region-end))
        (return-from find-tt-in-region nil))

      (setq start-pos end-pos))))



;;;-----------------
;;; word extractors
;;;-----------------

(defun word-before-pos (position)
  (let ((prior-pos (chart-position-before position)))
    (pos-terminal prior-pos)))


;;;-----------------
;;; edge extractors
;;;-----------------

(defun edge-ending-at (pos)
  ;; used by apply-HA-to-current-segment
  ;; Returns nil if there's no top edge or if it is multiple, since
  ;; multiples will only be over single words.

  (let ((topnode-field (ev-top-node (pos-ends-here pos))))
    (if (eq topnode-field :multiple-initial-edges)
      (values (highest-edge (pos-ends-here pos))
              :multiple-initial-edges)
      topnode-field)))


(defun edge-starting-at (pos)
  ;; just like edge-ending-at
  (let ((topnode-field (ev-top-node (pos-starts-here pos))))
    (if (eq topnode-field :multiple-initial-edges)
      (values (highest-edge (pos-starts-here pos))
              :multiple-initial-edges)
      topnode-field)))


(defun second-highest-tt-starting-at (pos)
  ;; used by Find-tt-in-region when it's not allowed to return the whole span
  (let* ((ev (pos-starts-here pos))
         (vector (ev-edge-vector ev))
         (count (ev-number-of-edges ev)))

    (if (or (= count 0)   ;; no edges
            (= count 1))  ;; one edge
      (pos-terminal pos)
      (elt vector (- count 2)))))




(defun span-ending-at (p)
  ;; returns the topmost edge, word, or :multiple-initial-edges keyword
  ;; that ends at the position and the position where it started at
  ;;
  (let* ((ev (pos-ends-here p))
         (topnode-field (ev-top-node ev)))

    (cond ((eq topnode-field :multiple-initial-edges)
           (values ev
                   (chart-position-before p)))
          (topnode-field
           (values topnode-field
                   (pos-edge-ends-at topnode-field)))
          (t (let ((prior-pos (chart-position-before p)))
               (values (pos-terminal prior-pos)
                       prior-pos))))))

(defun span-starting-at (p)
  ;; returns the span (as above) and the position that
  ;; it ends at.
  ;;
  (let* ((ev (pos-starts-here p))
         (topnode-field (ev-top-node ev)))

    (cond ((eq topnode-field :multiple-initial-edges)
           (values ev
                   (chart-position-after p)))
          (topnode-field
           (values topnode-field
                   (pos-edge-ends-at topnode-field)))
          (t (values (pos-terminal p)
                     (chart-position-after p))))))



(defun category-of-edge-ending-at (p)
  ;; clients: Sort-out-possible-conjunction
  (let ((span (span-ending-at p)))
    (etypecase span
      (edge (edge-category span))
      (edge-vector span)
      (word span))))

(defun category-of-edge-starting-at (p)
  ;; clients: Sort-out-possible-conjunction
  (let ((span (span-starting-at p)))
    (etypecase span
      (edge (edge-category span))
      (edge-vector span)
      (word span))))



(defun sibling-to-the-right (p)
  ;; akin to the fns above, in that it wants the highest edge 
  ;; starting at the position, but has different return values
  ;; client: wb/treetops-below-edge
  
  (let* ((ev (pos-starts-here p))
         (topnode-field (ev-top-node ev)))
    (cond ((eq topnode-field :multiple-initial-edges)
           (preterminal-edges p))
          (topnode-field
           (ev-top-node ev))
          (t (pos-terminal p)))))



(defun leftmost-daughter-edge (edge)
  ;; if the edge has daughters that are edges, return the
  ;; one that starts where this edge does.
  (let ((daughter (edge-left-daughter edge)))
    (when (edge-p daughter)
      daughter)))

(defun rightmost-daughter-edge (edge)
  (let* ((ev (edge-ends-at edge))
         (count (ev-number-of-edges ev)))
    ;(break)
    (if (= count 0)
      nil
      (elt (ev-edge-vector ev)
           (- count 1)))))


    
#|
;;---------------------------- unvetted for current use below here

(defun first-edge-to-the-left-of (position left-bound)
  (if (eq position left-bound)
    nil
    (let ((topnode-field (ev-top-node (pos-ends-here position))))
      (if topnode-field
        (if (eq topnode-field :multiple-initial-edges)
          (pos-ends-here position)
          topnode-field)
        (first-edge-to-the-left-of (chart-position-before position)
                                   left-bound)))))



(defun second-edge-from-the-right (right-pos)
  (let ((rightmost-edge (edge-ending-at right-pos))
        second-edge )
    (if (eq rightmost-edge :multiple-initial-edges)
      (setq second-edge (edge-ending-at
                         (chart-position-before right-pos)))
      (setq second-edge (edge-ending-at
                         (pos-edge-starts-at rightmost-edge))))))


(defun first-edge-after (edge)
  ;; looks leftwards of Edge and returns the next edge that it
  ;; sees.  For the moment, it breaks on multiple initial edges/
  (let ((position (pos-edge-starts-at edge))
        ending-vector left-edge)
    (loop
      (setq ending-vector (pos-ends-here position))
      (setq left-edge (ev-top-node ending-vector))
      (when left-edge
        (when (eq left-edge :multiple-initial-edges)
          (break "Leftmost is multiple"))
        (return-from first-edge-after left-edge))

      (setq position (chart-position-before position))
      (when (eq position *rightmost-quiessent-position*)
        (return-from first-edge-after nil)))))



(defun first-edge-back-from-the-right (left-bound
                                       right-bound)
  (let ((position right-bound))
    (multiple-value-bind (span starting-position)
                         (span-ending-at position)
      (cond
       ((eq span :multiple-initial-edges)
        (pos-ends-here position)) ;;the vector
       ((typep span 'edge)
        span)
       ((eq starting-position left-bound)
        nil )
       (t (first-edge-back-from starting-position))))))


(defun first-edge-back-from (position)
  (multiple-value-bind (span starting-position)
                       (span-ending-at position)
    (cond
     ((eq span :multiple-initial-edges)
      (pos-ends-here position)) ;;the vector
     ((typep span 'edge)
      span)
     (t (first-edge-back-from starting-position)))))
                            



;;------




(defun edge-before-leftmost-unspanned-pos (left-pos
                                           right-pos)

  ;; search from the left for a position without an edge over it
  ;; and return the edge just before it.
  (let ((leftmost-edge (edge-starting-at left-pos)))
    (cond ((null leftmost-edge)
           ;; the segment starts with an unknown word, look back
           ;; to the prior segments
           (find-rightmost-edge-in-forest))
          ((eq leftmost-edge :multiple-initial-edges)
           ;; pass on the vector
           (pos-starts-here left-pos))
          (t (edge-before-leftmost/aux leftmost-edge
                                       (pos-edge-ends-at leftmost-edge)
                                       right-pos)))))

(defun find-rightmost-edge-in-forest ()
  (break "called -- definition was lost"))

(defun edge-before-leftmost/aux (leftmost-edge
                                 end-position
                                 stop-position)

  (let ((next-edge (edge-starting-at end-position)))
    (cond ((null next-edge)
           leftmost-edge)
          ((eq next-edge :multiple-initial-edges)
           (edge-before-leftmost/aux (pos-starts-here end-position)
                                     (chart-position-after end-position)
                                     stop-position))
          (t (edge-before-leftmost/aux next-edge
                                       (pos-edge-ends-at next-edge)
                                       stop-position)))))  |#

