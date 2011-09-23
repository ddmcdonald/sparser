;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1995,2011  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "determiner"
;;;   Module:  "grammar;rules:HA:"
;;;  Version:  0.4 November 1995

;; initiated 6/13/93 v2.3, completely new model based on independent notion
;; of "segments". Stub fleshed out 6/16
;; 0.1 (7/8) added flag and dispatch to DA routines
;; 0.2 (5/2/94) changed details of call to make the edge that it specify no
;;      daughters and leave that calculation to the automatic routines.
;; 0.3 (5/16/95) revised the rule-name to be the name of this fn.
;; 0.4 (11/13) changed the label on the default segment to np-segment
;;     Smidge of capitalization and cleanup 8/16/11

(in-package :sparser)



(defun determiner-completion-heuristic (prefix-edge
                                        right-end-pos)

  ;; Called from Apply-HA-to-current-segment coming from
  ;; sf-action/discontinuous-edges after all the within-segment
  ;; parsing has finished, on the contingency that there is
  ;; an edge at the beginning of the segment though not at
  ;; the end.
  ;;   If we can do something, we return the edge we construct.
  ;; Otherwise we return Nil.

  (let ((label (edge-category prefix-edge)))
    (when (word-p label)
      (when (determiner? label)
        (if *do-debris-analysis*
          (DA/prefix-dispatch/determiner label prefix-edge right-end-pos)
          (else
            ;; We know that this segment is definitely a NP, but
            ;; unless heuristics about common nouns and heads are
            ;; taken very seriously, that is all we know.
            (let ((edge (make-chart-edge
                         :starting-position
                             (pos-edge-starts-at prefix-edge)
                         :ending-position right-end-pos
                         :category  category::np-segment
                         :form  category::NP
                         :referent  nil
                         :rule-name :determiner-completion-heuristic )))
              edge )))))))

