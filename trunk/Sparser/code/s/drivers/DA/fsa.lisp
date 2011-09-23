;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "fsa"
;;;   Module:  "drivers;DA:"
;;;  Version:  May 1995

;; initiated 5/5/95

(in-package :sparser)


(defun follow-out-matched-arc (arc)
  (if *Da-search-is-going-leftwards*
    (follow-out-matched-arc/leftwards arc)
    
    (let ((next-vertex (arc-right-vertex arc)))
      (tr :next-da-vertex next-vertex)
      
      (if (end-vertex-p next-vertex)
        (if (vertex-p next-vertex)
          (then
            (mark-best-so-far next-vertex)
            (get-next-treetop next-vertex))
          (accept-pattern next-vertex))
        (get-next-treetop next-vertex)))))




(defun get-next-treetop (vertex)
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
  ;; prime entry point -- called from Execute-da-trie
  (tr :checking-extension-from vertex tt)
  (let ((arc-set (vertex-rightward-extensions vertex)))
    (check-tt-against-arc-set tt arc-set vertex)))

(defun check-tt-against-arc-set (tt arc-set vertex)
  (setup-tt-type tt)
  (let (  matches  )
    (dolist (arc arc-set)
      (when (arc-matches-tt? arc tt)
        (push arc matches)))
    (cond
     ((cdr matches)
      (tr :da-match-extends)
      (setup-return-point vertex (cdr matches))
      (follow-out-matched-arc (car matches)))
     (matches
      (tr :da-match-extends)
      (follow-out-matched-arc (car matches)))
     (t
      (tr :da-didnt-match-any-arc)
      (take-best-so-far)))))


(defun mark-best-so-far (pattern)
  (setq *best-pattern-matched-so-far* pattern))

(defun take-best-so-far ()
  (if *best-pattern-matched-so-far*
    (accept-pattern *best-pattern-matched-so-far*)
    (backup-to-any-pending-arc-set)))



(defun accept-pattern (vertex)
  (let ((rule (vertex-rule vertex)))
    (setq *da-ending-position* *da-next-position*
          *matched-da-rule* rule)
    (tr :da-pattern-matched rule)
    (execute-da-action rule)))



(defun setup-return-point (left-vertex remaining-arcs)
  ;; *pending-arcs*
  (break))

(defun backup-to-any-pending-arc-set ()
  (if *pending-arcs*
    (break "Stub: write the code")
    (throw :no-da-pattern-matched :trie-exhausted)))

