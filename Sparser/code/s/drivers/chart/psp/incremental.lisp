;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015-2016 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis CwC project
;;;
;;;     File:  "incremental"
;;;            drivers/chart/psp/
;;;  version:  February 2016

;; Initiated 11/30/15 for a new toplevel driver that runs
;; incrementally left to right in a grounding situation. 
;; 12/13/15 start with skeleton of code taken from C3 protocol. 
;; Started TAG make-over 2/15/16

(in-package :sparser)


(defun initiate-incremental-CwC-protocol ()
  ;; Called from lookup-the-kind-of-chart-processing-to-do
  ;; We pull in the start marker and check that we're in the
  ;; right place, then we start the actual scan.
  (let* ((p0 (scan-next-position))  ;; status = :scanned
         (ss (pos-terminal p0)) ;; #<word SOURCE-START>
         (p1 (scan-next-position)))
    (declare (ignore ss))
    ;; need them to just to keep straight what the scan does

    (setq *reached-eos* nil) ;; initialize
    ;; (incrementally-scan-segment p1)
    (state-sensitive-rightward-march p1)))


(defun state-sensitive-rightward-march (pos-before)
  "Step one word at a time. Introduce it's (single) edge,
   update the state, project its tree, repeat."
  (unless (pos-terminal pos-before)
    (scan-next-position))
  (let ((word-after (pos-terminal pos-before)))
    (when (eq word-after *end-of-source*)
      (setq *reached-eos* t)
      (terminate-chart-level-process))
    (break "pos-before = ~a" pos-before))
)



