;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1996,2013  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "pts"                  ;; "parse the segment"
;;;   Module:  "drivers;chart:psp:"
;;;  Version:  5.14 July 2013

;; initiated 4/22/91, extended 4/23, tweeked 4/24,26
;; 5/6, "march/seg" saves version that doesn't check for an extensible
;;      rightmost edge.
;; (8/8 v1.9) Patched end-of-segment-measurements into Segment-parsed1
;; 4.0 (10/14/92 v2.3) started adding traces
;; 5.0 (4/25/93) made adaptions to fit the new word-level scanning protocol
;;     (5/7) tweeking
;;     (6/2) Segment-coverage hadn't anticipated multiple edges at the
;;      right end.
;;     (6/13) reorganized the Segment-finished dispatch into subroutines
;; 5.1 (6/16) tweeked def. of no-edges case to fix pointer following problem
;;      in call from Check-for-segment-start
;; 5.2 (3/4/94) moved defpram. *use-Segment-edges-as-segment-defaults* to [flags]
;; 5.3 (3/28) moved out the definition of the category 'segment', added the
;;      hook for DM&P
;;     (4/1) wrote a version of spanned-segment that removed dotted edges, but
;;      it didn't solve the problem with "chief executive", and also the code
;;      for segment-coverage didn't react to the change, so commented it out
;; 5.4 (4/24) guarded calls to heuristics with *do-heuristic-segment-analysis* flag
;; 5.5 (5/6) got more systematic about noting the end of the segment
;; 5.6 (5/12) added network-flow traces
;; 5.7 (5/25) added flag to track edge-induced segment boundaries vs. regular
;;     (7/11) added a variable to No-further-action-on-segment
;; 5.8 (7/26) put in a subr. for the return from :null-span
;; 5.9 (1/5/95) reordered finish op and creation of def. of default segment
;; 5.10 (2/13) broke Segment-coverage into two parts to provide another entry point
;;      (2/15) patched Coverage-over-region to handle one-word case of the right edge
;;       overshooting the left boundary of the segment
;;      (2/22) fixed a bug in the patch
;; 5.10 (4/12) hacked sf-action/some-adjacent-edges to apply heuristics
;;      (4/20) started to deal w/  "[ has ][ awarded ..." problem
;; 5.11 (5/18) found a case after parsing that didn't look for the conj flag
;; 5.12 (3/13/96) adjusted sf-action/all-contiguous-edges to try HA
;; 5.13 (2/9/07) incorporated hook to strong domain modeling. (2/23) fixed a
;;       massive bug in Loop-through-segment-for-some-edges.
;;      (5/28/12) Added inline segment printer option. 10/10 tweaked it.
;;      (1/21/13) Commented out the possibility of using old dm&p and broke out
;;       the usual set of options out of segment finished.  2/6/13 put in trap
;;       for the threading bug where the right segment boundary global is nil
;;       so we get a more intelligible error message. 
;; 5.14 (2/28/13) Abstracted the after-parsing protocol choice.
;;      (7/1/13) Moved in the reify implicit individuals options. 

(in-package :sparser)



