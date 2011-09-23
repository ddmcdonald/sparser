;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "march/seg"             ;; march back, parsing edges
;;;   Module:  "drivers;chart:psp:"    ;;  in a segment
;;;  Version:  5.0 May 1994

;; 4.0 (5/7/93 v2.3) Bringing into sinc with the new word-level driver
;; 5.0 (3/15/94) Added dotted-rule hack
;; 5.1 (5/6) added new initiating call to get a good trace

(in-package :sparser)

;;;-----------
;;; initiator
;;;-----------

(defun parse-at-the-segment-level (segment-end-pos)
  (tr :parse-at-the-segment-level segment-end-pos)
  (setq *rightmost-active-position/segment* segment-end-pos)
  (march-back-from-the-right/segment))


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
  (let ((start-vector (edge-starts-at edge))
        new-edge  boundaries )
    (if (eq (ev-position start-vector) *left-segment-boundary*)
      (then
        (tr :edge-starts-at-seg-boundary edge)
        (segment-parsed1))

      (let* ((adjacent-position (ev-position start-vector))
             (adjacent-end-vector (pos-ends-here adjacent-position))
             (topnode-field (ev-top-node adjacent-end-vector)))
        (tr :looking-right-for-adjacent-edge adjacent-position edge)

        (cond
         ((eq :multiple-initial-edges topnode-field)
          (tr :seg-march/multiple-end-at adjacent-end-vector)
          (if (check-many-one adjacent-end-vector edge)
            (check-for-right-extensions)
            (else
              (setq *rightmost-active-position/segment*
                    adjacent-position)
              (march-back-from-the-right/segment))))

         (topnode-field
          (tr :seg-march/single-ends-at topnode-field)
          (if (setq new-edge
                    (check-one-one topnode-field edge))
            (if (setq boundaries
                      (edge-introduces-brackets new-edge))
              (accomodate-segment-parse-to-new-boundaries
               boundaries new-edge :do-single/left)
              (check-for-right-extensions))

            (else
              (setq *rightmost-active-position/segment*
                    adjacent-position)
              (march-back-from-the-right/segment))))
         
         (t (tr :seg-march/nothing-there )
            (setq *rightmost-active-position/segment*
                  (chart-position-before adjacent-position))
            (march-back-from-the-right/segment)))))))



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




(defun lookahead-to-complete-dotted-rule (dotted-rule
                                          left-edge right-edge)

  ;; The two edges can combine to complete the dotted-rule.
  ;; Since we're called from Check-one-one we also know that
  ;; there is some other rule that can complete them.
  ;; We only want to go with one of the two choices -- the dotted
  ;; choice would be the better one if it can ultimately complete
  ;; (within the bounds of the segment). We do the lookahead
  ;; as far as it needs to go. If a rule based on this dotted
  ;; rule can complete (this edge pair will be the leftmost two
  ;; edges in the final product since the pairs in an n-ary rule
  ;; are rolled out from their left and this pair will be the
  ;; first pair that will be able to complete) then we build it.
  ;; Otherwise we return Nil to indicate that the other choice
  ;; should be taken.

  (let ((boundary *right-segment-boundary*)
        (dotted-category (cfr-category dotted-rule))
        (right-position (pos-edge-ends-at right-edge))
        (complete? nil)
        next-rule  new-position  accumulating-rules )

    (loop
      (multiple-value-setq (next-rule new-position)
        (lookahead-at-pair dotted-category
                           right-position boundary))
      (if next-rule
        (then
          (push next-rule accumulating-rules)
          (if (not (dotted-rule next-rule))
            (then ;; then it's completed
              (setq complete? t)
              (return))
            ;; otherwise we have to loop around and keep checking
            (setq right-position new-position)))
        (else  ;; the dotted rule doesn't complete
          (return))))

    (if complete?
      (let ((edge (complete-dotted-rule-from-stub
                   (nreverse accumulating-rules)
                   left-edge)))
        edge )
      (else  ;; take other rule
        nil))))


(defun lookahead-at-pair (left-category position right-boundary)
  (if (eq position right-boundary)
    nil
    (let ((topnode-field (ev-top-node (pos-starts-here position)))
          next-rule  new-position )
      (cond
       ((eq topnode-field :multiple-initial-edges)
        (setq next-rule (one-many/just-check-labels
                         left-category
                         (pos-starts-here right-boundary)))
        (when next-rule
          (setq new-position (chart-position-after position))))

       (topnode-field
        (setq next-rule (one-one/just-check-labels
                         left-category (edge-category topnode-field)))
        (when next-rule
          (setq new-position (pos-edge-ends-at topnode-field))))

       (t ;; combination with an unspanned word isn't relevant
        ;; since we're only dealing here with n-ary rules, which
        ;; will have literals over all the words they mention.
        ))

      (values next-rule new-position))))



(defun complete-dotted-rule-from-stub (rules starting-left-edge)
  (let ((prefix starting-left-edge)
        topnode-field )

    (dolist (cfr rules)
      (setq topnode-field (ev-top-node
                           (pos-starts-here
                            (pos-edge-ends-at prefix))))
      (cond
       ((eq topnode-field :multiple-initial-edges)
        (setq prefix
              (apply-cfr-to-first-compatible-right-neighbor
               cfr prefix (pos-starts-here
                           (pos-edge-ends-at prefix)))))
       (topnode-field
        (unless (edge-p topnode-field)
          (break "Data field contains wrong data type:~
                  ~%The topnode-field ~A~
                  ~%should have contained an edge" topnode-field))
        (setq prefix
              (make-completed-binary-edge
               prefix topnode-field cfr)))
       (t
        (break "Fencepost error in dotted-rule check:~
                ~%Expected an edge adjacent to~%  ~A~
                ~%but there isn't one." prefix))))
    prefix ))

