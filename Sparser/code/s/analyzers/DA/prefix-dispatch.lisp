;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,2011  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "prefix dispatch"
;;;   Module:  "analyzers;DA:"
;;;  Version:  July 1993

;; initiated 7/8/93 v2.3. Smidge of capitalization and cleanup 8/16/11

(in-package :sparser)


(defun DA/prefix-dispatch/determiner (label prefix-edge right-end-pos)

  ;; Called from determiner-completion-heuristic as an alternative to
  ;; its processing if the debris analysis flag is up.
  ;;    We return an edge if we can make something of this segment,
  ;; otherwise nil, and the default at the level of pts will put
  ;; a segment-label on the edge.
  ;;
  ;;   We're at the end of segment-level analysis. We put an edge over
  ;; this segment like the HA routine would have, but we also do more
  ;; analysis of the segment (given its prefix) so that we can impose
  ;; a semantic analysis on the segment's head and classifiers.

  (let ((head (word-before right-end-pos))
        (middle? nil)) ;;/////

    ;;///
    
    (let ((edge (make-chart-edge      ;;//unchanged from HA routine
                 :starting-position (pos-edge-starts-at prefix-edge)
                 :ending-position right-end-pos
                 :left-daughter prefix-edge
                 :category  category::np-segment
                 :form  category::NP
                 :referent  nil
                 :rule-name :begins-with-determiner )))
              edge )))
