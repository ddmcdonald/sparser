;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1997,2012-2014  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "adjudicators"
;;;   Module:  "drivers;chart:psp:"
;;;  Version:  2.2 August 2014

;; broken out from [scan] 5/13/94 v2.3.  5/16,17,18 working out details
;; 5/24 updated args.  6/14 added a case in fsa.
;; 1.0 (7/26) added large set of cases to handle effects of brackets on
;;      the edge returned by an fsa. (8/1) tweeked them.
;; 1.1 (1/4/95) added case to Figure-out-where..  and sharpened what is
;;      done after word-fsas introduce an edge
;; 1.2 (2/13,14) broke Adjudicate-after-pnf into two parts and included
;;      a check for flags put up while PNF was running
;; 1.3 (4/30/95) picked up another case of the state after PNF succeeds
;; 1.4 (5/12) added case to Adjudicate-after-pnf1 for null status
;;     (5/30) added case to Check-fsa-edge-for-trailing-[-bracket
;;     (7/5) added a trace statement. 
;;     (7/17/96) added a landing site for sucessful no-space scans
;;     (8/17/97) gated the Sun-specific cases in Adjudicate-after-pnf.
;;     (2/5/07) converted e{type}case to use otherwise & break. 
;; 1.5 (3/7/07) Modifying what can happen after an fsa returns to include
;;      the possibility of a no-space pattern. Tuned 3/9.
;; 2.0 (12/4/12) Removed the qualification for the *sun* system since
;;      it's been utterly superceded. 12/5/12 Substantially reworked
;;      pnf adjudicator to introduce the trailing brackets after
;;      the last word (but just length 1 for now). 12/7 reworked
;;      adjudicate-result-of-word-fsa because it wasn't getting any
;;      fsa on the resulting edge, stranding the apostrophe-s edge.
;; 2.1 (2/8/13) Put in a lot of debugging info since the state space
;;      is getting considerably larger.
;;     (1/22/14) Added a workable version of resume-after-error
;; 2.2 (2/26/14) Extended adjudicate-result-of-word-fsa to handle the case
;;      where the end-position hadn't been scanned. 
;;     (8/28/14) Added adjudicate-after-new-forest-protocol. 

(in-package :sparser)

;;;--------------
;;; General case
;;;--------------

#|  Cases
1. EOS
 We might have already been at the EOS.
 The next chart position might hold the EOS.
 In both cases add a state (avoid loops) and
 try just running the EOS check.
2. Skip to the right segment boundary
 If the segment bounds have been established and
 the current position is strictly to the right
|#

(defun resume-after-error ()
  (tr :resume-after-error)
  (let* ((next-pos (the-next-position-to-scan))
         (rightmost-pos (chart-position-before next-pos))
         (word (when (includes-state rightmost-pos :scanned)
                 (pos-terminal rightmost-pos))))
    ;; Were we at the end-of-source
    (if word
      (end-of-source-check word rightmost-pos) ;; throws
      (else ;; Are we there now?
       (scan-next-position)
       (setq word (pos-terminal next-pos))
       (when (eq word *end-of-source*)
         (terminate-chart-level-process))))

    ;; Are there established segment boundaries 
    ;; and the bug was in the segment processing
    ;; or above it?
    (if *where-the-last-segment-ended*
      (then ;;/// need a test case
       ;; before writing this. So punting for the moment
       (scan-next-pos next-pos))
      (else
       ;; place for a trace
       ;; By definition, the next position to scan hasn't
       ;; been assessed or had anything at all done to it,
       ;; so it's probably a reasonable default for where
       ;; to resume that's not going to loop us.
       (scan-next-pos next-pos)))))
         





;;;----------------
;;; Specific cases
;;;----------------

(defun return-to-scan-level-from-null-span (where-seg-ended)
  ;; called from Segment-finished when the coverage is :null-span
  (tr :return-to-scan-level-from-null-span where-seg-ended)
  (when *trace-status-history*
    (pretty-print-status-history where-seg-ended))
  (let ((next-word (pos-terminal where-seg-ended))
        (status (pos-assessed? where-seg-ended)))
    (no-further-action-on-segment)
    (tr :returning-to-word-level-from-null-span where-seg-ended)
    (if *segment-ended-because-of-boundary-from-form-label*
      (then
        (setq *segment-ended-because-of-boundary-from-form-label* nil)
        (if (eq status :]-from-edge-after-checked)
          (let ((edge (ev-top-node (pos-starts-here where-seg-ended))))
            (when (eq edge :multiple-initial-edges)
              ;; this gets the most recent edge, which effectively
              ;; filters the case where there's one literal and one
              ;; substantive edge, ///but won't see the case where
              ;; there are several substantive edges
              (setq edge (highest-preterminal-at where-seg-ended)))
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
  ;; Standard caller is scan-next-segment

  (tr :figure-out-where-to-start-on-next-pos position)
  ;;   "[scan] figure-out-where-to-start ~A"
  (let ((status (pos-assessed? position)))
    (tr :scan-dispatch position status)
    ;;   "Figuring out what to do at p~A~
    ;;            ~%   which has the status ~A"
    (when *trace-status-history*
      (pretty-print-status-history position))

    (if status
      (cond
       ((eq status :]-from-prior-word-checked)
        ;; Question is whether we may have skipped ahead on this
        ;; position because of how we got there, e.g. via a 
        ;; call to do-edge-level-fsas in check-edge-fsa-trigger
        ;; and there wasn't one
        (if (includes-state position :scanned-from-word-actions)
          ;; then we missed the early parts of the scan and need
          ;; to insert as though the scan was normal. 
          (continue-scan-next-pos position)

          ;; Otherwise lets assume we got here somehow
          ;; by a regular path.
          (check-for-[-from-prior-word
           position (pos-terminal (chart-position-before position)))))

       ((eq status :scanned)
        (scan-next-pos position))
        
        ((eq status :]-from-word-after-checked)
         (check-for-[-from-word-after (pos-terminal position)
                                      position))
        
        ((eq status :preterminals-installed)
         ;; "Mr. Servison" 4/23/94
         (check-edge-fsa-trigger (preterminal-edges position)
                                 position
                                 (pos-terminal position)
                                 (chart-position-after position)))
        
        ((eq status :brackets-from-word-introduced)
         (check-for-]-from-prior-word
          position (pos-terminal (chart-position-before position))))
        
        (t
         (pretty-print-status-history position)
         (push-debug `(,position))
         (break "New case for what to do with next position:~
                 ~%  ~A" status)))
      (else
        ;; this may not be the right thing to do, it hasn't been vetted
        ;; by a positive situation. Might consider looking for a ] on
        ;; the prior position.
        (scan-next-pos position)
        ))))



(defun adjudicate-after-pnf (start-pos pos-returned)
  ;; Called from check-PNF-and-continue when PNF succeeded.
  ;; We dispatch to the appropriate point in the scan fsa
  ;; according to the status of the 'pos-returned' position,
  ;; which is right at the end of PNF's sequence of words.
  (tr :adjudicate-after-pnf pos-returned)
  ;;   [scan] adjudicate-after-pnf at p~A
  (when *trace-status-history*
    (pretty-print-status-history pos-returned))
  (let ((status (pos-assessed? pos-returned))
        (pnf-length (- (pos-token-index pos-returned)
                       (pos-token-index start-pos))))
    (tr :after-pnf pos-returned status)
    ;;   PNF ended its sequence at p~A, which is ~A
    (flet ((dispatch-on-status ()
             (case status
               (:scanned
                (let ((word (pos-terminal pos-returned)))
                  (introduce-leading-brackets word pos-returned)
                  (check-for-]-from-word-after word pos-returned)))
        
               (:brackets-from-word-introduced ;; leading brackets
                (check-for-]-from-word-after
                 (pos-terminal pos-returned) pos-returned))
               
               (:preterminals-installed
                ;; This case occurs when the suffix of the pnf sequence
                ;; is left out, e.g. because "of" doesn't think it is
                ;; part of the name
                (check-for-]-from-word-after
                 (pos-terminal pos-returned) pos-returned))
               (otherwise
                (pretty-print-status-history pos-returned)
                (push-debug `(,start-pos ,pos-returned))
                (break "Unexpected status: ~a on p~a" 
                       status (pos-token-index pos-returned))))))             
    (cond
     ((= pnf-length 1)
      ;; The PNF scan doesn't consider trailing brackets
      ;; and isn't particular sensitive to segment boundaries,
      ;; certainly not enough for Grok. 
      ;;   Length 1 is a special case, but should look
      ;; at this for later cases. But introducing the 
      ;; right-side brackets of the starting position
      ;; we're allowing the possibility that they
      ;; terminate the segment, which otherwise wouldn't
      ;; be appreciated. 
      (introduce-right-side-brackets 
       (pos-terminal start-pos) pos-returned))
     (t
      (if status
        (dispatch-on-status)

        ;; next word isn't in the chart yet. PNF's scan probably
        ;; ended with a polyword
        (scan-next-pos pos-returned)))))))



(defun continuation-after-pnf-returned-nil (word position-before)
  (let ((status (pos-assessed? position-before)))
    (tr :continue-after-pnf-returned-nil position-before status)
    ;;   "PNF returned nil. Pos-before: ~A, status: ~A"
    (when *trace-status-history*
      (pretty-print-status-history position-before))
    (case status
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
       ;; has been turned off  -- so it didn't do anything
       (cwlft-cont word position-before))

      (otherwise
       (break "Unexpected status after PNF returned: ~a" status)))))


(defun word-fsas-done-by-pnf (position-before word)
  ;; the word-fsas haven't been called, but pnf was, and it did
  ;; the fsas on this position.
  (tr :word-fsas-done-by-pnf position-before)
  (when *trace-status-history*
      (pretty-print-status-history position-before))
  (let ((status (pos-assessed? position-before)))
    (case status
      (:word-fsas-done
       ;; find out if there's an edge that the fsa produced
       ;; and if so, jump over it
       (move-to-end-of-word-initated-edge-if-exists
        position-before word))
      (otherwise
       (pretty-print-status-history position-before)
       (push-debug `(,position-before ,word))
       (break "Unexpected status: ~a" status)))))

(defun move-to-end-of-word-initated-edge-if-exists (start-pos word)
  (tr :pos-already-had-fsas-done start-pos)
  (let ((edge (ev-top-node (pos-starts-here start-pos))))
    (if edge
      (then
        (tr :fsa-returned-an-edge edge)
        (check-for-]-from-prior-word (pos-edge-ends-at edge)
                                     (edge-category edge)))
      (else
        (word-level-actions word start-pos)))))



(defun adjudicate-after-edge-fsa (position-returned)
  (tr :adjudicate-after-edge-fsa position-returned)
  (when *trace-status-history*
      (pretty-print-status-history position-returned))
  (let ((status (pos-assessed? position-returned)))
    (if status
      (cond
       ((eq status :scanned)
        (scan-next-pos position-returned))

       ((eq status :brackets-from-word-introduced)
        (check-for-]-from-word-after (pos-terminal position-returned)
                                     position-returned))

       ((eq status :scanned-from-word-actions)
        (continue-scan-next-pos position-returned))

       (t
         (pretty-print-status-history position-returned)
         (push-debug `(,position-returned))
	 (break "Adjudicate-after-edge-fsa:~%  unexpected status ~a at p~a"
		  status position-returned)))

      (scan-next-pos (scan-next-position)))))



