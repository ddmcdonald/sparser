;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1994,2015 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "march/seg"             ;; march back, parsing edges
;;;   Module:  "drivers;chart:psp:"    ;;  in a segment
;;;  Version:  5.5 June 2015

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

;;;-----------
;;; initiator
;;;-----------

;; (trace-parse-edges)

(defun parse-at-the-segment-level (segment-end-pos)
  (declare (special *current-chunk* *big-mechanism-ngs*))
  (tr :parse-at-the-segment-level segment-end-pos)
  (setq *rightmost-active-position/segment* segment-end-pos)
  ;;(break "about to parse ~a" *current-chunk*)
  (cond
   ((and *big-mechanism-ngs*
         (member (chunk-forms *current-chunk*) '((VG) (ADJG)) :test #'equal))
    ;; no longer do VGs from left to right -- gets the wrong chunking
    ;;  and doesn't distribute aspect, etc.
    ;;  gets same results on compare-to-snapshots with this change 5 Feb 2016
    ;;(interp-big-mech-chunk *current-chunk* nil)
    (interp-big-mech-chunk *current-chunk* t))
   ((use-specialized-ng-parser?)
    (interp-big-mech-chunk *current-chunk* t))
   ((use-specialized-vg-parser?)
    (interp-big-mech-chunk *current-chunk* nil))
   (t (march-back-from-the-right/segment))))


;;;------------------------
;;; specialized NP parsing
;;;------------------------

(defparameter *save-chunk-edges* nil
  "only turn on to review NG chunking")

(defvar *chunk-edges* nil)
(defvar *all-chunk-edges* nil)



(defun use-specialized-ng-parser? ()
  ;; Predicate used by parse-at-the-segment-level to determine
  ;; whether to use the specialized big-mech segment parser
  (declare (special *big-mechanism-ngs* *current-chunk*
                    category::det category::quantifier))
  (and *big-mechanism-ngs*
       (or
        (equal (chunk-forms *current-chunk*) '(NG))
        (and
         (eq 'NG (car (chunk-forms *current-chunk*)))
         (let ((edges (treetops-in-current-chunk)))
           (and (cdr edges) ;; more than one edge
                (or (cddr edges) ;; more than two
                    (not
                     (or (eq (edge-form (car edges)) category::det)
                         (eq (edge-form (car edges)) category::quantifier))))))))))

(defun use-specialized-vg-parser? ()
  ;; Predicate used by parse-at-the-segment-level to determine
  ;; whether to use the specialized big-mech segment parser
  (declare (special *big-mechanism-ngs* *current-chunk*
                    category::det category::quantifier))
  (and *big-mechanism-ngs*
       (or
        (member (chunk-forms *current-chunk*) '((VG) (ADJG)))
        (and
         (memq (car (chunk-forms *current-chunk*)) '(VG ADJG))
         (let ((edges (treetops-in-current-chunk)))
           (and (cdr edges) ;; more than one edge
                (or (cddr edges) ;; more than two
                    (not
                     (or (eq (edge-form (car edges)) category::det)
                         (eq (edge-form (car edges)) category::quantifier))))))))))


(defun interp-big-mech-chunk (chunk from-right &aux tt)
  (declare (special *rules-for-pairs*))
  ;;(push-debug `(,chunk)) (break "interp chunk: ~a" chunk)
  (when *save-chunk-edges*
    (add-chunk-edges-snapshot))
  ;; 1st look at all pairwise combinations
  ;; 1. collect all rule-left-right triples
  ;; 2. select the best one
  ;; 3. spply it
  ;; 4. repeat

  (tr :interpeting-chunk chunk from-right)

  (let ((paren-pair (loop for ttl on (treetops-in-current-chunk)
                       when (and (setq tt (second ttl))
                                 (edge-p tt)
                                 (category-p (edge-category tt))
                                 (eq (cat-name (edge-category tt)) 'parentheses))
                       do (return ttl))))
    ;;handle internal parens as in
    ;; "a class ii ( inactive conformation binder ) drug"
    (when paren-pair
      (knit-parens-into-neighbor (car paren-pair) (second paren-pair))))
  
  (let ( triple  edge blocked-triples triples)
    (clrhash *rules-for-pairs*)
    (loop
       (setq triples
	     (if from-right
		 (collect-triples-in-segment chunk)
		 (reverse (collect-triples-in-segment chunk))))
       (when blocked-triples
	 (setq triples (loop for tr in triples 
			  unless (member tr blocked-triples)
			  collect tr)))
       (setq triple (select-best-triple triples chunk))
       (when (null triple)
	 (return))
       (setq edge (execute-triple triple))
       (cond
	 ((null edge) 
	  (push triple blocked-triples)
	  (push-debug `(,triple))
	  ;;(lsp-break "triple did not produce an edge")
	  )
	 (edge 
	  (tr :triple-led-to-edge edge))))
    (if (eq (segment-coverage) :one-edge-over-entire-segment)
        (segment-parsed1)
        ;; else, then mop up anything else that that couldn't
        (march-back-from-the-right/segment))))

