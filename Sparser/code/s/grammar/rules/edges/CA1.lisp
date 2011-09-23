;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:sparser -*-
;;; copyright (c) 1993,1994,1995 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "CA"
;;;   Module:  "analyzers;psp:edges:"
;;;  Version:  1.0 August 1995

;; 1.0 (8/30/95) moved the used-in after complete

(in-package :sparser)


(defun make-CA-binary-edge (left-edge right-edge
                            &key matrix-edge direction
                                 category
                                 rule rule-name
                                 form
                                 referent referent-function )

  ;; called from CA scanning routines.
  ;; Makes a vanila binary edge, complete with assessment, except
  ;; that it does not knit the new edge into the position where the
  ;; long-distance edge is.  The edge itself takes the end of the
  ;; other edge as its end points.

  (let ((edge (next-edge-from-resource))
        (category (if rule (cfr-category rule) category)))
    (setf (edge-category  edge) category)

    (ecase direction
      (:left
       (setf (edge-starts-at edge) (edge-starts-at right-edge))
       (setf (edge-ends-at   edge) (edge-ends-at right-edge)))
      (:right
       (setf (edge-starts-at edge) (edge-starts-at left-edge))
       (setf (edge-ends-at   edge) (edge-ends-at left-edge))))

    (setf (edge-rule edge) (or rule rule-name))
    (setf (edge-left-daughter  edge) left-edge)
    (setf (edge-right-daughter edge) right-edge)

    (setf (edge-form edge) (if rule (cfr-form rule) form))

    (setf (edge-referent edge)
          (cond (rule
                 (referent-from-rule left-edge right-edge edge rule))
                (referent referent)
                (referent-function
                 (funcall referent-function
                          (edge-referent left-edge)
                          (edge-referent right-edge)))))
                                 
    (knit-edge-into-positions edge
                              (edge-starts-at matrix-edge)
                              (edge-ends-at   matrix-edge))
    (complete edge)

    (when *trace-edge-creation*
            (format t "~&creating ~A from edge ~A and edge ~A~
                       ~%  (CA) rule: ~A~%" edge
                    (edge-position-in-resource-array left-edge)
                    (edge-position-in-resource-array right-edge)
                    rule))

    (ecase direction
      (:left  (set-used-by right-edge edge))
      (:right (set-used-by left-edge  edge)))

    (assess-edge-label category edge)

    edge ))

