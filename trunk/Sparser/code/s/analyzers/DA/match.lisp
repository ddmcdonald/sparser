;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "match"
;;;   Module:  "analyzers;DA:"
;;;  Version:  May 1995

;; initiated 5/5/95.  Elaborated ..5/12

(in-package :sparser)


(defparameter *edge-tt* nil)
(defparameter *word-tt* nil)
(defparameter *multiple-edges-over-word* nil)
(defparameter *boundary-tt* nil)

(defun initialize-tt-state-description ()
  (setq *edge-tt* nil
        *word-tt* nil
        *multiple-edges-over-word* nil
        *boundary-tt* nil))


(defun setup-tt-type (tt)
  (initialize-tt-state-description)
  (etypecase tt
    (edge (setq *edge-tt* tt))
    (word (setq *word-tt* tt))
    (cons (setq *multiple-edges-over-word* tt))
    (symbol (setq *boundary-tt* tt))))


(defun setup-tt-type/pattern (pattern-item)
  ;; A way to use the standard mechanism that the search
  ;; uses but when working with patterns rather than the chart.
  (initialize-tt-state-description)
  (etypecase pattern-item
    ((or referential-category category mixin-category)
     (make-edge :category pattern-item))
    (word pattern-item)
    (symbol
     ;; e.g. :end-of-source
     (setq *boundary-tt* pattern-item))))



(defparameter *arc* nil)  ;; for debugging
(defparameter *tt* nil)


(defun arc-matches-tt? (arc tt)
  ;; called from Check-for-extension-from-vertex
  (tr :arc-matches-tt? arc tt)
  (setq *arc* arc
        *tt* tt)

  (let ((match?
         (etypecase arc
           
           (label-arc
            (when *edge-tt*
              (if (eq (edge-category tt) (arc-label arc))
                t
                (da/look-under-edge tt (arc-label arc)))))
           
           (form-arc
            (when *edge-tt*
              (eq (edge-form tt) (arc-label arc))))
           
           (morph-arc
            (when *word-tt*
              (eq (word-morphology tt) (arc-morph-keyword arc))))
           
           (word-arc
            (when *word-tt*
              (eq tt (arc-word arc))))
           
           (polyword-arc
            (when *edge-tt*
              (eq (edge-category tt) (arc-polyword arc))))

           (unknown-word/s-arc
            (when *word-tt*
              (or (= 1 (arc-number-of-words arc))
                  (then (break "multiple unknown words")
                        nil))))

           (gap-arc
            (break "gap arc"))

           )))

    (if match?
      (tr :arc-matches-tt?/matches)
      (tr :arc-matches-tt?/no-match))

    match? ))




(defparameter *allow-da-to-look-under-edges* t)

(defun da/Look-under-edge (edge label)
  ;; Called from Arc-matches-tt? when a treetop edge is being
  ;; compared against its category label and there is not a
  ;; match.
  (when *allow-da-to-look-under-edges*
    (if *Da-search-is-going-leftwards*
      (da/look-under-edge/leftwards edge label)
      (da/look-under-edge/rightwards edge label))))

(defun da/Look-under-edge/Rightwards (edge label)
  (da/look-under-edge/scan-edges 
   (pos-starts-here (pos-edge-starts-at edge))
   label))

(defun da/Look-under-edge/Leftwards (top-edge label)
  (da/look-under-edge/scan-edges 
   (pos-ends-here (pos-edge-ends-at top-edge))
   label))


(defun da/Look-under-edge/scan-edges (ev label)
  (let ((edge-vector (ev-edge-vector ev))
        (max (ev-number-of-edges ev))
        edge  edge-that-matches )

    (dotimes (i (1- max))
      (setq edge (elt edge-vector (- max i 1)))
      (when (eq (edge-category edge) label)
        (setq edge-that-matches edge)
        (return)))

    edge-that-matches))

