;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990-1991  Content Technologies Inc.  -- all rights reserved
;;; copyright (c) 1992-1993,2018  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "nonterminals"
;;;    Module:   "analyzers;psp:assess:"
;;;   Version:   March 2018

;; initiated 4/91
;; 1.0 (9/4/92 v2.3)
;; 1.1 (12/15) Flushed the introduction of brackets
;; 1.2 (5/16/93) Reintroduced "all" version, which had gotten lost

(in-package :sparser)


(defun assess-edge-label/all (label edge)
  "Called after the call to complete with the introduction of each
   edge. Checks whether the label on the newly introduced edge 
   has any unary rules and if so runs them."
  
  (let ((rule-set (rule-set-for label)))

    (when rule-set
      (let ((starting-vector (edge-starts-at edge))
            (ending-vector   (edge-ends-at edge)))

        (complete-any-single-term-edges
         rule-set starting-vector ending-vector edge)))))



(defun assess-edge-label/top (label edge)
  "Called after the call to complete with the introduction of each
   edge. Checks whether the label on the newly introduced edge 
   has any unary rules and if so runs them. Notices the possibility
   that the label on the new edge might be the same as the one
   we just added and blocks those cases to avoid looping."
  (let ((rule-set (when label (rule-set-for label))))
    (when rule-set
      (let ((unary-rules (find-unary-rules label)))
        (when unary-rules
          (loop for rule in unary-rules
             unless (eq (cfr-category rule) label)
             do (make-completed-unary-edge
                 (edge-starts-at edge)
                 (edge-ends-at edge)
                 rule
                 edge)))))))
;; (establish-version-of-assess-edge-label :treetops)

