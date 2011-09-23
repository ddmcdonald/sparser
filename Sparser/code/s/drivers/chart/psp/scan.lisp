;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "scan"
;;;   Module:  "drivers;chart:psp:"
;;;  Version:  0.7 May 1994

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
;; 0.8 (5/5) added a final step in the fsa because some .[ were being ignored

(in-package :sparser)

;;;------------------
;;; (re-) initiators
;;;------------------

(defun inititate-top-edges-protocol ()
  ;; called from Lookup-the-kind-of-chart-processing-to-do
  (setq *left-segment-boundary* nil)
  (after-scan (scan-next-position)))


(defun scan-next-segment (position)
  (tr :scan-next-segment position)
  (setq *left-segment-boundary* nil
        *right-segment-boundary* nil
        *bracket-closing-segment* nil)
  (figure-out-where-to-start-on-next-pos position))


(defun figure-out-where-to-start-on-next-pos (position)
  ;; we need this because we've just returned from an excursion through
  ;; code outside of this scan network and we have to appreciate
  ;; where we left off.
  (tr :figure-out-where-to-start-on-next-pos position)
  (let ((status (pos-assessed? position)))
    (tr :scan-dispatch position status)

    (if (null status)
      (after-scan (scan-next-position))
      (case status
        (:ended-segment
         (break)
         (setf (pos-assessed? position) :boundaries-introduced)
           ;; 'ended-segment' is information that was useful in the
           ;; scan of the previous segment. Now we need the corresponding
           ;; state that it would be in had it be starting a segment
         (check-for-segment-start (pos-terminal position)
                                  position))
        (:scanned
         (after-scan position))

        (:boundaries-introduced
         (check-for-]-on-position (pos-terminal position)
                                  position))
        (:word-fsas-done
         ;; when we went off, we'd already applied an fsa on a position just
         ;; beyond what ended up being the end of the segment. (E.g. PNF was
         ;; doing lookahead and hit a header-label.)  We have to establish
         ;; whether the fsa succeeded -- in which case there'll be an edge
         ;; starting at this position.  If it did, we resume where the edge
         ;; ended, if not we pickup at the word-level actions.
         (let ((edge (ev-top-node (pos-starts-here position))))
           (if edge
             (figure-out-where-to-start-on-next-pos
              (pos-edge-ends-at edge))
             (check-for-segment-start (pos-terminal position)
                                      position))))

        (:preterminals-installed
         ;; "Mr. Servison" 4/23/94
         (check-edge-fsa-trigger (preterminal-edges position)
                                 position
                                 (chart-position-after position)))

        (otherwise
         (break "New case for what to do with next position"))))))



;;;----------------------------------
;;; Main line of the control network
;;;----------------------------------

(defun after-scan (position)
  ;; called just after a scan introduces the next word into the chart
  (tr :after-scan position)
  (when (null (pos-assessed? position))
    (scan-next-position))
  (let ((word (pos-terminal position)))

    (introduce-brackets word
                        position
                        (chart-position-after position))

    (check-for-]-on-position word position)))


(defun check-for-]-on-position (word position-before)
  (tr :check-for-]-on-position word position-before)
  (let ((] (]-on-position? position-before)))
    (set-status :]-checked position-before)
    (if ]
      (if *left-segment-boundary*
        (then
          (tr :]-noted ] position-before)
          (if (bracket-ends-the-segment? ] word position-before)
            (then
              (pts))
            (else
              (check-for-segment-start word position-before))))
        (else
          (tr :]-ignored/no-left-boundary-yet ] word position-before)
          (check-for-segment-start word position-before)))
      (else
        (tr :no-brackets-in-front-of position-before)
        (check-for-segment-start word position-before)))))



