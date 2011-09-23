;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "adjudicators"
;;;   Module:  "drivers;chart:psp:"
;;;  Version:  0.1 July 1994

;; broken out from [scan] 5/13/94 v2.3.  5/16,17,18 working out details
;; 5/24 updated args.  6/14 added a case in fsa.
;; 0.1 (7/26) added large set of cases to handle effects of brackets on
;;      the edge returned by an fsa

(in-package :sparser)


(defun return-to-scan-level-from-null-span (where-seg-ended)
  ;; called from Segment-finished when the coverage is :null-span
  (tr :return-to-scan-level-from-null-span where-seg-ended)
  (let ((next-word (pos-terminal where-seg-ended))
        (status (pos-assessed? where-seg-ended)))
    (no-further-action-on-segment)
    (tr :returning-to-word-level-from-null-span where-seg-ended)
    (if *segment-ended-because-of-boundary-from-form-label*
      (then
        (setq *segment-ended-because-of-boundary-from-form-label* nil)
        (if (eq status :]-from-edge-after-checked)
          (let ((edge (ev-top-node (pos-starts-here where-seg-ended))))
            (check-fsa-edge-for-leading-[-bracket edge where-seg-ended))

          (check-edge-fsa-trigger (all-preterminals-at where-seg-ended)
                                  where-seg-ended
                                  next-word
                                  (chart-position-after where-seg-ended))))

      (if (eq status :]-from-edge-after-checked)
        (break "went by non-edge-flag-route")
        (else
          (check-for-[-from-word-after
           next-word where-seg-ended))))))



(defun figure-out-where-to-start-on-next-pos (position)
  ;; we need this because we've just returned from an excursion through
  ;; code outside of this scan network and we have to appreciate
  ;; where we left off.
  (tr :figure-out-where-to-start-on-next-pos position)
  (let ((status (pos-assessed? position)))
    (tr :scan-dispatch position status)

    (case status
      (:]-from-prior-word-checked
       (check-for-[-from-prior-word
        position (pos-terminal (chart-position-before position))))

      (:scanned
       (scan-next-pos position))

      (:]-from-word-after-checked
       (check-for-[-from-word-after (pos-terminal position)
                                    position))
        #|(:word-fsas-done
         ;; when we went off, we'd already applied an fsa on a position
         ;; just beyond what ended up being the end of the segment.
         ;; (E.g. PNF was doing lookahead and hit a header-label.)  We
         ;; have to establish whether the fsa succeeded -- in which case
         ;; there'll be an edge starting at this position.  If it did,
         ;; we resume where the edge ended, if not we pickup at the
         ;; word-level actions.
         (let ((edge (ev-top-node (pos-starts-here position))))
           (if edge
             (figure-out-where-to-start-on-next-pos
              (pos-edge-ends-at edge))
             (check-for-segment-start (pos-terminal position)
                                      position))))|#

      (:preterminals-installed
       ;; "Mr. Servison" 4/23/94
       (check-edge-fsa-trigger (preterminal-edges position)
                               position
                               (pos-terminal position)
                               (chart-position-after position)))

      (:brackets-from-word-introduced
       (check-for-]-from-prior-word
        position (pos-terminal (chart-position-before position))))

      (otherwise
       (break "New case for what to do with next position:~
               ~%  ~A" status)))))




(defun adjudicate-after-pnf (pos-returned)
  ;; pnf succeeded
  (tr :adjudicate-after-pnf pos-returned)
  (let ((status (pos-assessed? pos-returned)))
    (tr :after-pnf pos-returned status)
    (ecase status
      (:scanned
       (let ((word (pos-terminal pos-returned)))
         (introduce-leading-brackets word pos-returned)
         (check-for-]-from-word-after word pos-returned)))
      (:brackets-from-word-introduced
       (check-for-]-from-word-after
        (pos-terminal pos-returned) pos-returned))
      )))




(defun word-fsas-done-by-pnf (position-before word)
  ;; the word-fsas haven't been called, but pnf was, and it did
  ;; the fsas on this position.
  (tr :word-fsas-done-by-pnf position-before)
  (let ((status (pos-assessed? position-before)))
    (ecase status
      (:word-fsas-done
       ;; find out if there's an edge that the fsa produced
       ;; and if so, jump over it
       (move-to-end-of-word-initated-edge-if-exists
        position-before word))
      )))


(defun move-to-end-of-word-initated-edge-if-exists (start-pos word)
  (tr :pos-already-had-fsas-done start-pos)
  (let ((edge (ev-top-node (pos-starts-here start-pos))))
    (if edge
      (then
        (tr :fsa-returned-an-edge edge)
        (figure-out-where-to-start-on-next-pos
         (pos-edge-ends-at edge)))
      (else
        (word-level-actions word start-pos)))))



(defun adjudicate-after-edge-fsa (position-returned)
  (tr :adjudicate-after-edge-fsa position-returned)
  (let ((status (pos-assessed? position-returned)))
    (ecase status
      (:scanned
       (scan-next-pos position-returned))
      (:brackets-from-word-introduced
       (check-for-]-from-word-after (pos-terminal position-returned)
                                    position-returned)))))



