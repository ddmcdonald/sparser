;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "scan"
;;;   Module:  "drivers;chart:psp:"
;;;  Version:  2.7 July 1995

;; initiated 4/23/93 v2.3
;; putting in fsas 5/7
;; 0.1 (5/15) added call to caps-fsa before other word-fsas
;;     (5/21) tweeked state in Figure-out-what-to-do...
;; 0.2 (6/14) added Scan-next-segment as initializing common resumption
;;      point for the higher processes
;; 0.3 (6/30) moved code from Check-for-]-on-position to the adjudication routine
;;      it calls.
;; 0.4 (9/14) added edge-fsas and a trace
;; 0.5 (12/10) moved the point where PNF is called to within word-actions
;; 0.6 (12/17) moved it back after interaction between PNF demands and
;;      section-marker demands was appreciated. (12/22) fixed a detail in that.
;;     (1/5/94) tweeking another detail involving full articles and paragraphs
;; 0.7 (4/23) added :preterminals-installed to Figure-out...
;; 1.0 (5/5) added a final step in the fsa because some .[ were being ignored
;;      and subdivided the status data more throughly to help w/ distinctions
;; 1.1 (5/12) hacked Scan-next-segment to appreciate prescanned segments
;; 2.0 (5/12) distributing the moments when brackets are introduced.
;; 2.1 (5/23) after much tweeking it looks stable. n.b. calls to check the
;;      brackets were redefined.
;; 2.2 (5/24) redesigned word-fsa dispatch because of edges being introduced from
;;      PNF and then again through regular path
;; 2.3 (6/13) added hook for invisible-markup. 6/14 another case in Check-PNF
;; 2.4 (10/24) found another case in resuming after a segment ended by a bracket
;;      from an edge.  (10/26) added reset of *forest-level* flag
;; 2.5 (1/1/95) fixed a bug where a capitalized word doesn't get its fsas run
;;      in the case where pnf returns nil.
;; 2.6 (5/4) changed check-word-level-fsa-trigger to look for an edge that's
;;      already there because of a prior, broken-up PNF scan.
;; 2.7 (5/12) simple patch to Edge-already-on-position for :mult-inital case
;; 2.8 (7/12) added more network-flow traces, put a trap into initiate routine
;;      to catch dropouts.

(in-package :sparser)

;;;------------------
;;; (re-) initiators
;;;------------------

(defun inititate-top-edges-protocol ()
  ;; called from Lookup-the-kind-of-chart-processing-to-do
  (tr :Inititate-top-edges-protocol)
  (setq *left-segment-boundary* nil)
  (let* ((p0 (scan-next-position))
         (ss (pos-terminal p0)))

    (unless (= (pos-token-index p0) 0)
      (break "~%~%!!!!!!!!!!!!!!!!~%~
              Inititate-top-edges-protocol called at a position other ~
              than zero~%There has probably been a gap in the state space~
              ~%and we've fallen through to the Chart-driver."))

    ;; source-start doesn't have leading brackets, so we can move
    ;; directly to the next point in the state-space
    (check-word-level-fsa-trigger ss p0)))



(defun scan-next-segment (position)
  ;; point of resumption from everywhere above the segment level
  (tr :scan-next-segment position)
  (setq *forest-level* nil)
  (when *left-segment-boundary*
    ;; we've come in from some place that didn't do this bit of cleanup
    ;; /// trap it
    (no-further-action-on-segment))

  (cond (*prescanned-segment-pending*
         (resume-prescanned-segment position))

        (*segment-ended-because-of-boundary-from-form-label*
         (setq *segment-ended-because-of-boundary-from-form-label* nil)
         (case (pos-assessed? position)
           (:]-from-edge-after-checked
            (let ((edge (ev-top-node (pos-starts-here position))))
              (check-fsa-edge-for-leading-[-bracket edge position)))
           (:]-from-edge-before-checked
            (scan-next-pos position))
           (otherwise
            (check-edge-fsa-trigger (all-preterminals-at position)
                                    position
                                    (pos-terminal position)
                                    (chart-position-after position)))))
         (t
          (figure-out-where-to-start-on-next-pos position))))



;;;----------------------------------
;;; Main line of the control network
;;;----------------------------------

(defun scan-next-pos (position)
  (tr :scan-next-pos position)
  (unless (pos-terminal position)
    (scan-next-position))
  (let ((word (pos-terminal position)))
    (introduce-leading-brackets word position)
    (check-for-]-from-word-after word position)))


(defun check-for-]-from-word-after (word position-before)
  (tr :check-for-]-from-word-after word position-before)
  (trailing-hidden-markup-check position-before)
  (trailing-hidden-annotation-check position-before)
  (let ((] (]-on-position-because-of-word? position-before word)))
    (set-status :]-from-word-after-checked position-before)
    (if ]
      (then
        (tr :]-noted ] position-before)
        (if *left-segment-boundary*
          (then
            (if (bracket-ends-the-segment? ] position-before)
              (pts)
              (check-for-[-from-word-after word position-before)))
          (else
            (tr :]-ignored/no-left-boundary-yet ] word position-before)
            (check-for-[-from-word-after word position-before))))
      (else
        (tr :no-brackets-in-front-of position-before)
        (check-for-[-from-word-after word position-before)))))