(defun check-for-segment-start (word position-before)
  (tr :check-for-segment-start position-before)
  (when (eq word *end-of-source*)
    ;; At the segment level we know we're finished parsing the last
    ;; segment because we've just checked for a bracket ending the
    ;; ongoing segment and if the current word is indeed end-of-source
    ;; it will have introduced such a bracket and had us move to pts

    (if (eq *rightmost-quiessent-position* position-before)
      ;; we have to make this check to ensure that all the forest level
      ;; parsing is also finished.  ///?? treetop level too ???
      (then
        (do-the-last-things-in-an-analysis position-before)
        (terminate-chart-level-process))
      (else
        (setq *where-the-last-segment-ended* position-before)
        (move-to-forest-level position-before :eos-reached))))

  (let (([ ([-on-position? position-before)))
    (set-status :[-checked position-before)
    (when [
      (adjudicate-new-open-bracket [ position-before))
    (check-word-level-fsa-trigger word position-before)))




(defun check-word-level-fsa-trigger (word position-before)
  (tr :check-word-level-fsa-trigger position-before)
  ;; every capitalized word has to be sent to PNF and only if PNF
  ;; decides that it isn't part of a word does it then get sent
  ;; to the regular path for word-triggered fsas. (Note that PNF
  ;; may run those fsas itself.)

  (if (eq :word-fsas-done (pos-assessed? position-before))
    (word-level-actions word position-before)

    (let* ((capitalization (pos-capitalization position-before))
           (where-caps-fsa-ended
            (when capitalization
              (case capitalization
                (:lower-case nil)
                (:punctuation nil)
                (:digits nil)
                (:spaces nil)
                (otherwise (pnf position-before))))))

      (if where-caps-fsa-ended
        ;; since the embedded scan by PNF won't think about any ] where
        ;; it happens to end, we have to.
        (then
          (set-status :word-fsas-done position-before)
          (if (]-on-position? where-caps-fsa-ended)
            (then 
              (tr :]-on-position-returned-by-PNF where-caps-fsa-ended)
              (check-for-]-on-position (pos-terminal where-caps-fsa-ended)
                                       where-caps-fsa-ended))

            (adjudicate-result-of-word-fsa
             word position-before where-caps-fsa-ended)))

        (if (eq :word-fsas-done (pos-assessed? position-before))
          ;; they could have been done as part of PNF's operations, and
          ;; there may have been an edge formed, in which case we should
          ;; start up again at the point where it ended.
          (then
            (tr :pos-already-had-fsas-done position-before)
            (let ((edge (ev-top-node (pos-starts-here position-before))))
              (if edge
                (then
                  (tr :fsa-returned-an-edge edge)
                  (figure-out-where-to-start-on-next-pos (pos-edge-ends-at
                                                          edge)))
                (word-level-actions word position-before))))

          (let ((where-fsa-ended
                 (do-word-level-fsas word position-before)))
            (if where-fsa-ended
              (adjudicate-result-of-word-fsa
               word position-before where-fsa-ended)
              
              (word-level-actions word position-before))))))))



(defun adjudicate-result-of-word-fsa (word
                                      pos-before-word
                                      pos-after-fsa-result)
  (tr :adjudicate-result-of-word-fsa word)
  (let ((status (pos-assessed? pos-after-fsa-result)))
    (tr :adjudicating-fsa-result
        word status pos-before-word pos-after-fsa-result)
    (if status
      ;; The fsa looked beyond the position it ultimately ended at.
      ;; Dispatch accordingly.
      (ecase status
        (:word-fsas-done
         ;; but did they succeed? If they did, we should look at the
         ;; position of the edge they produced rather than where the
         ;; fsa running before them ended.
         (let ((edge (ev-top-node (pos-starts-here pos-after-fsa-result))))
           (if edge
             (figure-out-where-to-start-on-next-pos
              (pos-edge-ends-at edge))
             (check-for-]-on-position (pos-terminal pos-after-fsa-result)
                                      pos-after-fsa-result))))
        (:boundaries-introduced
         (check-for-]-on-position (pos-terminal pos-after-fsa-result)
                                  pos-after-fsa-result))
        (:scanned
         (after-scan pos-after-fsa-result)))
      (after-scan (scan-next-position)))))




(defun word-level-actions (word position-before)
  (tr :word-level-actions word)
  (tr :actions-on-word word position-before)
  (let ((position-after (chart-position-after position-before)))
    (set-status :word-actions-done position-before)
    (complete-word/hugin word position-before position-after)
    (word-traversal-hook word position-before position-after)
    (introduce-terminal-edges word position-before position-after)))



(defun introduce-terminal-edges (word position-before position-after)
  (tr :introduce-terminal-edges word)
  (let ((edges
         (install-terminal-edges word position-before position-after)))
    (check-edge-fsa-trigger edges position-before position-after)))


(defun check-edge-fsa-trigger (edges position-before position-after)
  (let ((position-after-fsa
         (do-edge-level-fsas edges position-before)))
    (just-before-next-scan (or position-after-fsa
                               position-after))))


(defun just-before-next-scan (pos-after)
  ;; The word to the left of this position may have put a .[ on it
  ;; We have to check here so that we can be ready to catch any immediately
  ;; following ]. introduced by scanning the next word.
  (tr :just-before-next-scan pos-after)
  (let (([ ([-on-position? pos-after)))
    (set-status :[-checked pos-after)
    (when [
      (adjudicate-new-open-bracket [ pos-after))
    (if (eq (pos-assessed? pos-after)
            :[-checked)
      ()
      (figure-out-where-to-start-on-next-pos pos-after))))

