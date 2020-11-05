;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2020 David D. McDonald  -- all rights reserved
;;;
;;;      File: embedded-da
;;;   Module:  "drivers;chart:psp:"
;;;  Version:  November 2020

;; Initiated 10/26/20. To organize appling DA rules during the
;; initial sweeps. 

#| The second pass use of DA is organized by new-pass2 in
drivers/forest/island-driving.lisp. There it loops over the
treetop edges. Calling trie-for-1st-item on successive edges
until one of the them returns a base-vertex. At that point
it calls standalone-da-execution do initialize the search
state and manage the search results. Successful DA rules run
for side-effects. In pass2 that means switching back to
the whack-a-rule-cycle, and then back to DA rules until 
there's been no change to the chart. Standalone-da-execution 
calls check-for-extension-from-vertex to match the DA trie 
that starts at the base vertex against the treetops of the chart.

This 'embedded' DA uses the identical machinery but runs as
one of the sentence sweep operations. It is invoked from
sentence-processing-core after the early rules. Having this
facility changes the 'ecology' of writing the various flavors
of pattern rules, so it's location in the sequence may need
to be adjusted.

However, we don't want the rules we write for this 'embedded'
version run in the same text contexts as the regular ones do.
To keep the embedded rule-executing code from inadvertantly
applying to a 'conventional' da pattern, they are indexed
against different trie objects (see analyzers/da/trie-object.lisp)
so they go into different hash tables.

To accomplish this, we no longer access the table global directly
but only via a function (da-trie). The function consults
the parameter parameter *make-early-da-rule* and returns the
appropriate pre-built trie object.

We use a special defining form to make these rules which takes
care of setting up the needed dynamic binding. 

        define-early-pattern-rule

This choice of name emphasizes that we're not looking at debris
left over after parsing, but at multi-term patterns acting just
like any other rule.
|#

(in-package :sparser)

;; (trace-da)  (trace-da-match)
;; (trace-embedded-da)

(defun apply-debris-analysis (sentence)
  "Invoked from sentence-processing-core if the flag
   *sweep-for-da-patterns* is up."
  (tr :doing-da-over sentence)
  (let ((start (starts-at-pos sentence))
        (end (ends-at-pos sentence)))
    (apply-debris-analysis-to-region start end)))


(defun apply-debris-analysis-to-region (start end)
  "Scan the treetop edges between the start and end positions
   for edges/words that are associated with the first node
   in a debris analysis pattern. The control structure is
   to (1) identify a triggering treetop edge, (2) try to do
   the match, then (3a) if it succeeds, recurse on a new
   start position based on where the newly created edge ends,
   or (3b) if it fails then recurse on the position just after
   the current start position."

  (let* ((treetops (treetops-in-segment start end))
         da-node  edge  result next-pos )

    ;; 1. search for a triggering edge. Set edge and da-rule.
    ;; the edge is the one we start the DA execution at.
    ;; Particularly importand when there are multiple interpretations
    ;; of a word, e.g. "p"
    (do ((tt (car treetops) (car remainder))
         (remainder (cdr treetops) (cdr remainder)))
        ((null tt))
      (multiple-value-setq (edge da-node)
        (triggers-trie? tt))
      (when da-node ; take the first one that's a trigger
        (return)))

    ;; Setup for 3b
    (setq next-pos (if edge
                     (pos-edge-ends-at edge)
                     (chart-position-after start)))
    (when (eq next-pos end)
      (return-from apply-debris-analysis-to-region t))

    (if da-node
      (then
        (tr :embedded/triggers-trie edge)
        (setq result (standalone-da-execution da-node edge))
        (if result
          (typecase result
            (edge
             (tr :embeded-produced-edge result)
             (setq next-pos (pos-edge-ends-at edge)) ; 3a
             (when (eq next-pos end)
               (return-from apply-debris-analysis-to-region t))
             (apply-debris-analysis-to-region next-pos end))
            (keyword
             (case result
               (:trie-exhausted ; no match, so continue at next positin
                (apply-debris-analysis-to-region next-pos end))
               (otherwise
                (break "Unexpected keyword ~a as DA 'result'" result))))
            (otherwise
             (break "Funny result: ~a" result)))
          (else ; 3b
            (apply-debris-analysis-to-region next-pos end))))
      (else ; 3b
        (apply-debris-analysis-to-region next-pos end)))))


(defun triggers-trie? (tt)
  "Does this treetop edge initiate a DA pattern?
   Since treetops-in-segment uses next-treetop/rightward, there
   will be edge vectors as well as edge in the list. EV are
   returned when there are multiple initial edges. In principle
   more than one of these initial edges could initiate a DA pattern
   but we stop with the first one we find. We return the
   specific edge that triggered it along with the da-node."
  (let ((*make-early-da-rule* t)
        base-node )
    (declare (special *make-early-da-rule*))    
    (etypecase tt
      (edge
       (setq base-node (trie-for-1st-item tt)) ; usually will be nil
       (values tt base-node))
      (edge-vector
       (let ((terms (all-edges-on tt)))
         (loop for item in terms
            as da-node = (trie-for-1st-item item)
            when da-node
            return (values item da-node)
            ;; end up here if none of the EV edges had a da-node
            finally (return item))))
      ((or word polyword) ; (not strictly true as far as DA is concerned)
       nil))))


(defun start-da-pattern (tt)
  "Test function modeled on look-for-da-pattern in island-driving.
   Assumes you've parsed a text and identified the edge (tt)
   that should trigger a DA pattern"
  (let ((da-node (trie-for-1st-item tt)))
    (when da-node
      (standalone-da-execution da-node tt))))
