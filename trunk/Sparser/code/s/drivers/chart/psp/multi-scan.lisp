;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "multi-scan"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  November 2014

;; Broken out of no-brackets-protocol 11/17/14 as part of turning the
;; original single-pass sweep into a succession of passes. Drafts of
;; four passes finished 11/19/14.

(in-package :sparser)

;; (trace-terminals-sweep)
;; (trace-network)

;;;---------------------------------------------------
;;; 1st pass -- polywords, completion, terminal edges
;;;---------------------------------------------------

(defun scan-terminals-loop (position-before word)

  (when *trace-sweep*
    (format t "~&p~a ~s"
            (pos-token-index position-before) (word-pname word)))
  (simple-eos-check position-before word)

  ;; Polyword check
  (let* ((where-pw-ended (polyword-check position-before word))
         (position-after (or where-pw-ended
                             (chart-position-after position-before))))
    (when where-pw-ended
      (setq position-before where-pw-ended)
      (unless (includes-state where-pw-ended :scanned)
        ;; PW can complete without thinking about the
        ;; word that follows it.
        (scan-next-position))
      (setq word (pos-terminal where-pw-ended)))

    (unless (includes-state position-after :scanned)
      (scan-next-position))

    ;;////////////////// FSAs -- e.g. for digit sequences

    (complete-word/hugin word position-before position-after)
    ;; (setq *trace-completion-hook* t)
    ;; The function check-for-completion-actions/word looks on the
    ;; rule-set of the word for a completion action or actions and
    ;; runs carry-out-actions to execute (funcall) them. 
    ;;   The significant case is the period-hook (in rules/DM&P/period-hook)
    ;; because it is responsible for managing the succession of sentences.
    ;; That requires some tweaking because normally the period hook signals
    ;; the progression to the forest level and here we need to notice
    ;; the period (in order to stop this pass and start the next), but
    ;; be more selective in what happens. 
    ;;    Another important case is conjunction. Both "and" and "or"
    ;; set the *pending-conjunction* flag. 

    (do-just-terminal-edges word position-before position-after)

    (let ((next-word (pos-terminal position-after)))
      (when nil
        (format t "~&Next step: p~a ~a"
               (pos-token-index position-after) (word-pname next-word)))
      (scan-terminals-loop position-after next-word))))


;;--- 1st pass subroutines