(defun pts ( &optional boundary-from-edge? )
  ;; called once the boundary to the segment has been
  ;; determined and the scan stopped.  Computes a quick description
  ;; of how covered (with edges) the segment is and dispatches
  ;; to the the parser if there's something to parse or else to the
  ;; the common end-of-segment adjudicator to dispatch again.
  (tr :pts)
  (when boundary-from-edge?
    (setq *segment-ended-because-of-boundary-from-form-label* t))
  (let ((coverage (segment-coverage)))
    (unless (eq coverage :null-span)
      (when *record-bracketing-progress*
        ;; [sfriedman:20121215.1242CST] N.B. this is recorded in
        ;;   reverse order for efficiency.  Consume in reverse.
        (kpush (kcons (pos-array-index *left-segment-boundary*)
                      (pos-array-index *right-segment-boundary*))
               *bracketing-progress*))
      (cond
       (*readout-segments*
        (print-segment *left-segment-boundary* *right-segment-boundary*))
       ((and *readout-segments-inline-with-text*
             (null *display-word-stream*))
        (print-segment-and-pending-out-of-segment-words
         *left-segment-boundary* *right-segment-boundary*))))

    (tr :pts-coverage coverage)
    (if coverage
      (ecase coverage
        (:null-span
         (segment-finished :null-span))

        (:one-edge-over-entire-segment
         (segment-finished :one-edge-over-entire-segment))

        (:no-edges
         (segment-finished :no-edges))

        (:some-adjacent-edges
         (parse-at-the-segment-level *right-segment-boundary*))

        (:all-contiguous-edges
         (parse-at-the-segment-level *right-segment-boundary*))

        (:discontinuous-edges
         ;; Nothing to be gained by running the parser over the segment
         ;; since none of the edges touch
         (segment-finished :discontinuous-edges)))

      ;; Segment-coverage returned nil, indicating that the left-boundary
      ;; hadn't been set and we're at a spurious segment end at the
      ;; very beginning of the text
      (scan-next-segment *right-segment-boundary*))))


(defun segment-parsed1 ()
  ;; called from within the march/segment parsing routines once
  ;; they have walked all the way back to the left end of the segment
  (tr :parsing-of-segment-finished)
  (segment-finished (segment-coverage)))


;;;-------------------------------------
;;; choice of segment-finished protocol
;;;-------------------------------------

#| These alternatives for what to do after parsing of the segment
is finished sometimes take over all the operations. More often they
do some special process and then join the main line again.
  N.b. this is a central part of the control fsa so all returns
have to be tail recursion to the next thing to do.
|#

