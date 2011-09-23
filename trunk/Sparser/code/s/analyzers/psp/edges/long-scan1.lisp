;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "long scan"
;;;    Module:   "analyzers;psp:edges:"
;;;   Version:   1.2 March 1994

;; 1.0 (9/7/92 v2.3) flushed out of date field references
;; 1.1 (2/24/94) added daughter and used-in encoding
;; 1.2 (3/30) changed daughter-collecting call to 'all-treetops'

(in-package :sparser)


(defun make-edge-over-long-span (starting-position
                                 ending-position
                                 category
                                 &key  rule
                                       form
                                       referent )

  ;; Called by routines in the header and anywhere else that a segment
  ;; of text can be bounded and characterized without it having any
  ;; internal structure or (unless specified) any denotation.

  (let ((edge (next-edge-from-resource))
        (starting-vector (pos-starts-here starting-position))
        (ending-vector   (pos-ends-here   ending-position)))
 
    (knit-edge-into-positions edge starting-vector ending-vector)
    (setf (edge-category  edge) category)
    (setf (edge-starts-at edge) starting-vector)
    (setf (edge-ends-at   edge) ending-vector)
    
    (setf (edge-rule edge) rule)
    (setf (edge-form edge) form)    
    (setf (edge-referent edge) referent)

    (let ((daughters (all-treetops :from starting-position
                                   :to ending-position
                                   :below edge)))
      (mapcar #'(lambda (tt)
                  (when (edge-p tt)
                    (set-used-by tt edge)))
              daughters)

      (setf (edge-left-daughter edge) (first daughters))
      (setf (edge-right-daughter edge) :long-span)

      (complete edge)
    
      (when *trace-edge-creation*
        (format t "~&~%creating ~A for ~A" edge rule))
    
      (assess-edge-label category edge) 
      edge )))

