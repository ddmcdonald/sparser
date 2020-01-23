;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1996,2011-2020  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "conjunction"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  January 2020

;; initated 6/10/93 v2.3, added multiplicity cases 6/15
;; 6.1 (12/13) fixed datatype glitch in resuming from unspaned conj.
;; 6.2 (1/7/94) allowed for trivial multiple-initial-edges
;; 6.3 (1/13) preempting referent calculation if either referent is nil
;;     (10/4) noticed successful referent was being indexed twice
;; 7.0 (12/29) put in check for lists.
;;     (9/13/96) added check for a comma just before the conjunction.
;;     (2/12/07) Added quiescence interaction checks in the two routines
;;      that create edges. 2/13 Got the conjoined edge to pass back up
;;      to the routine that decides what to do next, fixing bug with the
;;      treetop level. 8/11 modified the mark routine to lower the flag
;;      if it's already up and we're in speech mode. 
;;     (8/3/11) Added "or" as exact copy of the hook on "and". 8/4 Added
;;      a treetop hook for the case when we don't have adjacent segments.
;; 7.1 (10/18/11) Writing the look-under scheme.  11/8/12 Replaced format
;;      call with trace. Trapped case where edge-after is a word in situation
;;      in Boeing where two quotations are adjacent but the second  hasn't
;;      finished. 11/25/12 fixed fanout when "and" is covered with an edge
;;      and patched over another "won't do that yet" case.
;;     (3/6/13) Adapted multiple-initial-edge case in check-out-possible-conjunction
;; 8.1 (8/27/14) Completely reworked the continuation criteria to use
;;      the scan-another-segment? abstraction rather than burn in the usual
;;      case by hand.
;; 8.2 (8/31/14) Now that there's an edge over a conjunction for the benefit
;;      of the new forest protocol, there's a bug (of sort) in the scanner
;;      that keeps the words from being passed to complete/hugin so added
;;      equivalents based on the edge label
;; 8.3 (9/22/14) added heuristic based on identical form, with the flag
;;      *allow-form-conjunction-heuristic* to govern when its used. It's
;;      off by default and dynamically bound when wanted. 
;;     (10/6/14) Fanout from successive-scans to guard against unhandled
;;      *pending-conjunction* flag in the completion routine. 
;; 8.4 (11/17/14) Revised that to have them push onto the flag symbol.
;;   1/15/2015 allow verb+ed and adjective to combine in early phase
;; 8.5 (3/13/15) repealed the restriction on combining S's. If it gets
;;   into trouble semantically we can add more specific checks.
;; 4/27/2015 tighten up conjunction of items with the same form -- put in some tests on semantics
;;  using method conjunction-incompatible-labels
;; 4/28/2015 Added bunch of variables and switches to collect information on conjunctions
;; 5/30/15 Cleaned up that code so that I could read it.
;; 7/24/15 Permitting a collection of categories in multi-element conjunction
;; 7/26/2015 allow conjunctions of bio-entities and proteins, using method
;;  bio-coercion-compatible?  and print out the fact that the bio-entities
;;  so-conjoined are likely to be unrecognized proteins.
;; 12/1/15 pulled broad impact globals to sessions/globals with the others.

(in-package :sparser)

;;;----------------
;;; data gathering
;;;----------------

(defparameter *save-conjunctions* nil)

(defun save-conjunctions (&optional (yes? t))
  (setq *save-conjunctions* yes?))

(defparameter *show-protein-coercions* nil)

(defparameter *collect-conjunctions* nil)

(defparameter *all-conjunctions* nil)

