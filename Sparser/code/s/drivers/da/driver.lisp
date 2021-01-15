;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995, 2021  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "driver"
;;;   Module:  "drivers;DA:"
;;;  Version:  January 2021

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
        (if tt
          (then
           (when multiple?
             (setq tt (reduce-multiple-initial-edges tt)))

           ;; subsumed what had been Look-for-and-execute-any-DA-pattern
           (let ( 1st-vertex  arc )
             (cond
              ((setq 1st-vertex (trie-for-1st-item tt))
               (push-debug `(,1st-vertex))
               (tr :starts-da-pattern-with tt) ;; "[DA check] ~A starts a DA pattern" 
               (execute-da-trie 1st-vertex tt position next-position))
              
              #+ignore
              ((setq arc (is-an-item-anywhere-in-a-trie tt))
               ;; Middle-out needs serious revision.
               ;; See results in Pierre Vinken sentence
               (push-debug `(,arc))
               (tr :starts-da-pattern/middle-out tt)
               (execute-trie-middle-out arc tt position next-position))

              (t
               (tr :no-da-pattern-started-by tt)
               (look-for-da-patterns next-position)))))

          (else ;; will be nil at the edge of the chart
           (do-treetop-triggers))))))))


;;;-----------------------------
;;; Loop used in Island Driving
;;;-----------------------------
;; treetops and bound supplied by caller

(defun da-rule-cycle (start-pos end-pos treetops)
  "Called from pass-two and  as part of operating on the forest.
   Returns after any DA rule has applied -- this permits this to be
   interleaved with calls to the whack-a-rule-cycle to capitalizd
   on the edge(s) laid down by the DA rule."
  (tr :entering-da-cycle)
  (let ((once-only? t) ; had been an optional argument
        rule-executed?)
    (loop with result
       while (setq result (execute-one-da-rule treetops))
       do
         (setq rule-executed? t)
         (when (edge-p result)
           (tr :p2-da-returned-edge result))
         (setq treetops (successive-treetops :from start-pos :to end-pos))
         (when once-only? (return t)))
    rule-executed?))

(defun execute-one-da-rule (treetops)
  "Walks through the treetops from left to right. 
   Returns when a DA rule has succeeded."
  (loop with result for tt in treetops
    thereis
    (progn
      (tr :trying-da-pattern-on tt)
      (setq result (look-for-da-pattern tt))
      (and result (not (eq result :trie-exhausted))))))

(defun look-for-da-pattern (tt)
  "If there is a da pattern that starts at this treetop
   execute it and return the 'result'. Used by old-pass2
   and by execute-one-da-rule as of 1/3/17"
  (let ((da-node (trie-for-1st-item tt)))
    (when da-node
      (standalone-da-execution da-node tt))))


;;--- special invocation

(defun da-final-cycle (sentence)
  "Called from sentence-processing-core to clean up"
  (let* ((start-pos (starts-at-pos sentence))
         (end-pos (ends-at-pos sentence))
         (treetops (all-tts start-pos end-pos)))
    (da-rule-cycle start-pos end-pos treetops)
    (unless (eq (coverage-over-region start-pos end-pos)
                :one-edge-over-entire-segment)
      (whack-a-rule-cycle sentence))))
