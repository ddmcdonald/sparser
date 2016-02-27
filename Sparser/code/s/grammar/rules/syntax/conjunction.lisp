;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1996,2011-2015  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "conjunction"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  8.5 December 2015

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
(defparameter *collect-conjunctions* nil)
(defparameter *all-conjunctions* nil)
(defparameter *rejected-form-conjs* nil
  "Accumulator for collecting instances where form motivates
  conjunction, but semantics rejects it")
(defparameter *form-conjs* nil
"Accumulator for collecting instances where form motivates
   conjunction")
(defun collect-conjunctions ()
  (save-conjunctions)
  (loop for corpus in '(dec-test dry-run erk) 
    do (print corpus)(compare-to-snapshot corpus)))

;;;------
;;; hook
;;;------

(define-completion-action word::|and|
  :mark-event  'mark-instance-of-AND)


(define-completion-action word::|or|
  :mark-event  'mark-instance-of-AND)

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
      (push position-before *pending-conjunction*))
     (t
      (push-debug `(,and-word ,position-before ,position-after))
      (break "stub -- unhandled case of two 'and's in a row")))
    (else ; 
      (tr :setting-conjunction-pos-before position-before)
      (if (sucessive-sweeps?)
        (push position-before *pending-conjunction*)
        (setq *pending-conjunction* position-before)))))


;;--- Treetop hook

(set-generic-treetop-action word::|and|
                            'conjoin-adjacent-like-treetops)

(defun conjoin-adjacent-like-treetops (position-after)
  ;; Called by invoking the treetop-action above during the
  ;; forest scan. Timing of the segment scan prohibited running
  ;; via the usual entry point.
  ;; position-after is the one that immediately follows the
  ;; conjunction.

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
  ;; look leftward first
 (tr :submerged-check edge-before edge-after)
 (let ( matching-edge )
   ;; look leftward first
   (let ((ev (edge-ends-at edge-before))
         (label (edge-category edge-after)))
     (setq matching-edge (search-ev-for-edge ev label))
     (if matching-edge 
       (conjoin-and-rethread-edges matching-edge edge-after :left)
       (else
         ;; /// Look rightward
         (push-debug `(,ev ,label)))))))