(defun adjudicate-after-new-forest-protocol (rightmost-position)
  ;; called from new-forest-protocol? at the end. 
#| In the normal case we are returning from having seen the period
that initiated the forest processing. We can take advantage of that
as long as we make allowance for tiny test cases without periods.

|#
  ;;(break "Adjudicate forest return at ~a" (pos-token-index rightmost-position))
  (if *source-exhausted*
    (terminate-chart-level-process)
    (word-level-actions-except-terminals *the-punctuation-period*
                                         rightmost-position)))




(defun adjudicate-result-of-word-fsa (word ;; that triggered the fsa
                                      pos-before-word ;; before the trigger word
                                      pos-after-fsa-result)
  (tr :adjudicate-result-of-word-fsa word) 
  ;; "[scan] adjudicate-result-of-word-fsa ~A"
  (let ((edge (edge-between pos-before-word pos-after-fsa-result))
        (status (pos-assessed? pos-after-fsa-result)))
    (tr :adjudicating-fsa-result
        word status pos-before-word pos-after-fsa-result edge)
    ;; "An FSA ended at p~A, whose status is ~A.~
    ;;    it started at p~A with \"~A\"~
    ;;    there is an edge over the span:~%    ~A"
    (when *trace-status-history*
      (pretty-print-status-history pos-after-fsa-result))
    (cond
     ((null status) ;; return position hasn't been scanned
      ;;/// should we inccorporate some of what happens
      ;; in the next clause ??
      (scan-next-pos pos-after-fsa-result))

    (edge
      ;; This is a fresh edge, we  have to see if it has its
      ;; own brackets and/or fsa before looking further on. 
      ;; Treating the edge like it was the result
      ;; of introduce-terminal-edges -- which will look
      ;; for a leading form edge and eventually will get
      ;; to the edge-fsa trigger, which had been the problem
      ;; with the earlier treatment applied to a possessive.
      (check-preterminal-edges
       (list edge) word
       pos-before-word pos-after-fsa-result))

    (t ;; other two cases cover whats likely special here
      (adjudicate-status-after-fsa-returned
       status pos-after-fsa-result)))))