(defun check-for-[-from-word-after (word position-before)
  (tr :check-for-[-from-word-after word position-before)
  (end-of-source-check word position-before)
  (let (([ ([-on-position-because-of-word?
            position-before word)))
    (set-status :[-from-word-after-checked position-before)
    (when [
      (adjudicate-new-open-bracket [ position-before))
    (leading-hidden-markup-check position-before)
    (check-word-level-fsa-trigger word position-before)))



(defun check-word-level-fsa-trigger (word position-before)

  ;; every capitalized word has to be sent to PNF, and only if PNF
  ;; decides that it isn't part of a word does it then also get sent
  ;; to the regular path for word-triggered fsas. (Note that PNF
  ;; may run those fsas itself.)
  (tr :check-word-level-fsa-trigger position-before)

  (if (ev-top-node (pos-starts-here position-before))
    (edge-already-on-position position-before)

    (case (pos-capitalization position-before)
      (:lower-case  (cwlft-cont word position-before))
      (:punctuation (cwlft-cont word position-before))
      (:digits      (cwlft-cont word position-before))
      (:spaces      (cwlft-cont word position-before))
      (otherwise
       (check-PNF-and-continue word position-before)))))


(defun cwlft-cont (word position-before)
  ;; "check-word-level-fsa-trigger" continued
  ;; This is the path if we don't go through PNF
  (tr :cwlft-cont position-before)
  (let ((where-fsa-ended (do-word-level-fsas word position-before)))
    (if where-fsa-ended
      (adjudicate-result-of-word-fsa word position-before where-fsa-ended)
      (word-level-actions word position-before))))



(defun check-PNF-and-continue (word position-before)
  (tr :Check-PNF-and-continue position-before)
  (let ((where-caps-fsa-ended (pnf position-before)))
    (if where-caps-fsa-ended
      ;; since the embedded scan by PNF won't act on any ] on the
      ;; position where it happens to end, we have to.
      (adjudicate-after-pnf where-caps-fsa-ended)

      (let ((status (pos-assessed? position-before)))
        (tr :continue-after-pnf-returned-nil position-before status)
        (ecase status
          ;; otherwise see where PNF has gotten on the original position
          ;; and continue accordingly
          (:word-fsas-done
           ;; they could have been done as part of PNF's operations, and
           ;; there may have been an edge formed, in which case we should
           ;; start up again at the point where it ended.
           (word-fsas-done-by-pnf position-before word))

          (:pnf-checked
           ;; depending on whether we went once through PNF or twice 
           ;; (because the first run was stopped in the middle), then
           ;; this value carries a lot or a little information. We take
           ;; the easy way out by making any error here on the side of
           ;; doing too little rather than possibly redoing something
           ;; that was already done.
           (introduce-right-side-brackets
            word (chart-position-after position-before)))

          (:preterminals-installed
           ;; pretend that we hadn't had the pnf call in the first
           ;; place and go where we would have gone in that case
           (cwlft-cont word position-before))

          (:pnf-preempted
           ;; we're in a section like headlines or quotations and PNF
           ;; has been turned off -- so it didn't do anything
           (cwlft-cont word position-before))
          )))))




(defun word-level-actions (word position-before)
  (tr :word-level-actions word)
  (tr :actions-on-word word position-before)
  (let ((position-after (chart-position-after position-before)))
    (complete-word/hugin word position-before position-after)
    (word-traversal-hook word position-before position-after)
    (introduce-terminal-edges word position-before position-after)))



(defun edge-already-on-position (position-before)
  ;; Called from Check-word-level-fsa-trigger when that top-node
  ;; check comes up non-nil
  (let ((edge
         (ev-top-node (pos-starts-here position-before))))
    (tr :edge-already-on-position edge)
    ;; There can already be an edge here because we've already been
    ;; through this stretch once during, e.g., a PNF scan that was
    ;; broken up by 'of' or the like.

    (when (eq edge :multiple-initial-edges)
      ;; ///// this should probably be clever, but when all this is
      ;; doing is deciding where to jump to in the scan fsa, then
      ;; maybe its enough.
      (setq edge (highest-edge (pos-starts-here position-before))))

    (if (eq (pos-edge-ends-at edge)
            (chart-position-after position-before))
      ;; is it only one word long?  Then we don't want to go through
      ;; 'introduce-terminals' again, but we probably don't want to 
      ;; to start as far back as checking (non-PNF) fsas.
      (word-level-actions-except-terminals (pos-terminal position-before)
                                           position-before)

      ;; Otherwise we want to pick up again at wherever this
      ;; edge ends and act like we've just introduced it.
      (check-fsa-edge-for-brackets position-before
                                   edge
                                   (pos-edge-ends-at edge)))))



(defun word-level-actions-except-terminals (word position-before)
  (tr :Word-level-actions-except-terminals position-before)
  (let ((position-after (chart-position-after position-before)))
    (complete-word/hugin word position-before position-after)
    (word-traversal-hook word position-before position-after)

    (if (preterminal-edge-at? position-before)
      ;; if there are any preterminal edges here, check them for
      ;; (non-pnf) brackets and fsas
      (check-preterminal-edges (all-preterminals-at position-before) 
                               word position-before position-after)
      (introduce-right-side-brackets word position-after))))



(defvar *preterminals-on-current-word* nil)

(defun introduce-terminal-edges (word position-before position-after)
  (tr :introduce-terminal-edges word)
  (let ((edges
         (install-terminal-edges word position-before position-after)))
    (if edges
      (then
        (setq *preterminals-on-current-word* edges)
        (check-preterminal-edges
         edges word position-before position-after))
      (introduce-right-side-brackets word position-after))))



(defun check-preterminal-edges (edges word position-before position-after)
  (tr :Check-preterminal-edges position-before)
  (let ((label (introduce-leading-brackets-from-edge-form-labels
                edges position-before)))
    (if label
      (check-for-]-from-edge-after edges word
                                   position-before position-after
                                   label)
      (check-edge-fsa-trigger
       edges position-before word position-after))))




(defun introduce-leading-brackets-from-edge-form-labels (edges
                                                         position-before)
  (tr :Introduce-leading-brackets-from-edge-form-labels position-before)
  (let ( label label-has-bracket-assignments? )
    (dolist (edge edges)
      (unless (edge-over-literal? edge)
        (setq label (edge-form edge))
        (when label
          (when (introduce-leading-brackets label position-before)
            ;; this scheme loses labels if more than one has bracketing,
            ;; but that's ok for a start if not in general
            (setq label-has-bracket-assignments? label)))))
    label-has-bracket-assignments? ))


(defun introduce-trailing-brackets-from-edge-form-labels (edges
                                                         position-after)
  (tr :Introduce-trailing-brackets-from-edge-form-labels position-after)
  (let ( label label-has-bracket-assignments? )
    (dolist (edge edges)
      (unless (edge-over-literal? edge)
        (setq label (edge-form edge))
        (when label
          (when (introduce-trailing-brackets label position-after)
            (setq label-has-bracket-assignments? label)))))
    label-has-bracket-assignments? ))




(defun check-for-]-from-edge-after (edges word
                                    position-before position-after
                                    label )
  ;; we only get here via the main thread when some edge did introduce
  ;; bracketing, so we get its label as an argument
  (tr :Check-for-]-from-edge-after position-before)
  (let ((] (]-on-position-because-of-word? position-before label)))
    (set-status :]-from-edge-after-checked position-before)
    (if ]   ;; this is copied from the same code for words
      (then (tr :]-noted ] position-before)
            (if *left-segment-boundary*
              (if (bracket-ends-the-segment? ] position-before)
                (pts t)  ;;the extra arg sets a flag
                (check-edge-fsa-trigger
                 edges position-before word position-after))
              (else
                (tr :]-ignored/no-left-boundary-yet
                    ] word position-before)
                (check-edge-fsa-trigger
                 edges position-before word position-after))))
      (else
        (check-edge-fsa-trigger
         edges position-before word position-after)))))



