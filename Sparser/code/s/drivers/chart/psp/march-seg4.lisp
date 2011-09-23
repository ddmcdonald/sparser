;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992,1993 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "march/seg"                 ;; march back, parsing edges
;;;   Module:  "drivers;chart:psp:"    ;;  in a segment
;;;  Version:  4.0 May 1993

;; initiated 4/22/91, extended 4/23, tweeked 4/24,26 5/1
;; 5/6, "march/seg" saves version that doesn't check for an extensible
;;      rightmost edge.
;; 1.1 (1/13/92 v2.2) fixed bug where March-back... applied an edge access
;;     fn. to a position.
;; 4.0 (5/7/93 v2.3) Bringing into sinc with the new word-level driver

(in-package :sparser)

;;;--------
;;; driver
;;;--------

(defun march-back-from-the-right/segment ()
  ;; this is the primary recursion point.
  (let* ((rightmost-pos *rightmost-active-position/segment*))
    (cond
     ((eq rightmost-pos *left-segment-boundary*)
      (tr :left-boundary-reached)
      (segment-parsed1))
     ((<= (pos-token-index rightmost-pos)
          (pos-token-index *left-segment-boundary*))
      (tr :went-beyond-left-boundary)
      (segment-parsed1))
     (t
      (let* ((end-vector (pos-ends-here rightmost-pos))
             (top-node (ev-top-node end-vector)))

        (tr :looking-right-from rightmost-pos)
        (if top-node
          (march-back/segment/2 rightmost-pos top-node end-vector)
          (else
            (tr :seg-march/nothing-there)
            (setq *rightmost-active-position/segment*
                  (chart-position-before rightmost-pos))
            (march-back-from-the-right/segment))))))))
        

(defun march-back/segment/2 (position top-node end-vector)
  ;; subroutine to March-back-from-the-right/segment
  ;; that's called when there's a top-node
  (declare (ignore position))
  (cond ((eq :multiple-initial-edges top-node)
         (tr :seg-march/multiple-end-at end-vector)
         (do-multiple-initial/left end-vector))
        (top-node
         (tr :seg-march/single-ends-at top-node)
         (do-single/left top-node))))


;;;--------------------
;;; checking extension
;;;--------------------

