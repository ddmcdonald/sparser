;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991 Content Technologies Inc.
;;; copyright (c) 1992 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "binary/explicit"
;;;    Module:   "objects;edges:"
;;;   Version:   2.0 November 1992

;; initiated 2/20/91, v1.8.1
;; 1.1 (3/26)  Added an alternative keyword, :referent, for when the
;;      call comes from a place that has the referent object in its hand.
;; 1.2 (5/1  v1.8.4)  Fixed a bug.
;; 2.0 (11/10/92 v2.3) Simplified the name. ///contemplating flushing it.

(in-package :sparser)


(defun make-binary-edge/explicit-rule-components (left-edge
                                                  right-edge
                                                  &key category
                                                       rule-name
                                                       form
                                                       referent
                                                       referent-function )
  (let ((edge (next-edge-from-resource)))

    (setf (edge-category  edge) category)
    (setf (edge-starts-at edge) (edge-starts-at left-edge))
    (setf (edge-ends-at   edge) (edge-ends-at right-edge))

    (setf (edge-left-daughter  edge) left-edge)
    (setf (edge-right-daughter edge) right-edge)
    (set-used-by left-edge  edge)
    (set-used-by right-edge edge)

    (setf (edge-rule edge) rule-name)
    (setf (edge-form edge) form)

    (cond
     (referent-function
      (let ((result
             (catch :abort-edge-because-of-referent
               ;; The reference calculation is entitled to abort an
               ;; edge.  If it does, the edge won't be knit in, completed
               ;; or assessed.
               (setf (edge-referent edge)
                     (funcall referent-function left-edge right-edge))
               
               (knit-edge-into-positions edge
                                         (edge-starts-at left-edge)
                                         (edge-ends-at right-edge))
               (complete edge)
               (assess-edge-label category edge))))
        
        (when *trace-edge-creation*
          (if (eq result :aborted)
            (format t "~&would have created ~A from edge ~A and edge ~A~
                       ~%   but it was aborted by the reference calculation"
                    edge
                    (edge-position-in-resource-array left-edge)
                    (edge-position-in-resource-array right-edge))
            (format t "~&creating ~A from edge ~A and edge ~A~
                       ~%   rule: ~A~%"
                    edge
                    (edge-position-in-resource-array left-edge)
                    (edge-position-in-resource-array right-edge)
                    rule-name)))))

     (referent
      (setf (edge-referent edge) referent)
      (knit-edge-into-positions edge
                                (edge-starts-at left-edge)
                                (edge-ends-at right-edge))
      (complete edge)
      (assess-edge-label category edge))
     (t
      (knit-edge-into-positions edge
                                (edge-starts-at left-edge)
                                (edge-ends-at right-edge))
      (complete edge)
      (assess-edge-label category edge)))
      
    edge ))

