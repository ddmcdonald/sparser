;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "C3-protocol"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  April 2014

;; Initiated 9/18/13 by analogy to inititate-top-edges-protocol.
;; 10/9/13 started putting meat on its bones. Debugging segement 
;; scan through 1/21/14. Debugging extension of scan into next
;; segment through 4/7/14

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
  ;; Compare to scan-next-segment in the regular protocol.
  ;; This is the fixed point where resume between segments.
  (tr :starting-c3-segment start-pos)
  (let* ((last-position (read-through-segment-to-end start-pos))
         ;; first delimit the next segment that starts here
         (position start-pos)
         (head-position (chart-position-before last-position)))
    (tr :delimited-c3-segment start-pos last-position)
    (when (eq start-pos last-position)
      (push-debug `(,last-position))
      (error "Empty segment?"))

    (loop 
      ;; Then walk through it left-to-right extending
      ;; the situation. Assume that the final word is the head.
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
  ;; called from scan-segment word-by-word
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



(defun read-through-segment-to-end (start-pos)
  (flet ((starting-bracket (p)
           (ev-boundary (pos-starts-here p))))
    ;; We're starting here because the previous segment ended here
    (let ((start-bracket (starting-bracket start-pos))
          (position-before start-pos) ;; for the loop
          (skip-]-check t) ;; for operating on the first word
          word-after  ] )
      (push-debug `(,start-pos ,start-bracket)) 
      ;;(break "start at ~a" start-pos)
      (tr :c3-segment-scan-start start-pos start-bracket)
      (unless start-bracket
        (if (= 1 (pos-character-index start-pos)) ;; p1
          (setq start-bracket phrase.[)
          (else
           (push-debug `(,start-pos))
           (error "Threading bug: no starting bracket"))))
      (interpret-open-bracket-as-segment-start start-bracket start-pos)
   
      (loop
        ;;  position-before -> word-after 
        (unless (pos-terminal position-before)
          (scan-next-position))
        (setq word-after (pos-terminal position-before))
        ;;(break "new position-before = ~a" position-before)

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

        (unless skip-]-check
          ;; we introduced the leading brackets as 
          ;; we ended the previous segment. We also wait one word
          ;; before checking for end-brackets
          ;; This does set-status :brackets-from-word-introduced on the position
          (introduce-leading-brackets word-after position-before)
          (setq ] (]-on-position-because-of-word? position-before word-after))
          (set-status :]-from-word-after-checked position-before))

        (if (and ] (bracket-ends-the-segment? ] position-before))                     
          (then
           (tr :c3-segment-scan-ended word-after position-before)
           (when (eq start-pos position-before)
             (push-debug `(,] ,position-before))
             (break "still not fixed: ~a" position-before))
           ;; bracket-check set the right-boundary global
           (return position-before))

          (else ;; loop around
           (setq skip-]-check nil)
           (setq position-before 
                 (chart-position-after position-before))
           (tr :c3-segment-advancing-to position-before)))))))
 




(defun c3-process-segment-and-update-state (start-pos last-pos)
  ;; called by scan-segment just after it gets out of its
  ;; accumulation loop, which includes the head edge. 
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
  (let ((edge (c3-segment-parse start-pos (chart-position-before last-pos))))
    (push-debug `(,edge))
    (set-phrasal-state :initial-state) ;; reset phrase level
    (let* ((new-state (update-situation-state edge 'sentence))
           (var (indexical-for-state new-state)))
      (add-indexical-to-situation var (edge-referent edge))
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

;; This is a clone of parse-at-the-segment-level, which can't be
;; used as-is because it knits back to segment-parsed1 of the
;; standard protocol. Also we can make different assumptions
;; because, e.g., we know there is only one edge over every
;; word because we're going to do ambiguity in the situation,
;; and indeed that there is an edge over every word.
(defun c3-segment-parse (start-position end-position)
  (let* ((head-edge (edge-starting-at end-position))
         (head-starts-at (pos-edge-starts-at head-edge))
         (edge-just-to-the-left (edge-ending-at head-starts-at))
         (*allow-pure-syntax-rules* t))
    (declare (special *allow-pure-syntax-rules*))
    (push-debug `(,head-edge ,head-starts-at ,edge-just-to-the-left))
    ;; everthing acrues to the head, ///no provision yet for
    ;; composition of pre-head constituents
    ;;(break "before the loop")
    (let ((right-edge head-edge)
          (left-edge edge-just-to-the-left)
          edge  )
      (loop
        ;(break "Looking at e~a + e~a"
        ;      (edge-position-in-resource-array left-edge)
        ;      (edge-position-in-resource-array right-edge))
        (push-debug `(,left-edge ,right-edge)) ;;(break "try by hand")
        (setq edge (check-one-one left-edge right-edge))
        ;; N.b. there's a call to compose in there after the referent's
        ;; computed. 
        (unless edge
          (push-debug `(,left-edge ,right-edge))
          (error "e~a and e~a didn't compose"
                 (edge-position-in-resource-array left-edge)
                 (edge-position-in-resource-array right-edge)))
        (if (eq (pos-edge-starts-at edge) start-position)
          (return)
          (else
           (setq right-edge edge)
           (setq left-edge (edge-ending-at (pos-edge-starts-at edge))))))
      edge)))


#+ignore ((head (edge-ending-at last-pos))
         (label (edge-category head))
         (referent (edge-referent head))
         (form (determine-from-from-phrasal-state))
         (edge (make-edge-over-long-span 
                start-pos last-pos label
                :rule :c3-process-segment
                :form form
                :referent referent
                :words (words-between start-pos last-pos))))

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