(defun incrementally-scan-segment (start-pos)
  ;; Not really. This is a direct copy of scan-segment in
  ;; the c3 protocol with a different rule handler since
  ;; c3-process-segment-and-update-state is very likely to be
  ;; heavier than we need, though certainly something like it
  ;; is where we'll end up.
  ;;   The chunker is C3's version of the original scheme
  ;; based on configurations of brackets

  ;; Compare to scan-next-segment in the regular protocol.
  ;; This is the fixed point where resume between segments.
  (tr :starting-c3-segment start-pos)
  (let* ((end-pos (read-through-segment-to-end start-pos))
         ;; first delimit the next segment that starts here
         (position start-pos)
         (head-position (chart-position-before end-pos)))
    (tr :delimited-c3-segment start-pos end-pos)
    (when (eq start-pos end-pos)
      (push-debug `(,end-pos))
      (error "Empty segment?"))
    (loop 
      ;; Then walk through it left-to-right extending
      ;; the situation. Assume that the final word is the head.
      (introduce-next-word position (eq position head-position))
      (setq position (chart-position-after position))
      (when (eq position end-pos)
        (return)))

    ;(push-debug `(,start-pos ,end-pos))
    ;(break "segment finished: ~a" (words-between start-pos end-pos))
    ;(edges-between start-pos end-pos)
    
    ;; Now parse the interior of the segment.
    ;; The standard segment analysis manages *right-segment-boundary*
    ;; and *left-segment-boundary* // look at pts updates
    ;; /// Nope -- doesn't set right boundary on "no block"
    ;; so can't call segment-coverage cause it uses the globals
    (let ((coverage (coverage-over-region start-pos end-pos)))
      (case coverage ;; mimic PTS
        ((:one-edge-over-entire-segment ;; all done
          :null-span
          :no-edges
          :discontinuous-edges))
        (otherwise
         (incremental-segment-parse start-pos end-pos))) ;; includes syntax
 
    ;; Now see if we can compose this with its left neighbor,
    ;; assuming there is one.
    (unless (= 1 (pos-token-index start-pos))
      (let ((seg-edge (edge-between start-pos end-pos)))
        (tr :c3-segment-parse-value seg-edge)
        (unless seg-edge
          (error "c3 segment parse did not create an edge between ~
                  ~a and ~a" start-pos end-pos))
        (compose-segment-edge seg-edge)))

    ;; presumably we now just scan the next segment
    (if *reached-eos*
        (terminate-chart-level-process)
        (incrementally-scan-segment end-pos)))))

(defun compose-segment-edge (edge)
  "We've just created this edge. Look for a basis for
   composing it with the edge to it's left."
  ;; Works for the VP-based commands of the blocks world.
  ;; To handle full clauses or more complex text we either
  ;; flesh out the full C3 model or move to a more adroit
  ;; parsing protocol
  (let* ((start-pos (pos-edge-starts-at edge))
         (left-neighbor (edge-ending-at start-pos)))
    (unless left-neighbor
      (push-debug `(,edge))
      (error "Expected a edge ending at ~a" start-pos))
    (let* ((left-form (edge-form left-neighbor))
           (right-form (edge-form edge))
           (composition-instructions
            (C3-lookup-composer left-form right-form)))
      (C3-apply-composition-instructions
       composition-instructions left-neighbor edge))))
  
(defun incremental-segment-parse (start-position end-position)
  ;; This is a clone of parse-at-the-segment-level, which can't be
  ;; used as-is because it knits back to segment-parsed1 of the
  ;; standard protocol. Also we can make different assumptions
  ;; because, e.g., we know there is only one edge over every
  ;; word because we're going to do ambiguity in the situation,
  ;; and indeed that there is an edge over every word.
  (tr :c3-segment-parse start-position end-position)
  (let* ((*edges-from-referent-categories* nil)
         (*allow-pure-syntax-rules* t))
    (declare (special *allow-pure-syntax-rules* 
                      *edges-from-referent-categories*))
    (let ((*left-segment-boundary* start-position)
          (*right-segment-boundary* end-position)
          (*rightmost-active-position/segment* end-position)
          (*return-after-doing-segment* t))
      (declare (special *left-segment-boundary* 
                        *right-segment-boundary*
                        *rightmost-active-position/segment*
                        *return-after-doing-segment*))
      (march-back-from-the-right/segment))))


(defun C3-lookup-composer (left-form right-form)
  ;; Lookup the rule that composes these edge. Sort of a hack
  ;; to avoid walking into the biology-focused syntactic rules.
  (declare (special *c3-syntactic-rules*))
  (push-debug `(,left-form ,right-form))
  (let ((rule (lookup-syntactic-rule `(,left-form ,right-form))))
    (unless rule
      (error "No syntactic rule for ~a + ~a" left-form right-form))
    (unless (memq rule *c3-syntactic-rules*)
      (push-debug `(,rule))
      (error "Returned a general syntactic rule: ~a" rule))
    rule))

(defun C3-apply-composition-instructions (instructions left-edge right-edge)
  (push-debug `(,instructions ,left-edge ,right-edge))
  (unless (cfr-p instructions)
    (break "What's up -- instructions aren't a rule?~a" instructions))
  (let ((edge (make-completed-binary-edge
               left-edge right-edge instructions)))
    ;;// trace
    edge))


(defun fill-compatible-slot (left-ref right-ref)
#| for "build a staircase" left is a category as it the right
  12/19/15 2pm  |#
  ;; presume that the head is on the left.///Note that nothing
  ;; is double-checking this. Fundamental weakness of the protocol
  (unless (individual-p left-ref)
    (setq left-ref (individual-for-ref left-ref)))
   (unless (individual-p right-ref)
    (setq right-ref (individual-for-ref right-ref)))
  (push-debug `(,left-ref ,right-ref)) ;; (setq left-ref (car *) right-ref (cadr *))
  (let ((open-variables (unsaturated? left-ref)))
    (unless open-variables
      (error "expected some variable of ~a to be open" left-ref))
    (push-debug `(,open-variables))
    (when (cdr open-variables)
      (error "rewrite loop to compare several variables"))
    (let ((variable (car open-variables)))
      (when (compatible-with-variable? variable right-ref)
        (bind-variable variable right-ref left-ref)))
    left-ref))


(defun compatible-with-variable? (var i)
  (let ((restriction (var-value-restriction var)))
    (satisfies-subcat-restriction? i restriction)))