(defun adjudicate-result-of-word-fsa (word
                                      pos-before-word
                                      pos-after-fsa-result)
  (tr :adjudicate-result-of-word-fsa word)
  (let ((edge (edge-between pos-before-word pos-after-fsa-result))
        (status (pos-assessed? pos-after-fsa-result)))
    (tr :adjudicating-fsa-result
        word status pos-before-word pos-after-fsa-result edge)
    (if edge
      (check-fsa-edge-for-brackets
       pos-before-word edge pos-after-fsa-result)
      (adjudicate-status-after-fsa-returned
       status pos-after-fsa-result))))


(defun adjudicate-status-after-fsa-returned (status pos-after-fsa-result)
  (tr :adjudicate-status-after-fsa-returned status)
  (if status
    ;; The fsa looked beyond the position it ultimately ended at.
    ;; Dispatch accordingly.
    (ecase status
      #|(:word-fsas-done
         ;; but did they succeed? If they did, we should look at the
         ;; position of the edge they produced rather than where the
         ;; fsa running before them ended.
         (let ((edge (ev-top-node
                      (pos-starts-here pos-after-fsa-result))))
           (if edge
             (figure-out-where-to-start-on-next-pos
              (pos-edge-ends-at edge))
             (check-for-]-on-position
              (pos-terminal pos-after-fsa-result)
              pos-after-fsa-result))))|#
      
      (:scanned
       (scan-next-pos pos-after-fsa-result))

      ;; the position-after has its brackets from the word/edge before it
      (:brackets-from-word-introduced
       ;; the position-after has its brackets from the word/edge before it
       (check-for-]-from-prior-word pos-after-fsa-result
                                    (pos-terminal pos-after-fsa-result)))

      )
    
    ;; we get here with a polyword since it just checks the 
    ;; identity of words and doesn't do any other operations
    (scan-next-pos (scan-next-position))))



(defun check-fsa-edge-for-brackets (pos-before edge pos-after)
  (tr :check-fsa-edge-for-brackets edge)
  (let* ((label (edge-category edge))
         (bracket-assignment
          (introduce-leading-brackets label pos-before t)))
    (if bracket-assignment
      (handle-leading-brackets-off-fsa-edge pos-before edge pos-after)
      (check-fsa-edge-for-trailing-brackets edge pos-after))))



;;;------------------------------------------
;;; brackets on an edge introduced by an fsa
;;;------------------------------------------

