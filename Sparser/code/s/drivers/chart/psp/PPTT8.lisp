;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1995,2013-2014  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:   "PPTT"                ;; "parse pending tree tops"
;;;    Module:   "drivers:chart:psp:"
;;;   Version:   8.6 August 2014

;; 7.0 (5/11/92 v2.3) bumped the version to accomodate the changes to
;;      the scan routine
;; 7.1 (6/15) reviewed/tweeked the threading. 6/16 ditto
;;     (5/6/94) added network-flow trace
;; 7.2 (5/7) gave find-rightmost-edge an optional arg. for its end pos
;; 8.0 (7/13/94) Modified what it meant to 'start at the quiescent position' to be
;;      the position at the end of the just-scanned segment rather than its beginning.
;;      If this isn't done then some combinations aren't parsed.
;; 8.1 (9/28) introduced parameterization of the operation set
;; 8.2 (10/26) added provision for a DA pass.  10/31 fixed bug with edge and
;;      management of quiescence ptr.
;; 8.3 (1/16/95) tracking down an infinite loop by looking at more reasons to
;;      go immediately back to the segment level.
;; 8.4 (2/14/07) Fixed a bug with the interactions from conjunctions that
;;      overspan both TT boundaries then call parse-forest-and-do-treetops.
;;      (3/7) Trying to fix infinite loop in parse-between-boundaries.
;; 8.5 (3/18/13) Adding wrapper policy to permit combining referents:
;;      parse-forest-and-do-treetops/referents-too
;; 8.6 (7/24/14) Converted the funcall of the protocol function to the
;;      setf symbol-function style. Should be transparent but may fix stuborn
;;      sticky stack frame. 
;;     (8/4/14) Plugged in new-forest-driver as a treetop option. 

(in-package :sparser)


;;; Choice of forest-level processor

