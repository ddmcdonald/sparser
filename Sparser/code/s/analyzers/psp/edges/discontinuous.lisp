;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016-2019 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "discontinuous"
;;;   Module:  "analyzers;psp:edges:"
;;;  Version:  July 2019

(in-package :sparser)

(defun make-discontinuous-edge (left-edge right-edge rule)
  "The left and right edges are not adjacent. For preposed auxiliaries,
   the left-edge that is passed in is an unconnected new edge.
   If the left edge is already in the chart then this code will
   have the odd (but usually harmless) effect of having the identical
   edge object appear in two places simultaneously. 
   We make a new edge. We make the left-edge the left-daughter of the
   new edge as the right-edge becomes the right daughter of the new
   edge. The new edge has the same start/end positions as the right
   edge. Otherwise we do the normal things, evaluating the referent
   given the rule and passing the edge to complete and assess."
  ;; N.b. so far only used this to move a preposed-aux, so the
  ;; head is tacitly the right-edge.

  (let* ((edge (next-edge-from-resource))
         (starting-vector (edge-starts-at right-edge))
         (ending-vector (edge-ends-at right-edge)))

    ;; new edge goes directly over the right-edge
    (knit-edge-into-positions edge starting-vector ending-vector)
    (setf (edge-starts-at edge) starting-vector)
    (setf (edge-ends-at edge) ending-vector)

    ;; the aux-edge takes the starting/ending positions
    ;; of the right-edge.
    (setf (edge-starts-at left-edge)
          (edge-starts-at right-edge))
    (setf (edge-ends-at left-edge)
          (edge-ends-at right-edge))

    (setf (edge-left-daughter edge) left-edge)
    (setf (edge-right-daughter edge) right-edge)
    (set-used-by left-edge edge)
    (set-used-by right-edge edge)

    (if (cfr-completion rule)
      ;; handles form rules, but would need further tweaking if this
      ;; was to be used for more complex rule structures.
      (set-labels-from-promulgated-edge
       edge left-edge right-edge rule)
      (else
        ;; Treat it like a form rule and take the labels
        ;; from the right edge, which is tacitly the head
        (setf (edge-category edge) (edge-category right-edge))
        (setf (edge-form edge) (edge-form right-edge))))

    (setf (edge-rule edge) rule)

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
                               rule referent)
  "Get a new edge from the resource and give the
   values of the edge that's to be copied, or the 
   alternative values specified by the keyword arguments.
   The edge will -NOT- have been knit into the chart yet,
   and not have start or end edge vectors because
   those are the responsibility of the caller.
   Except for that this is any ordinary edge like
   any other. In particular, it will be recyled when
   we get to it's position in the edge resource."
  (let ((new-edge (next-edge-from-resource)))

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



(defun stipulate-subject-edge (np-edge vp-edge)
  "The caller, probably one of the WH question routines, knows that this
   NP is the subject of this VP, so we create the edge without bothering
   to go through its rule, just its test. Npte that the NP is moving
   so it could be a funny looking edge."
  (declare (special category::s))
  (with-referent-edges (:l np-edge :r vp-edge)
    (let* ((subj (edge-referent np-edge))
           (pred (edge-referent vp-edge))
           (i (assimilate-subject subj pred)))
      (unless i
        (push-debug `(,subj ,pred))
        (break "fail: assimilate-subject of ~a + ~a" subj pred))
      (let ((s-edge (make-chart-edge
                     :left-edge np-edge
                     :right-edge vp-edge
                     :category (edge-category vp-edge)
                     :form category::s
                     :referent i)))
        s-edge))))

