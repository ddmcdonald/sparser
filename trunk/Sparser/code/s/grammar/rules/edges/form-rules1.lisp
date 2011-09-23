;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "form rules"
;;;   Module:  "analyzers;psp:edges:"
;;;  Version:  1.0 August 1995

;; initiated 10/12/92 v2.3
;; 0.1 (6/4/93) allowed a default if the rule doesn't specify the form
;;      of the new edge
;; 0.2 (6/16) added variation for explicitly specified lhs.
;;     (3/30/94) fixed missing arg in break stmt.
;; 0.3 (8/5) for the '..explicit-lhs' case made a subr for the passive calculation
;; 1.0 (8/30/95) moved the used-in after complete

(in-package :sparser)


(defun form-rule-completion (edge-to-promulgate   ;; a keyword
                             left-edge right-edge
                             rule)
  (let* ( head-edge
         (promulgated-label
          (ecase edge-to-promulgate
            (:left-edge
             (setq head-edge left-edge)
             (edge-category left-edge))
            (:right-edge
             (setq head-edge right-edge)
             (edge-category right-edge))))
         (edge (next-edge-from-resource)))

    (knit-edge-into-positions edge
                              (edge-starts-at left-edge)
                              (edge-ends-at right-edge))
    (setf (edge-starts-at edge) (edge-starts-at left-edge))
    (setf (edge-ends-at edge)   (edge-ends-at right-edge))

    (setf (edge-category edge) promulgated-label)
    (setf (edge-form     edge) (or (cfr-form rule)
                                   (edge-form head-edge)))
    (setf (edge-referent edge)
          (referent-from-rule left-edge right-edge
                              edge rule))
    (setf (edge-rule edge) rule)

    (complete edge)

    (when *trace-edge-creation*
      (format t "~&~%creating ~A from ~A~
                 ~%    rule: ~A"
              edge
              (edge-position-in-resource-array edge)
              rule))

    (set-used-by left-edge edge)
    (set-used-by right-edge edge)
    (setf (edge-left-daughter edge) left-edge)
    (setf (edge-right-daughter edge) right-edge)

    (assess-edge-label promulgated-label edge)

    edge ))




(defun form-rule-completion/explicit-lhs (edge-to-promulgate
                                          lhs-category
                                          left-edge
                                          right-edge
                                          rule )
  (let* (  head-edge
         (promulgated-label
          (ecase edge-to-promulgate
            (:left-edge
             (setq head-edge left-edge)
             (edge-category left-edge))
            (:right-edge
             (setq head-edge right-edge)
             (edge-category right-edge))))
         (edge (next-edge-from-resource))
          coerced-form )

    (knit-edge-into-positions edge
                              (edge-starts-at left-edge)
                              (edge-ends-at right-edge))
    (setf (edge-starts-at edge) (edge-starts-at left-edge))
    (setf (edge-ends-at edge)   (edge-ends-at right-edge))

    (etypecase lhs-category
      (category )
      (referential-category )
      (symbol
       (unless (eq lhs-category :passive)
         (break "Unanticipated keyword used as the explicit ~
                 category in ~%a form rule: ~A" lhs-category))
       (let ((passive-category
              (lookup-passive-counterpart promulgated-label)))
         (if passive-category
           (setq lhs-category passive-category)
           (else
             (setq lhs-category promulgated-label)
             (setq coerced-form (category-named 'verb+passive)))))))


    (setf (edge-category edge) lhs-category)

    (setf (edge-form edge) (or coerced-form
                               (cfr-form rule)
                               (edge-form head-edge)))

    (setf (edge-referent edge)
          (referent-from-rule left-edge right-edge
                              edge rule))

    (setf (edge-rule edge) rule)

    (complete edge)

    (when *trace-edge-creation*
      (format t "~&~%creating ~A from ~A~
                 ~%    rule: ~A"
              edge
              (edge-position-in-resource-array edge)
              rule))

    (set-used-by left-edge edge)
    (set-used-by right-edge edge)
    (setf (edge-left-daughter edge) left-edge)
    (setf (edge-right-daughter edge) right-edge)

    (assess-edge-label promulgated-label edge)

    edge ))

                              

    
