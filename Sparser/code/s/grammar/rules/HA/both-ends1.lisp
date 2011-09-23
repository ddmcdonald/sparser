;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "both ends"
;;;   Module:  "grammar;rules:HA:"
;;;  Version:  1.2 May 1996

;; initiated 6/13/93 v2.3 completely new model based on independent notion
;; of "segments"
;; 1.1 (4/13/95) added check for completing inner edge
;; 1.2 (5/30) changed call used to make the edge so form rules would be
;;      done right.
;;     (12/4) fixed a glitch in Inner-edges-go-with-head-heuristic
;;     (5/27/96) fixed another one.

(in-package :sparser)


(defun both-ends-completion-heuristic (prefix-edge
                                       head-edge)
  (let ((rule
         (multiply-edges prefix-edge head-edge)))

    (let ((inner-spanning-edge
           (inner-edges-go-with-head-heuristic
            prefix-edge head-edge)))
      
      
      (when rule
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
  (multiple-value-bind (edge-after-prefix multiple-after-prefixes)
                       (edge-starting-at
                        (pos-edge-ends-at prefix-edge))
    (declare (ignore multiple-after-prefixes))

    (when edge-after-prefix
      (unless (or (eq edge-after-prefix head-edge)
                  ;; Both checks needed for the case when the head has
                  ;; multiple interpretations and so we won't catch it
                  ;; with just the first check.
                  (edge-subsumes-edge? edge-after-prefix head-edge))

        (let ((rule (multiply-edges edge-after-prefix head-edge)))
          (when rule
            (let ((edge
                   (make-chart-edge
                    :left-edge edge-after-prefix
                    :right-edge head-edge
                    :category (cfr-category rule)
                    :form (cfr-form rule)
                    :rule rule )))
              
              edge )))))))