(defun select-best-triple (triples chunk)
  ;; decision-making goes here, e.g. the types of edges involved,
  ;; their position within the segment, their probablility of
  ;; being correct given priors, the kind of rule being used.
  (when triples
    (push-debug `(,triples)) ;;(lsp-break "triple")
    (tr :n-triples-apply triples)
    
    (let ((non-syntactic-triples
           (loop for triple in triples
	      as rule = (car triple)
	      unless (syntactic-rule? rule)
	      collect triple))
          (priority-triples
           (loop for triple in triples
              as rule = (car triple)
              when (priority-rule? rule)
              collect triple)))
      
      (when nil
        (break "non-syntactic-triples = ~a~
              ~%prority-triples = ~a"
               non-syntactic-triples
               priority-triples))

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
	 ;; this default amounts to selecting the rightmost pair
	 ;; that has a rule
         (tr :n-default-triples triples)
	 (let ((rightmost (car (last triples))))
	   (tr :selected-best-triple rightmost)
	   rightmost))))))

(defun priority-rule? (rule)
  (and (cfr-p rule)
       (category-p (car (cfr-rhs rule)))
       (member (cat-name (car (cfr-rhs rule)))
	       '(adverb comparative))))


;; VGs may want a different order of pairs than NGs
;; "will have been being phosphorylated"

(defun collect-triples-in-segment (chunk)
  ;; Executed multiple times because it's recalculated with
  ;; every rule execution
  (let ((pairs (adjacent-tts (treetops-in-current-chunk)))
        rule )
    ;;(push-debug `(,pairs)) (break "pairs = ~a" pairs)
    (loop for pair in pairs
      when (setq rule (segment-rule-check pair chunk))
      collect (cons rule pair))))


