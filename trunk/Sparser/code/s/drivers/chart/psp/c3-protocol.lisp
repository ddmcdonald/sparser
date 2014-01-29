;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "C3-protocol"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  January 2014

;; Initiated 9/18/13 by analogy to inititate-top-edges-protocol.
;; 10/9/13 started putting meat on its bones. Debugging segement 
;; scan through 1/21/14

(in-package :sparser)

(defun initiate-c3-protocol ()
  ;; Called from lookup-the-kind-of-chart-processing-to-do
  ;; We pull in the start marker and check that we're in the
  ;; right place, then we start the actual scan.
  (let* ((p0 (scan-next-position))  ;; status = :scanned
         (ss (pos-terminal p0)) ;; #<word SOURCE-START>
         (p1 (scan-next-position)))
    (scan-segment p1)))


(defun scan-segment (start-pos)
  ;; Compare scan-next-segment in the regular protocol.
  ;; This is the fixed point where resume between segments.

  ;; first delimit the segment
  (let* ((last-position (read-through-segment-to-end start-pos))
         (position start-pos)
         (head-position (chart-position-before last-position)))
    ;; Then walk through it left-to-right extending
    ;; the situation. Assume that the final word is the head.
    (tr :delimited-c3-segment start-pos last-position)
;    (break "last-position = ~a" last-position) ;; => trace
    (loop 
      (introduce-next-word position (eq position head-position))
      (setq position (chart-position-after position))
      (when (eq position last-position)
        (return)))
    ;; After it gets to the head (assumed to be the last constituent
    ;; but verb groups are more interesting with adverbs and such)
    ;; are drops out of the loop, we need to span the whole
    ;; segment with an edge and update the sentential state
    (c3-process-segment-and-update-state start-pos last-position)

    ;; presumably we now just scan the next segment
    (scan-segment last-position)))


(defun introduce-next-word (position-before head-word?)
  (let ((word (pos-terminal position-before)))
    (unless (word-with-single-edge-rules? word)
      (push-debug `(,position-before ,word))
      (error "C3 only runs on known words. The word ~s at p~a is unknown"
             (word-pname word) (pos-token-index position-before)))
    (let ((*this-is-the-head* head-word?))
      (declare (special *this-is-the-head*))    
      (let ((position-after (chart-position-after position-before)))
        ;; All the good stuff now happens in the referent processing
        (install-terminal-edges word position-before position-after)))))


(defvar *trace-read-through-segment-to-end* nil "Ad-hoc one-off debugging")
; (setq *trace-read-through-segment-to-end* t)

(defun read-through-segment-to-end (start-pos)
  (let ((start-bracket (bracket-that-starts-the-segment start-pos)))
    (interpret-open-bracket-as-segment-start start-bracket start-pos)
    (when *trace-read-through-segment-to-end*
      (push-debug `(,start-bracket ,start-pos)))
    (let ((position-before start-pos)
          word-after )
      (loop
        (unless (pos-terminal position-before)
          (scan-next-position))
        (when *trace-read-through-segment-to-end*
          (break "position before = ~a" position-before))
        (setq word-after (pos-terminal position-before))

        (when (eq word-after *end-of-source*)
          (push-debug `(,start-pos ,position-before))
          (break "EOS -- how do we tell what remains to be done?")
          (if *left-segment-boundary*
            ;; there's more processing to do
            (break "returning the correct position on eos?"
            (return-from read-through-segment-to-end
              (chart-position-before position-before))
            ;; else we're done
            (terminate-chart-level-process)))) ;; does a throw

        (introduce-leading-brackets word-after position-before) ;; brackets to the left
        ;; cribed from check-for-]-from-word-after
        (let ((] (]-on-position-because-of-word? position-before word-after)))
          (set-status :]-from-word-after-checked position-before)
          (if ]
            (if (bracket-ends-the-segment? ] position-before)
              (then
               (when *trace-read-through-segment-to-end*
                 (push-debug `(,] ,position-before))
                 (break "segment ended on brackets of ~a" word-after))
               ;; bracket-check set the right-boundary global
               (return position-before))
              (else ;; loop around
               (setq position-before 
                     (chart-position-after position-before))))))))))
 




(defun c3-process-segment-and-update-state (start-pos last-pos)
  (push-debug `(,start-pos ,last-pos))
  ;; Can make the edge by fiat. Take the referent from the
  ;; head edge as put there by incorporate-phrasal-head and
  ;; take the form from the state and the label from the head edge
  ;; Now we can make a legitimate sentence-level state update.
  ;;//// What we need to do going forward is to parse within
  ;; the segment (with the normal machinery abstracted out from
  ;; pt) so those relations can be incorporated into the situation
  ;; and we have a normally formed edge instead of this silly
  ;; long-span
  (let* ((head (edge-ending-at last-pos))
         (label (edge-category head))
         (referent (edge-referent head))
         (form (determine-from-from-phrasal-state))
         (edge (make-edge-over-long-span 
                start-pos last-pos label
                :rule :c3-process-segment
                :form form
                :referent referent
                :words (words-between start-pos last-pos))))
    (push-debug `(,edge))
    (set-phrasal-state :initial-state) ;; reset phrase level
    (let* ((new-state (update-situation-state edge 'sentence))
           (var (indexical-for-state new-state)))
      (add-indexical-to-situation var referent)
      (push-debug `(,new-state ,var))
      

    ;; The situation was updated by the operations inside
    ;; incorporate-phrasal-head -- which is what happened just
    ;; before we got here. Do we 'incorporate' this edge?
    ;; Certainly we need to get a variable pointing to it
    ;; so we can use it when we get to the VG. 
    ;; Essence from incorporate-referent-into-the-situation is
    ;;   (indexical-for-state new-state)
    ;;   (add-indexical-to-situation var peg)
)))



;;;----------
;;;  gofers
;;;----------

(defun determine-from-from-phrasal-state ()
  ;; called from c3-process-segment-and-update-state and just does
  ;; a inline table lookup.
  ;; //// if this get's too big move it out to the states,
  ;; which might be easier for fledglings anyway.
  (let ((state (phrasal-state)))
    (case (name state)
      (:assembling-np (category-named 'np))
      (otherwise
       (push-debug `(,state))
       (error "No form category listed for ~a" state)))))



(defun bracket-that-starts-the-segment (start-pos)
  ;; Should look at the position and think about it
  ;; so that the algebra works out.
  ;;/// once we're going the lead word may have included start brackets
  (declare (ignore start-pos))
  phrase.[ )

