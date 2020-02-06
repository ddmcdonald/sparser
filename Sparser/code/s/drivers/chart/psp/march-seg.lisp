;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1994,2015-2019 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "march/seg"             ;; march back, parsing edges
;;;   Module:  "drivers;chart:psp:"    ;; in a segment
;;;  Version:  March 2019

;; 4.0 (5/7/93 v2.3) Bringing into sinc with the new word-level driver
;; 5.0 (3/15/94) Added dotted-rule hack
;; 5.1 (5/6/94) added new initiating call to get a good trace
;; 5.2 (1/10/15) record all NG chunks for analysis when *save-chunk-edges* is T
;; 5.3 (1/12/15) Option for specialized np parser.
;; 5.4 (1/14/2015 specialized chunk parser for NG and VG
;;  D1/19/2015 ebugged the new chunk parsing algorithm
;;  and made the selection of rules for NG and VG different,
;;  to account for how verb+ing modifies NG
;; 5.5 (2/11/15) After finding this algorithm copies in the chunker
;;  proper and making what runs here moot, removed the copy and
;;  rewrote this version to take the bast of that one and integrate
;;  a real 'choose the best' locus, presently a trivial default
;; 2/4/2015 cache rules discovered for pairs of edges so that we do not
;;   keep calling multiply-edges unnecessarily
;; 6/5/2-15 Use different parsers for NG, VG and ADJG -- NG is right to
;;   left, ADJG and VG are left to right this needs to be reviewed, but it
;;   helps with "will likely be useful" where the modal wants to be
;;   associated with the "be'
;; 6/28/2015 Don't call march-back-from-the-right/segment when segment has
;;   been fully parsed

(in-package :sparser)

(defparameter *save-chunk-edges* nil
  "only turn on to review NG chunking")

(defvar *chunk-edges* nil)
(defvar *all-chunk-edges* nil)

;;;-----------
;;; initiator
;;;-----------

;; (trace-parse-edges)

(defun parse-at-the-segment-level (segment-end-pos)
  "Called from pts when there is something available inside the
   segment to parse (i.e. it's not already covered by an edge).
   We have two different protocols. The 'new' one was written
   for big-mechanism and follows the same style as used by the
   whack-a-rule-cycle to parse at the treetop level. We also
   have the original 'march back' protocol that was tries very
   hard not to miss any cases."
  (declare (special *current-chunk* *big-mechanism-ngs*))
  (tr :parse-at-the-segment-level segment-end-pos)
  (setq *rightmost-active-position/segment* segment-end-pos)
  (if *big-mechanism-ngs*
    (cond
      ((member (chunk-forms *current-chunk*) '((VG) (ADJG)) :test #'equal)
       ;; arguments: the chunk, parse from the right, noun-group?
       (interp-big-mech-chunk *current-chunk* t nil))
      ((use-specialized-ng-parser?)
       (interp-big-mech-chunk *current-chunk* t t))
      ((use-specialized-vg-parser?)
       (interp-big-mech-chunk *current-chunk* nil nil)))

    (march-back-from-the-right/segment)))



;;;---------------------------------
;;; tests for specific phrase types
;;;---------------------------------

(defun use-specialized-ng-parser? ()
  "If the segment is for a noun phrase its head will be at
   the right end and should start the scan there."
  (declare (special *current-chunk*
                    category::det category::quantifier))
  (or
   (equal (chunk-forms *current-chunk*) '(ng))
   (and
    (eq 'ng (car (chunk-forms *current-chunk*)))
    (let ((edges (treetops-in-current-chunk))) ;; n.b. this is very shallow
      (and (cdr edges) ;; more than one edge
           (or (cddr edges) ;; more than two
               (not
                (or (eq (edge-form (car edges)) category::det)
                    (eq (edge-form (car edges)) category::quantifier)))))))))

;; VGs may want a different order of pairs than NGs
;; "will have been being phosphorylated"

(defun use-specialized-vg-parser? ()
  "If the segment is for a verb group ////
its head will be at
   the right end and should start the scan there."
  (declare (special *current-chunk*
                    category::det category::quantifier))
  (or
   (member (chunk-forms *current-chunk*) '((vg) (adjg)))
   (and
    (memq (car (chunk-forms *current-chunk*)) '(vg adjg))
    (let ((edges (treetops-in-current-chunk)))
      (and (cdr edges) ;; more than one edge
           (or (cddr edges) ;; more than two
               (not
                (or (eq (edge-form (car edges)) category::det)
                    (eq (edge-form (car edges)) category::quantifier)))))))))


;;;--------------------------
;;; big-mech tailored driver
;;;--------------------------

(defparameter *debug-cases-of-triple-failure* nil
  "Gates a break when the triple doesn't succeed")

(defun interp-big-mech-chunk (chunk from-right ng? &aux tt)
  "Parse the edges in the interior of the chunk by computing
   all of the adjacent pairs and then selecting from them.
   Choice is done in select-best-chunk-triple. The set of triples
   are walked from one direction or the other depending on 
   the value of 'from-right'. 'ng?' triggers a check to possibly
   look for a composition in the spec before going to the rest."
  
  (declare (special *rules-for-pairs* *parse-edges*))
  (when *save-chunk-edges*
    (add-chunk-edges-snapshot))
  
  ;; 1st look at all pairwise combinations
  ;; 2. collect all rule-left-right edge triples
  ;; 3. select the best one
  ;; 4. apply it
  ;; 5. repeat

  (tr :interpeting-chunk chunk from-right)
  (push-debug `(,chunk)) ;;(break "Look at chunk? ~a" chunk)

  (absorb-parentheses)

  (let ( triple  edge  blocked-triples  triples)
    (clrhash *rules-for-pairs*)
    
    (when (and ng? (> (segment-length) 2))
      (setq triples (collect-triples-in-segment chunk)) ; ordered left to right
      ;;(push-debug `(,triples)) (break "1st triples")
      (when triples ;; nil in overnight #4 "the first direct evidence"
        (when (np-specifier? (first triples))
          (tr :segment-starts-with-NP-specifier (first triples))
          (let ((edge (execute-triple (first triples))))
            (tr :triple-led-to-edge edge)
            (when *parse-edges* (tts))))))

    (loop
       (setq triples (collect-triples-in-segment chunk))
       ;;(push-debug `(,triples)) (break "2d triples")
       (when from-right (reverse triples)) ; now right-to-left		 
       (when blocked-triples ;; triples that multiply-edges declared invalid
         ;;/// revise triple collection to hash like we do when whacking,
         ;; then this will be a #'eq check
	 (setq triples (loop for tr in triples
			  unless (member tr blocked-triples :test #'equal)
			  collect tr)))
       (setq triple (select-best-chunk-triple (reverse triples) chunk))
       (when (null triple)
	 (return))
       (setq edge (execute-triple triple))
       (cond
	 ((null edge) ;; rule failed (invalid) on those edges
	  (push triple blocked-triples)
          (when *debug-cases-of-triple-failure*
            (push-debug `(,triple))
            (lsp-break "triple did not produce an edge")))
	 (edge 
	  (tr :triple-led-to-edge edge)
          (when *parse-edges* (tts)))))
    
    (if (eq (segment-coverage) :one-edge-over-entire-segment)
        (segment-parsed1)
        ;; Otherwise mop up anything else that that couldn't be parsed
        ;; by applying the default protocol 
        (march-back-from-the-right/segment))))


;; Could start with just simple rules and then
;; extend to semantic and then syntactic on successive passes


(defun select-best-chunk-triple (triples chunk)
  "All of these triples are valid, but we're not keeping
   systematic track of their placement within the segment yet.
   We first sort by rule type, priority (in some cases) and
   chunk type. Finally we make a arbitrary choice."
  (when triples
    ;;(push-debug `(,triples)) (lsp-break "triples")
    (tr :n-triples-apply triples)
    
    (let ((non-syntactic-triples
           (loop for triple in triples
	      as rule = (car triple)
	      unless (syntactic-rule? rule)
	      collect triple))
          (priority-triples
           (loop for triple in triples
              as rule = (car triple)
              when (priority-triple? triple chunk)
              collect triple)))
      (tr :non-syntactic-rules-used? non-syntactic-triples)
      (cond
	(priority-triples ;; "was rapidly phosphorylated"
         (tr :n-priority-triples priority-triples)
	 (let ((selected (car (last priority-triples))))
	   (tr :selected-best-triple selected)
	   selected))
        ((memq 'adjg (chunk-forms chunk))
         ;; The verb or aux is on the left, take the first rule
         ;; "has been unclear"
         (tr :selecting-first-for-adjg)
         (let ((leftmost (car triples)))
           (tr :selected-best-triple leftmost)
           leftmost))
	(t
         ;;(push-debug `(,triples)) (break "default")
	 (let ((rightmost (rightmost-triple triples)))
	   (tr :selected-best-triple rightmost)
	   rightmost))))))


