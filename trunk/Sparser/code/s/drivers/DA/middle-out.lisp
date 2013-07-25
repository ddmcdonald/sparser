;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "middle out"
;;;   Module:  "drivers;DA:"
;;;  Version:  May 1995

;; initiated 5/18/95

(in-package :sparser)

(defparameter *da-search-is-going-leftwards* nil
  "Flag read in Follow-out-matched-arc")


(defun check-middle-out-from-arc (triggering-tt list-of-arcs
                                  pos-before pos-after)

  ;; called from Execute-trie-middle-out by analogy to the call by
  ;; Execute-da-trie to Check-for-extension-from-vertex

  (setq *arc* list-of-arcs)
  (setq *da-next-position/leftwards* pos-before)

  (let ( arcs-succeeding-to-their-left )
    (let ((*da-search-is-going-leftwards* t))
      (dolist (arc list-of-arcs)
        (when (catch :search-right-from-middle
                (follow-out-matched-arc/leftwards arc))
          (push arc arcs-succeeding-to-their-left))))

    (if arcs-succeeding-to-their-left
      (then
        (when (cdr arcs-succeeding-to-their-left)
          (break "Stub: More than one prefix of a trie succeeded.~
                  ~%Rewrite search to the write as a loop~
                  ~%that resets the tt-alist, etc. on each pass"))

        (setq *da-next-position* pos-after)
        (dolist (arc arcs-succeeding-to-their-left)
          (setq *arc* arc)
          ;; this record will be trashed if there's more than one arc
          (record-tt (arc-left-vertex arc)
                     triggering-tt pos-before pos-after)
          (follow-out-matched-arc arc)))
      (else
        (throw :no-da-pattern-matched :no-match-leftwards)))))




(defun follow-out-matched-arc/leftwards (arc)
  (let ((next-vertex (arc-left-vertex arc)))
    (tr :next-da-vertex next-vertex)

    (if (start-vertex-p next-vertex)
      (throw :search-right-from-middle t)
      (get-next-treetop/leftwards next-vertex))))



(defun get-next-treetop/leftwards (vertex)
  (let ((position *da-next-position/leftwards*))
    (multiple-value-bind (tt next-position multiple?)
                         (next-treetop/leftward position)

      (when (eq tt *source-start*)
        (setq tt :source-start))
      (when multiple?
        (setq tt (preterminal-edges position)))

      (let ((arcs (vertex-leftward-extensions vertex)))

        (record-tt (arc-left-vertex (first arcs))
                   tt position next-position )
        (setq *da-next-position/leftwards* next-position)

        (tr :checking-extension-from vertex tt)
        (check-tt-against-arc-set tt arcs vertex)))))