(defun conjoin-and-rethread-edges (left-edge right-edge direction)
  (let* ((heuristic (ecase direction
                      (:left :lifted-left-edge-of-conjunction)
                      (:right :lifted-right-edge-of-conjunction)))
         (lifted-edge (ecase direction
                        (:left left-edge)
                        (:right right-edge)))
         (parent-edge (edge-used-in lifted-edge))
         (conjoined-edge (conjoin-two-edges left-edge right-edge
                                            heuristic 
                                            :do-not-knit t
                                            :pass 'conjoin-and-rethread-edges))
         (new-ev (ecase direction
                   (:left (edge-ends-at conjoined-edge))
                   (:right (edge-starts-at conjoined-edge)))))
    ;; Now all the edges above the parent (inclusive) need to get
    ;; new end-positions (trashing the intermediate end edge-vectors
    ;; but we won't be looking there again so it doesn't matter.
    ;; Start with the new edge because we deliberatedly told the
    ;; edge-maker not to do the knitting since it would have 
    ;; messed up the 'top' edge information. 
    (let* ((ev (ecase direction
                 (:left (edge-ends-at lifted-edge))
                 (:right (edge-starts-at lifted-edge))))
           (edges-dominating-lifted
            (edges-on-ev-above lifted-edge ev)))

      (pop edges-dominating-lifted) ;; remove lifted edge

      (dolist (e (cons conjoined-edge edges-dominating-lifted))
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

      (push-debug `(,conjoined-edge ,new-ev ,ev ,parent-edge))

      ;; Now move back to the forest-level in a reasonable way,
      ;; though it's not obvious that we can improve on just returning
      ;; back up through do-generic-actions-off-tree-top and the
      ;; do-treetop-loop up to PPTT or move-to-forest-level
      )))
      
                                           
 


;;;----------------------------------------------------------
;;; checking out the segment after the conjunction -- driver
;;;----------------------------------------------------------

(defun check-out-possible-conjunction (start-of-after-segment)

  ;; This is the ordinary entry point from segment-finishing code
  ;; in drivers/chart/psp/pts.lisp

  ;; We wouldn't be called if there wasn't a full span over
  ;; the segment after the conjunction, and the segment in front
  ;; has at least the trivial span ("segment") over it.
  ;;   Get the edges that span these segments and start applying
  ;; progressively more heuristic conjunction algorithms until
  ;; we get a match or know we don't yet have enough information
  ;; in which case we set up a state that will have this process
  ;; resumed later.

  (tr :calling-conj-checkout-routine-at start-of-after-segment)

  (let* ((end-of-before-segment *pending-conjunction*)
         (position-after (chart-position-after end-of-before-segment))
         (edge-before (span-ending-at end-of-before-segment))
         (edge-after (span-starting-at position-after)))

    ;; check for a comma just before the conjunction. This first case
    ;; depends on the grammar putting literal edges over it, so this
    ;; will not be sufficent in general using a different grammar
    (when edge-before
      (when (eq (edge-category edge-before) (word-named ","))
        (setq edge-before
              (span-ending-at (chart-position-before end-of-before-segment)))))

    ;(format t "~%~%position before conjunction = p~A~
    ;             ~%             position after = p~A~%~%"
    ;        (pos-token-index end-of-before-segment)
    ;        (pos-token-index position-after))

    (when (edge-vector-p edge-before)
      (let ((good-edges (reduce-multiple-initial-edges edge-before))) ;; no literals
        (setq edge-before (car (last good-edges)))))
    (when (edge-vector-p edge-after)
      (let ((good-edges (reduce-multiple-initial-edges edge-after)))
        (setq edge-after (car (last good-edges)))))

    (setq *pending-conjunction* nil)

    (tr :conj-edges-to-each-side edge-before edge-after)

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
        (let ((right-boundary (pos-edge-ends-at edge-after)))
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
                                    :full-segment-scanned))))))))


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
  ;(format t "~& left edge: ~A~
  ;           ~%right edge: ~A~%~%"
  ;        edge-before edge-after)
  ;(update-workbench)
  ;(break)

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
          (label-after (edge-category edge-after)))
      (cond
       ((or (and
             (eq label-before label-after)
             (cond
              ((eq
                (individual-p (edge-referent edge-before))
                (individual-p (edge-referent edge-after)))
               t)
              (t (break "conjunction-problem: conjunction of category and individual")) ))            
            (bio-coercion-compatible? label-before label-after edge-before edge-after))
        :conjunction/identical-adjacent-labels)
       (*allow-form-conjunction-heuristic*   
        ;;(break "form heuristics allowed. Check backtrace")
        (let ((form-before (edge-form edge-before))
              (form-after (edge-form edge-after)))
          (when (and (or (and (eq form-before form-after))
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
                              (let ((sub-cats (known-subcategorization? (edge-referent rtta))))
                                (and 
                                 (assoc (edge-left-daughter rtta) sub-cats)                                 
                                 (not (assoc (edge-left-daughter rtta) sub-cats))))
                              ;;this code blocks conjunction of NG heads that are followed by a preposition --
                              ;;  because it appears much more likely that the following PP is attached 
                              ;;  to the second head, not to the conjunction
                              
                              ))))
                     
                     (not (conjunction-incompatible-labels
                           label-before label-after edge-before edge-after)))
            :conjunction/identical-form-labels)))))))

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

(defun safe-itypep (low high)
  (when (or (individual-p low)
            (referential-category-p low))
    (itypep low high)))

(defun safe-itype-of (low)
  (when (or (individual-p low)
            (referential-category-p low))
    (itype-of low)))

(defun show-protein-coercion (e1 e2)
  (let ((e1-chars (actual-characters-of-word (pos-edge-starts-at e1)
                                             (pos-edge-ends-at e1) nil)))
    ;; (lsp-break "Likely protein: ~a" e1-chars)
    (format t "~&*** ~s is likely to be a protein, because of conjunction with ~s~&"
          e1-chars
          (actual-characters-of-word (pos-edge-starts-at e2)
                           (pos-edge-ends-at e2)
                           nil))))

(defun edge-string (e)
  (get-surface-string-for-individual (edge-referent e)))

(defun conjunction-incompatible-labels (before after edge-before edge-after)
  (declare (special category::bio-predication))
  (let ((reject?
         (or (word-p before)
	     (word-p after)
	     (and (member (cat-name before)
                          `(protein residue-on-protein bio-complex
                                    other fragment))
                  (not (eq before after)))
             (and (category-p before)
                  (category-p after)
                  (if
                   (and (eq (cat-name (edge-form edge-before)) 'vg)
                        (eq (cat-name (edge-form edge-after)) 'vg))
                   
                   (not
                    (or (and (itypep before category::process)
                             (itypep after category::process))
                        (and
                         (itypep before category::bio-predication)
                         (itypep after category::bio-predication))))
                   (not
                    (equal  (or (itypep before category::process)
                                (itypep before category::bio-predication)
                                (itypep before category::modifier))
                            (or (itypep after category::process)
                                (itypep after category::bio-predication)
                                (itypep after category::modifier)))))))))
    (cond
     (reject?
      (push (conj-info before after edge-before edge-after :pass 'conjunction-incompatible-labels ) 
            *rejected-form-conjs*)
      t)
     (t
      (push (conj-info before after edge-before edge-after :pass 'conjunction-incompatible-labels) *form-conjs*)
      nil))))

(defun conj-info (before after edge-before edge-after &key pass)
  (when (null pass) (lsp-break "unknown-conjunction-pass"))
  `(,before ,after 
        ,(actual-characters-of-word (pos-edge-starts-at edge-before)
                                    (pos-edge-ends-at edge-after)
                                    nil)
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
  (declare (special left-edge right-edge))
  (let ((referent
         (referent-of-two-conjoined-edges
          (edge-referent left-edge) (edge-referent right-edge)))
        (form (edge-form left-edge))
        (category (edge-category left-edge)))

    (let ((edge (make-chart-edge
                 :left-edge left-edge
                 :left-daughter left-edge
                 :right-edge right-edge
                 :right-daughter right-edge
                 :category category
                 :form form
                 :referent referent
                 :rule-name heuristic
                 :do-not-knit do-not-knit )))
      (tr :conjoining-two-edges edge left-edge right-edge heuristic)
      (edge-interaction-with-quiescence-check edge)
      (when *save-conjunctions* 
        (push (conj-info (edge-referent left-edge) (edge-referent right-edge)
                         left-edge right-edge
                         :pass pass)
              *all-conjunctions*))
      edge)))


(defun conjoin-multiple-edges (edge-list &key pass)
  (let* ((rightmost-edge (car (last edge-list)))
         (leftmost-edge (car edge-list))
         (referent (referent-of-list-of-conjoined-edges edge-list)))

    (let ((edge (make-chart-edge
                 :starting-position (pos-edge-starts-at leftmost-edge)
                 :ending-position (pos-edge-ends-at rightmost-edge)
                 :category (edge-category leftmost-edge)
                 :form (edge-form leftmost-edge)
                 :referent referent
                 :rule-name 'conjoin-multiple-edges)))
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
  (let ((edge-list
         (get-another-comma-chain-conj
          (list left-edge right-edge)
          left-edge 
          (chart-position-before (pos-edge-starts-at left-edge)))))
    (when edge-list
      (conjoin-multiple-edges edge-list :pass pass))))


(defun get-another-comma-chain-conj (edges-so-far right-edge left-pos)
  (multiple-value-bind (left-edge new-left-pos)
                       (seg-before-conjoins left-pos right-edge)
    (if left-edge
      (get-another-comma-chain-conj
       (push left-edge edges-so-far) left-edge new-left-pos)

      (if (> (length edges-so-far) 2)
        ;; we've accumulated at least one more edge, so we return
        ;; the list whether or not we extend the chain
        edges-so-far
        nil ))))


(defun seg-before-conjoins (middle-pos right-edge)
  ;; Look for a comma just before the left edge. If there is one
  ;; and if the segment ending there conjoins with the leftmost of
  ;; the edges conjoined so far (i.e. 'right-edge') then return
  ;; that new segment and the position it starts at.  Otherwise
  ;; return nil
  (when (eq word::comma (pos-terminal middle-pos))
    (let ((left-edge (edge-ending-at middle-pos)))
      (when left-edge
	(if (conjunction-heuristics left-edge right-edge)
	    (values left-edge
		    (chart-position-before (pos-edge-starts-at left-edge)))
	    nil )))))
        




;;;-----------
;;; semantics
;;;-----------

(defun referent-of-two-conjoined-edges (left-ref right-ref)
  (when (and left-ref right-ref
             (not (word-p left-ref))
             (not (word-p right-ref)))
    ;; when doing DA there can be cases where there's a categorization
    ;; but no referent. 
    (if (or (consp left-ref)
            (consp right-ref))
        (break "bad referent in referent-of-two-conjoined-edges, ~s"
               left-ref right-ref)
        
        (let* ((left-type (etypecase left-ref
                            (individual (i-type-of left-ref))
                            (category left-ref)))
               (right-type (etypecase right-ref
                             (individual (i-type-of right-ref))
                             (category right-ref)))
               (type left-type))
          
          (unless (eq left-type right-type)
            (multiple-value-setq (left-ref right-ref type)
              (adjudicate-specializations left-ref left-type
                                          right-ref right-type)))
          (let ((collection
                 (define-or-find-individual 'collection
                   :items (list left-ref right-ref)
                   :number 2
                   :type type)))
            collection)))))

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
                   :type sample-type)))
            collection )))

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
            collection ))

       (t
        (tr :conjoined-edges-dont-have-individuals-as-referents)
        nil )))))




(defun adjudicate-specializations (left-ref left-type
                                    right-ref right-type)
  ;;///stub
  (declare (ignore right-type))
  (values left-ref right-ref left-type))

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
   ((itypep i 'collection)
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
        
       
                            


