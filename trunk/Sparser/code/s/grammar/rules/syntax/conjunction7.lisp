;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1996,2011  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "conjunction"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  7.0 August 2011

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

(in-package :sparser)


;;;------
;;; hook
;;;------

(define-completion-action word::|and|
  :mark-event  'mark-instance-of-AND)

(define-completion-action word::|or|
  :mark-event  'mark-instance-of-AND)

(defun mark-instance-of-AND (and-word position-before position-after)
  (declare (ignore and-word position-after))
  (if *pending-conjunction*
    (then
      ;; In speech, words can be inadvertantly repeated, so in the
      ;; DAARCAT corpus we have "let's go ahead and and go and".
      ;; The result is that we hit two conjunctions in a row without
      ;; clearing the flag. 
      (if *speech*
	(then ;; clear the flag, since this is most likely the "and then"
	  ;; version of "and"
	  (tr :conj-flag-still-up-in-speech)
	  (setq *pending-conjunction* nil))
	(break "stub -- two 'and's in a row but it's not speech")))
    (else
      (tr :setting-conjunction-pos-before position-before)
      (setq *pending-conjunction* position-before))))


;;--- Treetop hook

(set-generic-treetop-action word::|and|
                            'conjoin-adjacent-like-treetops)

(defun conjoin-adjacent-like-treetops (position-after)
  (tr :calling-conj-treetop-hook position-after)
  ;; position-after is the one that immediately follows the
  ;; conjunction. (And note that this only works if no one
  ;; spans the conjunction with another sort of edge.
  (let* ((position-before (chart-position-before position-after))
         (edge-before (span-ending-at position-before))
         (edge-after (span-starting-at position-after)))
    ;;/// comma check
    ;;/// edge-vector check
    (when (and edge-before edge-after)
      (unless (and (edge-p edge-before) (edge-p edge-after))
        (push-debug `(,edge-before ,edge-after))
        (break "Next conjunction case -- the edges aren't."))
      (tr :conj-edges-to-each-side edge-before edge-after)

     (dispatch-conj-by-multiplicities edge-before edge-after))))
        




;;;----------------------------------------------------------
;;; checking out the segment after the conjunction -- driver
;;;----------------------------------------------------------

(defun check-out-possible-conjunction (start-of-after-segment)

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
      (setq edge-before (reduce-multiple-initial-edges edge-before)))
    (when (edge-vector-p edge-after)
      (setq edge-after (reduce-multiple-initial-edges edge-after)))

    (setq *pending-conjunction* nil)

    (tr :conj-edges-to-each-side edge-before edge-after)

    (let ((new-edge (dispatch-conj-by-multiplicities edge-before
                                                     edge-after)))

      (if new-edge
        ;; if the conjunction went through then we have to pick up
        ;; again at the point where we left off in Segment-finished
        ;; before we called this conjunction routine.
        ;;   That code is reproduced here
        (if (label-combines-to-its-right (edge-category new-edge))
          (scan-next-segment *where-the-last-segment-ended*)
          (else
            (tr :moving-to-forest-level/conj/edge new-edge)
            (move-to-forest-level (pos-edge-ends-at new-edge)
                                  :full-segment-scanned)))
        
        ;; same thing, different edge -- and a hook for variations
        (if (label-combines-to-its-right
             (etypecase edge-after
               (edge (edge-category edge-after))
               (word edge-after)))
          (scan-next-segment *where-the-last-segment-ended*)
          (let ((rightmost-pos 
                 (etypecase edge-before
                   (edge (pos-edge-ends-at edge-before))
                   (word (chart-position-after end-of-before-segment)))))
            (tr :moving-to-forest-level/conj/no-edge rightmost-pos)
            (move-to-forest-level rightmost-pos           
                                  ;; we know these two edges don't
                                  ;; combine, so don't try again
                                  :full-segment-scanned)))))))


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

(defun conjunction-heuristics (edge-before edge-after)

  ;; This is the actual check that says whether we should conjoin
  ;; or not. More heuristic judgements go here as they are
  ;; developed

  (let ((label-before (edge-category edge-before))
        (label-after (edge-category edge-after)))

    (cond ((eq label-before label-after)
           :conjunction/identical-adjacent-labels)
          (t nil))))



;;;----------------------------------------
;;; dispatch for the possibility of a list
;;;----------------------------------------

(defun conjoin/2 (left-edge right-edge heuristic)

  ;; We have decided that these two edges conjoin. Now we check
  ;; back to the left to see if these are just the end of a
  ;; sequence of conjuncts separated by commas.  When we're done
  ;; we span the result with one edge and compute a collection
  ;; referent for it. 

  (or (search-for-list-conjunction left-edge right-edge)
      (conjoin-two-edges
       left-edge right-edge heuristic)))



;;;---------------------
;;; making the new edge
;;;---------------------

(defun conjoin-two-edges (left-edge right-edge heuristic)
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
                 :rule-name heuristic)))
      (tr :conjoining-two-edges edge left-edge right-edge heuristic)
      (edge-interaction-with-quiescence-check edge)
      edge )))


(defun conjoin-multiple-edges (edge-list)
  (let* ((rightmost-edge (car (last edge-list)))
         (leftmost-edge (car edge-list))
         (referent (referent-of-list-of-conjoined-edges edge-list)))

    (let ((edge (make-chart-edge
                 :starting-position (pos-edge-starts-at leftmost-edge)
                 :ending-position (pos-edge-ends-at rightmost-edge)
                 :category (edge-category leftmost-edge)
                 :form (edge-form leftmost-edge)
                 :referent referent
                 :rule-name :comma-delimited-list)))
      (tr :conjoining-multiple-edges/comma edge)
      (edge-interaction-with-quiescence-check edge)
      edge )))




;;;---------------------------------
;;; searching for list conjunctions
;;;---------------------------------

(defun search-for-list-conjunction (left-edge right-edge)
  ;; Called from Conjoin/2. Return nil if no list is found, signalling
  ;; that it should go ahead with just these two initial edges.
  ;; If a list is found, we call the edge-maker from here.
  (let ((edge-list
         (get-another-comma-chain-conj
          (list left-edge right-edge)
          left-edge (chart-position-before
                     (pos-edge-starts-at left-edge)))))
    (when edge-list
      (conjoin-multiple-edges edge-list))))


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
  (when (and left-ref right-ref)
    ;; when doing DA there can be cases where there's a categorization
    ;; but no referent. 

    (let* ((left-type (indiv-type left-ref))
           (right-type (indiv-type right-ref))
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
        collection ))))


(defun referent-of-list-of-conjoined-edges (edge-list)
  (when (every #'(lambda (e)
                   (not (null e)))
               edge-list)

    (let ((referents (mapcar #'edge-referent edge-list)))

      (if (individual-p (first referents))
        (let ((types (mapcar #'indiv-type referents))
              (sample-type (indiv-type (car (last referents)))))
          
          (unless (every #'(lambda (type)
                             (eq type sample-type))
                         referents)
            (setq sample-type
                  (adjudicate-specializations/list referents types)))
          
          (let ((collection
                 (define-or-find-individual 'collection
                   :items referents
                   :number (length referents)
                   :type sample-type)))
            
            collection ))

        ;; The edges in the list either don't have referents, or if they
        ;; do they are some data-type other than individuals, and we'd
        ;; need a different routine than this one.
        (else
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


