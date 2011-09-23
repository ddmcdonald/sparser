;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1997  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "adjudicators"
;;;   Module:  "drivers;chart:psp:"
;;;  Version:  1.5 March 2007

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
  (tr :figure-out-where-to-start-on-next-pos position)
  (let ((status (pos-assessed? position)))
    (tr :scan-dispatch position status)

    (if status
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
                 ~%  ~A" status)))
      (else
        ;; this may not be the right thing to do, it hasn't been vetted
        ;; by a positive situation. Might consider looking for a ] on
        ;; the prior position.
        (scan-next-pos position)
        ))))



;;--- flags defined in other workspaces that need defaults for 
;;    Adjudicate-after-pnf
(unless (boundp '*pos-possible-next-letter*)
  (defparameter *pos-possible-next-letter* nil))
(unless (boundp '*pos-starting-term-being-defined*)
  (defparameter *pos-starting-term-being-defined* nil))
(unless (boundp '*NL-action-waiting-on-next-NLs*)
  (defparameter *NL-action-waiting-on-next-NLs* nil))

(defun adjudicate-after-pnf (pos-returned)
  ;; Called from Check-PNF-and-continue when PNF succeeded.
  ;; If PNF's scan was terminated explicitly by some routine then
  ;; there may be a flag up that we should react to, otherwise
  ;; we dispatch to the appropriate point in the scan fsa
  ;; according to the status of the 'pos-returned' position,
  ;; which is right at the end of PNF's sequence of words.
  (tr :adjudicate-after-pnf pos-returned)
  (cond
   ;; These two cases should be reworked next time the glossary from
   ;; Sun is used.
   ((and *sun* *pos-possible-next-letter*)
    (next-letter-of-the-alphabet pos-returned))
   ((and *sun* *pos-starting-term-being-defined*)
    (unless *NL-action-waiting-on-next-NLs*
      (finished-entry-title pos-returned)))
   (t
    (adjudicate-after-pnf1 pos-returned))))

(defun adjudicate-after-pnf1 (pos-returned)
  ;; This is a convenient way for those special routines to
  ;; get back into the mainstream
  (tr :adjudicate-after-pnf pos-returned)
  (let ((status (pos-assessed? pos-returned)))
    (tr :after-pnf pos-returned status)
    (if status
      (case status
        (:scanned
         (let ((word (pos-terminal pos-returned)))
           (introduce-leading-brackets word pos-returned)
           (check-for-]-from-word-after word pos-returned)))
        
        (:brackets-from-word-introduced
         (check-for-]-from-word-after
          (pos-terminal pos-returned) pos-returned))
        
        (:preterminals-installed
         ;; This case occurs when the suffix of the pnf sequence
         ;; is left out, e.g. because "of" doesn't think it is
         ;; part of the name
         (check-for-]-from-word-after
          (pos-terminal pos-returned) pos-returned))

	(otherwise
	 (break "Unexpected status: ~a" status)))

      ;; next word isn't in the chart yet. PNF's scan probably
      ;; ended with a polyword
      (scan-next-pos pos-returned))))




(defun word-fsas-done-by-pnf (position-before word)
  ;; the word-fsas haven't been called, but pnf was, and it did
  ;; the fsas on this position.
  (tr :word-fsas-done-by-pnf position-before)
  (let ((status (pos-assessed? position-before)))
    (case status
      (:word-fsas-done
       ;; find out if there's an edge that the fsa produced
       ;; and if so, jump over it
       (move-to-end-of-word-initated-edge-if-exists
        position-before word))
      (otherwise
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
  (let ((status (pos-assessed? position-returned)))
    (if status
      (case status
	(:scanned
	 (scan-next-pos position-returned))
	(:brackets-from-word-introduced
	 (check-for-]-from-word-after (pos-terminal position-returned)
				      position-returned))
	(otherwise
	 (break "Adjudicate-after-edge-fsa -- unexpected status ~a at p~a"
		  status position-returned)))

      (scan-next-pos (scan-next-position)))))



(defun adjudicate-result-of-word-fsa (word ;; that triggered the fsa
                                      pos-before-word ;; before the trigger word
                                      pos-after-fsa-result)
  (tr :adjudicate-result-of-word-fsa word)
  (let ((edge (edge-between pos-before-word pos-after-fsa-result))
        (status (pos-assessed? pos-after-fsa-result)))
    (tr :adjudicating-fsa-result
        word status pos-before-word pos-after-fsa-result edge)
    (if edge
      (then 
	(if (and (no-space-before-word? pos-after-fsa-result)
		 *uniformly-scan-all-no-space-token-sequences*)
	  (then
	    (tr :no-space-at pos-after-fsa-result)
	    (let ((pos-reached
		   (initiate-scan-pattern-driver t pos-after-fsa-result)))
	      (if pos-reached
		(adjudicate-result-of-scan-pattern-after-fsas-ran
		 pos-before-word pos-after-fsa-result pos-reached)
		(check-fsa-edge-for-brackets
		 pos-before-word edge pos-after-fsa-result))))
	  (check-fsa-edge-for-brackets
	   pos-before-word edge pos-after-fsa-result)))

      (adjudicate-status-after-fsa-returned
       status pos-after-fsa-result))))


(defun adjudicate-status-after-fsa-returned (status pos-after-fsa-result)
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
  (let ((edge ;;(edge-between pos-before pos-after)
	 (top-edge-at/ending pos-after)))
    (if edge
      (then
	(cleanup-segment-boundaries-after-pattern-edge edge)
	(when (not (eq (pos-edge-ends-at edge) pos-before))
	  ;; edge is longer than normal - extends further leftwards
	  (setq pos-before (pos-edge-ends-at edge)))
	(check-fsa-edge-for-brackets pos-before edge pos-after))

      ;; This is where we were going to go in Check-for/initiate-scan-patterns
      ;; if the no-space scan hadn't completed
      (check-word-level-fsa-trigger word pos-before))))

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
      (break "Shouldn't have happened"))))



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

  (when (eq edge :multiple-initial-edges)
    ;; this gets the most recent edge, which effectively
    ;; filters the case where there's one literal and one
    ;; substantive edge, ///but won't see the case where
    ;; there are several substantive edges
    (setq edge (highest-preterminal-at pos-before)))

  (let* ((label (edge-category edge))
         (pos-after (pos-edge-ends-at edge))
         ([ ([-on-position-because-of-word? pos-before label)))
    (set-status :[-from-edge-after-checked pos-before)
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
         (break "New case of 'original-status: ~a'" original-status)))
      (scan-next-pos (scan-next-position)))))

