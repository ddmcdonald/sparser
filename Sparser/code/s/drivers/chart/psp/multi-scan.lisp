;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2015 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "multi-scan"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  April 2015

;; Broken out of no-brackets-protocol 11/17/14 as part of turning the
;; original single-pass sweep into a succession of passes. Drafts of
;; four passes finished 11/19/14.
;; RJB 12/18/2014   handle case of A, B, and C (i.e. comma before conjunction)
;;  use correct function right-treetop-at/edge in short-conjunctions-sweep -- handle case of PD198u7 and sorafenib.
;; 1/18/2015 Allow conjunctions of an ambiguous word and another word (or ambiguous word)
;; 2/5/15 Introduced fsa's on edges and words. 2/8/15 fixed bug in them
;; SBCL caught type error in short-conjunctions-sweep -- fixed
;; 4/19/15 adapting pattern-sweep to the case where two edges from prior
;;  pass are over words that aren't separated by a space ("20%")
;; 4/28/15 Added scan-words-loop

(in-package :sparser)


;; (trace-terminals-sweep)
;; (trace-network)

;;;---------------------------------------------------------
;;; 0th pass - just the new words and sentence delimitation
;;;---------------------------------------------------------

(defparameter *trace-scan-words-loop* nil
  "Echos the word being scanned")

;; (trace-paragraphs) -- period-hook 
;; (setq *trace-scan-words-loop* t)

(defun scan-words-loop (position-before word)
  ;; position-before - word - position-after
  ;; Called from scan-sentences-to-eof which is called from
  ;; initiate-successive-sweeps when it's reading a prepopulated document
  (simple-eos-check position-before word)  
  (let ((position-after (chart-position-after position-before)))
    (unless (includes-state position-after :scanned)
      (scan-next-position)) ;; unknown words are noticed here
    (simple-eos-check position-before word)

    (when *trace-scan-words-loop*
      (format t " ~s" (word-pname word)))

    ;; Trigger the period-hook
    ;; Without polywords ("Mr.") the boundaries are not 
    ;; going to be as accurate since they'll just depend
    ;; on the capitalization of the next word. 
    (complete-word/hugin word position-before position-after)

    (let ((next-word (pos-terminal position-after)))
      (scan-words-loop position-after next-word))))

(defun scan-terminals-of-sentence (sentence)
  (let* ((start-pos (starts-at-pos sentence))
         (first-word (pos-terminal start-pos)))
    (tr :scanning-terminals-of sentence)
    (catch :end-of-sentence
      (scan-terminals-loop start-pos first-word))))


;;;---------------------------------------------------
;;; 1st pass -- polywords, completion, terminal edges
;;;---------------------------------------------------

;; (trace-terminals-sweep)
;; (trace-terminals-loop)

(defun scan-terminals-loop (position-before word)
  (tr :terminal-position position-before word)
            
  (simple-eos-check position-before word)

  ;; Polyword check
  (let* ((where-pw-ended (polyword-check position-before word))
         (position-after (or where-pw-ended
                             (chart-position-after position-before))))
    (when where-pw-ended
      (tr :scanned-pw-ended-at word where-pw-ended)
      (setq position-before where-pw-ended)
      (unless (includes-state where-pw-ended :scanned)
        ;; PW can complete without thinking about the
        ;; word that follows it.
        (scan-next-position))
      (setq word (pos-terminal where-pw-ended)))

    (unless (includes-state position-after :scanned)
      (scan-next-position))

    ;; FSA's calls lifted from check-word-level-fsa-trigger 
    ;; and cwlft-cont
    (tr :check-word-level-fsa-trigger position-before)
    #+ignore(let ((where-fsa-ended (do-word-level-fsas word position-before)))
      ;;////////// nb. could accidentally re-do the polyword
      ;; given that entry point. 
      (when where-fsa-ended
        (tr :word-fsa-ended-at word where-fsa-ended)
        (setq position-after where-fsa-ended
              position-before (chart-position-before where-fsa-ended))
        (unless (includes-state where-fsa-ended :scanned)
          (scan-next-position))
        (setq word (pos-terminal where-fsa-ended))))

    (tr :scan-completing word position-before position-after)
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

    (let ((edges
           (do-just-terminal-edges word position-before position-after)))
      (tr :scanned-terminal-edges edges position-before position-after)
      ;; from check-preterminal-edges
      (when edges ;; e.g. digit-sequence
        (let ((where-fsa-ended
               (do-any-category-fsas edges position-before)))
          (when where-fsa-ended
            (tr :edge-fsa-ended-at word where-fsa-ended)
            (setq position-after where-fsa-ended
                  position-before (chart-position-before where-fsa-ended))
            (unless (includes-state where-fsa-ended :scanned)
              (scan-next-position))
            (setq word (pos-terminal where-fsa-ended))))))

    (let ((next-word (pos-terminal position-after)))
      (tr :next-terminal-to-scan position-after next-word)
      (scan-terminals-loop position-after next-word))))