;;;---------------------------------------------------
;;; extend pairs to triples when there's a valid rule
;;;---------------------------------------------------

(defun collect-triples-in-segment (chunk)
  "For each pair of adjacent toplevel edges presently inside
   the bounds of the chunk, look for a rule that would compose
   them and add it to form a triple. Returns the list of triples
   in the same order as the pairs they're built from. 
   N.b. Recalculated after each rule application"
  (let ((pairs (adjacent-edges-in-current-chunk))
        rule )
    (tr :pairs-in-segment pairs)
    (loop for pair in pairs
      when (setq rule (segment-rule-check pair chunk))
      collect (cons rule pair))))

(defun segment-rule-check (pair chunk)
  "Wrap a filter after the lookup"
  (declare (special *vp-categories* ))
  (let ((rule (find-rule-for-edge-pair pair chunk)))
    ;; But don't employ a verb-centric rule when spanning
    ;; the head of an np chunk.
    (when (and rule
               (equal (chunk-forms chunk) '(ng))
               (chunk-head? (second pair) chunk) ;; only if combining with head
               (rule-is-for-a-verb? rule)
               (member (cfr-form rule) *vp-categories*))
      (tr :not-using-rule/verb-in-np-context rule)
      (setq rule nil))
    rule))
        
(defun find-rule-for-edge-pair (pair chunk)
  "Given a pair of adjacent edges, look for a valid rule that
   composes them."
  (declare (special *rules-for-pairs*))
  (let ((left-edge (car pair))
        (right-edge (cadr pair)))
    (tr :find-rule-for-edge-pair left-edge right-edge)
    (multiple-value-bind (cached-rule pair-seen?)
	(gethash pair *rules-for-pairs*)
      (let ((rule (if pair-seen?
                    cached-rule
                    (setf (gethash pair *rules-for-pairs*)
                          (multiply-edges left-edge right-edge chunk)))))
        (if rule
            (tr :found-rule-for-pair rule)
            (tr :no-rule-for-pair))
        rule))))

;;;-----------------------------------
;;; collect current set of edge pairs
;;;-----------------------------------

(defun adjacent-edges-in-current-chunk ()
  "Collect all pairs of adjacent edges within the chunk, paying attendion
   to the likelyhood of an edge-vector holding multiple edges that the
   chunker did not need to prune to a single edge. 
   Accumulates edge pairs by moving through the segment from right to left
   and running adjacent-edges-at on each successive position.
   The list it returns is ordered from the left end of the segment
   to the right."
  ;; Better accumulator than treetops-in-current-chunk because it digs deeper
  ;; when there are multple edges on a position
  (declare (special *current-chunk* *left-segment-boundary* *right-segment-boundary*))
  (let* ((start-pos (chunk-start-pos *chunk*))
         (end-pos (chunk-end-pos *chunk*))
         (length ;;(number-of-terminals-between start-pos end-pos)
          (number-of-treetops-between start-pos end-pos)))
    (unless (= length 1)
      ;; if the whole segment has been spanned (or it's just one word long)
      ;; then we should return nil
      (let* ((suffix-edge (edge-over-segment-suffix end-pos)) ;; see analyzers/sdmp/gophers.lisp
             (pos (pos-edge-starts-at suffix-edge))
             position-pairs all-pairs next-pos)
        (loop
          (setq position-pairs (adjacent-edges-at pos))
          (setq all-pairs (append position-pairs all-pairs))
          ;;(push-debug `(,position-pairs)) (break "check pairs")
          (setq next-pos
                (if (and position-pairs (caar position-pairs))
                    (pos-edge-starts-at (caar position-pairs))
                    (chart-position-before pos)))
          (if (position/> next-pos start-pos) ;;(eq next-pos start-pos)
              (setq pos next-pos)
              (return)))
        all-pairs))))

(defun adjacent-edges-at (p)
  "Look at the two edge-vectors at position p. Collect every pair.
   Pairs are done as simple lists."
  (let ( pairs )
    (loop for left in (edges-ending-at p)
       do (loop for right in (edges-starting-at p)
             do (push (list left right) pairs)))
    pairs))


(defun treetops-in-current-chunk ()
  "Treetops-in-segment (in analyzers/forest/printers.lisp) guarentees
   that the treetops will be ordered left to right. It relies on
   next-treetop/rightward to do its walk, so some of the values it
   returns will be edge-vectors rather than edges. Expects the Chunker
   to have quashed multiple initial edges so doesn't look for them."
  (declare (special *current-chunk*))
  ;; like  treetops-in-current-segment  but takes into account the chunk forms
  (loop for ev in
    (treetops-in-segment *left-segment-boundary* *right-segment-boundary*)
    collect
    (cond ((edge-p ev) ev)
          ((edge-vector-p ev)
           (loop for e in (ev-edges ev)
             when (compatible-with-chunk e *current-chunk*)
              do (return e))))))
