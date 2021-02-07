;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995,2013,2020 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "fsa"
;;;   Module:  "drivers;DA:"
;;;  Version:  December 2020

;; initiated 5/5/95. 7/29/13 Added in-line doc and better stubs

(in-package :sparser)

;; (trace-da)

(defun follow-out-matched-arc (arc)
  "We matched this arc. Look at the vertex that it ends at
   ('next-vertex') and use that to determine what to do next"
  (if *da-search-is-going-leftwards*
    (follow-out-matched-arc/leftwards arc)
    (let ((next-vertex (arc-right-vertex arc)))
      (tr :next-da-vertex next-vertex)
      (if (end-vertex-p next-vertex) ; we could end here
        (if (vertex-p next-vertex) ;; but the pattern is longer
          (then
            (mark-best-so-far next-vertex)
            (get-next-treetop next-vertex))
          (accept-pattern next-vertex))
        (get-next-treetop next-vertex)))))

(defun get-next-treetop (vertex)
  "Look up the treetop at the next position. Record it for use
   if the pattern succeeds, and setup the extension check. Note that
   if there are multiple initial edges at this next position they are
   all passed to the match check."
  (declare (special *da-next-position*))
  (let ((position *da-next-position*))
    (multiple-value-bind (tt next-position multiple?)
                         (next-treetop/rightward position)
      (when (eq tt *end-of-source*)
        (setq tt :end-of-source))
      (when multiple?
        (setq tt (preterminal-edges position)))
      (record-tt vertex tt position next-position)
      (setq *da-next-position* next-position)
      (check-for-extension-from-vertex vertex tt))))

(defun check-for-extension-from-vertex (vertex tt)
  "Continuation of get-next-treetop, and called as entry point
   for execute-da-trie and standalone-da-execution.
   Lookup the rightward extensions from this vertex, does a data
   check, then calls the compare function"
  (tr :checking-extension-from vertex tt)
  (let ((arc-set (vertex-rightward-extensions vertex)))
    (unless (every #'da-arc-p arc-set)
      (push-debug `(,arc-set ,vertex ,tt))
      (error "rightward-extensions returned some non-vertexes ~
              from ~a on ~a" vertex tt))
    (compare-tt-to-arc-set tt arc-set vertex)))

(defun compare-tt-to-arc-set (tt arc-set vertex)
  "Initialize the check state variables then compute how
   many arcs out of this vertex match the treetop.
   If more than one matches, then we need to loop
   back to try the next matching arc, 
   though we're greedy ???
   and accept the first matching terminal arc"
  (setup-tt-type tt) ;; sets the descriptor parameters
  (let (  matches  )
    (dolist (arc arc-set)
      (when (arc-matches-tt? arc tt)
        (push arc matches)))
    (cond
     ((cdr matches)
      (tr :da-match-extends matches)
      (setup-return-point vertex (cdr matches) tt)
      (follow-out-matched-arc (car matches)))
     (matches
      (tr :da-match-extends matches)
      (follow-out-matched-arc (car matches)))
     (t
      (tr :da-didnt-match-any-arc)
      (take-best-so-far)))))


(defun mark-best-so-far (vertex)
  "Called from follow-out-matched-arc when it encounters
   an end-vertex but the pattern is longer because the vertex
   has arc going out to its right."
  (tr :da-best-so-far vertex)
  (setq *best-pattern-matched-so-far* vertex))

(defun take-best-so-far ()
  "Since we want to use the longest-matching pattern,
   we always look one arc/tt beyond an accepting vertex
   before using it"
  (if *best-pattern-matched-so-far*
    (accept-pattern *best-pattern-matched-so-far*)
    (backup-to-any-pending-arc-set)))

(defun accept-pattern (vertex)
  (declare (special *da-ending-position* *matched-da-rule*
                    *da-next-position*))
  (let ((rule (vertex-rule vertex)))
    (setq *da-ending-position* *da-next-position*
          *matched-da-rule* rule)
    (tr :da-pattern-matched rule)
    (execute-da-action rule)))


(defun setup-return-point (left-vertex remaining-arcs tt)
  "There was more than one matching arc, we have to record them"
  (declare (special *pending-arcs*))
  (tr :remaining-matches remaining-arcs tt)
  (push-debug `(,left-vertex ,tt ,remaining-arcs))
  (loop for arc in remaining-arcs
     do (push arc *pending-arcs*)))

(defun backup-to-any-pending-arc-set ()
  (if *pending-arcs*
    (then
      (loop for parc in *pending-arcs*
         do (progn
              (tr :backing-up-to parc)
              (follow-out-matched-arc parc)))
      (break "after backup"))
    (throw :no-da-pattern-matched :trie-exhausted)))

