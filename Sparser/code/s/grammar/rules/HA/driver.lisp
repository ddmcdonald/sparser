;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "driver"
;;;   Module:  "grammar;rules:HA:"
;;;  Version:  0.2 March 1996

;; initiated 6/13/93
;; 0.1 (3/15/94) revised calls to edge accessors to appreciate mulitple initial edges
;;     (4/25/95) included gmod gates for the situation when one but not another
;;       heuristic is operating.   Added traces 12/12
;; 0.2 (3/13/96) added a treatment of multiple heads/prefixes (heads tested) and
;;       slightly remodularized things.

(in-package :sparser)


(defun apply-HA-to-current-segment ()
  ;; Called from Segment-finished and many of its subroutines.
  ;; Returns nil if it can't improve on the analysis, or returns
  ;; the results of a new call to Segment-coverage (or its equivalent)
  ;; if it can.

  (let ((left-end *left-segment-boundary*)
        (right-end *right-segment-boundary*))
    (tr :applying-ha-to-segment left-end right-end)

    (unless (and left-end right-end)
      (break "Threading bug: the global pointers to the segment ~
              boundaries are not both defined"))

    (let ( head  prefix  multiple-heads  multiple-prefixes  result )
      ;; the 'multiple..' cases are defined in case they're useful in
      ;; some later version since the access routines return the
      ;; information whether we want it or not.  //n.b. its' not
      ;; clear how to inhibit the 'unused lex. var' message from the
      ;; compiler, since a declaration here just yields a corresponding
      ;; '..not ignored' msg since they're setq'd a moment later
      (multiple-value-setq (head multiple-heads)
        (edge-ending-at right-end))
      (multiple-value-setq (prefix multiple-prefixes)
        (edge-starting-at left-end))

      (setq result
            (if (or multiple-heads multiple-prefixes)
              (apply-ha-to-segment-with-multiple-heads-or-prefixes
               left-end right-end)

              (ha-segment-heuristics prefix head right-end)))

      (if result
        (segment-coverage)
        nil ))))



(defun ha-segment-heuristics (prefix head right-end)
  ;; Subroutine of Apply-HA-to-current-segment, listing the actual heuristics
  ;; Returns an edge if one can be justified
  (cond
   ((and head prefix)
    (tr :ha-both-head-and-prefix head prefix)
    (when *both-ends-of-segment-heuristic*
      (both-ends-completion-heuristic prefix head)))
   
   (prefix
    (tr :ha-prefix-only prefix)
    (when *pending-determiner-heuristic*
      (determiner-completion-heuristic prefix right-end)))
   
   (t 
    (tr :ha-neither-prefix-nor-head)
    nil)))




(defun apply-ha-to-segment-with-multiple-heads-or-prefixes (left-end right-end)
  ;; A subroutine of Apply-HA-to-current-segment that is called
  ;; when there are multiple edges over either the prefix or the
  ;; head of the segment. 
  (multiple-value-bind (prefix multiple-prefixes-flag)
                       (edge-starting-at left-end)
    (multiple-value-bind (head multiple-heads-flag)
                         (edge-ending-at right-end)

      (let ( edge  edges )

      ;; It has to be one of these cases or else this routine
      ;; wouldn't have been called
      (cond
       ((and multiple-prefixes-flag multiple-heads-flag)
        (let ((multiple-prefix-edges (all-preterminals-at left-end))
              (multiple-head-edges (all-preterminals-at (chart-position-before right-end))))
          (dolist (prefix multiple-prefix-edges)
            (dolist (head multiple-head-edges)
              (setq edge (ha-segment-heuristics prefix head right-end))
              (when edge
                (push edge edges))))))

       (multiple-prefixes-flag
        (let ((multiple-prefix-edges (all-preterminals-at left-end)))              
          (dolist (prefix multiple-prefix-edges)
            (setq edge (ha-segment-heuristics prefix head right-end))
            (when edge
              (push edge edges)))))

       (multiple-heads-flag
        (let ((multiple-head-edges (all-preterminals-at (chart-position-before right-end))))              
          (dolist (head multiple-head-edges)
            (setq edge (ha-segment-heuristics prefix head right-end))
            (when edge
              (push edge edges)))))

       (t (break "Threading bug: shouldn't have reached this case ~
                  in the Cond.~%")))))))
