;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995,2011-2013  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "match"
;;;   Module:  "analyzers;DA:"
;;;  Version:  September 2013

;; initiated 5/5/95.  Elaborated ..5/12. 11/3/11 Fixing match against
;; multiple words as tt.  7/17/13 Cleaning up, elaborating debugging.
;; 9/19/13 Moed out look-under code to objects/chart/edge-vectors/peek.

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



(defun arc-matches-tt? (arc tt)
  ;; called from Check-for-extension-from-vertex
  (tr :arc-matches-tt? arc tt)
  (when *trace-DA*
    (format t "   *edge-tt* = ~a~%   *word-tt* = ~a~
             ~%   *multiple-edges-over-word* = ~a~%   *boundary-tt* = ~a~
             ~%   The arc ~a is a ~a~
             ~%   tt = ~a"
            *edge-tt* *word-tt* *multiple-edges-over-word*
            *boundary-tt* arc (type-of arc) tt))
  (push-debug `(,arc ,tt)) ;;(break "arc type")
  ;; (setq arc (car *) tt (cadr *))

  (let ((match?
         (typecase arc

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
            (cond
              (*word-tt*
               (eq tt (arc-word arc)))
              (*multiple-edges-over-word*
               (let ((target-word (arc-word arc)))
                 ;; ought to be cleaner than this, or find comparable
                 ;; code elsewhere in DA
                 (dolist (obj tt)
                   (typecase obj
                     (word (when (eq obj target-word)
                             (return-from arc-matches-tt? obj)))
                     (edge (when (eq (edge-category obj) target-word)
                             (return-from arc-matches-tt? obj)))
                     (otherwise
                      (push-debug `(,obj ,tt))
                      (error "Unexpected type in multiple edge tt: ~a"
                             (type-of obj)))))))
              (*edge-tt*
               (let ((left-daughter (edge-left-daughter tt)))
                 (when (word-p left-daughter)
                   (eq left-daughter (arc-word arc)))))

              (t nil)))

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

           (otherwise
            (push-debug `(,arc ,tt))
            (error "Unknown type of DA arc: ~a~%  ~a"
                   (type-of arc) arc) ))))

    ;;(unless match? (break "no match"))

    (if match?
      (tr :arc-matches-tt?/matches)
      (tr :arc-matches-tt?/no-match))

    match? ))




(defparameter *allow-da-to-look-under-edges* t)

(defun da/look-under-edge (edge label)
  ;; Called from Arc-matches-tt? when a treetop edge is being
  ;; compared against its category label and there is not a
  ;; match.
  (when *allow-da-to-look-under-edges*
    (if *da-search-is-going-leftwards*
      (da/look-under-edge/leftwards edge label)
      (da/look-under-edge/rightwards edge label))))