(defun check-extension-possibilities (right-end-position
                                      topnode-field
                                      vector)
  ;; called from March-back-from-the-right/segment
  (when *trace-extension-decision*
    (format t "~&Since it's on the right boundary, checking ~
               whether it extends~%"))

  (let ((extends
         (cond ((null topnode-field) ;; no edge there
                nil )
               ((eq topnode-field :multiple-initial-edges)
                (tt-extends?/multiple right-end-position))
               (t (edge-might-extend? topnode-field)))))
    (if extends
      (then
        (when *trace-extension-decision*
          (format t "~&  it does~%"))
        (setq *rightmost-active-position/segment*
              (if (eq topnode-field :multiple-initial-edges)
                (chart-position-before right-end-position)
                (pos-edge-starts-at topnode-field)))
        (march-back-from-the-right/segment))
      (else
        (when *trace-extension-decision*
          (format t "~&  it does not~%"))
        (march-back/segment/2
         right-end-position topnode-field vector)))))


;;;------------------------
;;; getting the edges done
;;;------------------------

(defun do-multiple-initial/left (right-ending-vector)
  (let ((starting-position
         (chart-position-before (ev-position right-ending-vector))))
    (when *trace-do-edge*
      (format t "~&Looking leftwards from the multiple edges ending at ~
                 p~A for edges ending at p~A~%"
              (pos-token-index (ev-position right-ending-vector))
              (pos-token-index starting-position)))

    (if (eq starting-position *left-segment-boundary*)
      (then (when *trace-do-edge*
              (format t "~&   That position is the segment boundary~%"))
            (segment-parsed1))

      (let* ((adjacent-end-vector (pos-ends-here starting-position))
             (topnode-field (ev-top-node adjacent-end-vector))
             spanned? )
        (cond
         ((eq topnode-field :multiple-initial-edges)
          (when *trace-do-edge*
            (format t "~&   p~A has multiple initial edges~%"
                    (pos-token-index starting-position)))
          (if (check-many-many adjacent-end-vector right-ending-vector)
            (setq spanned? t)
            (else
              (setq *rightmost-active-position/segment*
                    starting-position))))
         (topnode-field
          (when *trace-do-edge*
            (format t "~&   p~A has the single edge~A~%"
                    (pos-token-index starting-position)
                    topnode-field))
          (if (check-one-many topnode-field
                              right-ending-vector)
            (setq spanned? t)
            (else
              (setq *rightmost-active-position/segment*
                    starting-position))))
         (t
          (when *trace-do-edge*
            (format t "~&   p~A has no edges~%"
                    (pos-token-index starting-position)))
          (setq *rightmost-active-position/segment*
                starting-position)))

        (if spanned?
          (check-for-right-extensions)
          (march-back-from-the-right/segment))))))


(defun do-single/left (edge)
  ;; we are working backwards from the rightmost active position
  ;; and there is only one edge that ends there.  We look at what
  ;; is adjacent to it to the left and dispatch to the corresponding
  ;; check.
  (let ((start-vector (edge-starts-at edge)))
    (if (eq (ev-position start-vector) *left-segment-boundary*)
      (then
        (tr :edge-starts-at-seg-boundary edge)
        (segment-parsed1))

      (let* ((adjacent-position (ev-position start-vector))
             (adjacent-end-vector (pos-ends-here adjacent-position))
             (topnode-field (ev-top-node adjacent-end-vector))
             spanned? )
        (tr :looking-right-for-adjacent-edge adjacent-position edge)

        (cond
         ((eq :multiple-initial-edges topnode-field)
          (tr :seg-march/multiple-end-at adjacent-end-vector)
          (if (check-many-one adjacent-end-vector edge)
            (setq spanned? t)
            (else
              (setq *rightmost-active-position/segment*
                    adjacent-position))))

         (topnode-field
          (tr :seg-march/single-ends-at topnode-field)
          (if (check-one-one topnode-field edge)
            (setq spanned? t)
            (else
              (setq *rightmost-active-position/segment*
                    adjacent-position))))
         
         (t (tr :seg-march/nothing-there )
            (setq *rightmost-active-position/segment*
                  (chart-position-before adjacent-position))))
        
        (if spanned?
          (check-for-right-extensions)
          (march-back-from-the-right/segment))))))



(defun check-for-right-extensions ()
  ;; within the segment we let any available rightward combinations
  ;; go through.  These will be cases where constituents form
  ;; through compositions in the middle or left of the segment that
  ;; then lies adjacent to an edge on their right that is still within
  ;; the segment.  If they lie adjacent to the right boundary we
  ;; leave them for forest level parsing to take care of.
  (let ((right-position
         *rightmost-active-position/segment*))
    (when *trace-do-edge*
      (format t "~&Looking rightwards from p~A~%"
              (pos-token-index right-position)))

    (if (eq right-position *right-segment-boundary*)
      (then (when *trace-do-edge*
              (format t "~&   which is the segment boundary~%"))
            (march-back-from-the-right/segment))
      (else
        (check-right-extensions/2 right-position)))))


(defun check-right-extensions/2 (right-position)
  (let* ((adjacent-start-vector (pos-starts-here right-position))
         (topnode-field (ev-top-node adjacent-start-vector))
         (left-edge (ev-top-node (pos-ends-here right-position)))
         spanning-edge )
    (cond
     ((eq :multiple-initial-edges topnode-field)
      (when *trace-do-edge*
        (format t "~&   There are multiple initial edges there~%"))
      (setq spanning-edge
            (check-one-many left-edge adjacent-start-vector)))
     (topnode-field
      (when *trace-do-edge*
        (format t "~&   It has the single edge ~A~%"
                topnode-field))
      (setq spanning-edge
            (check-one-one left-edge topnode-field)))
     (t (when *trace-do-edge*
          (format t "~&   There are no edges there~%"))))
    
    (if spanning-edge
      (then
        (setq *rightmost-active-position/segment*
              (pos-edge-ends-at spanning-edge))
        (when *trace-do-edge*
          (format t "~&   looking right again, with e~A~%"
                  (edge-position-in-resource-array spanning-edge)))
        (check-for-right-extensions))
      (else
        ;; by not changing the pointer we'll pick up where we
        ;; left off before considering this rightward check
        (march-back-from-the-right/segment)))))
