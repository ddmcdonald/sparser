;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994,1995 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "binary/explicit"
;;;    Module:   "objects;edges:"
;;;   Version:   3.0 August 1995

;; 2.0 (11/10/92 v2.3) Simplified the name. ///contemplating flushing it.
;; 3.0 (8/30/95) moved the used-in after complete

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
               (set-used-by left-edge  edge)
               (set-used-by right-edge edge)
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
      (set-used-by left-edge  edge)
      (set-used-by right-edge edge)
      (assess-edge-label category edge))

     (t
      (knit-edge-into-positions edge
                                (edge-starts-at left-edge)
                                (edge-ends-at right-edge))
      (complete edge)
      (set-used-by left-edge  edge)
      (set-used-by right-edge edge)
      (assess-edge-label category edge)))
      
    edge ))