#| This copies code from [scan2] circa 6/15 -- they should probably
   be identical, but it appears that the [scan] version might be
   missing the case of .[, and also I don't want to rock the boat
   if the fact that this edge is multiple words long creates any
   drift.  |#

#| 7/26  This version does not look for fsa's off the edge |#

(defun handle-leading-brackets-off-fsa-edge (pos-before edge pos-after)
  (tr :handle-leading-brackets-off-fsa-edge pos-before pos-after)
  (let* ((label (edge-category edge))
         (] (]-on-position-because-of-word? pos-before label)))
    (set-status :]-from-edge-after-checked pos-before)
    (if ]
      (then
        (tr :]-noted ] pos-before)
        (if *left-segment-boundary*
          (if (bracket-ends-the-segment? ] pos-before)
            (then 
              ;; when pts finishes and we begin the next segment we'll
              ;; have to do a different kind of scan than the normal
              ;; word-level triggered operations because we'll be starting
              ;; at the very word whose fsa produced this edge.  The
              ;; status setting makes the dispatch to do the right thing
              (pts t))                  
            (check-fsa-edge-for-leading-[-bracket edge pos-before))
          (else
            (tr :]-ignored/no-left-boundary-yet ] edge pos-before)
            (check-fsa-edge-for-leading-[-bracket edge pos-before))))
      (else
        (check-fsa-edge-for-leading-[-bracket edge pos-before)))))


(defun check-fsa-edge-for-leading-[-bracket (edge pos-before)
  (tr :check-fsa-edge-for-leading-[-bracket pos-before)
  ;; cribbed from Check-for-[-from-position-before
  (let* ((label (edge-category edge))
         ([ ([-on-position-because-of-word? pos-before label)))
    (set-status :[-from-edge-after-checked pos-before)
    (when [
      (adjudicate-new-open-bracket [ pos-before))

    ;; this is just for the one case of possessive for now.
    ;; If something else goes through it and were to construct
    ;; an edge with a longer span we'd never appreciate it.
    ;; /// waiting on an example or a reason to be more disciplined.
    (let ((return-value (do-edge-level-fsas (list edge) pos-before)))
      (when return-value
        (if (eq return-value :possessive)
          (tr :possessive-finished)
          (break "Unanticipated case: edge fsa ran on the edge built ~
                  by earlier edge fsa~%and returned: ~A" return-value)))

      (let ((pos-after (pos-edge-ends-at edge)))
        (check-fsa-edge-for-trailing-brackets edge pos-after)))))




(defun check-fsa-edge-for-trailing-brackets (edge pos-after)
  (tr :check-fsa-edge-for-trailing-brackets pos-after)
  (let ((original-status (pos-assessed? pos-after)))
    (introduce-trailing-brackets (edge-category edge) pos-after t)
    (handle-trailing-brackets-off-fsa-edge
     edge pos-after original-status)))


(defun handle-trailing-brackets-off-fsa-edge (edge pos-after
                                              original-status)
  (tr :handle-trailing-brackets-off-fsa-edge pos-after)
  (let* ((label (edge-category edge))
         (] (]-on-position-because-of-word? pos-after label)))
    (set-status :]-from-edge-before-checked pos-after)
    (if ]
      (then
        (tr :]-noted ] pos-after)
        (if *left-segment-boundary*
          (if (bracket-ends-the-segment? ] pos-after)
            (then 
              ;; this return from pts will be completely normal
              (pts t))               
            (check-fsa-edge-for-trailing-[-bracket
             edge pos-after original-status))
          (else
            (tr :]-ignored/no-left-boundary-yet ] edge pos-after)
            (check-fsa-edge-for-trailing-[-bracket
             edge pos-after original-status))))
      (else
        (check-fsa-edge-for-trailing-[-bracket
         edge pos-after original-status)))))


(defun check-fsa-edge-for-trailing-[-bracket (edge pos-after
                                              original-status)
  (tr :check-fsa-edge-for-trailing-[-bracket pos-after)
  (let* ((label (edge-category edge))
         ([ ([-on-position-because-of-word? pos-after label)))
    (set-status :[-from-edge-before-checked pos-after)
    (when [
      (adjudicate-new-open-bracket [ pos-after))

    (if original-status
      ;; This is the status the position after the edge before
      ;; we changed it having checked for a [ from the edge's
      ;; trailing brackets
      (break "position after fsa-edge has an original status")
      (scan-next-pos (scan-next-position)))))