;;--- 1st pass subroutines

(defun simple-eos-check (position-before word)
  ;; Taken from end-of-source-check without worrying about the
  ;; forest or other things to do. In the usual scan, this check
  ;; is part of check-for-[-from-word-after before anything happens.
  ;;    Has to be ammended in a similar way to the original because
  ;; there will invariably be something that needs to be tied
  ;; off
  (declare (special *reading-populated-document*
                    *pre-read-all-sentences*))
  (tr :end-of-source-check word position-before)
  (when (eq word *end-of-source*)
    (cond
     (*pre-read-all-sentences*
      ;; The catch is in initiate-successive-sweeps when
      ;; it's reading a pre-populated document
      ;;(break "pre-read")
      (throw 'sentences-finished nil))
     (*reading-populated-document*
      ;; In this case EOS just means that we've finished the
      ;; text of the current paragraph, so we throw to
      ;; its catch.
      ;;(break "next para")
      (throw 'do-next-paragraph nil))
     (t
      ;; This just does the throw up to chart-based-analysis
      ;; for terminatnig-chart-processing
      ;;(break "stop parsing")
      (terminate-chart-level-process)))))

;; (trace-fsas)
(defun polyword-check (position-before word)
  ;; lifted from check-for-polywords where all we want is
  ;; the fsa to fire if there is one, and to get the position
  ;; that it ends at. Returns either that position or nil. 
  (tr :check-for-polywords word position-before)
  (set-status :polywords-check position-before)
  (let ((initial-state (initiates-polyword1 word position-before)))
    ;; This "1" variant calls a "1" variant of capitalized-correspondent
    ;; which use the position information correctly.
    (when initial-state
      (tr :word-initiates-polyword word position-before)
      (let ((position-reached
             (do-polyword-fsa word initial-state position-before)))
        (if position-reached
          (let ((pw-edge (edge-spanning position-before position-reached)))
            (unless pw-edge (error "wrong span search"))
            (tr :pw-was-found position-before position-reached pw-edge))
          (tr :pw-not-found word position-before))
        ;;(push-debug `(,position-reached))
        ;; Check the status -- cf. adjudicate-result-of-word-fsa
        ;(break "Polyword succeeded at ~a" position-reached)
        position-reached))))


;; (trace-network)
(defun do-just-terminal-edges (word position-before position-after)
  ;; modeled on introduce-terminal-edges but returns after the
  ;; edges are created rather than continuing in the incremental
  ;; scan. 
  (install-terminal-edges word position-before position-after))

(defun do-any-category-fsas (edges position-before)
  (do-edge-level-fsas edges position-before))




;;;------------------------------
;;; 2d pass -- no-space patterns
;;;------------------------------

(defun pattern-sweep (sentence)  ;; (trace-terminals-sweep)
  (declare (special *the-punctuation-period* *trace-sweep*))
  (let ((position-before (starts-at-pos sentence))
        (end-pos (ends-at-pos sentence))
        treetop  position-after  multiple?  )

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
                 (eq treetop *the-punctuation-period*))
        (tr :terminated-sweep-at position-after)
        (return))
      (when (eq position-after end-pos)
        (tr :terminated-sweep-at position-after)
        (return))
      (unless (pos-assessed? position-after)
        ;; catches bugs in the termination conditions
        (error "Pattern sweep walked beyond the bounds of the sentence"))

      (when *trace-sweep*
        (format t "~&[pattern sweep] p~a ~a p~a~%"
                (pos-token-index position-before)
                treetop
                (pos-token-index position-after)))

      (if (no-space-before-word? position-after)
        (then
          (tr :no-space-at position-after)
          ;; "no whitespace at P, Initating scan-pattern check"
          (let ((where-pattern-scan-ended
                 ;; Run the pre-check for defined patterns
                 (check-for-pattern position-after)))
            (if where-pattern-scan-ended
              (then
                (tr :successful-ns-pattern-reached where-pattern-scan-ended)
                (setq position-after where-pattern-scan-ended))
              (else
                (tr :no-specific-pattern-trying-uniform position-before)
                (let ((where-uniform-ns-ended
                       (do-no-space-collection 
                        treetop position-before position-after)))
                  (if where-uniform-ns-ended
                    (then
                      (tr :successful-uniform-ns-reached where-uniform-ns-ended)
                      (setq position-after where-uniform-ns-ended))
                    (else
                      (tr :uniform-ns-pattern-failed))))))))
        (else
          (tr :space-before position-after)
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
    ;; Yes/no traces in initiate-scan-pattern-driver
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
        

(defun do-no-space-collection (tt position-before position-after)
  ;; There is no whitespace between the word at the position-after
  ;; and the previous word. If the treetop edge is just one word 
  ;; long then we pass it through as though it were just a word,
  ;; but if it is longer then we move the adjacency test and
  ;; position-after so that it fits the expectations of the pattern
  ;; checker. 
  ;; (trace-network-flow)
  (let ((word-at-pos-before (pos-terminal position-before))
        pos-reached )
    (unless (or (word-is-bracket-punct word-at-pos-before)
                (word-never-in-ns-sequence word-at-pos-before))
      (unless tt
        (push-debug `(,position-before ,position-after))
        (error "Why doesn't tt have a value?"))

      (let ((end-pos (typecase tt
                       (edge (pos-edge-ends-at tt))
                       (word (chart-position-after position-before))
                       (otherwise
                        (error "Unexpected type for tt: ~a~%~a"
                               (type-of tt) tt)))))
        (cond
         ((eq end-pos position-after)
          ;; Given that end-pos and position-after are always in
          ;; sync, this clause is the only one that's ever taken.
          ;; The others are presently doing no work, but will
          ;; be useful if we need to change the protocol. 
          (tr :check-for-uniform-no-space-sequence position-before)
          (setq pos-reached
                (collect-no-space-segment-into-word position-after)))

         ;; (p "a 0.45μm filter")

         ;; Quick hit. Is there whitespace on the position
         ;; where it ends?  If there is, then we're done
         ;; because this is where the sequence would have ended anyway. 
         ((pos-preceding-whitespace end-pos)
          (pos-edge-ends-at tt))

         ;; Let it deal with whatever's there
         (t  (collect-no-space-segment-into-word end-pos)))
        ;;/// trace
        pos-reached ))))



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

(defparameter *use-form-heuristic-in-conj-sweep* t
  "Controls whether we also look at the form of edges in doing 
   conjunction during this early sweep")

;;  (p "by PIK3CA and BRAF are.")
(defun short-conjunctions-sweep (sentence)
  (declare (ignore sentence))
  (when *pending-conjunction*
    ;; set by complete calling mark-instance-of-AND during the
    ;; scan-terminals-loop pass.
    ;;/// The flag gets initialized, but mark-instance-of-AND or
    ;; something is putting on two copies.
    (dolist (position (remove-duplicates *pending-conjunction*))
      ;; lifted from look-for-short-obvious-conjunctions which will
      (let ((left-edge (next-treetop/leftward position))
            (right-edge  (right-treetop-at/edge 
                          (chart-position-after position)))
            (*allow-form-conjunction-heuristic* 
             *use-form-heuristic-in-conj-sweep*))
        (declare (special *allow-form-conjunction-heuristic*))
        ;;(break "short-conjunctions")
        ;; handle case of A, B, and C (i.e. comma before conjunction)
        (when (and
               ;; caught by :SBCL
               (not (word-p left-edge)) ;; case such as ...cells (Figure 1B and 1C) and we...
               (eq word::comma 
                   (edge-category 
                    (if (edge-vector-p left-edge) 
                        (lowest-edge left-edge)
                        left-edge))))
               (setq left-edge (next-treetop/leftward left-edge)))

        (unless (or (word-p left-edge)
                    (word-p right-edge))
          (dolist (left (if (edge-vector-p left-edge) 
                            (ev-edges left-edge)
                            (list left-edge)))
            (dolist (right (if (edge-vector-p right-edge) 
                               (ev-edges right-edge)
                               (list right-edge)))
              (let ((heuristic (conjunction-heuristics left right)))
                (if heuristic
                    ;; conjoin/2 looks for leftwards
                    (let ((edge (conjoin/2 left right heuristic)))
                      (tr :conjoined-edge edge)
                      edge)
                    (tr :no-heuristics-for left-edge right-edge))))))))
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

  (declare (special *the-punctuation-period* *trace-sweep*))

  (let ((position-before (starts-at-pos sentence))
        (end-pos (ends-at-pos sentence))
        treetop  position-after    )

    ;; (push-debug `(,sentence ,position-before ,end-pos))
    (loop
      ;; copied from the pattern sweep. 
      (multiple-value-setq (treetop position-after)
        (next-treetop/rightward position-before))

      (when *trace-sweep*
        (format t "~&[paren] p~a ~a"
                (pos-token-index position-before) treetop))
 
      (when (word-p treetop)
        (when (eq treetop *the-punctuation-period*)
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

   
(defun assess-parenthesized-content (layout first-edge
                                     pos-before-open pos-after-open
                                     pos-before-close pos-after-close)
  (push-debug `(,layout ,first-edge ,pos-before-open ,pos-after-open
                ,pos-before-close ,pos-after-close))
  ) ;;(lsp-break "called at ~a" pos-before-open))


