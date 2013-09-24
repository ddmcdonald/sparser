;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "tuck-right"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  September 2013

;; Initiated 9/21/13. 9/23/13 Probably have it debugged

(in-package :sparser)

#| The march back from the right is greedy, and can cover over
edges that should have formed in the leftward portion of the segment.

In a text like "Roshan's driver Reza Qashqaei" we should have a
title over "Roshan's driver" which then combines with the person
at the right end of the segment. 

But the greedy march sees the unary title edge over "driver" and
composes it with the person, stranding the posessive "Roshan's" before
it sees the title head. 

In principle, this check could be sited inside check-for-right-extensions,
but an examination of the trace didn't convince me that we go through
that locus reliably, hence the site in segment-finished before any
post-segment processing happens.
|#

(defun march-peeking-rightward (coverage)
  ;; Called from segment-finished when we know that the coverage
  ;; leaves some possibility for further composition, i.e. we've
  ;; rulled out :null-span and :one-edge-over-entire-segment before
  ;; calling this. 
  ;; Presently handles just one case that's surprizingly frequent
  (case coverage
    (:discontinuous-edges) ;; unlikely we can do anything
    (:some-adjacent-edges) 
     ;(words-in-segment)
     ;(treetops-in-current-segment)
     ;(break "some-adjacent-edges"))
    (:all-contiguous-edges
     (let ((right-edge (edge-over-segment-suffix)))
       (when right-edge
         (let ((adjacent-edge (edge-just-to-left-of right-edge)))
           (when adjacent-edge
             (peek-rightward adjacent-edge right-edge))))))))

(defun peek-rightward (left-edge right-edge)
  "Consider all the edges under but exclusive of the 
   right-edge"
  (push-debug `(,left-edge ,right-edge))
  (let* ((ev (edge-starts-at right-edge))
         (edges (all-edges-on ev))
         (top (car (last edges)))
         rule )
    (dolist (edge edges)
      (when (eq edge top)
        ;; If these could have combined then they would
        ;; have already without this.
        (return))
      (setq rule (multiply-edges left-edge edge))
      (when rule
        (push-debug `(,edge ,rule))
        (let ((larger-edge
               (make-completed-binary-edge 
                left-edge edge rule)))
          (cleanup-vectors-if-needed top)
          (tuck-new-edge-under-already-knit
           edge ;; now subsumed by larger edge
           larger-edge ;; new-edge
           top ;; original dominating-edge over edge
           :left) ;; lifting under the left side
          (push-debug `(,top ,larger-edge)))
        (return-from peek-rightward nil)))))



