;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "punctuation"
;;;   Module:  grammar/rules/edges/
;;;  Version:  July 2016

;; initiated 7/14/16

(in-package :sparser)

(defun install-punctuation-edge (rule word position next-position)
  "Modeled on install-preterminal-edge with the key difference
   that these can't be assessed (that would put us in a loop).
   /// Not sure about complete. 
   Also takes cues from make-edge-over-literal -- all called
   from preterminals/word which does the tests to determine
   which to call."

  (assert (eq word (cfr-category rule)))
  
  (let ((edge (next-edge-from-resource))
        (starting-vector (pos-starts-here position))
        (ending-vector   (pos-ends-here next-position)))

    (setf (edge-starts-at edge) starting-vector)
    (setf (edge-ends-at edge)   ending-vector)
     
    (knit-edge-into-positions edge
                              starting-vector
                              ending-vector)

    (setf (edge-category edge) word)
    (setf (edge-form edge)     (cfr-form rule))
    (setf (edge-referent edge) (cfr-referent rule))

    (setf (edge-rule edge) rule)
    (setf (edge-left-daughter edge) word)
    (setf (edge-right-daughter edge) :single-term)

    (when *trace-edge-creation*
      (format t "~&~%creating ~A from ~A" edge word))

    ;; We don't call assess-edge-label because it would loop.
    ;; We don't (?) call complete because any actions
    ;; triggered by scanning this punctuation character
    ;; have already fired (?).

    edge ))