(unless (boundp '*after-action-on-segments*)
  (defparameter *after-action-on-segments* 
    (cond
     (*do-strong-domain-modeling*
      'sdm/analyze-segment)
     (*reify-implicit-individuals*
      'reify-implicit-individuals-in-segment)
     ;;(*do-domain-modeling-and-population*
     ;; This is the 1995 version of DM&P, which is overly clumsy
     ;; but has good ideas to mine from it. 
     ;; 'dm/analyze-segment)
     (*note-text-relations*
      'note-text-relations-in-segment)
     (t 
      'normal-segment-finished-options))
    "Name of the function to call after the interior of a segment
     has been parsed. It may do further analyses of what's in the
     segments, but eventually has to do the 'normal' options
     and ultimately scan another segment or move to the forest level."))


;;--- cases for switching options

;; (do-normal-segment-finished-options)
(defun do-normal-segment-finished-options ()
  (setq *after-action-on-segments* 'normal-segment-finished-options))

;; (do-domain-modeling-and-population)
(defun do-domain-modeling-and-population ()
  ;; This is 1995 code, which, while reasonably well documented,
  ;; isn't the way of the future
  (setq *after-action-on-segments* 'dm/analyze-segment))

;; (do-strong-domain-modeling)
(defun do-strong-domain-modeling ()
  (setq *after-action-on-segments* 'sdm/analyze-segment))

;;  (do-note-text-relations-in-segment)
(defun do-note-text-relations-in-segment ()
  (setq *after-action-on-segments* 'note-text-relations-in-segment))

;;  (do-reify-implicit-individuals-in-segment)
(defun do-reify-implicit-individuals-in-segment ()
  "Looks for criteria that warrant taking a segment that's headed
   by a category and converting it to an individual."
  (setq *after-action-on-segments* 'reify-implicit-individuals-in-segment))



;;;------------------------
;;; decide what to do next
;;;------------------------

(defun segment-finished (coverage)
  (tr :segment-finished coverage)
  (tidy-up-segment-globals coverage)
  (if (eq coverage :null-span)
    ;; begins and ends on the same position so it's a spurious
    ;; interaction of brackets laid down by adjacent words
    ;; and we just keep going. Since we know a lot about what's
    ;; just happened, we can be very specific about where to drop into
    ;; the word-level fsa rather than just call scan-next-segment.
    (then
      (return-to-scan-level-from-null-span
       *where-the-last-segment-ended*))
    (else
     (after-action-on-segments coverage))))

(defun after-action-on-segments (coverage)
  (funcall *after-action-on-segments* coverage))

(defun normal-segment-finished-options (coverage)
  ;; This is "segment-finished" for the purposes of the inline doc below
  ;; broken out of segment-finished to let us call it as a fall-back
  ;; in the sdm routines or as a follow-on to what they do.
  (case coverage
    (:one-edge-over-entire-segment
     (sf-action/spanned-segment))
    
    (:no-edges
     (sf-action/no-edges))
    
    (:discontinuous-edges
     (sf-action/discontinuous-edges))
    
    (:some-adjacent-edges
     (sf-action/some-adjacent-edges))
    
    (:all-contiguous-edges
     (sf-action/all-contiguous-edges))
    
    (otherwise
     (break "Unanticipated value for segment coverage: ~A"
            coverage))))




;;--- common subroutine

(defun no-further-action-on-segment ()
  (tr :segment-completely-finished)
  (setq *left-segment-boundary* nil
        *right-segment-boundary* nil
        ;; *bracket-opening-segment* is zero'ed in //
        ;;  when the closing bracket is seen.
        *bracket-closing-segment* nil))



(defun tidy-up-segment-globals (coverage)
  ;; called by segment-finished before it does anything else
  (end-of-segment-measurements)
  (unless coverage
    (break "The coverage calculation between p~A and p~A didn't have ~
            have a value." (when *left-segment-boundary*
                             (pos-token-index *left-segment-boundary*))
           (pos-token-index *right-segment-boundary*)))

  ;; keep this so we have a definitive pointer of where the
  ;; the next scan picks up again
  (setq *where-the-last-segment-ended* *right-segment-boundary*)

  ;; keep this one in case we see evidence that that boundary that
  ;; closed this segment should be overridden and it should be
  ;; opened up and extended.
  (setq *where-the-last-segment-started* *left-segment-boundary*)

  ;; state variables used in analyzers/sdm&p/gofers.lisp
  (initialize-segment-state-variables))



;;;----------------------------------------
;;; dispatch routines for Segment-finished
;;;----------------------------------------

(defun sf-action/spanned-segment ()
  ;; called from segment-finished when there's one edge over the entire
  ;; segment. 
  (tr :spanned-segment)
  (if *pending-conjunction*
    (if *do-heuristic-segment-analysis*
      (check-out-possible-conjunction *left-segment-boundary*)
      (else
        (tr ::turning-off-conj-flag-w/o-any-action)
        (setq *pending-conjunction* nil)
        (sf-action/spanned-segment1)))
    (sf-action/spanned-segment1)))

(defun sf-action/spanned-segment1 ()
  (unless *right-segment-boundary*
    (error "Threading bug somewhere upstream in the master control ~
            FSA~%There is no value for *right-segment-boundary*"))
  (let ((right-boundary *right-segment-boundary*))
    (if (scan-another-segment? right-boundary)
      ;; call to No-further-action-on-segment has to be delayed
      ;; until after the extension check to not lose the globals
      ;; used by its traces
      (then (no-further-action-on-segment)
            (scan-next-segment right-boundary))
      (else
        (no-further-action-on-segment)
        (move-to-forest-level right-boundary
                              :full-segment-scanned)))))



(defun sf-action/all-contiguous-edges ()
  ;; The segment is spaned by two or more adjacent edges that
  ;; the the grammar couldn't combine. If it couldn't, then there
  ;; are two possibilities. One is that it would have parsed had
  ;; there been the needed rules already in the grammar, and the
  ;; other is that we have two full phrases that didn't happen to
  ;; have been realized with any explicit boundary information that
  ;; would have separated them.  Given this second possibility,
  ;; we don't allow this case to be trivially spanned as a segment.
  ;; Because of the first, we pass it to HA to see if it can do
  ;; anything with the segment's prefix and head.

  (let ((revised-coverage (when *do-heuristic-segment-analysis*
                            (apply-HA-to-current-segment))))
    (if revised-coverage
      (case revised-coverage
        (:one-edge-over-entire-segment
         (sf-action/spanned-segment))
        (:discontinuous-edges
         (sf-action/discont-edges/no-more-heuristics))
        (:some-adjacent-edges
         (sf-action/some-adjacent-edges/no-more-heuristics))
        (:all-contiguous-edges
         (sf-action/all-contiguous-edges/no-more-heuristics))
        (otherwise
         (break "Unanticipated-value for segment coverage: ~A~
                 after Heuristics were applied" revised-coverage)))
      (else
        (sf-action/all-contiguous-edges/no-more-heuristics)))))


(defun sf-action/all-contiguous-edges/no-more-heuristics ()
  (when *pending-conjunction*
    (if *do-heuristic-segment-analysis*
      (check-out-possible-conjunction *left-segment-boundary*)
      (else
        (tr ::turning-off-conj-flag-w/o-any-action)
        (setq *pending-conjunction* nil))))

  (sf-action/spanned-segment1))




(defun sf-action/some-adjacent-edges ()
  ;; the existing parsing rules weren't sufficient to supply an
  ;; account of the adjacent edges in this segment.
  ;;   It's also not inconceivable that we're missing some
  ;; bracket information, so we should be careful about how
  ;; we represent the result -- we'll span it with an edge
  ;; but make sure that we can see its daughters and not lose
  ;; this information when inspecting the results.
  (tr :some-adjacent-edges)
  (let ((revised-coverage (when *do-heuristic-segment-analysis*
                            (apply-HA-to-current-segment))))
    (if revised-coverage
      (case revised-coverage
        (:one-edge-over-entire-segment
         (sf-action/spanned-segment))
        (:discontinuous-edges
         (sf-action/discont-edges/no-more-heuristics))
        (:some-adjacent-edges
         (sf-action/some-adjacent-edges/no-more-heuristics))
        (otherwise
         (break "Unanticipated-value for segment coverage: ~A~
                 after Heuristics were applied" revised-coverage)))
      (else
        (sf-action/some-adjacent-edges/no-more-heuristics)))))

(defun sf-action/some-adjacent-edges/no-more-heuristics ()
  (when *pending-conjunction*
    (tr ::turning-off-conj-flag-w/o-any-action)
    (setq *pending-conjunction* nil))
  (trivially-span-current-segment)
  (let ((right-boundary *right-segment-boundary*))
    (if (scan-another-segment? right-boundary)
      (then (no-further-action-on-segment)
            (scan-next-segment right-boundary))
      (else
        (no-further-action-on-segment)
        (move-to-forest-level right-boundary  ;; *where-the-last-segment-ended*
                              :segment-spanned-by-default)))))




(defun sf-action/discontinuous-edges ()
  ;; we're done the within-segment parsing, so the only way left
  ;; to get a span is to apply heuristics
  (tr :discontinuous-edges)
  (let ((revised-coverage (when *do-heuristic-segment-analysis*
                            (apply-HA-to-current-segment))))
    (if revised-coverage
      (case revised-coverage
        (:one-edge-over-entire-segment
         (sf-action/spanned-segment))
        (:discontinuous-edges
         (sf-action/discont-edges/no-more-heuristics))
        (otherwise
         (break "Unanticipated-value for segment coverage: ~A~
                 after Heuristics were applied" revised-coverage)))
      (else
        (sf-action/discont-edges/no-more-heuristics)))))

(defun sf-action/discont-edges/no-more-heuristics ()
  (tr :discontinuous/no-more-heuristics)
  (when *pending-conjunction*
    (tr ::turning-off-conj-flag-w/o-any-action)
    (setq *pending-conjunction* nil))
  (let ((right-boundary *right-segment-boundary*))
    (if (scan-another-segment? right-boundary)
      (then (trivially-span-current-segment)
            (no-further-action-on-segment)
            (scan-next-segment right-boundary))
      (else
        (trivially-span-current-segment)
        (no-further-action-on-segment)
        (move-to-forest-level right-boundary    ;;*left-segment-boundary*
                              :empty-segment-scanned)))))




(defun sf-action/no-edges ()
  ;; called from Segment-finished
  ;; no information about the segment except that it is one, so
  ;; give it a trivial span just so we don't have to crawl through
  ;; this region later
  (tr :no-edges)
  (when *pending-conjunction*
    ;; could happen when cruising through text that's not in
    ;; a known sublanguage
    (tr ::turning-off-conj-flag-w/o-any-action)
    (setq *pending-conjunction* nil))

  (trivially-span-current-segment)

  (let ((right-boundary *right-segment-boundary*))
    (if (scan-another-segment? right-boundary)
      (then (no-further-action-on-segment)
            (Scan-next-segment right-boundary))

      (else
        ;; had made the position where forest parsing should start be the
        ;; "left" boundary on the grounds that there would never be a combination
        ;; with this trivially spanned segment, but that led to an infinite
        ;; loop on the string "--" (when they were just punctuation with no
        ;; rules).  It's a matter of making sure that the quiescence pointer
        ;; keeps up with the segment scan so that when we get to eos they
        ;; arrive at the same position (that of the eos) with just one last
        ;; call to the forest level.
        (no-further-action-on-segment)
        (move-to-forest-level right-boundary
                              :empty-segment-scanned)))))



(defun trivially-span-current-segment ()
  (when *use-segment-edges-as-segment-defaults*
    (let ((edge (make-chart-edge
                 :starting-position *left-segment-boundary*
                 :ending-position   *right-segment-boundary*
                 :category  (category-named 'segment)
                 :form nil
                 :rule-name  :incomplete-segment-default
                 :referent nil)))
      edge )))



;;;------------------------------------------------------------
;;; describe the patterns of terminal edges within the segment
;;;------------------------------------------------------------

(defun segment-coverage ()
  (when *left-segment-boundary*
    ;; the null string is a good test of much of the system, and
    ;; for that case we get this null left boundary because it isn't
    ;; set until we ///
    (let ((position *right-segment-boundary*)
          (left-end *left-segment-boundary*))
      (coverage-over-region left-end position))))


(defun coverage-over-region (left-end right-end)
  (let ((position right-end))
    (if (eq left-end position)
      :null-span
      (let ((prior-position (chart-position-before position))
            (edge-at-the-right-end (ev-top-node (pos-ends-here position))))
        (if (eq prior-position left-end)
          ;; the segment is one word long
          (if edge-at-the-right-end
            (cond
             ((eq edge-at-the-right-end :multiple-initial-edges)
              :one-edge-over-entire-segment )
             ((position-precedes (pos-edge-ends-at edge-at-the-right-end)
                                 left-end)
              ;; Presumably because of a timing interaction between an fsa
              ;; or a routine like matched punctuation (parens), the
              ;; top-edge extends beyond the beginning of the segment.
              ;;    Given that the segment is one word long in this case,
              ;; we can check 1st for a smaller edge under this one ////
              ;; that overshoots, and otherwise return :no-edges
              :no-edges )
             (t  :one-edge-over-entire-segment ))
            :no-edges )

          ;; there's more than one word in the span
          (if edge-at-the-right-end
            (if (eq :multiple-initial-edges edge-at-the-right-end)
              (then
                ;; it can only be one word long so we don't have to
                ;; check for a longer edge as from a polyword
                (loop-through-segment-for-some-edges
                 (pos-edge-starts-at
                  (highest-edge (pos-ends-here position)))
                 left-end t))
              (else
                (if (eq (pos-edge-starts-at edge-at-the-right-end)
                        left-end)
                  ;; a lower fsa may have covered the whole segment
                  :one-edge-over-entire-segment
                  (loop-through-segment-for-some-edges
                   (pos-edge-starts-at edge-at-the-right-end)
                   left-end t))))
            (else
              ;; there's no edge at the end of the segment, maybe
              ;; there is somewhere earlier in the segment
              (loop-through-segment-for-some-edges
               prior-position left-end nil))))))))




(defun loop-through-segment-for-some-edges (position left-end
                                            edge-pending?)

  ;; Walk through the segment from the right and adjust the description
  ;; of the state according to whether edges are seen and how they
  ;; line up with each other.
  ;;    The 'position' is where to start. It may be interior to the
  ;; segment already if the caller saw an edge that ended at the
  ;; right boundary of the segment and set 'edge-pending?'.

  (let ((all-edges-so-far edge-pending?)
        (left-index (pos-token-index left-end))
        some-edge/s   at-least-two-adjacent  there-is-some-gap )

    (loop
      ;(format t "~&position = ~a  top-node = ~a~%"
      ;       position (ev-top-node (pos-ends-here position)))
      (let ((top-edge (ev-top-node (pos-ends-here position)))
            (position-just-to-the-left (chart-position-before position)))

        (if top-edge
          (if edge-pending? ;; two edges in a row
            (then
              (setq at-least-two-adjacent t))
            (else
              (setq edge-pending? t)))

          (else
            (unless (eq left-end position-just-to-the-left)
              (setq there-is-some-gap t))
            (when all-edges-so-far
              (setq all-edges-so-far nil))
            (when edge-pending?
              (setq some-edge/s t)
              (setq edge-pending? nil))))

        (setq position
              (cond ((typep top-edge 'edge)
                     (ev-position (edge-starts-at top-edge)))
                    ((or (eq top-edge :multiple-initial-edges) ;; single word
                         (null top-edge)) ;; a single word with no analysis
                     (chart-position-before position))
                    (t (break "Unexpected situation - top-edge = ~a"
                              top-edge))))
        (when (or (eq position left-end)
                  ;; Since we're using edges to update position there's
                  ;; the possibility of getting an edge that takes us
                  ;; outside the bracket-based segment bounds.
                  (< (pos-token-index position) left-index))
          (return nil))))

    ;(break "at-least-two-adjacent = ~a  there-is-some-gap = ~a"
    ;      at-least-two-adjacent there-is-some-gap)
    (cond (all-edges-so-far
           :all-contiguous-edges )
          (at-least-two-adjacent
           (if there-is-some-gap
             :some-adjacent-edges
             :all-contiguous-edges))
          (edge-pending?
           :discontinuous-edges )
          (some-edge/s
           :discontinuous-edges )
          (t :no-edges ))))




#|  original (prior to 5/28/95)
(defun loop-through-segment-for-some-edges (position left-end
                                            edge-pending?
                                            &aux some-edge/s )

  ;; Walk through the segment from the right and adjust the description
  ;; of the state according to whether edges are seen and how they
  ;; line up with each other.
  ;;    The 'position' is where to start. It may be interior to the
  ;; segment already if the caller saw an edge that ended at the
  ;; right boundary of the segment and set 'edge-pending?'.

  (loop
    (if (ev-top-node (pos-ends-here position))
      (if edge-pending?
        ;; two edges in a row
        (return-from Loop-through-segment-for-some-edges
          :some-adjacent-edges)
        (setq edge-pending? t))

      (when edge-pending?
        (setq some-edge/s t)
        (setq edge-pending? nil)))

    (setq position (chart-position-before position))
    (when (eq position left-end)
      (return nil)))

  (if edge-pending?
    :discontinuous-edges
    (if some-edge/s
      :discontinuous-edges
      :no-edges )))   |#

