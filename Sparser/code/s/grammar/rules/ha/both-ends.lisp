;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1996,2013.2020  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "both ends"
;;;   Module:  "grammar;rules:HA:"
;;;  Version:  1.2 September 2013

;; initiated 6/13/93 v2.3 completely new model based on independent notion
;; of "segments"
;; 1.1 (4/13/95) added check for completing inner edge
;; 1.2 (5/30) changed call used to make the edge so form rules would be
;;      done right.
;;     (12/4) fixed a glitch in Inner-edges-go-with-head-heuristic
;;     (5/27/96) fixed another one.
;;     (9/16/13) Folded in call to category-to-apply rather than blindly
;;      take what's in the rule's category field in inner-edges. Can trip
;;      over a form rule. 

(in-package :sparser)


(defun both-ends-completion-heuristic (prefix-edge
                                       head-edge)
  "Called from ha-segment-heuristics when both the head of the segment
   and its prefix are spanned by edges but the regular parsing
   operation has only produced contiguous edges. The goal is to 
   look for edges in between the prefix and the head and see
   whether they can be parsed /// a better goal is to get
   these longer chunks parsed by regular rules."

  (let ((rule (multiply-edges prefix-edge head-edge)))
    (when rule
      (let ((inner-spanning-edge
             (inner-edges-go-with-head-heuristic
              prefix-edge head-edge)))
        (let ((edge
               (make-completed-binary-edge
                ;; have to use this high-level rule executor
                ;; so that it will include the checks and
                ;; dispatches needed for the case of form rules
                prefix-edge
                (or inner-spanning-edge
                    head-edge)
                rule)))
          edge )))))



(defun inner-edges-go-with-head-heuristic (prefix-edge head-edge)
  "Look for incremental extensions from head or prefix"
  ;; Nice example: (p "events may in fact not be conserved.")
  ;; with the chunk [may in fact not be conserved]
  (multiple-value-bind (edge-after-prefix)
      (edge-starting-at (pos-edge-ends-at prefix-edge))
    
    (when edge-after-prefix
      ;; In the example there are two edges between prefix
      ;; and edge. The code assumes just one and drops
      ;; the "not" on the floor. Have to be more clever
      ;; => (adjacent-edges? edge-after-prefix head-edge)
 
      (unless (or (eq edge-after-prefix head-edge)
                  ;; Both checks needed for the case when the head has
                  ;; multiple interpretations and so we won't catch it
                  ;; with just the first check.
                  (edge-subsumes-edge? edge-after-prefix head-edge))
        
        (let ((rule (multiply-edges edge-after-prefix head-edge)))
          (when rule
            (let ((edge
                   (make-completed-binary-edge
                    edge-after-prefix head-edge rule)))
              edge )))))))

