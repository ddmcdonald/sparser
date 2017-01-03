;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "discontinuous"
;;;   Module:  "analyzers;psp:edges:"
;;;  Version:  August 2016

(in-package :sparser)

(defun make-discontinuous-edge (left-edge right-edge rule)
  "The left and right edges are not adjacent. The paradigm case
   is the preposed auxiliary and the verb group it was 'moved'
   from when forming a question.
   We make a copy of the left edge.
   We make it the left-daughter of the new edge as the right
   edge becomes the right daughter.
   The new edge has the same start/end positions as the right edge.
   Otherwise we do the normal things, evaluating the referent
   gien the rule and passing the edge to complete and assess."
  (let* ((edge (next-edge-from-resource))
         (starting-vector (edge-starts-at right-edge))
         (ending-vector (edge-ends-at right-edge))

         ;; If the manipulations we make over the left edge
         ;; get complicated, one remedy could be to make
         ;; a new version of the left edge with the requisite
         ;; properties changed. But so far (8/12/16), stree
         ;; and tts seem to be fine.
         #+ignore(left-copy (make-copy-of-edge
                     left-edge)))

    (knit-edge-into-positions edge starting-vector ending-vector)
    (setf (edge-starts-at edge) starting-vector)
    (setf (edge-ends-at edge) ending-vector)

    (setf (edge-category edge) (edge-category right-edge))
    (setf (edge-form edge) (edge-form right-edge))
    (setf (edge-rule edge) rule)

    (setf (edge-left-daughter edge) left-edge)
    (setf (edge-right-daughter edge) right-edge)
    (set-used-by left-edge edge)
    (set-used-by right-edge edge)
    
    (set-edge-referent edge
          (referent-from-rule left-edge right-edge edge rule))

    (complete edge)
    
    (when *trace-edge-creation*
        (format t "~&~%creating ~A from ~A~
                   ~%    rule: ~A"
                edge
                (edge-position-in-resource-array edge)
                rule))

    (assess-edge-label (edge-category edge) edge)
    edge ))

(defun make-copy-of-edge (edge
                          &key category form
                               rule referent
                               starts-at ends-at)
  "Get a new edge from the resource and give the
   values of the edge that's to be copied, or the 
   alternative values specified by the keyword arguments.
   The edge will -NOT- have been knit int the chart yet,
   because that is the responsibility of the caller.
   Except for that this is any ordinary edge like
   any other. In particular, it will be recyled when
   we get to it's position in the edge resource."
  (let ((new-edge (next-edge-from-resource)))
    
    (setf (edge-starts-at new-edge)
          (or starts-at (edge-starts-at edge)))
    (setf (edge-ends-at new-edge)
          (or ends-at (edge-ends-at edge)))
    
    (setf (edge-category new-edge)
          (or category (edge-category edge)))
    (setf (edge-form new-edge)
          (or form (edge-form edge)))

    (set-edge-referent new-edge
          (or referent (edge-referent edge)))
    (setf (edge-rule new-edge)
          (or rule (edge-rule edge)))
    
    ;; left-daughter right-daughter
    ;; constituents spanned-words
    ;; mention ????

    new-edge))



