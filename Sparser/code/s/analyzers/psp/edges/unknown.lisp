;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994,1995 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "unknown"
;;;   Module:  "analyzers;psp:edges:"
;;;  Version:  0.2 May 1993

;; initiated 12/90
;;  0.1 (12/21/90, v1.6)  Put values in the daughter slots
;;  0.2 (5/11/92 v2.3) Added optional form-category and rule args, tweeked
;;       the trace message, and changed the meaning to be imposing form
;;       categorizations rather than semantic ones.

(in-package :sparser)


(defun make-edge-over-unknown-word (word
                                    position
                                    next-position
                                    &optional
                                       form-category
                                       rule )

  ;; called from (at least) Make-morph-edge-over-unknown-word

  (let ((edge (next-edge-from-resource))
        (starting-vector (pos-starts-here position))
        (ending-vector   (pos-ends-here   next-position)))

    (setf (edge-starts-at edge) starting-vector)
    (setf (edge-ends-at   edge) ending-vector)
    (knit-edge-into-positions edge starting-vector ending-vector)

    (setf (edge-category edge) word)
    (when form-category
      (setf (edge-form edge) form-category))
    (when rule
      (setf (edge-rule edge) rule))

    (setf (edge-left-daughter  edge) word)
    (setf (edge-right-daughter edge) :unknown-word)

    (when *trace-edge-creation*
      (format t "~&~%creating ~A for the unknown word ~A~
                   ~%   because of the rule ~A"
              edge word rule))

    edge ))

