;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;; copyright (c) 1992,1993  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "nonterminals"
;;;    Module:   "analyzers;psp:assess:"
;;;   Version:   1.2 May 1993 

;; initiated 4/91
;; 1.0 (9/4/92 v2.3)
;; 1.1 (12/15) Flushed the introduction of brackets
;; 1.2 (5/16/93) Reintroduced "all" version, which had gotten lost

(in-package :sparser)


(defun assess-edge-label/all (label edge)
  ;; generic version for all-edges protocol
  (let ((rule-set (rule-set-for label)))

    (when rule-set
      (let ((starting-vector (edge-starts-at edge))
            (ending-vector   (edge-ends-at edge)))

        (complete-any-single-term-edges
         rule-set starting-vector ending-vector edge)))))



(defun assess-edge-label/top (label edge)
  ;; identical for now
  (let ((rule-set (rule-set-for label)))
    (when rule-set

      (if (word-p label)
        ;; avoid looping on word edges
        (if (eq (edge-left-daughter edge) label)
          nil  ;; don't do anything
          (complete-any-single-term-edges
           rule-set
           (edge-starts-at edge)
           (edge-ends-at edge)
           edge ))

        (else
          (complete-any-single-term-edges
           rule-set
           (edge-starts-at edge)
           (edge-ends-at edge)
           edge ))))))
