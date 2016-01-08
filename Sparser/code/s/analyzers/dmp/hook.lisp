;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "hook"
;;;    Module:  "analyzers;DM&P:"
;;;   version:  0.3 July 1995

;; initiated 3/28/94 v2.3.  Broken out into two level dispatch 7/11
;; 7/27 gated the segment printing. 8/15 Tweeked the control on the trace
;; 8/16,19 added an abort capacity to get through cases where an error
;; was going to occur.
;; 0.1 (12/5) added hook for reanalyzing segments that are too long
;; 0.2 (2/13/95) refashioned dm/Dispatch-on-segment-coverage to provide
;;      an entry point that isn't knit into the mainline.
;; 0.3 (7/12) added a case to the dispatch to bring it uptodate and redid how
;;      the 'restart' flag is managed.

(in-package :sparser)


(defun dm/analyze-segment (coverage)
  ;; called from Segment-finished when the segment is non-trivial

  (declare (special *left-segment-boundary* *right-segment-boundary*
                    *stream-for-segment-trace*))

  (let ((starts-at *left-segment-boundary*)
        (ends-at *right-segment-boundary*))

    (when (readout-segments?)
      (print-segment starts-at ends-at *stream-for-segment-trace*))

    (cond ((and (= 1 (number-of-terminals-between starts-at ends-at))
                (function-word? (pos-terminal starts-at)))
           (tr :dm&p/segment-is-function-word starts-at)
      
           ;; we go back into the main stream at a different point
           ;; since we are going to just leave this word in place
           ;; as a treetop rather than span it with a segment edge.
           ;; This is the same set of action as in sf-action/spanned-segment
           ;; after it has checked for conjunctions, which ///we're ignoring
           ;; for the moment
           (no-further-action-on-segment)
           (scan-next-segment ends-at))

          ((and (eq (pos-terminal starts-at) (word-named "/"))
                (eq (pos-terminal (chart-position-before starts-at))
                    (word-named "<")))
           (tr :segment-is-a-section-marker starts-at)
           ;; this is a hack, but it avoids spuriously analyzing
           ;; the interior of section markers
           (sf-action/spanned-segment))

          (t (dm/dispatch-on-segment-coverage
               coverage starts-at ends-at)))))



(defvar *later-part-of-segment-needs-reanalysis* nil
  "May be set if the mining routines conclude that the bracket protocol let
   the segment get too long and it engulfed one or more of the real segments
   that followed it.  Read below to trigger an alternative next step.")




(defun dm/Dispatch-on-segment-coverage (coverage starts-at ends-at)

  (dm/Dispatch-on-segment-coverage/unthreaded coverage starts-at ends-at)

  (if *later-part-of-segment-needs-reanalysis*
    (let ((function (car *later-part-of-segment-needs-reanalysis*))
          (start-pos (cdr *later-part-of-segment-needs-reanalysis*)))
      (setq *later-part-of-segment-needs-reanalysis* nil)
      (funcall function start-pos ends-at))

    (sf-action/spanned-segment)))



(defun dm/Dispatch-on-segment-coverage/unthreaded (coverage
                                                   starts-at ends-at)
  ;; These guts of Dispatch-on-segment-coverage are broken out so that
  ;; this can be called as an alternative entry point outside the mainline.
  (tr :doing-DM&P-on-segment starts-at ends-at coverage)
  (let ((result
         (catch :abort-segment-construction
           (case coverage
             (:one-edge-over-entire-segment
              (scan-under-edge-covering-whole-segment starts-at ends-at))
             
             (:no-edges
              (scan-words-and-mine starts-at ends-at))
             
             (:discontinuous-edges
              (scan-treetops-and-mine starts-at ends-at))
             
             (:some-adjacent-edges
              (scan-treetops-and-mine starts-at ends-at))

             (:all-contiguous-edges
              (scan-treetops-and-mine starts-at ends-at))
             
             (otherwise
              (break "Unanticipated value for segment coverage within DM&P:~
                      ~%~A" coverage))))))

    (when (eq result :aborted)
      (make-chart-edge :starting-position starts-at
                       :ending-position ends-at
                       :category (category-named 'no-analysis)
                       :form nil
                       :rule :aborted-segment
                       :referent nil))))

