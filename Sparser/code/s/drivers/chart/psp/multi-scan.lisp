;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "multi-scan"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  February 2016

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
;; 4/28/15 Added scan-words-loop. 8/9/15 added assess-parenthesized-content
;; and an acronym handler. 2/5/16 Put in a handler for known words.
;; 2/10/16 make over polyword-check to open-code its caps-vs-lower check
;; and try both if needed.

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
  "Starting at the beginning of a sentence, add words into the
   chart until a sentence-ending period is encountered.
   It's a recursive loop. We get out of it when the period-hook
   runs and throws to :end-of-sentence."
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
    ;; Without polywords ("Mr."), the boundaries are not 
    ;; going to be as accurate since they'll just depend
    ;; on the capitalization of the next word. 
    (complete-word/hugin word position-before position-after)

    (let ((next-word (pos-terminal position-after)))
      (scan-words-loop position-after next-word))))



(defun scan-terminals-of-sentence (sentence)
  "Called from scan-terminals-and-do-core in the path that starts
   with a prepopulated documents. Provides sentence-based way to
   initiate scan-terminal-loop as it walks the populated chart"
  (let* ((start-pos (starts-at-pos sentence))
         (first-word (pos-terminal start-pos)))
    (unless first-word ;; 7/14/16: ends with polyword followed by "?"
      (error "Handling at the end of the previous sentence ~
              did not do lookahead correctly: ~a"
             (previous sentence)))
    (tr :scanning-terminals-of sentence)
    (catch :end-of-sentence
      (scan-terminals-loop start-pos first-word))))


;;;---------------------------------------------------
;;; 1st pass -- polywords, completion, terminal edges
;;;---------------------------------------------------

;; (trace-terminals-sweep)
;; (trace-terminals-loop)