(defun simple-eos-check (position-before word)
  ;; Taken from end-of-source-check without worrying about the
  ;; forest or other things to do. In the usual scan, this check
  ;; is part of check-for-[-from-word-after before anything happens.
  ;;    Has to be ammended in a similar way to the original because
  ;; there will invariably be something that needs to be tied
  ;; off
  (tr :end-of-source-check word position-before)
  (when (eq word *end-of-source*)
    ;; This just does the throw up to chart-based-analysis
    (terminate-chart-level-process)))


(defun polyword-check (position-before word)
  ;; lifted from check-for-polywords where all we want is
  ;; the fsa to fire if there is one, and to get the position
  ;; that it ends at. Returns either that position or nil. 
  (tr :check-for-polywords word position-before)
  (set-status :polywords-check position-before)
  (let ((pw-cfr (initiates-polyword1 word position-before)))
    ;; This "1" variant calls a "1" variant of capitalized-correspondent
    ;; which use the position information correctly
    (when pw-cfr
      (tr :word-initiates-polyword word position-before)
      (let ((position-reached
             (do-polyword-fsa word pw-cfr position-before)))
        (if position-reached
          (let ((pw-edge (edge-spanning position-before position-reached)))
            (unless pw-edge (break "wrong span search"))
            (tr :pw-was-found position-before position-reached pw-edge))
          (tr :pw-not-found word position-before))
        ;;(push-debug `(,position-reached))
        ;; Check the status -- cf. adjudicate-result-of-word-fsa
        ;(break "Polyword succeeded at ~a" position-reached)
        position-reached))))


(defun do-just-terminal-edges (word position-before position-after)
  ;; modeled on introduce-terminal-edges but returns after the
  ;; edges are created rather than continuing in the incremental
  ;; scan. 
  (install-terminal-edges word position-before position-after))


;;;------------------------------
;;; 2d pass -- no-space patterns
;;;------------------------------

(defun pattern-sweep (sentence)  ;; (trace-terminals-sweep)
  (let ((position-before (starts-at-pos sentence))
        (end-pos (ends-at-pos sentence))
        treetop  position-after  multiple?  )

    (push-debug `(,sentence ,position-before ,end-pos))
    (loop
      ;; modeled on sweep-sentence-treetops
      (multiple-value-setq (treetop position-after multiple?)
        (next-treetop/rightward position-before))

      (when multiple?
        ;; This is built-into a variant next-treetop function,
        ;; but perhaps we want to look at variations on this
        ;; e.g. for true ambiguities. 
        (setq treetop (elt (ev-edge-vector treetop)
                           (1- (ev-number-of-edges treetop)))))
      (when (and (word-p treetop)
                 (eq tt *the-punctuation-period*))
        (tr :terminated-sweep-at position-after)
        (return))
      (when (eq position-after end-pos)
        (return))
      (unless (pos-assessed? position-after)
        ;; catches bugs in the termination conditions
        (error "Pattern sweep walked beyond the bounds of the sentence"))

      (when *trace-sweep*
        (format t "~&p~a ~a"
                (pos-token-index position-before) treetop))

      (if (no-space-before-word? position-after)
        (then
         (tr :no-space-at position-after)
         ;; Run the pre-check for defined patterns
         (let ((where-pattern-scan-ended
                (check-for-pattern position-after)))
           (if where-pattern-scan-ended
             (then
               (setq position-after where-pattern-scan-ended))
             (let ((where-uniform-ns-ended
                    (do-no-space-collection position-after tt)))
               (when where-uniform-ns-ended
                 (setq position-after where-uniform-ns-ended))))))
        (else
         (look-for-DA-pattern treetop)))

      ;; The pattern could have taken us just past the period
      (when (position-precedes end-pos position-after)
        (return))
        
      (setq position-before position-after))))


;;--- subroutines

(defun check-for-pattern (position-after)  ;; (trace-scan-patterns)
  (let* ((word (pos-terminal position-after))
         (state/s (scan-pattern-starting-pair position-after word)))
    ;; This routine returns nil if there is not a no-space scan-pattern
    ;; that starts with the word before this position and this word.
    (when state/s
      (let ((pos-reached
             (initiate-scan-pattern-driver state/s position-after)))
        ;;/// trace (if pos-reached ...
        (when (edge-p pos-reached)
          ;; In some instances, the pattern scan is intended to 
          ;; return an edge. For purposes of moving the pattern
          ;; sweep along we need a position
          (setq pos-reached (pos-edge-ends-at pos-reached)))
        pos-reached))))
        

(defun do-no-space-collection (position tt)
  ;; lifted from check-for-uniform-no-space-sequence
  ;; There is no whitespace between the word at this position 
  ;; and the previous word. 
  (tr :check-for-uniform-no-space-sequence position)
  (let* ((uniform-pos-reached
          (if t ;;long?
            (collected-no-space-edges-into-word tt position)
            (collect-no-space-sequence-into-word position))))
    ;;/// trace
    uniform-pos-reached))


(defun look-for-DA-pattern (treetop)  ;; (trace-da)
  ;;/// use in look-for-length-three-patterns since this encapsulates
  ;; better probably
  (let ((vertex (trie-for-1st-item treetop)))
    (if vertex
      (let ((edge (standalone-da-execution vertex treetop)))
        ;;/// trace (if edge ...
        edge)
      (else
       ;; trace
       nil))))
;; (p "PIK3CA and BRAF are, in part, regulated.")


;;;-------------------------
;;; 3d pass -- conjunctions
;;;-------------------------

;;  (p "by PIK3CA and BRAF are.")
(defun short-conjunctions-sweep (sentence)
  (declare (ignore sentence))
  (when *pending-conjunction*
    ;; set by complete calling mark-instance-of-AND during the
    ;; scan-terminals-loop pass.
    ;;/// The flag gets initialized, but mark-instance-of-AND or
    ;; something is putting on two copies
    (dolist (position (remove-duplicates *pending-conjunction*))
      ;; lifted from look-for-short-obvious-conjunctions which will
      ;; go away if this is effective
      (let ((left-edge (next-treetop/leftward position))
            (right-edge  (next-treetop/rightward 
                          (chart-position-after position))))
        (unless (or (word-p left-edge)
                    (word-p right-edge)
                    (edge-vector-p left-edge)
                    (edge-vector-p right-edge))
          (let ((heuristic (conjunction-heuristics left-edge right-edge)))
            (if heuristic
              ;; conjoin/2 looks for leftwards
              (let ((edge (conjoin/2 left-edge right-edge heuristic)))
                (tr :conjoined-edge edge)
                edge)
              (tr :no-heuristics-for left-edge right-edge))))))
    ;; zero it to avoid confusing the pass through a later sentence
    (setq *pending-conjunction* nil)))



;;;-------------------------
;;; 4th pass -- parentheses
;;;-------------------------

;; (trace-parentheses)

(defparameter *hide-parentheses* nil
  "Provides an adequate way to remove text within parentheses to be
   removed from the parser's attention by burying within the prior
   edge.")

(defun sweep-to-span-parentheses (sentence)
  ;; (trace-traversal-hook) (trace-traversal-hits)
  ;; Given the sweeps that have preceded this, there will be
  ;; no edges over the parentheses. (////barring an errant
  ;; mention in a cfr, as happens for "the" or even ".")
  ;; So we walk through looking for words

  (let ((position-before (starts-at-pos sentence))
        (end-pos (ends-at-pos sentence))
        treetop  position-after    )

    (push-debug `(,sentence ,position-before ,end-pos))
    (loop
      ;; copied from the pattern sweep. 
      (multiple-value-setq (treetop position-after)
        (next-treetop/rightward position-before))

      (when *trace-sweep*
        (format t "~&[paren] p~a ~a"
                (pos-token-index position-before) treetop))
 
      (when (word-p treetop)
        (when (eq tt *the-punctuation-period*)
          (tr :terminated-sweep-at position-after)
          (return)))

      (let ((hide-parentheses *hide-parentheses*))
        (declare (special hide-parentheses))
        (word-traversal-hook treetop position-before position-after))
        ;; Traversal actions are managed by a hash table from the word
        ;; qua label (i.e. could be applied to edges as well) to a function
        ;; that takes these same arguments. This is used for bracket pairs
        ;; such as parentheses, double quotes, etc. Check with a call to
        ;; (list-hash-table *traversal-routine-table*)
        ;;    The action is always on the matching close. The open
        ;; notes its oposition so the close knows what span to operate
        ;; over. We check for traversal hits before the no-space check
        ;; because the ns is greedy and moves the position, which can
        ;; cause the open to be missed. 
      

      (when (eq position-after end-pos)
        (return))
      (unless (pos-assessed? position-after)
        (error "Pattern sweep walked beyond the bounds of the sentence"))
             
      (setq position-before position-after))))

   

 


