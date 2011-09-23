;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "PPTT"                ;; "parse pending tree tops"
;;;    Module:   "drivers:chart:psp:"
;;;   Version:   7.1 June 1993

;; 7.0 (5/11/92 v2.3) bumped the version to accomodate the changes to
;;      the scan routine
;; 7.1 (6/15) reviewed/tweeked the threading. 6/16 ditto
;;     (5/6/94) added network-flow trace
;; 7.2 (5/7) gave find-rightmost-edge an optional arg. for its end pos

(in-package :sparser)

;;;-------------------------------
;;; transition from segment-level
;;;-------------------------------

(defun move-to-forest-level (rightmost-position reason)
  ;; called from segment-finished
  (tr :moved-to-forest-level rightmost-position)
  (tr :moving-to-forest-level rightmost-position reason)
  (let ((rightmost-edge/ev
         (find-rightmost-edge rightmost-position)))

    (if rightmost-edge/ev
      (then
        ;; it might start at the quiessent position, in which
        ;; case there's nothing to parse and we should move on
        ;; and scan the next segment
        (if (eq (etypecase rightmost-edge/ev
                  (edge
                   (pos-edge-starts-at rightmost-edge/ev))
                  (edge-vector
                   (chart-position-before
                    (ev-position rightmost-edge/ev))))
                *rightmost-quiessent-position*)
          (then
            (tr :PPTT/edge-at-quiessence rightmost-edge/ev)
            (setq *rightmost-quiessent-position* rightmost-position)
            (scan-next-segment *where-the-last-segment-ended*))
          (else
            (PPTT rightmost-edge/ev))))

      ;; otherwise, if there are no treetops between here and
      ;; where we left off last time, then we should just reset
      ;; the quiessent position to here and proceed to the
      ;; next scan segment
      (else
        (tr :PPTT/no-edges)
        (setq *rightmost-quiessent-position* rightmost-position)
        (scan-next-segment *where-the-last-segment-ended*)))))



;;;----------------------------------------
;;; after forest-level parsing is finished
;;;----------------------------------------

(defun after-quiescence (right-boundary)
  ;; analogous to segment-parsed in that we've done all the
  ;; parsing at the forest level that we can do (there were
  ;; some treetops to try to parse) and we should now do
  ;; the last level of processing -- treetop actions.

  (tr :after-quiescence right-boundary)
  (tr :PPTT/quiessence-reached right-boundary)

  (setq *rightmost-quiessent-position* right-boundary)
  (do-treetop-triggers))



;;;------
;;; PPTT
;;;------

(defun PPTT (right-edge/ev)
  (tr :PPTT)
  (tr :PPTT/starting right-edge/ev)
  (let ((right-boundary (etypecase right-edge/ev
                          (edge (pos-edge-ends-at right-edge/ev))
                          (edge-vector (ev-position right-edge/ev)))))

    (setq *forest-right-boundary*
          (setq *rightmost-active-position/forest*
                right-boundary))

    (setup-returns-from-PPTT-&-run right-edge/ev right-boundary)))


(defun move-on ()
  (throw 'forest-quiescent :quiescent))

(defun go-back-to-scanning ()
  (tr :forest-needs-scan)
  (throw 'needs-scan :needs-scan))


(defun setup-returns-from-PPTT-&-run (right-edge right-boundary)
  (let ( quiescent needs-scan )

    (setq needs-scan
          (catch 'needs-scan
            (setq quiescent
                  (catch 'forest-quiescent
                    (etypecase right-edge
                      (edge (try-parsing-tt right-edge))
                      (edge-vector (try-parsing-tt/multiple-on-right
                                    right-edge)))))))
    (cond (quiescent
           (after-quiescence right-boundary))
          (needs-scan
           (scan-next-segment *where-the-last-segment-ended*))
          (t (break/debug "How did we get here without a flag set?")
             :foo))))



;;;-----------------------------------------------
;;; moving the left-boundary of the forest parser
;;; when later processes set down edges behind it
;;;-----------------------------------------------

(defun check-impact-on-quiescence-pointer (edge)
  ;; called from Complete-edge/hugin
  (let* ((start-pos (pos-edge-starts-at edge))
         (start-index (pos-token-index start-pos))
         (quiescent-index (pos-token-index
                           *rightmost-quiessent-position*))
         (tt-index (pos-token-index
                    *position-after-rightmost-done-treetop*)))

    (when (< start-index quiescent-index)
      (when *trace-psp-threading*
        (format t "~&Moving the quiescence boundary leftwards ~
                   to p~A~%  because of ~A~%"
                start-index edge))
      (setq *rightmost-quiessent-position*
            start-pos))

    (when (< start-index tt-index)
      (when *trace-psp-threading*
        (format t "~&Moving the treetop boundary leftwards ~
                   to p~A~%  because of ~A~%"
                start-index edge))
      (setq *position-after-rightmost-done-treetop*
            start-pos))

    (setq *position-pointer-changed* edge)))


;;;-----------------------------
;;; find the edge we start with
;;;-----------------------------

(defun find-rightmost-edge (starting-position
                            &optional (end-position
                                       *rightmost-quiessent-position*))

  ;; return the treetop ending at the starting position or the first
  ;; one to the left of that position that is still to the right of
  ;; the designated end position to the left.  The default use
  ;; of this routine is in conjunction with forest-level parsing
  ;; where the end position is where forest-level parsing stopped 
  ;; last time.
  ;;    Returns an edge if the rightmost edge is unambiguous (so to 
  ;; speak) or returns an edge-vector if what's rightmost is a
  ;; word with multiple interpretations. 

  (let ((position starting-position)
        vector topnode-field)
    (loop
      (when (eq position end-position)
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
      
