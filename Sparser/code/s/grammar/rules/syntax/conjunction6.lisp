;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "conjunction"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  6.3 October 1994

;; initated 6/10/93 v2.3, added multiplicity cases 6/15
;; 6.1 (12/13) fixed datatype glitch in resuming from unspaned conj.
;; 6.2 (1/7/94) allowed for trivial multiple-initial-edges
;; 6.3 (1/13) preempting referent calculation if either referent is nil
;;     (10/4) //noticed successful referent was being indexed twice

(in-package :sparser)


;;;------
;;; hook
;;;------

(define-completion-action word::|and|
  :mark-event  'mark-instance-of-AND)


(defun mark-instance-of-AND (and-word position-before position-after)
  (declare (ignore and-word position-after))
  (setq *pending-conjunction* position-before))



;;;----------------------------------------------------------
;;; checking out the segment after the conjunction -- driver
;;;----------------------------------------------------------

(defun check-out-possible-conjunction (start-of-after-segment)

  ;; We wouldn't be called if there wasn't a full span over
  ;; the segment after the conjunction, and the segment in front
  ;; has at least the trivial span ("segment") over it.
  ;;   Get the edges that span these segments and start applying
  ;; progressively more heuristic conjunction algorithms until
  ;; we get a match or know we don't yet have enough information
  ;; in which case we set up a state that will have this process
  ;; resumed later.

  (let* ((end-of-before-segment *pending-conjunction*)
         (edge-before (span-ending-at end-of-before-segment))
         (edge-after (span-starting-at start-of-after-segment)))

    (when (edge-vector-p edge-before)
      (setq edge-before (reduce-multiple-initial-edges edge-before)))
    (when (edge-vector-p edge-after)
      (setq edge-after (reduce-multiple-initial-edges edge-after)))

    (setq *pending-conjunction* nil)

    (let ((new-edge (dispatch-conj-by-multiplicities edge-before
                                                     edge-after)))
      (if new-edge
        ;; if the conjunction went through then we have to pick up
        ;; again at the point where we left off in Segment-finished
        ;; before we called this conjunction routine.
        ;;   That code is reproduced here
        (if (label-combines-to-its-right (edge-category new-edge))
          (scan-next-segment *where-the-last-segment-ended*)
          (move-to-forest-level (pos-edge-ends-at new-edge)
                                :full-segment-scanned))
        (else
          ;; same thing, different edge -- and a hook for variations
          (if (label-combines-to-its-right
               (etypecase edge-after
                 (edge (edge-category edge-after))
                 (word edge-after)))
            (scan-next-segment *where-the-last-segment-ended*)
            (move-to-forest-level
             (etypecase edge-before
               (edge (pos-edge-ends-at edge-before))
               (word (chart-position-after end-of-before-segment)))

             ;; we know these two edges don't
             ;; combine, so don't try again
             :full-segment-scanned)))))))


;;;-------------------------------
;;; intermediary dispatch routine
;;;-------------------------------

(defun dispatch-conj-by-multiplicities (edge-before edge-after)
  ;; an intermediary on the way to actually doing the checking
  ;; where we sort out whether there's one or several edges involved

  (when (and edge-before edge-after)
    ;; rules-out looking at pairs of unknown words
    ;; /// ?? is this still germaine given the tighter constraints
    ;;          on when the conjunction routine is called ??

    (if (or (edge-vector-p edge-before)
            (edge-vector-p edge-after))
      ;; e.g. "president" has rules as a single word title and
      ;; as one of the literal words in a longer title
      (cond ((and (edge-vector-p edge-before)
                  (edge-vector-p edge-after))
             (look-for-like-edges/both edge-before edge-after))
            ((edge-vector-p edge-before)
             (look-for-like-edges/left edge-before edge-after))
            ((edge-vector-p edge-after)
             (look-for-like-edges/right edge-before edge-after)))

      (conjunction-heuristics edge-before edge-after))))



;;;------------------------
;;; conjunction heuristics
;;;------------------------

(defun conjunction-heuristics (edge-before edge-after)
  (let ((label-before (edge-category edge-before))
        (label-after (edge-category edge-after)))

    (cond ((eq label-before label-after)
           (conjoin edge-before edge-after
                    :conjunction/identical-adjacent-labels))
          (t nil))))


;;;---------------------
;;; making the new edge
;;;---------------------

(defun conjoin (left-edge right-edge heuristic)
  (let ((referent
         (referent-of-conjoined-edges
          (edge-referent left-edge) (edge-referent right-edge)))
        (form (edge-form left-edge))
        (category (edge-category left-edge)))

    (let ((edge (make-chart-edge
                 :left-edge left-edge
                 :left-daughter left-edge
                 :right-edge right-edge
                 :right-daughter right-edge
                 :category category
                 :form form
                 :referent referent
                 :rule-name heuristic)))
      edge )))


;;;-----------
;;; semantics
;;;-----------

(defun referent-of-conjoined-edges (left-ref right-ref)
  (when (and left-ref right-ref)
    ;; when doing DA there can be cases where there's a categorization
    ;; but no referent. 

    (let* ((left-type (indiv-type left-ref))
           (right-type (indiv-type right-ref))
           (type left-type))

      (unless (eq left-type right-type)
        (multiple-value-setq (left-ref right-ref type)
          (adjudicate-specializations? left-ref left-type
                                       right-ref right-type)))
      (let ((collection
             (define-or-find-individual 'collection
               :items (list left-ref right-ref)
               :number 2
               :type type)))
        collection ))))





(defun adjudicate-specializations? (left-ref left-type
                                    right-ref right-type)
  ;;///stub
  (declare (ignore right-type))
  (values left-ref right-ref left-type))



;;;-------------------------------------------------------
;;; drivers to handle single-word multiplicities of edges
;;;-------------------------------------------------------

(defun look-for-like-edges/left (left-vector right-edge)
  (let* ((right-label (edge-category right-edge))
         (left-edge (find/edge-with-category left-vector right-label)))
    (when left-edge
      (conjunction-heuristics left-edge right-edge))))


(defun look-for-like-edges/right (left-edge right-vector)
  (let* ((left-label (edge-category left-edge))
         (right-edge (find/edge-with-category right-vector left-label)))
    (when right-edge
      (conjunction-heuristics left-edge right-edge))))


(defun look-for-like-edges/both (left-vector right-vector)
  ;; take the first pairing that where the labels match
  (if (eq *edge-vector-type* :kcons-list)
    (break "write the code for the kcons variation")

    (let ((vector (ev-edge-vector left-vector))
          left-edge  conj-edge )
      (dotimes (i (ev-number-of-edges left-vector))
        (setq left-edge (aref vector i))
        (setq conj-edge
              (look-for-like-edges/right left-edge right-vector))
        (when conj-edge
          (return-from Look-for-like-edges/both conj-edge)))
      nil )))


