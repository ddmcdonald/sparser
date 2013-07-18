;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "driver"
;;;   Module:  "drivers;DA:"
;;;  Version:  May 1995

;; initiated 10/26/94 v2.3.  Enriched it 5/5/95. Tweeked ..5/18
;; 1.0 (5/19) redid the treewalk loop as tail recursion to setup for interleaving
;;      and get around bug in position started at.
;;      (7/17/13) salted in some debugging things

(in-package :sparser)

;;;-------------
;;; entry point
;;;-------------

(defun consider-debris-analysis ()
  ;; Called from Parse-forest-and-do-treetops or After-quiescence as
  ;; the next stage of processing at the forest level.

  (if *do-debris-analysis*
    (let ((starting-point
           (if *da-dispatch-position*
             (if (> (pos-token-index *da-dispatch-position*)
                    (pos-token-index *left-boundary/treetop-actions*))
               *da-dispatch-position*
               *left-boundary/treetop-actions*)
             *left-boundary/treetop-actions*)))
      ;;(break "da start")

      (tr :beginning-da starting-point)
      (look-for-da-patterns starting-point))

    (else
      (tr :ignoring-debris-analysis)
      (do-treetop-triggers))))


;;;------
;;; loop
;;;------

(defun look-for-da-patterns (start-pos)
  (setq *da-dispatch-position* start-pos)
  (let ((end-pos *rightmost-quiescent-position*)
        (position start-pos))
    (tr :looking-for-da-pattern-between start-pos end-pos)

    (cond
     ((eq position end-pos)
      (tr :moving-to-do-treetops)
      (do-treetop-triggers))

     ((eq start-pos end-pos)
      (tr :moving-to-do-treetops)
      (do-treetop-triggers))

     (t
      (multiple-value-bind (tt next-position multiple?)
                           (next-treetop/rightward position)

        (when multiple?
          (setq tt (reduce-multiple-initial-edges tt)))

        ;; subsumed what had been Look-for-and-execute-any-DA-pattern
        (let ( 1st-vertex  arc )
          (cond
           ((setq 1st-vertex (trie-for-1st-item tt))
            (push-debug `(,1st-vertex))
            (tr :starts-da-pattern-with tt) ;; "[DA check] ~A starts a DA pattern" 
            (execute-da-trie 1st-vertex tt position next-position))

           ((setq arc (is-an-item-anywhere-in-a-trie tt))
            (push-debug `(,arc))
            (tr :starts-da-pattern/middle-out tt)
            (execute-trie-middle-out arc tt position next-position))

           (t
            (tr :no-da-pattern-started-by tt)
            (look-for-da-patterns next-position)))))))))

    

  
#|  original loop version -- given its interaction with the return
    values of the look-for routines, it would often restart at the
    beginning of the chart for unfathomable reasons. 
(defun walk-pending-treetops-for-debris-analysis ()
  (let ((start-pos  *left-boundary/treetop-actions*)
        (end-pos    *rightmost-quiescent-position*)
        tt  position  next-position  multiple? )
    (tr :looking-for-analyzable-debris start-pos end-pos)

    (setq position start-pos)
    (loop
      (when (eq position end-pos)
        (return))

      (multiple-value-setq (tt next-position multiple?)
        (next-treetop/rightward position))

      (when multiple?
        (setq tt (reduce-multiple-initial-edges tt)))

      (setq *da-dispatch-position*
            (look-for-and-execute-any-DA-pattern
             tt position next-position))
     
      (setq position (or *da-dispatch-position*
                         next-position))
      (tr :resuming-DA-walk-at position))

    (tr :moving-to-do-treetops)
    (do-treetop-triggers)))      |#