(defun adjudicate-status-after-fsa-returned (status pos-after-fsa-result)
  ;; Subroutine of adjudicate-result-of-word-fsa
  (tr :adjudicate-status-after-fsa-returned status)
  (if status
    ;; The fsa looked beyond the position it ultimately ended at.
    ;; Dispatch accordingly.
    (case status
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

      (otherwise
       (pretty-print-status-history pos-after-fsa-result)
       (push-debug `(,pos-after-fsa-result))
       (break "Unexpected status: ~a" status)))
    
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




(defun adjudicate-after-scan-pattern-has-succeeded (pos-before word pos-after)
  ;; When a no-space, word-level scan-pattern completes, it will usually 
  ;; but not necessarily have introduced an edge over the region that 
  ;; it scanned.  In the edge case, it's just the same as if we'd gotten
  ;; the edge via a polyword or other sort of word-triggered fsa.  If there's
  ;; no edge, then our re-entry point is different, since we want those other
  ;; sorts of fsa to have a crack at this region of the text.
  (tr :adjudicate-after-successfur-pattern-scan pos-before pos-after)
  (let ((edge ;;(edge-between pos-before pos-after)
	 (top-edge-at/ending pos-after)))
    (cond
     ((and edge ;; the return value might be a word
           (edge-p edge))
	(cleanup-segment-boundaries-after-pattern-edge edge)
	(when (not (eq (pos-edge-ends-at edge) pos-before))
	  ;; edge is longer than normal - extends further leftwards
	  (setq pos-before (pos-edge-ends-at edge)))
	(check-fsa-edge-for-brackets pos-before edge pos-after))

     ((null edge)
      ;; This is where we were going to go in Check-for/initiate-scan-patterns
      ;; if the no-space scan hadn't completed
      (check-word-level-fsa-trigger word pos-before))
     ((and edge (word-p edge))
      (push-debug `(,pos-before ,word ,pos-after))
      (break "where to next")))))

