;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 199202000 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "one-one"
;;;   Module:  "analyzers;psp:check:"
;;;  Version:  3.0 April 2000

;; 0.0 (9/4/92 v2.3) broken out from drivers;chart:psp
;; 0.1 (9/13) revamped traces to new trace regime
;; 1.0 (5/15/93) took out the constraint about not changing the category
;;      of a right-boundary edge within a segment.  Make it the driver's
;;      problem.  Since the edge-construction trace is with the edge code,
;;      that pretty much gutted the routine.
;; 2.0 (3/15/94) Added dotted-rule hack
;; 3.0 (4/29/00) Incorporating composite referents

(in-package :sparser)


(defun check-one-one (left-edge right-edge)
  (let ((rule (multiply-edges left-edge right-edge)))
    (if rule
      (if (consp rule)
        (dotted-rule-hack rule left-edge right-edge)
        (let ((edge (make-completed-binary-edge
                     left-edge right-edge rule)))
          edge ))
      (else
        nil ))))


(defun one-one/just-check-labels (left-label right-label)
  (let ((rule 
         (multiply-labels left-label right-label)))
    (when (consp rule)
      (break "Unexpected condition: dotted-rule lookahead hit a ~
              case where there are multiple-completions:~
              ~%   left-label: ~A~
              ~%  right-label: ~A" left-label right-label))
    rule ))


(defun dotted-rule-hack (rules left-edge right-edge)
  ;; Called from check-one-one.
  ;; The edge pair can be completed by more than one rule.
  ;; This is legitimate only if there are just two candidates
  ;; and one of them is a dotted rule.
  (unless (null (cddr rules))
    (break "Policy violation. There are more than two edges that can ~
            complete the edges:~%  ~A~%  ~A" left-edge right-edge))
  (let ( dotted-rule  regular-rule )
    (cond ((dotted-rule (first rules))
           (setq dotted-rule (first rules)
                 regular-rule (second rules)))
          ((dotted-rule (second rules))
           (setq dotted-rule (second rules)
                 regular-rule (first rules)))
          (t (break "Policy violation. One of the two rules that can ~
                     complete these edges~%has to be dotted.~
                     ~%  ~A~%  ~A" left-edge right-edge)))

    (or (lookahead-to-complete-dotted-rule dotted-rule
                                           left-edge right-edge)
        (make-completed-binary-edge left-edge right-edge
                                    regular-rule))))
        