(defparameter *rejected-form-conjs* nil
  "Accumulator for collecting instances where form motivates
  conjunction, but semantics rejects it")

(defparameter *form-conjs* nil
 "Accumulator for collecting instances where form motivates conjunction")

(defun collect-conjunctions ()
  (save-conjunctions)
  (loop for corpus in '(dec-test dry-run erk) 
    do (print corpus)(compare-to-snapshot corpus)))


;;;------
;;; hook
;;;------

(define-completion-action word::|and|
  :mark-event 'mark-instance-of-AND)


(define-completion-action word::|or|
  :mark-event 'mark-instance-of-AND)

#|
(define-completion-action category::and
  :mark-event  'mark-instance-of-category-AND)

(defun mark-instance-of-category-AND (edge)
  (mark-instance-of-AND (pos-edge-starts-at edge)
                        (word-named "and")
                        (pos-edge-ends-at edge)))

(define-completion-action category::or
  :mark-event  'mark-instance-of-category-OR)

(defun mark-instance-of-category-OR (edge)
  (mark-instance-of-AND (pos-edge-starts-at edge)
                        (word-named "or")
                        (pos-edge-ends-at edge)))
|#

(defun mark-instance-of-AND (and-word position-before position-after)
  "Push the position of the conjunction onto the global flag.
   When doing successive sweeps, this flag is noticed and managed by
   short-conjunctions-sweep which checks short adjacent edges.
   Large-scale conjunction is done in the successive passes of
   island driving, using a tally of conjunction positions that are
   found by sweep-sentence-treetops just after the chunking phase is done."
  (if *pending-conjunction*
    (cond
     (*speech*
      ;; In speech, words can be inadvertantly repeated, so in the
      ;; DAARCAT corpus we have "let's go ahead and and go and".
      ;; The result is that we hit two conjunctions in a row without
      ;; clearing the flag. 
      ;; Clear the flag, since this is most likely the "and then"
      ;; version of "and"
      (tr :conj-flag-still-up-in-speech)
      (setq *pending-conjunction* nil))

     ((sucessive-sweeps?)
      ;; Incremental handling of conjunctions by PTS post-routines
      ;; is turned off in this mode. Instead we the state global
      ;; into a push-stack of positions and handle them in a
      ;; later pass.
      (tr :setting-another-conjunction-pos-before position-before)
      (push position-before *pending-conjunction*))
     
     (t
      (push-debug `(,and-word ,position-before ,position-after))
      (break "stub -- unhandled case of two 'and's in a row")))
    
    (else
      (tr :setting-conjunction-pos-before position-before)
      (if (sucessive-sweeps?)
        (push position-before *pending-conjunction*)
        (setq *pending-conjunction* position-before)))))


;;--- Treetop hook

(set-generic-treetop-action word::|and|
                            'conjoin-adjacent-like-treetops)

;; Case of "and" ("or") spanned by a unary edge
(set-generic-treetop-action category::conjunction
                            'conjoin-adjacent-like-treetops)

(defun conjoin-adjacent-like-treetops (position-after)
  "Called by invoking the treetop-action above during the
   forest scan. Timing of the segment scan prohibited running
   via the usual entry point.
   'position-after' is the one that immediately follows the
    conjunction."
  (when (edge-p position-after)
    ;; Can happen if we have an edge over "and", which we'll get
    ;; sometimes depending on how it's being defined (which varies
    ;; according to the overall style of modeling)
    (setq position-after (pos-edge-ends-at position-after)))

  (tr :calling-conj-treetop-hook position-after)
  
  (let* ((position-before (chart-position-before position-after))
         (edge-before (span-ending-at position-before))
         (edge-after (span-starting-at position-after)))
    ;;/// comma check
    ;;/// edge-vector check
    (when (and edge-before edge-after)
      (unless (and (edge-p edge-before) (edge-p edge-after))
        (when (or (or (word-p edge-before) (word-p edge-after))
                  (or (edge-vector-p edge-before) (edge-vector-p edge-after)))
          ;; Known unknowns we can take up at some point in the future
          (return-from conjoin-adjacent-like-treetops nil))
        (push-debug `(,edge-before ,edge-after))
        (break "New conjunction case -- the 'edges' aren't edges."))
      (tr :conj-edges-to-each-side edge-before edge-after)

      ;; Short-circuit much of check-out-possible-conjunction
      ;; because we know more from this vantage point. 
      (let ((edge (dispatch-conj-by-multiplicities edge-before edge-after)))
        (or edge
            (look-for-submerged-matching-conj-edge
             edge-before edge-after))))))
        

(defun look-for-submerged-matching-conj-edge (edge-before edge-after)
  "Called from conjoin-adjacent-like-treetop and (recently 11/18) from
   look-for-submerged-conjunct where there is reason to believe that
   parsing activity after the early conjunction check has built an
   edge over the true (leftward) conjunct of a pending 'and'.
   We look at the edge-vector of the candidate edges (initially looking
   leftwards) and scan for an edge with the same semantic category label
   as the the edge on the right (i.e. we don't do any complex heuristics)."
  (tr :submerged-check edge-before edge-after)
  (let ( matching-edge )
    (let ((ev (edge-ends-at edge-before)) ;; look leftward first
          (label (edge-category edge-after)))
      (unless (member (edge-form-name edge-after) '(pp preposition))
        ;; don't do this conjunction and rethreading on PPs
        ;; such as "in Bak protein content nor in subcellular  location "
        ;; also don't do if the edge afterwards is a preposition (aborted pp)
        ;; example --
        ;;   "Antibodies against calnexin (goat polyclonal G-20) and
        ;;      against PP1 (rabbit polyclonal FL-18, and mAb E-19)
        ;;      were from Santa Cruz Biotechnology, Inc.")
        (setq matching-edge (search-ev-for-edge ev label))
        (when matching-edge
          ;;/// refactor so can easily run the same check on
          ;; the right edge-vector
          (conjoin-and-rethread-edges matching-edge edge-after :left))))))

(defparameter *trace-conjoin-and-rethread* nil)

(defun conjoin-and-rethread-edges (left-edge right-edge direction)
  "We've just identified an edge from the fringe of one of these
 two edges and are about make a new edge that conjoins it with the
 other edge --  from the 'left-edge' if we looked to our left.
 That will force a re-kniting of the links between
 many of the edges, and recomputation of their referents.
 In particular, the edge-ends-at of all the edges above the edge
 that we lift have to be reset to go to the other end of the newly
 created conjoined-edge (i.e. new-ev below). 
   This routine uses close to the techniquees as in the tuck
 routines. Need a good reason to merge them though, given the
 need to be very accurate."

  (let* ((heuristic (ecase direction
                      (:left :lifted-left-edge-of-conjunction)
                      (:right :lifted-right-edge-of-conjunction)))
         (lifted-edge (ecase direction
                        (:left left-edge)
                        (:right right-edge)))
         (parent-edge (edge-used-in lifted-edge)))

    (when parent-edge
      ;; Check the lifted -- If it's been respanned by an edge of the same
      ;; span (like a lambda predication), then the parent is further up
      (when (edges-have-same-span? lifted-edge parent-edge)
        (setq parent-edge (edge-used-in parent-edge))))
        
    (when *trace-conjoin-and-rethread*
        (format t "~&~%1st stagel:~
                     ~&parent: ~a~
                     ~&lifted: ~a~
                     ~&left: ~a~
                     ~%right: ~a~%"
                parent-edge lifted-edge left-edge right-edge)
        (break "look at parent"))

    (let* ((conjoined-edge (conjoin-two-edges left-edge right-edge
                                              heuristic 
                                              :do-not-knit t
                                              :pass 'conjoin-and-rethread-edges))
           (ref-conjoined (edge-referent conjoined-edge))
           (new-ev (ecase direction
                     (:left (edge-ends-at conjoined-edge))
                     (:right (edge-starts-at conjoined-edge)))))

      (when *trace-conjoin-and-rethread*
        (format t "~&~%2d stage:~
                     ~&conjoined-edge: ~a~
                     ~&parent: ~a~%"
                conjoined-edge parent-edge)
        (break "look at conjoined"))

      ;; Now all the edges above the parent (inclusive) need to get
      ;; new end-positions (trashing the intermediate end edge-vectors
      ;; but we won't be looking there again so it doesn't matter.
      ;; They'll also need updated referents.
      ;; Start with the new edge because we deliberatedly told the
      ;; edge-maker not to do the knitting since it would have 
      ;; messed up the 'top' edge information.
      (when parent-edge
        ;; When this runs in sparsely understood texts there will
        ;; often be cases where the edge we 'lifted' was in fact
        ;; not part of a larger consituent, in which case there
        ;; won't be any dominating edges that need rethreading.
        (let* ((ev (ecase direction
                     (:left (edge-ends-at lifted-edge))
                     (:right (edge-starts-at lifted-edge))))
               (edges-dominating-lifted
                (edges-on-ev-above lifted-edge ev))
               (constituents (edge-constituents conjoined-edge)))
          
          (when *trace-conjoin-and-rethread*
            (format t "~&%About to lift:~
                        ~&ev: ~a~
                        ~&constituents: ~a~
                        ~&dominating: ~a~%"
                    ev constituents edges-dominating-lifted))

          ;; We have to remove from this edge the edges that are part
          ;; of the conjunction, otherwise their end-points will be
          ;; shifted and we get weird effects
          (setq edges-dominating-lifted
                (delete lifted-edge edges-dominating-lifted))
          (loop for e in constituents
             when (memq e edges-dominating-lifted)
             do (setq edges-dominating-lifted
                      (delete e edges-dominating-lifted)))
          
          (when *trace-conjoin-and-rethread*
            (format t "~&~%edges to extend: ~a~%" edges-dominating-lifted)
            (break "before loop"))

          (dolist (e edges-dominating-lifted)
            (knit-edge-into-position e new-ev)
            (ecase direction
              (:left (setf (edge-ends-at e) new-ev))
              (:right (setf (edge-starts-at e) new-ev))))

          ;; The parent gets the new edge as its right-daughter (assuming
          ;; we lifted from the left)
          (ecase direction
            (:left (setf (edge-right-daughter parent-edge) conjoined-edge))
            (:right (setf (edge-left-daughter parent-edge) conjoined-edge)))
          (setf (edge-used-in conjoined-edge) parent-edge)

          (reinterpret-dominating-edges conjoined-edge)

          (when *trace-conjoin-and-rethread* (break "dust settled"))

          ;; Now move back to the forest-level in a reasonable way,
          ;; though it's not obvious that we can improve on just returning
          ;; back up through do-generic-actions-off-tree-top and the
          ;; do-treetop-loop up to PPTT or move-to-forest-level
          parent-edge)))))
      
                                           
 


;;;----------------------------------------------------------
;;; checking out the segment after the conjunction -- driver
;;;----------------------------------------------------------


(defun conjunction-is-before-this-segment (left-boundary) ; of completed segment
  "In a successive-sweeps algorithm, all of the conjunctions
  in the sentence are going to be stashed on *pending-conjunction*.
  In the incremental scan algorithm we get a conjunction and
  deal with it at the earliest possible moment, which is when
  the segment just after the conjunction has been scanned.
  That moment is sf-action/spanned-segment, which call this
  function to determine whether any pending conjunction
  applies to the segment it's just finished. This gates a call
  to look-for-possible-conjunction below."
  (declare (special *pending-conjunction*))
  (let ((conjunction-positions *pending-conjunction*)
        (pos-before (chart-position-before left-boundary)))
    (loop for conj-pos in conjunction-positions
       when (eq conj-pos pos-before) return t
       finally (return nil))))


  ;; (when *pending-conjunction*
  ;;   (unless (null (cdr *pending-conjunction*))
  ;;     (break "mulitple conjunctions"))
  ;;   (eq (car *pending-conjunction*) (chart-position-before left-boundary))))
 
(defun look-for-possible-conjunction (start-of-after-segment)

  ;; This is the ordinary entry point from segment-finishing code
  ;; in drivers/chart/psp/pts.lisp (sf-action/spanned-segment)

  ;; We wouldn't be called if there wasn't a full span over
  ;; the segment after the conjunction, and the segment in front
  ;; has at least the trivial span ("segment") over it.
  ;;   Get the edges that span these segments and start applying
  ;; progressively more heuristic conjunction algorithms until
  ;; we get a match or know we don't yet have enough information
  ;; in which case we set up a state that will have this process
  ;; resumed later.

  (tr :calling-conj-checkout-routine-at start-of-after-segment)

  (let* ((end-of-before-segment (car *pending-conjunction*))
         (position-after (chart-position-after end-of-before-segment))
         (edge-before (span-ending-at end-of-before-segment))
         (edge-after (span-starting-at position-after)))

    (when (word-p edge-before) ;; source-start -- dynamic-model #93
      ;; "And does phospho-MAPK1 now have a peak?"
      (return-from look-for-possible-conjunction nil))

    ;; check for a comma just before the conjunction. This first case
    ;; depends on the grammar putting literal edges over it, so this
    ;; will not be sufficent in general using a different grammar
    (when (and edge-before
               (edge-p edge-before)
               (eq (edge-category edge-before) (word-named ","))
        (setq edge-before
              (span-ending-at (chart-position-before end-of-before-segment)))))

    (tr :conj-edges-to-each-side edge-before edge-after)

    (let ((heuristic (conjunction-heuristics edge-before edge-after)))
      (if heuristic
        (let ((edge (conjoin/2 edge-before edge-after heuristic
                               :pass 'after-chunking)))
          (tr :short-conjoined-edge edge)
          edge)
        (tr :no-heuristics-for edge-before edge-after)))))

    

#| Original continuation when we were running a completely incremental scan
    
    (when (edge-vector-p edge-before)
      (let ((good-edges (reduce-multiple-initial-edges edge-before))) ;; no literals
        (setq edge-before (car (last good-edges)))))
    (when (edge-vector-p edge-after)
      (let ((good-edges (reduce-multiple-initial-edges edge-after)))
        (setq edge-after (car (last good-edges)))))
 
    (let ((new-edge (dispatch-conj-by-multiplicities edge-before
                                                     edge-after)))
      ;; The PTS routines all presume that we're going to renter
      ;; the control fsa from here rather than return a value
      ;; to them.
      (if new-edge
        ;; if the conjunction went through then we have to pick up
        ;; again at the point where we left off in segment-finished
        ;; before we called this conjunction routine.
        (let ((right-boundary (pos-edge-ends-at new-edge)))
          (if (scan-another-segment? right-boundary)
            (scan-next-segment *where-the-last-segment-ended*)
            (else
             (tr :moving-to-forest-level/conj/edge new-edge)
             (move-to-forest-level right-boundary
                                   :full-segment-scanned))))

        ;; Same thing, but reference a different edge for the boundary
        (let ((right-boundary (etypecase edge-after
                                (edge (pos-edge-ends-at edge-after))
                                (word (chart-position-after position-after)))))
          (if (scan-another-segment? right-boundary)
            (scan-next-segment *where-the-last-segment-ended*)
            
            ;; We're moving to the forest level, the question is
            ;; with which edge. If we're using the long established
            ;; roll-up-from-the-right protocol then since we know
            ;; that these two edges won't combine we start with
            ;; the edge-before. If it's the new protocol based on
            ;; island-driving then we use the edge-after
            (let ((rightmost-pos 
                   (if (new-forest-protocol?)
                     right-boundary
                     (etypecase edge-before
                       (edge (pos-edge-ends-at edge-before))
                       (word (chart-position-after end-of-before-segment))))))
              (tr :moving-to-forest-level/conj/no-edge rightmost-pos)
              (move-to-forest-level rightmost-pos           
                                    :full-segment-scanned)))))) |#


;;;-------------------------------
;;; intermediary dispatch routine
;;;-------------------------------

(defun dispatch-conj-by-multiplicities (edge-before edge-after)
  ;; an intermediary on the way to actually doing the checking
  ;; where we sort out whether there's one or several edges involved

  (when (and edge-before edge-after)
    ;; rules-out looking at pairs of unknown words

    (if (or (edge-vector-p edge-before)
            (edge-vector-p edge-after))
      ;; e.g. "president" has rules as a single word title and
      ;; as one of the literal words in a longer title
      (cond ((and (edge-vector-p edge-before)
                  (edge-vector-p edge-after))
             (look-for-like-edges/both edge-before edge-after))
            ((edge-vector-p edge-before)
             (look-for-like-edges/left edge-before edge-after))
            ((edge-vector-p edge-after)
             (look-for-like-edges/right edge-before edge-after)))

      (test-for-conjunction edge-before edge-after))))


(defun test-for-conjunction (edge-before edge-after)
  ;; common point to check for conjunction across a conjunction word.
  (let ((heuristic
         (conjunction-heuristics edge-before edge-after)))
    (when heuristic
      (conjoin/2 edge-before edge-after heuristic))))




;;;------------------------
;;; conjunction heuristics
;;;------------------------

(defparameter *premod-forms* `(,category::verb+ed ,category::adjective)
  "Heuristic criteria to encourage form-based conjunction")


(defun conjunction-heuristics (edge-before edge-after)
  ;; This is the actual check that says whether we should conjoin
  ;; or not. More heuristic judgements go here as they are
  ;; developed
  (when (and (edge-p edge-before)(edge-p edge-after))
    (let ((label-before (edge-category edge-before))
          (label-after (edge-category edge-after))
          (ref-before (edge-referent edge-before))
          (ref-after (edge-referent edge-after))
          (form-before (edge-form edge-before))
          (form-after (edge-form edge-after)))
      (cond
        ((eq form-before category::pp)
         ;; don't conjoin prepositional phrases until rest of system can deal with them
         ;; this avoids a break in adjoining conjoined PPs
         ;; to NPs and clauses -- the real fix should be
         ;; at the point of the break...
         nil)
        ((eq (edge-referent edge-before) (edge-referent edge-after))
         ;; "p53 and p53 transaction" where it is parsed as "(p53 and p53) transactivation"
         nil)
        ((or (and (eq label-before label-after)
                  (or (not (eq form-before category::vp+ed))
                      (eq form-after category::vp+ed))
                  (cond
                    ((eq (individual-p ref-before)
                         (individual-p ref-after))
                     (if (current-script :biology)
                         (or (and (not (itypep label-before 'biological))
                                  (not (itypep label-after 'biological)))
                             (itypep label-before label-after)
                             (itypep label-after label-before)
                             (bio-coercion-compatible? label-before label-after edge-before edge-after)
                             (progn (print `(blocked conjunction of ,edge-before and ,edge-after))
                                    nil))
                         t))
                    ((and (itypep ref-before 'xref)
                          (itypep ref-after 'xref))
                     t)
                    ((or (itypep ref-before 'protein)
                         (itypep ref-after 'protein))
                     ;;cases like "actin-related protein and γ-tubulin "
                     ;; when the premodifier on "protein" is dropped
                     t)
                    ((or ;; phosphorylated or non-phosphorylated
                      (and (individual-p ref-before)
                           (category-p ref-after)
                           (itypep ref-before ref-after))
                      (and (individual-p ref-after)
                           (category-p ref-before)
                           (itypep ref-before ref-before)))
                     t)
                    (t (warn "conjunction-problem: conjunction of category and ~
                              individual ~s and ~s" ref-before ref-after)
                       nil)))
             (when (current-script :biology)
               (bio-coercion-compatible? label-before label-after edge-before edge-after)))
         :conjunction/identical-adjacent-labels)
        
        (*allow-form-conjunction-heuristic*   
         (when (and
                (or (not (eq *allow-form-conjunction-heuristic* :vg))
                    (and (category-p form-before)
                         (member (cat-symbol form-before) *vg-categories*)))
                (or
                 (eq form-before form-after)
                 (and
                  (referential-category-p form-before)
                  (referential-category-p form-after)
                  ;; can conjoin proper nouns and NPs (in fact, proper nouns should be NPs)
                  (member (cat-symbol form-before) '(category::np category::proper-noun))                              
                  (member (cat-symbol form-after) '(category::np category::proper-noun)))
                 (and (memq form-before *premod-forms*)
                      (memq form-after *premod-forms*)))
                (not
                 (and
                  (ng-head? edge-before)
                  (ng-head? edge-after)
                  (let ((rtta (right-treetop-at/edge edge-after)))
                    (and (edge-p rtta) 
                         (eq category::preposition (edge-form rtta))
                         (not
                          (eq
                           (loop for pat in (known-subcategorization? (edge-referent edge-after))
                              thereis
                                (equal (edge-left-daughter rtta) (subcat-label pat)))
                           (loop for pat in (known-subcategorization? (edge-referent edge-before))
                              thereis
                                (equal (edge-left-daughter rtta) (subcat-label pat)))))))))
                     
                (not (conjunction-incompatible-labels
                      label-before label-after edge-before edge-after)))
           :conjunction/identical-form-labels))))))


;;------------- biology-specific (mostly) heuristic data

(defun bio-coercion-compatible? (label-before label-after edge-before edge-after)
  (declare (special label-after label-before category::bio-entity))
  (cond
    ((or
      (and
       (safe-itypep label-before 'protein)
       (safe-itypep label-after 'protein))
      (and
       (safe-itypep label-before 'bio-complex)
       (safe-itypep label-after 'bio-complex))))
    ((safe-itypep label-before 'protein)
     (cond
       ((safe-itypep label-after 'protein))
       ((eq (safe-itype-of label-after) category::bio-entity)
	(show-protein-coercion edge-after edge-before)
	t)
       ((safe-itypep label-after 'bio-chemical-entity))))
    ((safe-itypep label-after 'protein)
     (cond
       ((eq (safe-itype-of label-before) category::bio-entity)
	(show-protein-coercion edge-before edge-after)
	t)
       ((eq (safe-itype-of label-after) category::bio-entity)
	(show-protein-coercion edge-after edge-before)
	t)
       ))))


(defun show-protein-coercion (e1 e2)
  (when *show-protein-coercions*
    (let ((e1-chars (actual-characters-of-word (pos-edge-starts-at e1)
					       (pos-edge-ends-at e1))))
      ;; (lsp-break "Likely protein: ~a" e1-chars)
      (format t "~&*** ~s is likely a protein -- conjoined with ~s in ~s~&"
	      e1-chars
	      (actual-characters-of-word (pos-edge-starts-at e2)
					 (pos-edge-ends-at e2))
	      (current-string)))))

(defun conjunction-incompatible-labels (before after edge-before edge-after)
  (let ((reject?
         (or (word-p before)
	     (word-p after)
	     (and (itypep before '(:or protein residue-on-protein fragment)) ;;??  other
                  (not (eq before after)))
             (and (category-p before)
                  (category-p after)
                  (if (and (eq (form-cat-name edge-before) 'vg)
                           (eq (form-cat-name edge-after) 'vg))
                      (not
                       (or (and (itypep before 'process)
                                (itypep after 'process))
                           (and
                            (itypep before 'bio-predication)
                            (itypep after 'bio-predication))))
                      (not
                       (equal  (itypep before '(:or process bio-predication modifier))
                               (itypep after '(:or process bio-predication modifier)))))))))
    (cond
      (reject?
       (push (conj-info before after edge-before edge-after
                        :pass 'conjunction-incompatible-labels ) 
	     *rejected-form-conjs*)
       t)
      (t
       (push (conj-info before after edge-before edge-after
                        :pass 'conjunction-incompatible-labels)
             *form-conjs*)
       nil))))

(defun conj-info (before after edge-before edge-after &key pass)
  (when (null pass) (lsp-break "unknown-conjunction-pass"))
  `(,before ,after 
        ,(actual-characters-of-word (pos-edge-starts-at edge-before)
                                    (pos-edge-ends-at edge-after))
        ,(or pass 'unknown-pass)
        ,*p-sent*))

(defun display-conjunctions ()
  (loop for tag in '(SHORT-CONJUNCTIONS-SWEEP 
                     LOOK-FOR-SHORT-OBVIOUS-CONJUNCTIONS
                     TRY-SPANNING-CONJUNCTION :CONJOIN-CLAUSE-AND-VP DA-RULES)
    do (format t "~&~&_________~&~s~&" tag) 
    (loop for c in *all-conjunctions* when (eq (fourth c) tag) do (print (third c)))))





;;;----------------------------------------
;;; dispatch for the possibility of a list
;;;----------------------------------------

(defun conjoin/2 (left-edge right-edge heuristic &key pass)

  ;; We have decided that these two edges conjoin. Now we check
  ;; back to the left to see if these are just the end of a
  ;; sequence of conjuncts separated by commas.  When we're done
  ;; we span the result with one edge and compute a collection
  ;; referent for it. 

  (or (search-for-list-conjunction left-edge right-edge :pass pass)
      (conjoin-two-edges
       left-edge right-edge heuristic :pass pass)))



;;;---------------------
;;; making the new edge
;;;---------------------

(defun conjoin-two-edges (left-edge right-edge heuristic &key do-not-knit pass)
  (declare (special *sentence-in-core*))
  (let ((category (edge-category left-edge))
        (form (edge-form left-edge))
        (referent (referent-of-two-conjoined-edges left-edge right-edge))
        (constituents (constituents-of-two-conjoined-edges left-edge right-edge)))
    (let ((edge (make-chart-edge
                 :left-edge left-edge :right-edge right-edge
                 :category category
                 :form form
                 :referent referent
                 :rule 'conjoin-two-edges
                 :constituents constituents
                 :do-not-knit do-not-knit)))
      (edge-interaction-with-quiescence-check edge)
      (tr :conjoining-two-edges edge left-edge right-edge heuristic)
      (when *save-conjunctions* 
        (push (conj-info (edge-referent left-edge) (edge-referent right-edge)
                         left-edge right-edge
                         :pass pass)
              *all-conjunctions*))
      edge)))

#|    ;; This earlier version will use the wrong edge if there are multiple
      ;; readings for, e.g., the left edge. All-tts has the same issue
      ;; which makes using it to set the constituents problematic
      ;; Issue was with "up", which is a direction as well as a prep.
       (make-edge-over-long-span
                  (pos-edge-starts-at left-edge)
                  (pos-edge-ends-at right-edge)
                  category
                  :constituents constituents
                  :form form
                  :referent referent
                  :rule heuristic) |#
 
(defun constituents-of-two-conjoined-edges (left-edge right-edge)
  (let* ((ev (pos-ends-here (pos-edge-starts-at right-edge))) ; avoid Oxford comma
         (conj-edge (ev-top-node ev)))
    (when (and conj-edge
               (eq (form-cat-name conj-edge) 'conjunction))
      (list left-edge conj-edge right-edge))))


(defun conjoin-multiple-edges (edge-list &key pass)
  (let* ((rightmost-edge (car (last edge-list)))
         (leftmost-edge (car edge-list))
         (referent (referent-of-list-of-conjoined-edges edge-list)))
    (let ((edge (make-edge-over-long-span
                 (pos-edge-starts-at leftmost-edge)
                 (pos-edge-ends-at rightmost-edge)
                 (edge-category leftmost-edge)
                 :form (edge-form leftmost-edge)
                 :constituents edge-list
                 :referent referent
                 :rule 'conjoin-multiple-edges)))
      (tr :conjoining-multiple-edges/comma edge)
      (edge-interaction-with-quiescence-check edge)
      (when *save-conjunctions* 
        (push (conj-info (edge-referent leftmost-edge) 
                         (edge-referent rightmost-edge)
                         leftmost-edge rightmost-edge
                         :pass pass)
              *all-conjunctions*))
      edge )))




;;;---------------------------------
;;; searching for list conjunctions
;;;---------------------------------

(defun search-for-list-conjunction (left-edge right-edge &key pass)
  ;; Called from Conjoin/2. Return nil if no list is found, signalling
  ;; that it should go ahead with just these two initial edges.
  ;; If a list is found, we call the edge-maker from here.
  (tr :looking-for-list-conj left-edge)
  (let ((edge-list
         (get-another-comma-chain-conj
          (list left-edge right-edge) ; edges-so-far
          left-edge ; right-edge
          (chart-position-before (pos-edge-starts-at left-edge))))) ; left-pos
    (if edge-list
      (conjoin-multiple-edges edge-list :pass pass)
      (else (tr :no-list-conj)
            nil))))

#| Excised from short-conjunctions-sweep. It moves the left-side
   reference position across the Oxford comma if there is one.
   Since that code runs before the chunking operations that carate
   the segments, it can lead to very odd mistakes.

    ;; handle case of A, B, and C (i.e. comma before conjunction)
    (when (and (not (word-p left-edge))
               ;; case such as ...cells (Figure 1B and 1C) and we...
               (eq word::comma 
                   (edge-category 
                    (if (edge-vector-p left-edge) 
                      (lowest-edge left-edge)
                      left-edge))))
          (setq left-edge (next-treetop/leftward left-edge))  |#

(defgeneric edge-over-comma? (edge)
  (:documentation "Is this an edge over a comma?")
  (:method ((e edge))
    (eq (edge-category e) word::comma)))

(defun get-another-comma-chain-conj (edges-so-far right-edge left-pos)
  (multiple-value-bind (left-edge new-left-pos)
                       (seg-before-conjoins left-pos right-edge)
    (if left-edge
      (get-another-comma-chain-conj
       (push left-edge edges-so-far) left-edge new-left-pos)

      (if (> (length edges-so-far) 2)
        ;; we've accumulated at least one more edge, so we return
        ;; the list whether or not we've extended the chain
        edges-so-far
        nil ))))


(defun seg-before-conjoins (middle-pos right-edge)
  "Look for a comma just before the left edge. If there is one
   and if the segment ending there conjoins with the leftmost of
   the edges conjoined so far (i.e. 'right-edge') then return
   that new segment and the position it starts at.  Otherwise
   return nil"
  (when (eq word::comma (pos-terminal middle-pos))
    (let ((left-edge (edge-ending-at middle-pos)))
      (when left-edge
	(if (conjunction-heuristics left-edge right-edge)
          (then
            (tr :extended-conjunction left-edge)
	    (values left-edge
		    (chart-position-before (pos-edge-starts-at left-edge))))
	    nil )))))
        


(defun oxford-comma-pattern? (comma-edge)
  "Called from short-conjunctions-sweep when it has this pattern:
   [ , and <right-edge> ]. The question is whether (a) there is
   an edge just to the left of the comma. (Given when this runs that
   edge will have been formed by a polyword, a terminal, or the
   no-space machinery.) And (b) is there a comma immediately to the
   left of this edge: [ , <edge> , and <right-edge> ]. 
   If this is the case then return the new edge."
  (let* ((comma-position (pos-edge-starts-at comma-edge))
         (edge (left-treetop-at/only-edges comma-position)))
    (when (and edge (edge-p edge)) ; e.g. not source-start
      (let* ((edge-start-pos (pos-edge-starts-at edge))
             (pos-before (chart-position-before edge-start-pos)))
        (when (eq word::comma (pos-terminal pos-before))
          edge)))))
      




;;;-----------
;;; semantics
;;;-----------

;; This is split into two functions to allow the updating of the edge-mention when the
;;  edge is reinterpreted in a conjunction

(defun referent-of-two-conjoined-edges (left-edge right-edge)
  (referent-of-two-conjoined-referents
   (edge-referent left-edge)
   (edge-referent right-edge)
   left-edge
   right-edge))

(defun referent-of-two-conjoined-referents (left-ref right-ref &optional left-edge right-edge)
  (when (and left-ref right-ref
             (not (word-p left-ref))
             (not (word-p right-ref)))
    ;; when doing DA there can be cases where there's a categorization
    ;; but no referent. 
    (if (or (consp left-ref)
            (consp right-ref))
        (break "bad referent in referent-of-two-conjoined-edges, ~s"
               left-ref right-ref)
        
        (let* ((new-left-ref left-ref)
               (new-right-ref right-ref)
               (left-type (etypecase left-ref
                            (individual
                             (if (is-basic-collection? left-ref)
                                 (value-of 'type left-ref)
                                 (itype-of left-ref)))
                            (category left-ref)))
               (right-type (etypecase right-ref
                             (individual
                              (if (is-basic-collection? right-ref)
                                  (value-of 'type right-ref)
                                  (itype-of right-ref)))
                             (category right-ref)))
               (type left-type))
          
          (unless (eq left-type right-type)
            (multiple-value-setq (new-left-ref new-right-ref type)
              (adjudicate-specializations left-ref left-type
                                          right-ref right-type)))
          (setq new-left-ref (maybe-make-individual new-left-ref))
          (setq new-right-ref (maybe-make-individual new-right-ref))
          (when left-edge
            (unless (eq new-left-ref left-ref) (update-edge-mention-referent left-edge new-left-ref)))
          (when right-edge
            (unless (eq new-right-ref right-ref) (update-edge-mention-referent right-edge new-right-ref)))
          (let ((collection
                 (define-or-find-individual 'collection
                     ;; This is needed for roundtripping to Spire structures
                     ;; CHECK WITH DAVID FOR WHY THESE WERE FORCED TO BE CATEGORIES
                     :items (list new-left-ref new-right-ref)
                   :number 2
                   :type type)))
            (if *description-lattice*
                (find-or-make-lattice-description-for-collection collection)
                collection ))))))

(defun ref-type (ref)
  (cond
   ((individual-p ref) (indiv-type ref))
   ((category-p ref) (list ref))
   (t nil)))

(defun referent-of-list-of-conjoined-edges (edge-list)
  (when (every #'identity edge-list)
    (let* ((referents (mapcar #'edge-referent edge-list))
           (first-ref (and referents (first referents)))
           (last-ref (and referents (first (last referents)))))
      (cond
        ((individual-p first-ref)
         (let ((types (mapcar #'ref-type referents))
               (sample-type (ref-type last-ref)))
           (when (every #'(lambda (type) (eq type sample-type)) referents)
             (setq sample-type
                   (adjudicate-specializations/list referents types)))
           (let ((collection
                  (define-or-find-individual 'collection
                      :items referents
                      :number (length referents)
                      ;; not sure what this is supposed to be doing -- it
                      ;;  makes the type field of the collection a list
                      ;;  which is inconsistent with other caes
                      ;;  The function adjudicate-specializations/list is a stub
                      ;;  so I am just going to change this to be consistent with
                      ;;  other cases
                      ;;:type sample-type
                      :type (itype-of first-ref))))
             (if *description-lattice*
                 (find-or-make-lattice-description-for-collection collection)
                 collection ))))

        ;; "biochemical, molecular and immunological approaches"
        ((category-p first-ref)
         ;;/// Finding a type would be a matter of finding their
         ;; common super-type and that's unlikely given the 
         ;; excessively flat category structure we tend to have.
         ;; Still, the check routines expect a type so we pick
         ;; the first one.
         (let ((collection
                (define-or-find-individual 'collection
                    :items referents
                    :number (length referents)
                    :type (category-of (first referents)))))
           (if *description-lattice*
               (find-or-make-lattice-description-for-collection collection)
               collection )))

        (t
         (tr :conjoined-edges-dont-have-individuals-as-referents)
         nil )))))




(defun adjudicate-specializations (left-ref left-type
                                   right-ref right-type)
  ;;///stub
  ;;(declare (ignore right-type))
  (values left-ref right-ref
          (if (eq (cat-name left-type) 'bio-entity)
              right-type
              left-type)
          left-type))

(defun adjudicate-specializations/list (referents types)
  ;;///stub
  (declare (ignore referents))
  (car types))



;;;-------------------------------------------------------
;;; drivers to handle single-word multiplicities of edges
;;;-------------------------------------------------------

(defun look-for-like-edges/left (left-vector right-edge)
  (let* ((right-label (edge-category right-edge))
         (left-edge (find/edge-with-category left-vector right-label)))
    (when left-edge
      (test-for-conjunction left-edge right-edge))))


(defun look-for-like-edges/right (left-edge right-vector)
  (let* ((left-label (edge-category left-edge))
         (right-edge (find/edge-with-category right-vector left-label)))
    (when right-edge
      (test-for-conjunction left-edge right-edge))))


(defun look-for-like-edges/both (left-vector right-vector)
  ;; take the first pairing that where the labels match
  (if (eq *edge-vector-type* :kcons-list)
    (break "write the code for the kcons variation")

    (let ((vector (ev-edge-vector left-vector))
          left-edge  conj-edge )
      (dotimes (i (ev-number-of-edges left-vector))
        (setq left-edge (aref vector i))
        (setq conj-edge
              (look-for-like-edges/right left-edge right-vector))
        (when conj-edge
          (return-from look-for-like-edges/both conj-edge)))
      nil )))


;;;;; CODE TO EXPAND CONJUNCTIONS ;;;;;;
;;;;; to help with searches -- distribute conjunctions

(defun maybe-expand-conjunctions (i)
  (cond
   ((or (referential-category-p i) 
        (not (individual-p i)))
    i)
   ((collection-p i)
    (value-of 'items i))
   (t ;; must be an individual which is not a collection -- 
    ;; return either a list of individuals that is the result of expanding
    ;; internal conjunctions, or the individual itself
    (let (conjunctive-bindings simple-bindings expansion)
      (loop for b in (indiv-binds i)
        do
        (setq expansion (maybe-expand-conjunctions (binding-value b)))
        (if (consp expansion)
            (push (list (binding-variable b) expansion) conjunctive-bindings)
            (push (list (binding-variable b) expansion) simple-bindings)))
      (when conjunctive-bindings
	(lsp-break "conj"))
      (if (null conjunctive-bindings)
          i
          (expand-conjunctions i simple-bindings conjunctive-bindings))))))

;; Just defined since this is the name I (Rusty) remember -- makes it easier to find
(defun distribute-conjunctions (i simple-bindings conjunctive-bindings)
  (expand-conjunctions i simple-bindings conjunctive-bindings))

(defun expand-conjunctions (i simple-bindings conjunctive-bindings)
  (let ((i-list 
         (list
          (apply #'find-or-make-individual 
                 (car (indiv-type i)) 
                 (loop for bb in simple-bindings append (list (var-name (car bb)) (second bb)))))))
    (loop for bb in conjunctive-bindings
      do
      (setq i-list (loop for i in i-list 
                     append 
                     (loop for bv in (cadr bb)
                       collect
                       (bind-dli-variable (car bb) bv i)))))
    i-list))
        
       
                            


