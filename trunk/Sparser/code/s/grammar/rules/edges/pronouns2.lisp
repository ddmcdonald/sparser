;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "pronouns"
;;;    Module:   "analyzers;psp:"
;;;   Version:   2.0 August 1995

;; 1.0 (9/7/92 v2.3) flushed out of date field references
;; 1.1 (5/14/93) changed to using Set-used-by as a field-setter
;; 2.0 (8/30/95) moved the used-in after complete

(in-package :sparser)


(defun make-new-edge-over-pronoun (pn-edge
                                   category
                                   form
                                   referent)

  (let ((edge (next-edge-from-resource))
        (starting-vector (edge-starts-at pn-edge))
        (ending-vector (edge-ends-at pn-edge)))

    (knit-edge-into-positions edge
                              starting-vector
                              ending-vector)
    (setf (edge-category edge)  category)
    (setf (edge-starts-at edge) starting-vector)
    (setf (edge-ends-at edge)   ending-vector)
    
    (setf (edge-rule edge) :respan-over-pronoun)
    (setf (edge-left-daughter edge)  pn-edge)
    (setf (edge-right-daughter edge) :single-term)

    (setf (edge-form edge)     form)
    (setf (edge-referent edge) referent)

    (when *trace-edge-creation*
      (format t "~&~%creating ~A from ~A~
                   ~%    rule: ~A" edge pn-edge :respan-over-pronoun)) 
    (complete edge)

    (set-used-by pn-edge edge)

    (assess-edge-label category edge)

    edge ))

