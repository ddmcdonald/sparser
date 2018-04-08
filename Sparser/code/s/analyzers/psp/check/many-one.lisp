;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2018 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "many-one"
;;;   Module:  "analyzers;psp:check:"
;;;  Version:  April 2018

;; 0.0 (9/4/92 v2.3) broken out from drivers;chart:psp
;; 1.0 (5/15/93) took out the constraint about not changing the category
;;  of a right-boundary edge within a segment.  Make it the driver's
;;  problem.  Since the edge-construction trace is with the edge code,
;;  that pretty much gutted the routine.
;;  (4/1/05) Handled the form-rule case of the multiple-completions stub.
;;  (7/20/09) Commented out break since it seems to work fine otherwise.

(in-package :sparser)

;; (trace-edges)

(defun check-many-one (left-ending-vector right-edge)
  "One edge one the right, multiple edges on the left.
   When we are using syntactic rules there's a real likelyhood that
   more than one rule will succeed. If that happens we run a
   check to prefer semantic rules.
     This runs for side-effects: making an edge using
   the preferred rule if there was more than one.
"
  (let ((count (ev-number-of-edges left-ending-vector))
        (vector (ev-edge-vector left-ending-vector))
        left-edge  rule  single-edge  already-have-a-rule
        triples )

    ;; Walk through the edges on the left, from bottom to top.
    ;; In normal processing theses are just the result of words
    ;; with more than one interpretation (= edge)
    (dotimes (index count)
      (setq left-edge (aref vector index))
      (setq rule (multiply-edges left-edge right-edge))
      (when rule
        (push (make-edge-triple left-edge right-edge rule)
              triples)))
    (when triples
      (execute-triple (filter-by-rule-strength triples)))))

#|
        (if already-have-a-rule
          (then
            (if (form-rule? rule)
              (tr :ignoring-multple-form-rule rule already-have-a-rule)
              ;; "Ignoring form rule ~a~
              ;; ~%   in favor of ~a"
              (else
                (tr :multiple-completions already-have-a-rule rule)
                ;; "Already completed rule ~A~
                ;; ~%   and also completing ~A"
                
                (setq single-edge
                      (make-completed-binary-edge
                       left-edge right-edge rule)))))

          (let ((edge )))
            (setq already-have-a-rule rule)
            (setq single-edge edge)))))

    single-edge ))
|#