(defun cleanup-segment-boundaries-after-pattern-edge (edge)
  ;; The boundary could have been set just before we started the
  ;; pattern. If it has, we move it over the edge so the
  ;; treetop scan doesn't get confused.
  (when *left-segment-boundary*
    (let ((edge-left-index 
	   (pos-token-index (ev-position (edge-starts-at edge))))
	  (left-boundary-index (pos-token-index *left-segment-boundary*)))
      (when (< edge-left-index left-boundary-index)
	(setq *left-segment-boundary*
	      (ev-position (edge-starts-at edge)))))))


(defun adjudicate-result-of-scan-pattern-after-fsas-ran (pos-before-word ;; where started
							 pos-after-fsa-result
							 pos-reached) ;; by pattern
  (tr :adjudicate-result-of-scan-pattern-after-fsas-ran
      pos-before-word pos-reached)
  (let ((edge (edge-between pos-before-word pos-reached)))
    (if edge
      (then
	(cleanup-segment-boundaries-after-pattern-edge edge)
	(check-fsa-edge-for-brackets pos-before-word edge pos-reached))

      ;; we got here from Adjudicate-result-of-word-fsa, where we noticed that the
      ;; position the fsa had reached didn't have any space in front of it. If the
      ;; scan-pattern somehow succeeded without creating an edge then the situation
      ;; is quite odd, so we might consider punting.
      (else 
       (push-debug `(,pos-before-word ,pos-after-fsa-result ,pos-reached))
       (break "Shouldn't have happened")))))



;;;------------------------------------------
;;; brackets on an edge introduced by an fsa
;;;------------------------------------------

#| This copies code from [scan2] circa 6/15/94 -- they should probably
   be identical, but it appears that the [scan] version might be
   missing the case of .[, and also I don't want to rock the boat
   if the fact that this edge is multiple words long creates any
   drift.  |#

#| 7/26/94  This version does not look for fsa's off the edge |#

(defun handle-leading-brackets-off-fsa-edge (pos-before edge pos-after)
  (tr :handle-leading-brackets-off-fsa-edge pos-before pos-after)
  (let* ((label (edge-category edge))
         (] (]-on-position-because-of-word? pos-before label)))
    (set-status :]-from-edge-after-checked pos-before)  ;; <<< status
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

  (when (eq edge :multiple-initial-edges)
    ;; this gets the most recent edge, which effectively
    ;; filters the case where there's one literal and one
    ;; substantive edge, ///but won't see the case where
    ;; there are several substantive edges
    (setq edge (highest-preterminal-at pos-before)))

  (let* ((label (edge-category edge))
         (pos-after (pos-edge-ends-at edge))
         ([ ([-on-position-because-of-word? pos-before label)))
    (set-status :[-from-edge-after-checked pos-before) ;; <<< status
    (when [
      (adjudicate-new-open-bracket [ pos-before))

    ;; this is just for the one case of possessive for now.
    ;; If something else were to go through it and construct
    ;; an edge with a longer span we'd never appreciate it.
    ;; /// waiting on an example or a reason to be more disciplined.
    (let ((return-value (do-edge-level-fsas (list edge) pos-before)))
      (when return-value
        ;; if a non-position (and non-nil) object were to be returned
        ;; it would have been caught earlier in Try-edge-fsa
        (unless (eq return-value pos-after)
          (break "Unanticipated case: edge fsa ran on the edge built ~
                  by earlier edge fsa~%and went further to the right ~
                  than it did~%reaching p~A" return-value)))

      (check-fsa-edge-for-trailing-brackets edge pos-after))))




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
    (set-status :]-from-edge-before-checked
                pos-after) ;; <<< status
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
    (set-status :[-from-edge-before-checked 
                pos-after) ;; <<< status
    (when [
      (adjudicate-new-open-bracket [ pos-after))

    (if original-status
      ;; This is the status the position after the edge before
      ;; we changed it having checked for a [ from the edge's
      ;; trailing brackets.  We can't just call Figure-out-where...
      ;; because we've corupted the context with what we just did.
      (case original-status
        (:scanned (scan-next-pos pos-after))
        (:preterminals-installed
         ;; not sure about this 5/30
         (scan-next-pos pos-after))
	(:brackets-from-edge-introduced ;; ns-pattern case 3/9/07
	 (scan-next-pos pos-after))
        (otherwise
         (pretty-print-status-history pos-after)
         (push-debug `(,edge ,pos-after ,original-status))
         (break "New case of 'original-status: ~a'" original-status)))
      (scan-next-pos (scan-next-position)))))