(defun segment-rule-check (pair chunk)
  (declare (special *vp-categories* *rules-for-pairs*))
  ;; syntactic sugar and tracing for the choice of rule test
  ;; to make. Could start with just simple rules and then
  ;; extend to semantic and then syntactic on successive passes
  (let ((left-edge (car pair))
        (right-edge (cadr pair)))
    (tr :find-rule-for-edge-pair left-edge right-edge)
    (multiple-value-bind (cached-rule pair-seen)
	(gethash pair *rules-for-pairs*)
      (let ((rule 
             (if pair-seen
		 cached-rule
		 (setf (gethash pair *rules-for-pairs*)
		       (multiply-edges left-edge right-edge chunk)))))

        ;; criteria for not using that rule
        (when (and rule
                   (equal (chunk-forms chunk) '(NG))
                   ;; When we're parsing an NP,
                   ;; rule out rules for verb-like things
                   (rule-is-for-a-verb? rule)
                   (member (cfr-form rule) *vp-categories*))
          (tr :not-using-rule/verb-in-np-context rule)
          (setq rule nil))
        (if rule
            (tr :found-rule-for-pair rule)
            (tr :no-rule-for-pair))
        rule))))

(defun rule-is-for-a-verb? (rule)
  "Used as a filter in segment-rule-check when it's making an np"
  (declare (special *vg-head-categories* *vp-categories*))
  (or (member (car (cfr-rhs rule))
              *vg-head-categories*)
      (member (car (cfr-rhs rule))
              *vp-categories*)
      (member (car (cfr-rhs-forms rule))
              *vg-head-categories*)
      (member (car (cfr-rhs-forms rule))
              *vp-categories*)))



(defun treetops-in-current-chunk ()
  "Treetops-in-segment (in analyzers/forest/printers.lisp) guarentees
   that the treetops will be ordered left to right. It relies on
   next-treetop/rightward to do its walk, so some of the values it
   returns will be edge-vectors rather than edges."
  ;; like  treetops-in-current-segment  but takes into account the chunk forms
  (loop for ev in
    (treetops-in-segment *left-segment-boundary*
                         *right-segment-boundary*)
    collect
    (cond ((edge-p ev) ev)
          ((edge-vector-p ev)
           (loop for e in (ev-edges ev)
             when (compatible-with-chunk e *current-chunk*)
             do (return e))))))

(defun compatible-with-chunk (edge chunk)
  (declare (special *vg-word-categories*))
  (cond
   ((null (edge-form edge)))
   ((equal (chunk-forms chunk) '(vg))
    (member (cat-symbol (edge-form edge)) *vg-word-categories*))
   ((equal (chunk-forms chunk) '(ng))
    (not (member (cat-symbol (edge-form edge)) *vg-word-categories*)))
   (t t)))

;;%%%%%% replacing with adjacent-tts whose code is identical
(defun adjacent-segment-tts (edges)
  (loop for edges on edges 
    while (cdr edges) 
    when (and 
          (edge-p (car edges)) 
          (edge-p (second edges))
          (adjacent-edges? (car edges) (second edges)))
    collect
    (list (car edges)(second edges))))


(defun add-chunk-edges-snapshot ()
  (push (loop for edge in (treetops-in-current-chunk)
          collect 
          (list (and (edge-form edge)
                     (intern (symbol-name (cat-symbol (edge-form edge)))))
                (let ((str (edge-string edge)))
                  (subseq str 0 (- (length str) 1)))))
        *all-chunk-edges*))


;;;--------
;;; driver
;;;--------

(defun march-back-from-the-right/segment ()
  ;; this is the primary recursion point.
  (let* ((rightmost-pos *rightmost-active-position/segment*))
    (cond
     ((eq rightmost-pos *left-segment-boundary*)
      (tr :left-boundary-reached)
      (segment-parsed1))
     ((<= (pos-token-index rightmost-pos)
          (pos-token-index *left-segment-boundary*))
      (tr :went-beyond-left-boundary)
      (segment-parsed1))
     (t
      (let* ((end-vector (pos-ends-here rightmost-pos))
             (top-node (ev-top-node end-vector)))

        (tr :looking-right-from rightmost-pos)
        (if top-node
          (march-back/segment/2 rightmost-pos top-node end-vector)
          (else
            (tr :seg-march/nothing-there)
            (setq *rightmost-active-position/segment*
                  (chart-position-before rightmost-pos))
            (march-back-from-the-right/segment))))))))
        

(defun march-back/segment/2 (position top-node end-vector)
  ;; subroutine to March-back-from-the-right/segment
  ;; that's called when there's a top-node
  (declare (ignore position))
  (cond ((eq :multiple-initial-edges top-node)
         (tr :seg-march/multiple-end-at end-vector)
         (do-multiple-initial/left end-vector))
        (top-node
         (tr :seg-march/single-ends-at top-node)
         (do-single/left top-node))))


;;;--------------------
;;; checking extension
;;;--------------------


#+ignore ;; Not called (anymore). The two extension queries in it
         ;; don't have definitions. Code is commented out perhaps?
(defun check-extension-possibilities (right-end-position
                                      topnode-field
                                      vector)
  ;; called from March-back-from-the-right/segment
  (when *trace-extension-decision*
    (format t "~&Since it's on the right boundary, checking ~
               whether it extends~%"))

  (let ((extends
         (cond ((null topnode-field) ;; no edge there
                nil )
               ((eq topnode-field :multiple-initial-edges)
                (tt-extends?/multiple right-end-position))
               (t (edge-might-extend? topnode-field)))))
    (if extends
      (then
        (when *trace-extension-decision*
          (format t "~&  it does~%"))
        (setq *rightmost-active-position/segment*
              (if (eq topnode-field :multiple-initial-edges)
                (chart-position-before right-end-position)
                (pos-edge-starts-at topnode-field)))
        (march-back-from-the-right/segment))
      (else
        (when *trace-extension-decision*
          (format t "~&  it does not~%"))
        (march-back/segment/2
         right-end-position topnode-field vector)))))


;;;------------------------
;;; getting the edges done
;;;------------------------

(defun do-multiple-initial/left (right-ending-vector)
  (let ((starting-position
         (chart-position-before (ev-position right-ending-vector))))
   ;;(break "do-multiple-initial/left")
    (when *trace-do-edge*
      (format t "~&Looking leftwards from the multiple edges ending at ~
                 p~A for edges ending at p~A~%"
              (pos-token-index (ev-position right-ending-vector))
              (pos-token-index starting-position)))

    (if (eq starting-position *left-segment-boundary*)
      (then (when *trace-do-edge*
              (format t "~&   That position is the segment boundary~%"))
            (segment-parsed1))

      (let* ((adjacent-end-vector (pos-ends-here starting-position))
             (topnode-field (ev-top-node adjacent-end-vector))
             spanned? )
        (cond
         ((eq topnode-field :multiple-initial-edges)
          (when *trace-do-edge*
            (format t "~&   p~A has multiple initial edges~%"
                    (pos-token-index starting-position)))
          (if (check-many-many adjacent-end-vector right-ending-vector)
            (setq spanned? t)
            (else
              (setq *rightmost-active-position/segment*
                    starting-position))))
         (topnode-field
          (when *trace-do-edge*
            (format t "~&   p~A has the single edge~A~%"
                    (pos-token-index starting-position)
                    topnode-field))
          (if (check-one-many topnode-field
                              right-ending-vector)
            (setq spanned? t)
            (else
              (setq *rightmost-active-position/segment*
                    starting-position))))
         (t
          (when *trace-do-edge*
            (format t "~&   p~A has no edges~%"
                    (pos-token-index starting-position)))
          (setq *rightmost-active-position/segment*
                starting-position)))

        (if spanned?
          (check-for-right-extensions)
          (march-back-from-the-right/segment))))))


(defun do-single/left (edge)
  ;; we are working backwards from the rightmost active position
  ;; and there is only one edge that ends there.  We look at what
  ;; is adjacent to it to the left and dispatch to the corresponding
  ;; check.
  (let ((start-vector (edge-starts-at edge))
        new-edge  boundaries )
    (declare (special start-vector new-edge boundaries))

    (if (eq (ev-position start-vector) *left-segment-boundary*)
      (then
        (tr :edge-starts-at-seg-boundary edge)
        (segment-parsed1))

      (let* ((adjacent-position (ev-position start-vector))
             (adjacent-end-vector (pos-ends-here adjacent-position))
             (topnode-field (ev-top-node adjacent-end-vector))
             (rule nil))
        (declare (special adjacent-position adjacent-end-vector topnode-field rule))
        (tr :looking-right-for-adjacent-edge adjacent-position edge)

        (cond
         ((eq :multiple-initial-edges topnode-field)
          (tr :seg-march/multiple-end-at adjacent-end-vector)
          (if (check-many-one adjacent-end-vector edge)
            (check-for-right-extensions)
            (else
              (setq *rightmost-active-position/segment*
                    adjacent-position)
              (march-back-from-the-right/segment))))

         (topnode-field
          (tr :seg-march/single-ends-at topnode-field)          
          (if (setq new-edge
                    (check-one-one topnode-field edge))
            (if (setq boundaries
                      (edge-introduces-brackets new-edge))
              (accomodate-segment-parse-to-new-boundaries
               boundaries new-edge :do-single/left)
              (check-for-right-extensions))

            (else
              (setq *rightmost-active-position/segment*
                    adjacent-position)
              (march-back-from-the-right/segment))))
         
         (t (tr :seg-march/nothing-there )
            (setq *rightmost-active-position/segment*
                  (chart-position-before adjacent-position))
            (march-back-from-the-right/segment)))))))



(defun check-for-right-extensions ()
  ;; within the segment we let any available rightward combinations
  ;; go through.  These will be cases where constituents form
  ;; through compositions in the middle or left of the segment that
  ;; then lies adjacent to an edge on their right that is still within
  ;; the segment.  If they lie adjacent to the right boundary we
  ;; leave them for forest level parsing to take care of.
  (let ((right-position
         *rightmost-active-position/segment*))
    (when *trace-do-edge*
      (format t "~&Looking rightwards from p~A~%"
              (pos-token-index right-position)))

    (if (eq right-position *right-segment-boundary*)
      (then (when *trace-do-edge*
              (format t "~&   which is the segment boundary~%"))
            (march-back-from-the-right/segment))
      (else
        (check-right-extensions/2 right-position)))))


(defun check-right-extensions/2 (right-position)
  (let* ((adjacent-start-vector (pos-starts-here right-position))
         (topnode-field (ev-top-node adjacent-start-vector))
         (left-edge (ev-top-node (pos-ends-here right-position)))
         spanning-edge )
    (cond
     ((eq :multiple-initial-edges topnode-field)
      (when *trace-do-edge*
        (format t "~&   There are multiple initial edges there~%"))
      (setq spanning-edge
            (check-one-many left-edge adjacent-start-vector)))
     (topnode-field
      (when *trace-do-edge*
        (format t "~&   It has the single edge ~A~%"
                topnode-field))
      (setq spanning-edge
            (check-one-one left-edge topnode-field)))
     (t (when *trace-do-edge*
          (format t "~&   There are no edges there~%"))))
    
    (if spanning-edge
      (then
        (setq *rightmost-active-position/segment*
              (pos-edge-ends-at spanning-edge))
        (when *trace-do-edge*
          (format t "~&   looking right again, with e~A~%"
                  (edge-position-in-resource-array spanning-edge)))
        (check-for-right-extensions))
      (else
        ;; by not changing the pointer we'll pick up where we
        ;; left off before considering this rightward check
        (march-back-from-the-right/segment)))))




(defun lookahead-to-complete-dotted-rule (dotted-rule
                                          left-edge right-edge)

  ;; The two edges can combine to complete the dotted-rule.
  ;; Since we're called from Check-one-one we also know that
  ;; there is some other rule that can complete them.
  ;; We only want to go with one of the two choices -- the dotted
  ;; choice would be the better one if it can ultimately complete
  ;; (within the bounds of the segment). We do the lookahead
  ;; as far as it needs to go. If a rule based on this dotted
  ;; rule can complete (this edge pair will be the leftmost two
  ;; edges in the final product since the pairs in an n-ary rule
  ;; are rolled out from their left and this pair will be the
  ;; first pair that will be able to complete) then we build it.
  ;; Otherwise we return Nil to indicate that the other choice
  ;; should be taken.

  (let ((boundary *right-segment-boundary*)
        (dotted-category (cfr-category dotted-rule))
        (right-position (pos-edge-ends-at right-edge))
        (complete? nil)
        next-rule  new-position  accumulating-rules )

    (loop
      (multiple-value-setq (next-rule new-position)
        (lookahead-at-pair dotted-category
                           right-position boundary))
      (if next-rule
        (then
          (push next-rule accumulating-rules)
          (if (not (dotted-rule next-rule))
            (then ;; then it's completed
              (setq complete? t)
              (return))
            ;; otherwise we have to loop around and keep checking
            (setq right-position new-position)))
        (else  ;; the dotted rule doesn't complete
          (return))))

    (if complete?
      (let ((edge (complete-dotted-rule-from-stub
                   (nreverse accumulating-rules)
                   left-edge)))
        edge )
      (else  ;; take other rule
        nil))))


(defun lookahead-at-pair (left-category position right-boundary)
  (if (eq position right-boundary)
    nil
    (let ((topnode-field (ev-top-node (pos-starts-here position)))
          next-rule  new-position )
      (cond
       ((eq topnode-field :multiple-initial-edges)
        (setq next-rule (one-many/just-check-labels
                         left-category
                         (pos-starts-here right-boundary)))
        (when next-rule
          (setq new-position (chart-position-after position))))

       (topnode-field
        (setq next-rule (one-one/just-check-labels
                         left-category (edge-category topnode-field)))
        (when next-rule
          (setq new-position (pos-edge-ends-at topnode-field))))

       (t ;; combination with an unspanned word isn't relevant
        ;; since we're only dealing here with n-ary rules, which
        ;; will have literals over all the words they mention.
        ))

      (values next-rule new-position))))



(defun complete-dotted-rule-from-stub (rules starting-left-edge)
  (let ((prefix starting-left-edge)
        topnode-field )

    (dolist (cfr rules)
      (setq topnode-field (ev-top-node
                           (pos-starts-here
                            (pos-edge-ends-at prefix))))
      (cond
       ((eq topnode-field :multiple-initial-edges)
        (setq prefix
              (apply-cfr-to-first-compatible-right-neighbor
               cfr prefix (pos-starts-here
                           (pos-edge-ends-at prefix)))))
       (topnode-field
        (unless (edge-p topnode-field)
          (break "Data field contains wrong data type:~
                  ~%The topnode-field ~A~
                  ~%should have contained an edge" topnode-field))
        (setq prefix
              (make-completed-binary-edge
               prefix topnode-field cfr)))
       (t
        (break "Fencepost error in dotted-rule check:~
                ~%Expected an edge adjacent to~%  ~A~
                ~%but there isn't one." prefix))))
    prefix ))

