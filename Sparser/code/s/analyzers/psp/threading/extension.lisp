;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005,2014  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "extension"
;;;    Module:   "analyzers;psp:threading:"
;;;   Version:   0.2 July 2014

;; initiated 6/11/93 v2.3
;; 7/19 aded tt-extends?, which was stranded from [tt manager] when
;; it was dropped from the load.
;; 0.1 (9/26/94) reworked the basic call as a protocol-dispatch
;;  (10/19) added the case of a sentence-terminating colon followed by markup.
;;  (3/17/05) fixed typo.
;; 0.2 (7/30/14) Added new case: next-word-is-not-sentence-final-period

(in-package :sparser)

(unless (boundp '*segment-scan/forest-level-transition-protocol*)
  (defparameter *segment-scan/forest-level-transition-protocol*
                :move-when-segment-can-never-extend-rightwards
    "Used by Segment-can-extend to determine what calculations it makes"))


(defun scan-another-segment? (right-boundary)
  ;; called from the subroutines spawned from segment-finished
  ;; These routines return non-nil if the there is some reason to
  ;; continue scanning segments rather than move to the forest level
  ;; Returns nil if we should stop scanning, non-nil if we should
  ;; scan another segment. 
  (ecase *segment-scan/forest-level-transition-protocol*
    (:move-when-segment-can-never-extend-rightwards
     (can-segment-ever-extend right-boundary))
    (:move-only-at-significant-boundary
     (next-word-does-not-indicate-a-significant-boundary right-boundary))
    (:stop-on-sentence-end
     (not (next-word-is-not-sentence-final-period right-boundary)))))


;;;-----------------------------------
;;; check for sentence-ending period
;;;-----------------------------------

(defun next-word-is-not-sentence-final-period (pos-before)
  ;; Return nil unless the next word is a period that ends a sentence.
  ;; Uses the test that the period-hook uses. 
  ;; Wrapped in a not in call from scan-another-segment?
  (declare (special *the-punctuation-period*))
  (let ((next-word (pos-terminal pos-before))
        (position-after (chart-position-after pos-before)))
    (when (eq next-word *the-punctuation-period*)
      (tr :pts/period-seen pos-before)
      (period-marks-sentence-end? position-after))))

;;;-------------------------------------------
;;; algorithm that waits for major boundaries 
;;;-------------------------------------------

(defun next-word-does-not-indicate-a-significant-boundary (pos-before)
  ;; note the double negative -- we return nil if the word does not
  ;; signal the probable start of a significant boundary
  (declare (special *the-punctuation-period* *the-punctuation-colon*
                    *the-punctuation-open-angle-bracket*))
  (let ((next-word (pos-terminal pos-before)))
    (cond ((eq next-word *the-punctuation-period*)
           (tr :pts/period-seen pos-before)
           nil )
          ((eq next-word *the-punctuation-open-angle-bracket*)  ;; markup
           (tr :pts/angle-bracket-seen pos-before)
           nil )
          ((eq next-word *the-punctuation-colon*)
           ;; is it sentence-final or sentence internal?  One case for
           ;; sentence-final is when it's followed by markup
           (let ((next-pos (chart-position-after pos-before)))
             (unless (pos-terminal next-pos)
               (scan-next-position))
             (if (eq (pos-terminal next-pos)
                     *the-punctuation-open-angle-bracket*)
               nil
               t )))
          (t 
           (tr :pts/word-isnt-a-significant-boundary pos-before next-word)
           t ))))




;;;--------------------------------------------
;;; standard algorithm in sublanguage analysis
;;;--------------------------------------------

(defun can-segment-ever-extend (right-boundary)
  ;; Looks up the edge that spans the segment and checks in the
  ;; grammar whether there are any rules that compose with it 
  ;; to the right.

  (let ((edge (ev-top-node (pos-ends-here right-boundary))))
    (cond
     ((eq edge :multiple-initial-edges)
      ;; then the segment is one word long and that word is
      ;; ambiguous -- we see whether any of its cases extend
      (let* ((ev (pos-ends-here right-boundary))
             (vector (ev-edge-vector ev)))
        (dotimes (i (ev-number-of-edges ev) nil)
          (when (label-combines-to-its-right
                 (edge-category (aref vector i)))
            (return-from can-segment-ever-extend t)))))
     (edge
      (let ((combines?
             (label-combines-to-its-right (edge-category edge))))
        (if combines?
          (then (tr :pts/seg-extends right-boundary)
                t )
          (else (tr :pts/seg-doesnt-extend right-boundary)
                nil ))))
     (t
      (tr :pts/no-final-edge right-boundary)
      nil ))))



(defun tt-extends? (edge)
  ;; variation called when one has an edge rather than a position
  ;; in hand.
  (label-combines-to-its-right (edge-category edge)))


(defun label-combines-to-its-right (label)
  (let* ((label-rs (rule-set-for label)))
    (when label-rs
      (rs-right-looking-ids label-rs))))