(defun do-forest-level (rightmost-position)
  (declare (ignore rightmost-position))
   (error "Switch that determines what protocol to use for the forest ~
           has not been set"))

(defun what-to-do-at-the-forest-level (keyword)
  (case keyword
    (:parse-forest-and-do-treetops
     (setf (symbol-function 'do-forest-level)
           (symbol-function 'parse-forest-and-do-treetops)))
    (:dm&p-forest-level
     (setf (symbol-function 'do-forest-level)
           (symbol-function 'dm&p-forest-Level)))
    (:new-forest-protocol
     (setf (symbol-function 'do-forest-level)
           (symbol-function 'new-forest-driver)))
    (otherwise
     (error "Unknown forest-level protocol: ~a" keyword)))
  (setq *forest-level-protocol* keyword))


;;;---------------------------------------------
;;; transition from segment-level  --  dispatch
;;;---------------------------------------------

(defun move-to-forest-level (rightmost-position reason)
  ;; called shortly after segment-finished is called
  (if *do-forest-level*
    (then
     (tr :moved-to-forest-level rightmost-position) ;; network-flow
     (tr :moving-to-forest-level rightmost-position reason) ;; network/forest-level
     (setq *forest-level* t)
     (do-forest-level rightmost-position))
    (else
      ;; go right back if this level has been turned off
      (tr :forest-level-turned-off)
      (scan-next-segment *where-the-last-segment-ended*))))


;;;--------------------------------
;;; standard forest-level protocol
;;;--------------------------------

(defun parse-forest-and-do-treetops (rightmost-position)

  ;; check whether there is something to parse at this level and
  ;; if so call PPTT, otherwise resume the scan.

  ;; Actions that can perturb the march across the treetop, such as
  ;; conjunctions, will get back to the TT level through this route
  ;; so we reset both boundaries accordingly before moving on
  ;; to the loop (by way of DA).
  (setq *left-boundary/treetop-actions* *rightmost-quiescent-position*)

  (let ((rightmost-edge/ev
         (find-rightmost-edge rightmost-position))
        (*edges-from-referent-categories* t))
    (declare (special *edges-from-referent-categories*))

    (if rightmost-edge/ev
      ;; This edge might start at the quiescent position, in which
      ;; case there's nothing to parse and we should move on.
      ;; and scan the next segment
      (let ((start-pos (etypecase rightmost-edge/ev
                         (edge (pos-edge-starts-at rightmost-edge/ev))
                         (edge-vector (ev-position rightmost-edge/ev))))
            (leftward-boundary *rightmost-quiescent-position*))
        (cond
          ((eq start-pos leftward-boundary)
           ;; There's no other edge to combine with the one that's
           ;; been identified, but we should let the other forest level
           ;; activities run before returning to the segment level.
           (tr :PPTT/edge-at-quiessence rightmost-edge/ev)
           (setq *rightmost-quiescent-position* rightmost-position)
           (consider-debris-analysis))
	  
          ((position-precedes start-pos leftward-boundary)
           ;; the edge spans positions to the left of the boundary,
           ;; probably because of a respan operation out-of-line 
           ;; from the sequence of segment scans such as possessives
           (setq *rightmost-quiescent-position* rightmost-position)
           (consider-debris-analysis))
	  
          (t
           ;; The edge is to the right of the quescent position,
           ;; so there might be other edges between it and that position
           ;; that could be composed -- go look for them.
           (PPTT rightmost-edge/ev))))
      
      (else
        ;; There is no edge at this level at all, so there isn't even
        ;; anything for Do-treetops to operate on and we go back to
        ;; the segment level. 
        (tr :PPTT/no-edges)
        (forest-level-parsing-finished rightmost-position)
        (scan-next-segment *where-the-last-segment-ended*)))))


#| ignore
(defvar *pathological-situation-at-PPTT* nil
  " ///  a means of communicating from PPTT-Boundaries-check to
   a common dispatch point")
(define-per-run-init-form '(setq *pathological-situation-at-PPTT* nil))

(defun PPTT-Boundaries-check (edge/ev)
  ;; This edge is to the left of the 'rigthmost position', we check
  ;; for a pathological case that will cause a loop at this level.
  ;; We return non-nil if the situation is a good one and nil if
  ;; there's something pathological.
  (let* ((start-pos
          (etypecase edge/ev
            (edge (pos-edge-starts-at edge/ev))
            (edge-vector (ev-position edge/ev))))
         (leftward-boundary *rightmost-quiescent-position*)
         (spread (number-of-terminals-between
                  start-pos leftward-boundary)))
    (cond
     ((= spread 0)
      (break "edge starts at quiescent position"))
     ((position-precedes start-pos leftward-boundary)
      (break "edge starts to the left of the quiescent position"))
     (t t))))  |#

(defun flush-ongoing-PPTT-and-continue (position)
  (setq *rightmost-quiescent-position* position)
  (throw 'change-kind-of-chart-processing t))



;;;----------------------------------------
;;; after forest-level parsing is finished
;;;----------------------------------------

(defun forest-level-parsing-finished (right-boundary)
  ;; common subroutine to keep the flags and state variables updated
  (setq *rightmost-quiescent-position* right-boundary))


(defun after-quiescence (right-boundary)
  ;; Common tail-recursive call from the various forest-level marching
  ;; and checking routines that make up its parsing process.
  ;; Dictates what happens next. 
  (tr :after-quiescence right-boundary)
  (tr :PPTT/quiessence-reached right-boundary)

  (forest-level-parsing-finished right-boundary)
  (consider-debris-analysis))



;;;-----------------------------------------------------------
;;; tail-recursive bail-out entry points for the forest parse
;;;-----------------------------------------------------------

(defun move-on ()
  (throw 'forest-quiescent :quiescent))

(defun go-back-to-scanning ()
  (tr :forest-needs-scan)
  (throw 'needs-scan :needs-scan))



(defun setup-returns-from-PPTT-&-run (right-edge right-boundary)

  ;; Defines the catch points for the forest parse and determines
  ;; which entry point into the forest parsing code to use given
  ;; the character of the "right edge". This edge or edge-vector is
  ;; what was returned by Find-rightmost-edge given the position
  ;; that the segment-level ended at.
  (tr :setup-PPTT right-boundary)

  (let ( quiescent  needs-scan )
    (setq needs-scan
          (catch 'needs-scan
            (setq quiescent
                  (catch 'forest-quiescent
                    (etypecase right-edge
                      (edge (try-parsing-tt right-edge))
                      (edge-vector (try-parsing-tt/multiple-on-right
                                    right-edge)))))))

    (tr :forest-parse-returned right-boundary)
    (cond (quiescent
           (after-quiescence right-boundary))
          (needs-scan
           (scan-next-segment *where-the-last-segment-ended*))
          (t (break/debug "How did we get here without a flag set?")
             :foo))))

;;;------
;;; PPTT
;;;------

(defun PPTT (right-edge/ev)  ;; "parse pending tree tops"
  (tr :PPTT)
  (tr :PPTT/starting right-edge/ev)

  (let ((right-boundary (etypecase right-edge/ev
                          (edge (pos-edge-ends-at right-edge/ev))
                          (edge-vector (ev-position right-edge/ev)))))

    (setq *forest-right-boundary*
          (setq *rightmost-active-position/forest*
                right-boundary))

    (setup-returns-from-PPTT-&-run right-edge/ev right-boundary)))



;;;----------------
;;; special checks
;;;----------------

(defun edge-interaction-with-quiescence-check (edge)
  ;; An edge has just been laid down (e.g. by Span-parentheses)
  ;; that because of how it was defined might enclose the position
  ;; where the forest parse left off last -- *rightmost-quiescent-position*
  ;; and as a result its next run will never see the position and will
  ;; gleefully continue on backwards indefinitely.
  ;;   We check for this possibility, and if it is true we move the
  ;; marker to the starting position of the edge, which will allow the
  ;; edge to be considered in the next forest level parse.
  (when (< (pos-token-index (pos-edge-starts-at edge))
           (pos-token-index *rightmost-quiescent-position*)
           (pos-token-index (pos-edge-ends-at edge)))
    (tr :moving-quescence-ptr-before-edge edge)
    (setq *rightmost-quiescent-position*
          (pos-edge-starts-at edge))))




;;;-----------------------------
;;; find the edge we start with
;;;-----------------------------

(defun find-rightmost-edge (starting-position
                            &optional (end-position
                                       *rightmost-quiescent-position*))

  ;; return the treetop ending at the starting position or the first
  ;; one to the left of that position that is still to the right of
  ;; the designated end position.  The default use of this
  ;; routine is in conjunction with forest-level parsing where
  ;; the end position is where forest-level parsing stopped 
  ;; last time.
  ;;
  ;;    Returns an edge if the rightmost edge is unambiguous (so to 
  ;; speak) or returns an edge-vector if what's rightmost is a
  ;; word with multiple interpretations. 

  (let ((position starting-position)
        vector topnode-field)
    (loop
      (when (or (eq position end-position)
		(< (pos-token-index position) (pos-token-index end-position)))
        ;; no edges left undone in the forest
        (return-from find-rightmost-edge nil))
      
      (setq vector (pos-ends-here position)
            topnode-field (ev-top-node vector))

      (when (ev-top-node vector)
        (if (eq topnode-field :multiple-initial-edges)
          (return-from find-rightmost-edge
                       vector)
          (return-from find-rightmost-edge
                       topnode-field)))
      
      (setq position (chart-position-before position)))))









