;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "flags"
;;;   Module:  "drivers;chart:psp:"
;;;  Version:  0.1 September 1995

;; initiated 4/21/91, tweeked 4/26, added to 5/1, 7/11
;; 12/15/92 v2.3  Added in some flags from all-edges
;; 5/7/93 started looking at which ones were still in use.
;; 0.1 (3/28/94) changed the default for *use-Segment-edges-as-segment-defaults*
;;      to nil for compatibility with a model/HA free version.
;;     (5/25) added flag to track edge-induced segment boundaries vs. regular
;;     (7/11) added *bracket-forming-left-boundary*  (7/26) added that to
;;      the init routine  (10/26) added *forest-level* and *
;;     (4/20/95) added records of the brackets that closed the previous
;;      segment   (5/5) added *da-dispatch-position*   (9/15) added bracket flags for
;;      {} and []

(in-package :sparser)


;;;-------------------------------
;;; segment-level state variables
;;;-------------------------------

(defvar *bracket-opening-segment* nil
  "Set by Adjudicate-new-open-bracket to the strongest bracket that
   is accepted as introducing a boundary that starts a segment.")

(defvar *bracket-closing-segment* nil
  "Set and read by Bracket-ends-the-segment?")

(defvar *bracket-closing-previous-segment* nil
  "Records that bracket for use during Adjudicate-new-open-bracket
   as evidence that the prior segment might need to be reopened.")

(defvar *bracket-opening-previous-segment* nil
  "Records that bracket for use during Adjudicate-new-open-bracket
   as evidence that the prior segment might need to be reopened.")


(defvar *rightmost-active-position/segment* nil
  "Value is a position. Set by March-back-from-the-right/segment")


(defvar *left-segment-boundary* nil
  "Value is a position. Set by scan, read by pts and above.")

(defvar *right-segment-boundary* nil
  "Value is a position. Set by scan, read by pts and above.")


(defvar *where-the-last-segment-ended* nil
  "Used to hold the right boundary while it's nil at the forest
   level")

(defvar *where-the-last-segment-started* nil
  "Used to hold the left boundary while it's nil at the forest
   level")



;;;---------------------
;;; segment-level flags
;;;---------------------

(defparameter *use-segment-edges-as-segment-defaults* nil
  "Controls whether Trivially-span-current-segment will do so")

(defvar *segment-ended-because-of-boundary-from-form-label* nil
  "Set by pts when it is called with an optional argument.
   Checked by Segment-finished and Scan-next-segment.")



;;;--------------------
;;; forest-level flags
;;;--------------------

(defvar *forest-level* nil
  "Value is {t,nil}. Indicates that we are at the forest level for
   the purpose of gating otherwise general routines. Set by
   Move-to-forest-level and reset by Scan-next-segment.")

(defvar *forest-level/parsing* nil
  "Value is {t,nil}. Indicates that we are in the parsing phase
   of the actions at the forest-level.")


;;;------------------------------
;;; forest-level state variables
;;;------------------------------

(defvar *forest-right-boundary* nil
  "Value is a position.  The forest-level parsing process is
   not allowed to move past it.  Set by PPTT to the value passed in
   from the segment-level with the call to Move-to-forest-level.")

(defvar *rightmost-active-position/forest* nil
  "Value is a position. Initially set by PPTT to the value passed in
   from the segment-level with the call to Move-to-forest-level.
   Then updated by March-back-from-the-right/forest during the
   course of the forest-level parse.")


(defvar *da-dispatch-position* nil
  "Points to the position just before the next item that the
   Debris-analysis process will dispatch off of. Read by
   Walk-pending-treetops-for-debris-analysis and set as a result
   of the dispatch organized by look-for-and-execute-any-DA-pattern")


(defvar *rightmost-quiescent-position* nil
  "Value is a position. It is the left boundary of the forest-
   level parsing processes.")


(defvar *left-boundary/treetop-actions* nil
  "Value is an position. Managed by Do-treetop-triggers. 
   Records how far back the TT actions have to start once other
   forest-level activities (like parsing or DA) have finished.
   When the TT phase has finished this pointer will have the
   same value as *rightmost-quiessent-position*.")






;;--------------- not vetted for the new drivers -------------

;;;-------------------
;;; State information
;;;-------------------

(defvar *eos-was-reached-on-last-scan* nil
  "Set by Safd, read by SAS.")

(defvar *1st-position-delimited* nil
  "Set by Delimit-next-segment and read by SAS-loop1 ")


(defvar *position-pointer-changed* nil
  "Value is the edge that initiated the change.")


;;;----------------------------------
;;; traversal-driven state variables
;;;----------------------------------

(defvar *pending-conjunction* nil
  "Set by the traversal routine pending-conjunction-state-change
   and read by Sort-out-possible-conjunction")

(defvar *position-of-pending-open-paren* nil
  "Set by the traversal routine Mark-open-paren and read by the
   Span-parenthesis")

(defvar *pending-double-quote* (cons nil nil)
  "Set and read by the traversal routine Check-quotation.")

(defvar *pending-open-angle-bracket* nil
  "Set by the traversal routine Open-angle-bracket-traversed and
   read by Close-angle-bracket-traversed.")

(defvar *pending-open-curly-bracket* nil)  ;; ditto
(defvar *pending-open-square-bracket* nil) ;; ditto

(defun clear-traversal-state ()
  (setq *pending-conjunction* nil
        *position-of-pending-open-paren* nil
        *pending-open-angle-bracket* nil
        *pending-open-curly-bracket* nil
        *pending-open-square-bracket* nil)
  (rplaca *pending-double-quote* nil)
  (rplacd *pending-double-quote* nil))



(defvar *last-position-scanned* nil
  "Set by Scan-and-assess and used when backing out of fsa scans.")

(defvar *word-at-last-scanned-position* nil
  "Set by Scan-and-assess and used when backing out of fsa scans.")

(defvar  *edges-at-last-scanned-position* nil
  "Set by Scan-and-assess and used when backing out of fsa scans.")

(defvar  *reuse-last-scan* nil
  "Set by Scan-and-assess and used when backing out of fsa scans.")


(defvar *pending-open-determiner* nil
  "Used by the HA routines.")


(defun initialize-new-flags ()
  (setq *eos-was-reached-on-last-scan* nil
        *last-position-scanned* nil
        *word-at-last-scanned-position* nil
        *edges-at-last-scanned-position* nil
        *reuse-last-scan* nil
        *bracket-closing-segment* nil
        *bracket-opening-segment* nil
        *left-segment-boundary* nil
        *rightmost-active-position/segment* nil
        *where-the-last-segment-ended* (chart-position 0)
        *1st-position-delimited* nil

        *forest-level* nil
        *forest-level/parsing* nil
        *rightmost-active-position/forest*  nil
        *right-segment-boundary* (chart-position 0)
        *rightmost-quiescent-position* (chart-position 0)
        *left-boundary/treetop-actions* (chart-position 0)
        *da-dispatch-position* nil
        *forest-right-boundary* nil
        *position-pointer-changed* nil

        *position-of-pending-open-paren* nil
        *pending-conjunction* nil
        *pending-open-determiner* nil
        *segment-ended-because-of-boundary-from-form-label* nil
        ))




(defvar *edge-just-checked* nil)
(defvar *number-of-edges-checked* 0)
(defvar *number-of-edges-allocated* 0)

(defun initialize-all-edges-state-vars ()
  (setq *edge-just-checked* -1
        *number-of-edges-checked* 0
        *number-of-edges-allocated* 0
        ))

