;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "polyw"
;;;   Module:  "analyzers;psp:edges:"
;;;  Version:   1.0 September 1992

;; 1.0 (9/7/92 v2.3) flushed out of date field references

(in-package :sparser)


(defun make-edge-for-polyword (polyword
                               starting-vector
                               ending-vector)

  ;; Called from the routine that searches for polywords in the chart
  ;; or the one that assesses them when they're found as terminals.
  ;; It creates the edge, knits it in, and then gets it assessed.
  ;;   /// Polywords should be like words -- directly associated with
  ;; the rule that defined them.  But to set that up would require
  ;; rethreading a lot of code left over from when polywords were
  ;; directly (and only) taken as immediate evidence to initiate
  ;; actions, which makes it very hard to pass down the rule to the
  ;; process that builds and links in the polyword.

  (let ((edge (next-edge-from-resource)))
    (knit-edge-into-positions edge
                              starting-vector
                              ending-vector)
    (setf (edge-category  edge) polyword)
    (setf (edge-starts-at edge) starting-vector)
    (setf (edge-ends-at   edge) ending-vector)
    
    (setf (edge-rule edge) polyword)
    (setf (edge-form edge) nil)
    
    (setf (edge-referent edge) nil)

    (complete edge)
    
    (when *trace-edge-creation*
      (format t "~&~%creating ~A from ~A" edge polyword))
    
    (assess-edge-label polyword edge)
    
    edge ))