(defun check-edge-fsa-trigger (edges position-before word position-after)
  (tr :check-edge-fsa-trigger position-before)
  (let ((position-after-edge-fsa
         (do-edge-level-fsas edges position-before)))
    (if position-after-edge-fsa
      (adjudicate-after-edge-fsa position-after-edge-fsa)
      (introduce-right-side-brackets word position-after))))



(defun introduce-right-side-brackets (word position-after)
  (tr :introduce-right-side-brackets word)
  (introduce-trailing-brackets word position-after)
  (check-for-]-from-prior-word position-after word))


(defun check-for-]-from-prior-word (position-after prior-word)
  (tr :check-for-]-from-prior-word position-after)
  (let ((] (]-on-position-because-of-word?
            position-after prior-word)))
    (set-status :]-from-prior-word-checked position-after)
    (if ]
      (then
        (tr :]-noted ] position-after)
        (if *left-segment-boundary*
          (if (bracket-ends-the-segment? ] position-after)
            (pts)
            (check-for-[-from-prior-word position-after prior-word))
          (else
            (tr :]-ignored/no-left-boundary-yet
                ] (pos-terminal position-after) position-after)
            (check-for-[-from-prior-word position-after prior-word))))
      (else
        (tr :no-brackets-in-front-of position-after)
        (check-for-[-from-prior-word position-after prior-word)))))



