;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1994,2023 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "aux rules"
;;;   Module:  "grammar;model:core:adjuncts:frequency:"
;;;  Version:  July 2023

;; initiated 5/16/93 v2.3
;; 0.1 (6/4) drastically reconceptualized how it works, 9/21 moved to [adjuncts]
;;      and split out the rules
;;     (7/14/94) added {modal}+freq...

(in-package :sparser)

;;;------------
;;; form rules
;;;------------

;;---- adv + verb

(loop for vv in '((verb+ed vg+ed)
                  (verb+ing vg+ing)
                  (verb+present vg)
                  (verb+s vg)
                  (verb vg))
    do
     (eval
      `(def-form-rule (frequency-of-event ,(first vv))
        :head :right-edge
        :form ,(second vv)
        :referent (:function interpret-adverb+verb left-edge right-edge))))


;;---- verb + adv

(loop for vv in '((verb+ed vg+ed)
                  (verb+ing vg+ing)
                  (verb+present vg)
                  (verb+s vg)
                  (verb vg)
                  (modal modal))
    do
     (eval
      `(def-form-rule (,(first vv) frequency-of-event)
        :head :right-edge
        :form ,(second vv)
        :referent (:function interpret-adverb+verb right-edge left-edge))))


;;----adv + adjective   "never tall"

(deftrace :freq+attr (adv attr)
  (when *trace-methods*
    (trace-message "Method: freq(~a) + attr(~a)"
                   adv attr)))

(def-k-method modified ((adv category::frequency-of-event)
                        (head category::attribute-value)) ; vs. individual
  "Look at the edge to the immediate left (vs initiating a sesarch).
 If it takes a frequency then bind that slot to the event-frequency
 individual and don't worry about moving edges around or any such.
 Otherwise drop the modifier with a warning or maybe bind the modifier
 variable on top and collect the sentences"
  (tr :freq+attr adv head)
  (if *subcat-test*
    t
    (let* ((parent (parent-edge-for-referent))
           (start-pos (pos-edge-starts-at parent)))
      (multiple-value-bind (left-edge pos-after multiple?)
          (next-treetop/leftward start-pos)
        (let ((i (edge-referent left-edge)))
          (if (itypep i 'with-frequency)
            (let ((j (bind-variable 'frequency adv i)))
              j)
            (else 
              (warn-or-error
               "Edge to left of event-frequency adjp is not perdurant.~
              ~%adjp-edge: ~a  leftward-edge ~a~%in ~a"
               parent left-edge (full-current-string))
              head)))))))

(def-form-rule (frequency-of-event adjective)
  :head :right-edge
  :form adjp
  :referent (:function interpret-adverb+adjective left-edge right-edge))

