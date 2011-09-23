;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "cs"
;;;   Module:  "analyzers;psp:edges:"
;;;  Version:  3.0 August 1995

;; 2.0 (9/7/92 v2.3) flushed out of date field references
;; 2.1 (10/12) Added form rules
;; 2.2 (5/14/93) changed to using Set-used-by as a field-setter
;; 2.3 (6/1) Added a hook for a variation on the usual form rules
;;     (6/16) populated it
;; 3.0 (8/30/95) moved the used-in after complete

(in-package :sparser)


;;;---------------------------
;;; non-nil completion fields
;;;---------------------------

(defun do-explicit-rule-completion (left-edge right-edge rule)

  ;; the completion field of a cfr should really be renamed, since
  ;; its original conception as a place to put special actions to
  ;; do when the rule completes has been subverted to a signaling
  ;; mechanism for special processing

  (let ((completion-field (cfr-completion rule)))
    (etypecase completion-field
      (list
       (if (keywordp (car completion-field))
         (ecase (car completion-field)
           ((:left-daughter :right-daughter)
            (context-sensitive-rule-completion
             left-edge right-edge rule completion-field))
           ((:left-edge :right-edge)
            (form-rule-completion/explicit-lhs
             (car completion-field)
             (cdr completion-field)
             left-edge right-edge rule)))

         (context-sensitive-rule-completion
          left-edge right-edge rule completion-field)))

      (keyword
       (form-rule-completion completion-field
                             left-edge right-edge rule))
      )))


;;;-------------------------
;;; context-sensitive rules
;;;-------------------------

(defun context-sensitive-rule-completion (left-edge
                                          right-edge
                                          rule
                                          specification)
  (let ((relevant-edge
         (ecase (car specification)
           (:right-daughter  right-edge)
           (:left-daughter   left-edge)))
        (category (cdr specification)))
    
    (let ((starting-vector (edge-starts-at relevant-edge))
          (ending-vector   (edge-ends-at   relevant-edge))
          (edge (next-edge-from-resource)))

      (knit-edge-into-positions
       edge starting-vector ending-vector)
      (setf (edge-starts-at edge) starting-vector)
      (setf (edge-ends-at edge)   ending-vector)

      (setf (edge-category edge) category)
      (setf (edge-rule edge) rule)
      (setf (edge-form edge) (cfr-form rule))
      (setf (edge-referent edge)
            (referent-from-rule left-edge right-edge edge rule))

      ;; this is the convention for unary edges
      (setf (edge-left-daughter edge)  relevant-edge)
      (setf (edge-right-daughter edge) :context-sensitive)

      (complete edge)

      (when *trace-edge-creation*
        (format t "~&~%creating ~A from ~A~
                   ~%    rule: ~A"
                edge
                (edge-position-in-resource-array relevant-edge)
                rule))

      (set-used-by relevant-edge edge)

      (assess-edge-label category edge)

      edge )))

