;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1994,2013-2014 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "long scan"
;;;    Module:   "analyzers;psp:edges:"
;;;   Version:   1.3 September 2014

;; 1.0 (9/7/92 v2.3) flushed out of date field references
;; 1.1 (2/24/94) added daughter and used-in encoding
;; 1.2 (3/30) changed daughter-collecting call to 'all-treetops'
;;     (8/30/95) moved the used-in after complete
;;     (1/9/13) Added constituents and words keywords to let those
;;      fields on the edge to be populated when the caller
;;      has them in its hand. 
;; 1.3 (9/25/14) switched to using successive-treetop because
;;      of a bug found in the multiple-edge case of all-treetops,
;;      though even that is uneven about choice among multiple edges
;;      so added semi-redundant set-used-by when constituents are known.

(in-package :sparser)


(defun make-edge-over-long-span (starting-position
                                 ending-position
                                 category
                                 &key  rule
                                       form
                                       referent 
                                       constituents
                                       words )

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

    (complete edge)

    (let ((daughters (successive-treetops :from starting-position
                                   :to ending-position
                                   :below edge)))
      (mapcar #'(lambda (tt)
                  (when (edge-p tt)
                    (set-used-by tt edge)))
              daughters)
      (when constituents
        (dolist (c constituents)
          (when (edge-p c)
            (unless (edge-used-in c)
              (set-used-by c edge)))))
      (setf (edge-left-daughter edge) (first daughters))
      (setf (edge-right-daughter edge) :long-span)
      (setf (edge-constituents edge)
            (or constituents ;; passed in
                daughters))

      (when words
        (setf (edge-spanned-words edge) words))
    
      (when *trace-edge-creation*
        (format t "~&Ccreating ~A for ~A" edge rule))
    
      (assess-edge-label category edge) 
      edge )))