(defun scan-terminals-loop (position-before word)
  "Carries out the first layer of analysis by checking for and
   applying word-level rules. Operates one word at a time
   in a tail-recursive loop. A word is dirst checked to see
   whether it initiates a polyword. If so we resume the loop
   at the position just after the polyword has applied.
   If no polyword applies or if it is not found, we look for
   and apply word-level FSAs, notably the digits-fsa. 
   The next in the succession of checks on a word is
   whether it has an associated completion rule. The
   final check is to add any unary edges into the chart
   and with that check for the application of category-based
   FSAs.
     We get out of the loop when the period-hook (fired by
   the completion actions) indicates that we're reached the
   end of a sentence and throws to an :end-of-sentence catch."
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

    #| Version that fixed problem of calling no-space processing
       when the beginning and end positions are identical
    (when where-pw-ended
      (tr :scanned-pw-ended-at word where-pw-ended)
      ;;(setq position-before where-pw-ended)
      (setq position-before where-pw-ended
            position-after (chart-position-after where-pw-ended))
      (unless (includes-state where-pw-ended :scanned)
        ;; PW can complete without thinking about the
        ;; word that follows it.
        (scan-next-position))
      (setq word (pos-terminal position-before))) |#

    (unless (includes-state position-after :scanned)
      (scan-next-position))

    ;; FSA's calls lifted from check-word-level-fsa-trigger 
    ;; and cwlft-cont
    (let ((where-fsa-ended (do-word-level-fsas word position-before)))
      ;;////////// nb. could accidentally re-do the polyword
      ;; given that entry point. 
      (tr :check-word-level-fsa-trigger position-before)
      (when where-fsa-ended
        (tr :word-fsa-ended-at word where-fsa-ended)
        (setq position-after where-fsa-ended
              ;;/// compare to new values used with PW
              position-before (chart-position-before where-fsa-ended))
        (unless (includes-state where-fsa-ended :scanned)
          (scan-next-position))
        (setq word (pos-terminal where-fsa-ended))))

    #+ignore(when (eq position-before position-after)
      (error "Scan-terminals-loop: before and after positions are
              the same: ~a" position-after))
    
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
      ;; taken from check-preterminal-edges
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
  "Lifted from check-for-polywords. Here all we want is for
   the PW fsa to fire if there is one, and to get the position
   that it ends at. Returns either that position or nil."
  (declare (special *use-occasional-polywords*))
  (tr :check-for-polywords word position-before)
  (set-status :polywords-check position-before)
  
  ;; 'word' is the canonical lowercase version of the lemma
  (let* ((ls-initial-state
          (if *use-occasional-polywords*
            (starts-occasional-polyword word)
            (starts-polyword word)))
         (caps-word (capitalized-correspondent1 
                     position-before word))
         (caps-initial-state
          (when caps-word
            (if *use-occasional-polywords*
              (starts-occasional-polyword caps-word)
              (starts-polyword caps-word)))))

    (when (or ls-initial-state caps-initial-state)
      ;; Prefer the capitalized version, but if it fails
      ;; try the lowercase version
      (let ( position-reached )

        (when caps-initial-state
          (tr :word-initiates-polyword caps-word position-before)
          (setq position-reached
                (do-polyword-fsa caps-word caps-initial-state position-before)))

        (unless position-reached ;; caps succeeded
          (when ls-initial-state
            (tr :word-initiates-polyword word position-before)
            (setq position-reached
                  (do-polyword-fsa word ls-initial-state position-before))))

        (if position-reached ;; one of them succeeded
          (let ((pw-edge (edge-spanning position-before position-reached)))
            (unless pw-edge (error "wrong span on polyword search"))
            (tr :pw-was-found position-before position-reached pw-edge))
          (tr :pw-not-found word position-before))

        position-reached))))


;; (trace-network)
(defun do-just-terminal-edges (word position-before position-after)
  ;; modeled on introduce-terminal-edges but returns after the
  ;; edges are created rather than continuing in the incremental
  ;; scan. 
  (install-terminal-edges word position-before position-after))

(defun do-any-category-fsas (edges position-before)
  (do-edge-level-fsas edges position-before))




;; (trace-morphology)
(defvar *positions-with-unhandled-unknown-words* nil
  "Part of scheme for delaying assigning a semantic interpetation
   (and thereby an edge) to an uknown word. ")

(defun store-word-and-handle-it-later (word)
  "Called from make-word/all-properties/or-primed when the
   *big-mechanism* flag is up and our next option is the default,
   which would probably be the wrong thing to do."
  (declare (special *position-being-filled*)) ;; bound in add-terminal-to-chart
  (tr :storing-unknown-for-later word *position-being-filled*)
  (push *position-being-filled*
        *positions-with-unhandled-unknown-words*)
  word)

(defun deal-with-unhandled-unknown-words-at (pos-before)
  "Called at the last action in the pattern-sweep treetop loop.
   Did we make a record of an unhandled unknown word at position-before.
   If so, pop that position from the list and figure out what sort
   of edge to create for it and how (or whether) to record it."
  (when *positions-with-unhandled-unknown-words*
    (when (memq pos-before *positions-with-unhandled-unknown-words*)
      ;; clear the flag
      (push-debug `(,pos-before)) ;(lsp-break "Check for covered at ~a" pos-before)
      (setq *positions-with-unhandled-unknown-words*
            (delete pos-before *positions-with-unhandled-unknown-words*))

      (tr :handling-unknown-word-stared-os pos-before)

      (let* ((top-edge (right-treetop-at/only-edges pos-before)))
        (cond
         ((and top-edge
               (not (one-word-long? top-edge)))
          (tr :unknown-word-is-spanned top-edge))
         (top-edge
          (tr :unknown-word-is-known top-edge))
         ((null top-edge)
          (when *big-mechanism*
            (cond
             ((covered-by-nearby-edge pos-before)
              (tr :unknown-word-is-covered))
             (t
              ;; We're only here because it's a *big-mechanism* case,
              ;; so we call a function there to do the handling.
              (handle-unknown-word-as-bio-entity pos-before)))))
         (t
          (lsp-break "Any reason not to rewrite as bio-entity?")))))))

(defun covered-by-nearby-edge (pos-before)
  "Does any edge span this position? We're checking this during
  pattern-sweep (as the last step before looping) so presumably
  we only care about edges that would have started to our left.
  We've already looked at the case where there's an edge that
  starts at this position."
  (let ((left-neighbor (left-treetop-at/only-edges pos-before)))
    ;;/// in principle (?) we'd have to do the equivalent of tts
    ;; to see if anything includes this position.
    ;; Should probably do a static analysis of the sequence of
    ;; actions that precede this moment and what they can produce.
    (when left-neighbor
      ;; If there's an edge to our immediate left, then it might
      ;; be used in an longer edge that goes over us.
      (let* ((neighbors-parent (edge-used-in left-neighbor))
             (its-end-pos (when neighbors-parent
                            (pos-edge-ends-at neighbors-parent))))
        (when its-end-pos
          (position-precedes pos-before its-end-pos))))))

(defun clear-unhandled-unknown-words ()
  "Called after pattern-sweep has looped over the entire sentence,
   which seems as good a place as any to do this."
  (setq *positions-with-unhandled-unknown-words* nil))



;;;------------------------------
;;; 2d pass -- no-space patterns
;;;------------------------------

(defparameter *break-on-nospace-pathology* nil
  "Gates breaks that involve suspected failures to clean positions
   when they're recycled.")

;; (trace-terminals-sweep)
(defun pattern-sweep (sentence)
  "Scans the sentence treetop by treetop in a loop.
   Looks for patterns initiated by no space between words."
  (declare (special *sentence-terminating-punctuation*
                    *trace-sweep*))
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

      (when *trace-sweep*
        (format t "~&[pattern sweep] p~a ~a p~a~%"
                (pos-token-index position-before)
                treetop
                (pos-token-index position-after)))

      (when (and (word-p treetop)
                 (memq treetop *sentence-terminating-punctuation*))
        (tr :terminated-sweep-at position-after)
        (return))

      (when (eq position-after end-pos)
        (tr :terminated-sweep-at position-after)
        (return))

      (unless (pos-assessed? position-after)
        ;; catches bugs in the termination conditions
        (error "Pattern sweep walked beyond the bounds of the sentence"))

      (if (no-space-before-word? position-after)
        (then
          (cond
            ((eq position-after position-before)
             (when *break-on-nospace-pathology*
               (push-debug `(treetop position-after))
               (lsp-break "Pattern-sweep: would loop on position ~a"
                          position-before))
             ;; we could (return) and drop out of this loop, but then
             ;; the same thing will hang up the parenthesis sweep,
             ;; so best to fail the whole sentence.
             (error "Pathology in edge-vectors would cause loops"))
            (t
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
                      (tr :uniform-ns-pattern-failed))))))))))
        (else
          (tr :space-before position-after)
          ;; (look-for-DA-pattern treetop)
          ;;/// this isn't properly handled. The return value if
          ;; there is a pattern and it succeeds is not properly
          ;; handled -- the standalone-da-execution runs for 
          ;; side-effects and we don't appreciate them. The
          ;; more customary eecute-da-trie call shows how the
          ;; 'result' can be more interesting
          ))

      (deal-with-unhandled-unknown-words-at position-before)

      ;; The pattern could have taken us just past the period
      (when (position-precedes end-pos position-after)
        (return))
        
      (setq position-before position-after))

    ;;/// is this position reached when there's a return from the loop?
    (clear-unhandled-unknown-words)))


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
        ;;(push-debug `(,end-pos ,position-after)) (break "do no-space: tt = ~a" tt)
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



#|(defun look-for-DA-pattern (treetop)  ;; (trace-da)
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
|#
;; (p "PIK3CA and BRAF are, in part, regulated.")

(defun look-for-da-pattern (tt)
  "If there is a da pattern that starts at this treetop
  execute it and return the 'result'"
  (let ((da-node (trie-for-1st-item tt)))
    (when da-node
      (standalone-da-execution da-node tt))))

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
          (create-short-conjunction-edge-if-possible left-edge right-edge))))
    ;; zero it to avoid confusing the pass through a later sentence
    (setq *pending-conjunction* nil)))


(defun create-short-conjunction-edge-if-possible (left-edge right-edge)
  (dolist (left (if (edge-vector-p left-edge) 
		    (ev-edges left-edge)
		    (list left-edge)))
    (dolist (right (if (edge-vector-p right-edge) 
		       (ev-edges right-edge)
		       (list right-edge)))
      (let ((heuristic (conjunction-heuristics left right)))
	(if heuristic
	    ;; conjoin/2 looks for leftwards
	    (let ((edge (conjoin/2 left right heuristic :pass 'short-conjunctions-sweep)))
	      (tr :conjoined-edge edge)
	      (return-from create-short-conjunction-edge-if-possible edge))
	    (tr :no-heuristics-for left-edge right-edge))))))


;;;-------------------------
;;; 4th pass -- parentheses
;;;-------------------------

;; (trace-parentheses)

(defun sweep-to-span-parentheses (sentence)
  ;; (trace-traversal-hook) (trace-traversal-hits)
  ;; Given the sweeps that have preceded this, there will be
  ;; no edges over the parentheses. (////barring an errant
  ;; mention in a cfr, as happens for "the" or even ".")
  ;; So we walk through looking for words

  (declare (special *the-punctuation-period* *trace-sweep*))

  (let ((position-before (starts-at-pos sentence))
        (end-pos (ends-at-pos sentence))
        (*special-acronym-handling* t)
        treetop  position-after )
    (declare (special *special-acronym-handling*))

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
      
      (word-traversal-hook treetop position-before position-after)
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


;;;-----------------------------------
;;; acronym handling and paren hiding
;;;-----------------------------------

(defparameter *hide-parentheses* nil
  "Provides an adequate way to remove text within parentheses to be
   removed from the parser's attention by burying within the prior
   edge.")

(defvar *pending-acronyms* nil
  "If we have walked over what appears to be an acronym to be
  handled later, this stores the needed information.")

(define-per-run-init-form
    ;; see per-article-initializations as called from analysis-core
    '(setq *pending-acronyms* nil))

   
(defun assess-parenthesized-content (paren-edge
                                     pos-before-open pos-after-open
                                     pos-before-close pos-after-close)
  ;; Called from span-parentheses after all the handling of
  ;; the interior has been handled and a (usually) vanilla edge
  ;; constructed to span the whole expression. 
  (push-debug `(,paren-edge ,pos-before-open ,pos-after-open
                ,pos-before-close ,pos-after-close))
  ;; (lsp-break "call to assess-parenthesized-content")
  #| (setq first-edge (nth 0 *) pos-before-open (nth 1 *)
        pos-after-open (nth 2 *) pos-before-close (nth 3 *)
        pos-after-close (nth 4 *)) |#
  ;; Some of this lookup is recreating observations within
  ;; do-paired-punctuation-interior but it simpler than figuring out
  ;; a way to export it.
  (let* ((first-edge (right-treetop-at/edge pos-after-open))
         (one-edge-over-entire-segment?
          (when (edge-p first-edge) ;; e.g. "the underlying mechanism(s)."
            (eq (pos-edge-ends-at first-edge) pos-before-close)))
         (edge-to-left (left-treetop-at/edge pos-before-open)))
    (cond
     ((and (edge-p first-edge)
           one-edge-over-entire-segment?
           (one-word-long? first-edge)
           (eq (pos-capitalization pos-after-open) :all-caps))
      (unless (and edge-to-left (edge-p edge-to-left))
        (break "Stub of new case: probable acronym w/o edge to ~
                the left - in assess-parenthesized-content"))
      (when (edge-p edge-to-left) ;; otherwise there's nothing to hide under
        (let* ((ev-after-close (pos-ends-here pos-after-close))
               (ev-to-get-edges-from (edge-starts-at edge-to-left))
               (edges-to-extend (all-edges-on ev-to-get-edges-from))
               (ev-of-edge (edge-ends-at edge-to-left)))
          
          ;; There may be more than one edge just before the open,
          ;; i.e. it's top-node is :multiple-initial-eges. We need to
          ;; make all of them longer because which of these edges is
          ;; going to be selected by the chunker can't be determined here.
          (loop for edge in edges-to-extend
            ;; Move the edge over the parentheses
            do (knit-edge-into-position edge ev-after-close)
               (setf (edge-ends-at edge) ev-after-close))

          ;; save the information we need to recover it all
          (push `(,pos-before-open ,paren-edge ,first-edge ,ev-of-edge)
                *pending-acronyms*))))
     (*hide-parentheses*
      (lsp-break "stub: finish revision of hide parentheses?")
      (hide-parenthesis-edge paren-edge edge-to-left)))))

(defun recover-acronym-if-necessary (segment-start segment-end)
  ;; called from parse-chunk-interior after pts has finished
  ;; that may not be the best location for it. 
  (when *pending-acronyms*
    (let ((pos-before-open (first (car *pending-acronyms*))))
      (when (position-is-between pos-before-open
                                 segment-start segment-end)
        (let* ((data (pop *pending-acronyms*))
               (paren-edge (second data))
               (acronym-edge (third data))
               (ev-of-edge-to-the-left (fourth data)) ;; ends at
               (regular-edge (highest-edge ev-of-edge-to-the-left)))
          (setq *pending-acronyms* nil) ;; clear flag
          (push-debug `(,pos-before-open ,paren-edge ,acronym-edge ; 
                        ,ev-of-edge-to-the-left ,regular-edge))
          (unless regular-edge
            ;; have to go find it. Could be argument for hacking
            ;; chunk parse to see the boundary
            (break "missing regular-edge - go find it"))
          ;; What should the parse look like? The right-head of
          ;; the regular edge has been hacked to extend over
          ;; the parens. Is that still ok?
          (let ((regular-referent (edge-referent regular-edge))
                (acronym-referent (edge-referent acronym-edge)))
            (unless (eq regular-referent acronym-referent)
              ;; If so, it's been predefined. Nothing to do
              ;; Otherwise, we take over the acronym edge
              ;; and rule and make them look like the regular edge
              ;; if there isn't a real rule we make it from scratch.
              (let ((rule (edge-rule acronym-edge)))
                (typecase rule
                 (cfr
                  (let* ((lowercase-rhs (car (cfr-rhs rule)))
                         (string (word-pname lowercase-rhs))
                         (uppercase-word (resolve/make (string-upcase string))))
                    (when 
			(or (eq (cat-name (cfr-category rule)) 'bio-entity)
			    (not (itypep (cfr-category rule) 'biological))) ;; case where there is a definition from outside of biology (e.g. "TRIM")
		      (when
			  (not (eq (cat-name (cfr-category rule)) 'bio-entity))
			(format t "~&***Acronym -- attempting to change category of rule ~s to ~s~%  in ~s~%" rule
				(edge-category regular-edge)
				(sentence-string *sentence-in-core*)))
		      (setf (cfr-category rule) (edge-category regular-edge))
		      (setf (cfr-rhs rule) (list uppercase-word))
		      (setf (cfr-form rule) (edge-form regular-edge))
		      (setf (cfr-referent rule) regular-referent))
                    rule ))
                  (symbol ;; e.g. reify-ns-name-as-bio-entity
                    (let ((word (edge-left-daughter acronym-edge))
                          (rule (edge-rule regular-edge)))
                      ;;/// presuposes that caller only made the acronym
                      ;; from one word.
                      (assert (word-p word))
		      (when (cfr-p rule)
			;; have a case where previous edge was a conjunction, and the "rule" was a symbol
			;;  "xxx and neuregulin (nrg) ..."
			(let ((rule (define-cfr/resolved
					(cfr-category rule)
					(list word)
				      (cfr-form rule)
				      (cfr-referent rule)
				      (cfr-schema rule))))
			  ;;// trace
			  rule))))
                  (otherwise
                   (error "rule for acronym is neither a symbol nor ~
                           a cfr: ~a" rule)))))))))))


(defun hide-parenthesis-edge (paren-edge edge-to-immediate-left)
  ;; Paren-edge spans from the open paren to the close inclusive.

  ;; With lots of new words and the polyword treatment no longer
  ;; populating the chart with literals, there is quite likely
  ;; not to be an edge to the left to 'hide' the parenthesized
  ;; expression under until we can give them reasonable treatments.
  ;; If there's no edge we should leave it, then add a rule or
  ;; such to do the hiding when there's a chunk to the left
  ;; which is guarenteed to have a spanning edge

  ;; See also knit-parens-into-neighbor in pass1

;    (unless edge-to-immediate-left
;      (error "hide parenthesis: new situation, no edge to the left"))
  (when edge-to-immediate-left
    (let ((paren-ends-at (edge-ends-at paren-edge)))
      ;;(neighbor-ends-at (edge-ends-at edge-to-immediate-left)))
      (setf (edge-ends-at edge-to-immediate-left) paren-ends-at)
      (knit-edge-into-position edge-to-immediate-left paren-ends-at)
      (push-debug `(,edge-to-immediate-left)) 
      ;;(break "is the edge hidden?")
      )))