(defun check-for-[-from-prior-word (position-after prior-word)
  (tr :check-for-[-from-prior-word position-after)
  (let (([ ([-on-position-because-of-word? position-after prior-word)))
    (set-status :[-from-prior-word-checked position-after)
    (if [
      (adjudicate-new-open-bracket [ position-after)
      (let ((edges (all-preterminals-at
                    (chart-position-before position-after))))
        (when edges
          (let ((label (introduce-trailing-brackets-from-edge-form-labels
                        edges position-after)))
            (when label  ;; there probably something to see
              (setq [ ([-on-position-because-of-word? position-after
                                                      label))
              (when [
                (adjudicate-new-open-bracket [
                                             position-after)))))))
    (scan-next-pos position-after)))





;;;----------------------------------------------------------
;;; calls from the interior of routines in the main sequence
;;;----------------------------------------------------------

(defun leading-hidden-markup-check (position)
  ;; Called from Introduce-right-side-brackets. We're looking
  ;; for markup that would be stored in the markup field of
  ;; the edge vector starting at this position.
  (tr :Leading-hidden-markup-check position)
  (when (leading-hidden-markup-on-position? position)
    (establish-hidden-section position)))

(defun trailing-hidden-markup-check (position)
  ;; Called from Check-for-]-from-word-after.  We're looking for
  ;; markup that would be stored in the markup field of the
  ;; edge vector ending at this position.
  (tr :Trailing-hidden-markup-check position)
  (when (trailing-hidden-markup-on-position? position)
    (terminate-hidden-section position)))


(defun trailing-hidden-annotation-check (position-before)
  ;; Called from Check-for-]-from-word-after.
  ;; We're looking for annotation that would have been picked up
  ;; at the next-terminal level and stashed on the plist of the
  ;; edge-vector ending at this position. It is intended to
  ;; apply to the word that we finished processing on the
  ;; last pass through the word-level -- we're called just before
  ;; the check on the vector of the 'position-before' the -next-
  ;; word for the possibility of ending the segment. 
  (tr :Trailing-hidden-annotation-check position-before)
  (when (ev-plist
         (pos-ends-here position-before))
    (trailing-annotation-hook position-before)))



(defun end-of-source-check (word position-before)
  (tr :end-of-source-check word position-before)
  (when (eq word *end-of-source*)
    ;; At the segment level we know we've finished parsing the last
    ;; segment because we've just checked for a bracket ending the
    ;; ongoing segment and if the current word is indeed end-of-source
    ;; it will have introduced such a bracket and had us move to pts
    ;; before this function is entered

    (if (eq *rightmost-quiescent-position* position-before)
      ;; we have to make this check to ensure that all the forest level
      ;; parsing is also finished.  ///?? treetop level too ???
      (then
        (do-the-last-things-in-an-analysis position-before)
        (terminate-chart-level-process))

      (if *do-forest-level*
        (then
          (setq *where-the-last-segment-ended* position-before)
          (move-to-forest-level position-before :eos-reached))
        (else
          (do-the-last-things-in-an-analysis position-before)
          (terminate-chart-level-process))))))

