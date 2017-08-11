;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "multi-scan"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  January 2017

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

;;;---------------------------------------------------------
;;; 0th pass - just the new words and sentence delimitation
;;;---------------------------------------------------------

(defparameter *trace-scan-words-loop* nil
  "Echos the word being scanned")

;; (trace-paragraphs) -- period-hook 
;; (setq *trace-scan-words-loop* t)

(defun scan-words-loop (position-before word)
  "This routine is called by scan-sentences-to-eof which itself
   is called by initiate-successive-sweeps when we are reading
   a document and need to populate (create) all the sentences.
   Starting at the beginning of a sentence, add words into the
   chart until a sentence-ending period (or question-mark) is encountered.
   It's a recursive loop. We get out of it when the period-hook
   runs and throws to :end-of-sentence."
  ;; position-before - word - position-after
  ;;/// rewrite this as a loop. Maybe incorporate the
  ;; by-hand invocation of period-hook
  ;; (tr :scan-words-loop) <-- needs to be loop before not loud
  (simple-eos-check position-before word)  
  (let ((position-after (chart-position-after position-before)))
    (unless (includes-state position-after :scanned)
      (scan-next-position)) ;; unknown words are noticed here
    (simple-eos-check position-before word)

    (when *trace-scan-words-loop*
      (format t " ~s" (word-pname word)))
    
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
      
      ;; Trigger the period-hook (n.b. also gets conjunctions,
      ;; parentheses, etc.)
      (complete-word/hugin word position-before position-after)

      (let ((next-word (pos-terminal position-after)))
        (scan-words-loop position-after next-word)))))


(defun scan-terminals-of-sentence (sentence)
  "Called from scan-terminals-and-do-core in the path that starts
   with a prepopulated documents. Provides sentence-based way to
   initiate scan-terminal-loop as it walks from sentence to sentence"
  (tr :scan-terminals-of-sentence)
  (let* ((start-pos (starts-at-pos sentence))
         (first-word (pos-terminal start-pos)))
    (unless first-word ;; 7/14/16: ends with polyword followed by "?"
      ;; compensate for what that bug kept it from doing
      (scan-next-position)
      (setq first-word (pos-terminal start-pos)))
    (unless first-word
      (push-debug `(,sentence ,start-pos))
      (error "Something is very wrong with the document structure. ~
            ~%Scan-next-terminal called at p~a ~
            ~%returned nil for sentence ~a ~
            ~%in ~a"             
             (pos-array-index start-pos) sentence
             (parent sentence)))
    (tr :scanning-terminals-of sentence)
    (catch :end-of-sentence
      (scan-terminals-loop start-pos first-word))))


;;;---------------------------------------------------
;;; 1st pass -- polywords, completion, terminal edges
;;;---------------------------------------------------

;; (trace-terminals-sweep)
;; (trace-terminals-loop)

;; (trace-network)
;; (setq *trace-sweep* t)

(defparameter *scanning-terminals* nil
  "Used as a flag by scan-terminals-loop to control the
   behavior of the eos check and period hook.")


(defun scan-terminals-loop (position-before word)
  "Carries out the first layer of analysis by checking for and
   applying word-level rules. It is the core routine regardless
   of whether source is a document or just a string.
   Structured as a succession of passes ('sweeps') over
   a sentence-worth of text:
   1st. do the polywords. This sweep also has the job of 
   delimiting the sentence using a throw from period-hook.
   2d. sweep over the treetops in the sentence to
   handle any word-level fsas. 
   3d. Apply word-level completion hook to each word that
   isn't covered by an edge.
   4th. Introduce the terminal edges for every unspanned word. 
   We return by throwing to :end-of-sentence, which is
   what period-hook does if its called conventionally."
  (tr :scan-terminals-loop)
  (simple-eos-check position-before word)
  (sentence-level-initializations) ;; clear traversal state

  (let ((initial-position-before position-before)
        (initial-word word)
        end-pos )
    ;; N.b. This assumes all the flags are up. If that is not the case
    ;; then the logic has to change to accommodate it, particularly
    ;; for delimiting the sentence
    
    (when *sweep-for-polywords*
      (let ((*scanning-terminals* :polywords))
        (declare (special *scanning-terminals*))
        (setq end-pos
              (catch :pw-sweep
                (polyword-sweep-loop initial-position-before initial-word)))))
    (tr :pw-sweep-returned end-pos)

    (when *sweep-for-word-level-fsas*
      (word-level-fsa-sweep initial-position-before end-pos))

    (word-level-completion-sweep initial-position-before end-pos)

    (when *sweep-for-terminal-edges*
      (terminal-edges-sweep initial-position-before end-pos))

    (tr :scan-terminals-loop-finished)
    (throw :end-of-sentence t)))


(defun polyword-sweep-loop (position-before word)
  "First pass over the text. Checks each successive word for
   initiating a polyword (polyword-check). The longest completion
   is spanned with an edge. This loop stops with a throw from
   the period hook (period-check) or encountering the end of
   the stream being analyzed (simple-eos-check). These delimit
   one sentence-worth of text."
  (declare (special *trace-sweep*))
  (tr :polyword-sweep-loop)
  (loop
     (simple-eos-check position-before word)
     (period-check position-before word)

     (when *trace-sweep*
       (format t "~&[polyword-sweep] ~s at p~a"
               (pname word) (pos-token-index position-before)))

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
           (scan-next-position))
         (setq word (pos-terminal position-before))) |#

       #+ignore(when (eq position-before position-after)
                 (error "Scan-terminals-loop: before and after positions are
                  the same: ~a" position-after))
       
       (unless (includes-state position-after :scanned)
         (scan-next-position))

       (let ((next-word (pos-terminal position-after)))
         (tr :next-terminal-to-scan position-after next-word)
         (setq position-before position-after
               word next-word)))))


(defun word-level-fsa-sweep (start-pos end-pos)
  "At this point some spans may be covered with edges introduced
   by polywords. For any uncovered words, check for the possibility
   that it introduces an fsa. The chart is already populated
   with the words introduced by the pw sweep, so we don't need
   to do our own scans."
  (declare (special *trace-sweep*))
  (tr :word-level-fsa-sweep start-pos end-pos)      
  (let* ((position-before start-pos)
         (ev (pos-starts-here start-pos))
         (edge (ev-top-node ev))
         (word (unless edge (pos-terminal start-pos)))
         (position-after (if edge
                           (pos-edge-ends-at edge)
                           (chart-position-after position-before))))
    (loop
       (when *trace-sweep*
         (format t "~&[fsa sweep] at p~a is ~a"
                 (pos-token-index position-before)
                 (or word edge)))
       ;; if word, check it. Else advance
       (when word
         ;; FSA's calls lifted from check-word-level-fsa-trigger 
         ;; and cwlft-cont
         (tr :check-word-level-fsa-trigger position-before)
         (let* ((where-fsa-ended (do-word-level-fsas word position-before))
                (position-after (or where-fsa-ended
                                    (chart-position-after position-before))))
           (when where-fsa-ended
             (tr :word-fsa-ended-at word where-fsa-ended)
             (setq position-after where-fsa-ended
                   position-before (chart-position-before where-fsa-ended))
             (unless (includes-state where-fsa-ended :scanned)
               (scan-next-position))
             (setq word (pos-terminal where-fsa-ended)))))

       (when (eq position-after end-pos)
         (return))

       ;; (tr :next-terminal-to-scan position-after next-word)
       (setq position-before position-after
             ev (pos-starts-here position-after)
             edge (ev-top-node ev)
             word (unless edge (pos-terminal position-after))
             position-after (if edge
                              (pos-edge-ends-at edge)
                              (chart-position-after position-after))))))


;; (setq *trace-completion-hook* t)

(defun word-level-completion-sweep (start-pos end-pos)
  "Call complete-word/hugin on every word not covered by an edge.
   The most important cases are for words with hooks, such as
   parentheses or the apostrope of the possessive, as well as
   conjunctions."
  (declare (special *trace-sweep*))
  (tr :word-level-completion-sweep)
  (let* ((position-before start-pos)
         (ev (pos-starts-here start-pos))
         (edge (ev-top-node ev))
         (word (unless edge (pos-terminal start-pos)))
         (position-after (if edge
                           (pos-edge-ends-at edge)
                           (chart-position-after position-before)))
         (*scanning-terminals* :completion-sweep))
    (declare (special *scanning-terminals*))
    
    (loop
       (when *trace-sweep*
         (format t "~&[completion sweep] at p~a is ~a"
                 (pos-token-index position-before)
                 (or word edge)))
       (when word
         ;; The function check-for-completion-actions/word looks on the
         ;; rule-set of the word for a completion action or actions and
         ;; runs carry-out-actions to execute (funcall) them. 
         (tr :scan-completing word position-before position-after)
         (complete-word/hugin word position-before position-after))

       (when (eq position-after end-pos)
         (return))

       (setq position-before position-after
             ev (pos-starts-here position-after)
             edge (ev-top-node ev)
             word (unless edge (pos-terminal position-after))
             position-after (if edge
                              (pos-edge-ends-at edge)
                              (chart-position-after position-after)))
       (unless edge
         (when (null word)
           ;; Gets us out of a loop if we walk past the end of
           ;; the chart. See note in macro just below
           (return))))))

#| 3/27/17 ddm -- In at least two of the "phase 3" articles from HMS
there are abbreviated months, e.g. "Mar. 2009", and the period is
not (yet) being correctly recognized as indicating an abbreviation
rather than an end-of-sentence marker. During the word-level completion 
sweep, applying the abbreviation creates an edge whose end-point
is beyond the end-pos (the end position is the end position of the
overly-short sentence.), which leads to a tight infinite loop.
To avoid this, we look for having walked beyond the end of the
populated chart, as indicated by the next pos-terminal being nil.
(Though that doesn't work when the chart was already filled by longer 
sentence. In the presenting case today the bad length sentences
were at the beginning of a paragraph when the chart had just been
deliberately emptied.)
   When we detect this in word-level-completion-sweep we just return
and leave the loop because we want to continue on to the final word-level
sweep. When we detect it there in terminal-edges-sweep (actually in the
macro it and only expands) we throw to end-of-sentence, which finishes
this whole level.
   Test with this to see the exact point of failure and the short
sentences.
 (run-an-article :id "PMID22252115" :corpus :phase3 :quiet nil :show-sect t)
|#


;; candidate to redo earlier loops -- used in terminal-edges-sweep below
(defmacro carefully-walk-initial-chart (&body body)
  `(let* ((position-before start-pos)
          (ev (pos-starts-here position-before))
          (edge (ev-top-node ev))
          (word (unless edge (pos-terminal position-before)))
          (position-after (if edge
                            (pos-edge-ends-at edge)
                            (chart-position-after position-before))))
     (loop
        ,@body
        (when (eq position-after end-pos)
          (return))
        (setq position-before position-after
              ev (pos-starts-here position-after)
              edge (ev-top-node ev)
              word (unless edge (pos-terminal position-after))
              position-after (if edge
                               (pos-edge-ends-at edge)
                               (chart-position-after position-after)))
        (unless edge
          (when (null word)
            (format t "~&Walked off the end of the chart at p~a in ~%~s~%"
                    (pos-array-index position-after)
                    (current-string))
            (throw :end-of-sentence t))))))


(defun terminal-edges-sweep (start-pos end-pos)
  "Sweep through the chart from the start position to the end
   position (the span of the current sentence). Whenever it
   encounters a word that has not already been covered by an
   edge it calls do-just-terminal-edges to create the edges
   for the word interpretation(s).
      It then looks for any category fsas that are associated
   with a newly-instantiated edge (notably digit sequences)
   and follows those out to where the end."
  (declare (special *trace-sweep*))
  (tr :terminal-edges-sweep)
  (carefully-walk-initial-chart
    (progn
      (when *trace-sweep*
         (format t "~&[terminal edges sweep] at p~a is ~a"
                 (pos-token-index position-before)
                 (or word edge)))
      (if word
        (let ((edges
               (do-just-terminal-edges word position-before position-after)))
          (tr :scanned-terminal-edges edges position-before position-after)
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
        (else
          (when word ;; nil at the end of the loop
            (format t "~&No edge over ~s~%~%" (pname word))))))))


;;--- 1st pass subroutines

(defun period-check (position-before word)
  "How to engage the period-hook without calling completion.
   If the word is a period we will usually return via a throw"
  (declare (special *sentence-terminating-punctuation*
                    *the-period-hook-is-on*))
  (when *the-period-hook-is-on*
    (when (memq word *sentence-terminating-punctuation*)
      (period-hook word
                   position-before
                   (chart-position-after position-before)))))


;; (trace-eos-check)
(defun simple-eos-check (position-before word)
  "Adapted to successive sweep document processing from the
   incremental end-of-source-check version. Throws to
   different places on the stack depending on the current
   state."
  (declare (special *reading-populated-document*
                    *pre-read-all-sentences*
                    *scanning-terminals*))
  (tr :end-of-source-check word position-before)
  (when (eq word *end-of-source*)
    (cond
      (*scanning-terminals*
       (tie-off-ongoing-sentence-at-eos position-before)
       ;;(lsp-break "hit eos = ~a" *scanning-terminals*)
       (ecase *scanning-terminals*
         (:polywords
          (tr :eos-scanning-terminals/pw)
          (throw :pw-sweep position-before))))
     (*pre-read-all-sentences*
      ;; The catch is in initiate-successive-sweeps when
      ;; it's reading a pre-populated document
      (tr :eos-pre-read-sentences)
      (throw 'sentences-finished nil))
     (*reading-populated-document*
      ;; In this case EOS just means that we've finished the
      ;; text of the current paragraph, so we throw to
      ;; its catch.
      (tr :eos-reading-document)
      (throw 'do-next-paragraph nil))
     (t
      ;; This just does the throw up to chart-based-analysis
      ;; for terminating-chart-processing
      (tr :eos-terminate-chart-level)
      (terminate-chart-level-process)))))

;; (trace-fsas)
(defun polyword-check (position-before word)
  "Lifted from check-for-polywords. Here all we want is for
   the PW fsa to fire if there is one, and to get the position
   that it ends at. Returns either that position or nil."
  (declare (special *use-occasional-polywords*))
  (tr :check-for-polywords word position-before)
  (set-status :polywords-check position-before)
  (when word ;;/// 1/3/17 still?
    ;; can get a null word -- e.g. in paragraph "PMC2171479.3.C.p1"
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

          position-reached)))))


;; (trace-network)
(defun do-just-terminal-edges (word position-before position-after)
  "Modeled on introduce-terminal-edges but returns after the
   edges are created rather than continuing in the incremental
   scan."
  (install-terminal-edges word position-before position-after))

(defun do-any-category-fsas (edges position-before)
  (do-edge-level-fsas edges position-before))




;;;---------------------------------
;;; unknown words -- delayed action
;;;---------------------------------

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


;;;----------------------------------
;;; detecting polar and WH questions
;;;----------------------------------

(defun detect-early-information (sentence)
  "Look at the first few edges in the chart. If they indicate
   that this sentence will be a question, revise their form labels
   to keep them from being absorbed into a chunk accidentally
   and represent what we can observe locally here for use
   in a later stage of processing."
  ;; Called by sentence-processing-core with a flag guarding it.
  ;; The pattern-sweep has finished, so every terminal edge has
  ;; be entered into the chart.
  (let* ((position-before (starts-at-pos sentence))
         (first-item (next-treetop/rightward position-before)))
    ;; We get an edge-vector if there are multiple edges
    ;; or a word if there are no edges
    (let* ((edge (etypecase first-item
                   (word)
                   (polyword)
                   (edge first-item)
                   (edge-vector (highest-edge first-item))))
           ;; /// The highest-edge trick is enough to prefer
           ;; a wh-pronoun over a wh-determiner, but that's
           ;; only because of the luck of what's loaded later.
           (form-label (when edge (edge-form edge)))
           (word (when edge (find-head-word edge))))

      (when form-label
        (case (cat-symbol form-label)
          ((category::verb category::verb+s category::verb+ed
            category::verb+ing category::verb+present category::verb+past)
           (when (auxiliary-word? word)
             (store-preposed-aux edge)))
          (category::modal
           (store-preposed-aux edge))
          (category::wh-pronoun
           (delimit-and-label-initial-wh-term position-before edge)))))))

(defun store-preposed-aux (aux-edge)
  (declare (special category::preposed-auxiliary))
  (let ((actual-form (edge-form aux-edge)))
    (setf (edge-form aux-edge) category::preposed-auxiliary)
    (record-preposed-aux aux-edge actual-form)))


;;;------------------------------
;;; 1.5d pass -- early binary rules operating on NS pairs
;;;------------------------------


#|currently this handles
#<PSR-1254 comma-number → COMMA number>
#<PSR-1394 unit-of-measure → HYPHEN unit-of-measure>
#<PSR-1423 quarter → HYPHEN quarter>
#<PSR-1443 time → HYPHEN time>
#<PSR-1444 time-unit → HYPHEN time-unit>
#<PSR-1447 amount-of-time → number time-unit>
#<PSR-46366 article-figure → article-figure number>
#<PSR-46811 antibody → antibody protein>
#<PSR-46832 residue-on-protein → amino-acid number>
#<PSR-46839 protein → protein point-mutation>
#<PSR-61810 migration → bio-entity migration>
#<PSR-929 do → "doesn" apostrophe-t>
#<PSR-977 be → isn apostrophe-t>
#<PSR-979 be → wasn apostrophe-t>
|#
(defparameter *show-early-rules* nil)

;; (trace-early-rules)

(defun do-early-rules-sweep (sent)
  (declare (special *trace-early-rules-sweep*))
  (tr :starting-early-rules-sweep)
  (when *trace-early-rules-sweep* (tts))
  (do-early-rules-sweep-between (starts-at-pos sent) (ends-at-pos sent)))

;; NEED TO FIND A WAY TO GENERALIZE THE TESTING OF EARLY RULES which is done
;;  in a one-off way below
;;  (not (and (itypep (edge-referent left-edge) 'amino-acid)
;;                             (itypep (edge-referent right-edge) 'number)))

(defun do-early-rules-sweep-between (start end)
  (when (not (eq start end))
    (let* ((left-edge (right-treetop-edge-at start))
           (mid-pos  (when (edge-p left-edge) (pos-edge-ends-at left-edge)))
           (right-edge (when (edge-p left-edge) (right-treetop-edge-at mid-pos)))
           new-edge  rule)
      (tr :early-rule-check-at start)
      (if (or (not (edge-p left-edge))
              (not (edge-p right-edge))
              (and
               (pos-preceding-whitespace mid-pos)
               (or (not (eq script :biology))
                   (not (and (itypep (edge-referent left-edge) 'amino-acid)
                             (itypep (edge-referent right-edge) 'number))))))
        (do-early-rules-sweep-between (where-tt-ends left-edge start) end)
        (else
          (multiple-value-setq (new-edge rule)
            (apply-early-rule-at start mid-pos))
          (do-early-rules-sweep-between
              (if new-edge
                ;; edge at the beginning changed, so start at the
                ;;  same start, since the middle position has shifted
                (pos-edge-starts-at new-edge) ;; CS rules generate an edge
                mid-pos)
            end))))))
        
(defun apply-early-rule-at (start middle-pos)
  (let* ((edges-ending-there (tt-edges-starting-at (pos-starts-here start)))
         (edges-starting-there (all-edges-on (pos-starts-here middle-pos)))
         (*allow-pure-syntax-rules* nil)
         (*allow-form-rules* nil)
         rule left right
         (new-edge         
          (catch :succeeded
            (dolist (left-edge edges-ending-there)
              (dolist (right-edge edges-starting-there)
                (tr :early-rules-checking left-edge right-edge)
                (if (setq rule (multiply-edges left-edge right-edge))
                  (then
                    (tr :early-succeeded rule)
                    (setq left left-edge
                          right right-edge)
                    (throw :succeeded
                      (make-completed-binary-edge left right rule)))
                  (tr :early-failed)))))))
    (declare (special *allow-pure-syntax-rules* *allow-form-rules*))
    (show-early-rule? rule left right)
    (values new-edge rule)))

(defun show-early-rule? (rule left-edge right-edge)
  (when (and rule
             *show-early-rules*
             (not (eq (cat-name (car (cfr-rhs rule))) 'subordinate-conjunction)))
    (format t "~%**early rule: ~s on \"~a~a\""
            rule
            (retrieve-surface-string left-edge)
            (retrieve-surface-string right-edge))))

;;;------------------------------
;;; 2d pass -- no-space patterns
;;;------------------------------

(defparameter *break-on-nospace-pathology* nil
  "Gates breaks that involve suspected failures to clean positions
   when they're recycled.")

;; (trace-terminals-sweep)

(defun pattern-sweep (sentence)
  "Scans the sentence treetop by treetop in a loop.
   Looks for patterns initiated by there being no space 
   between successive words."
  (sweep-for-scan-patterns sentence)
  (sweep-for-no-space-patterns sentence))


(defun sweep-for-scan-patterns (sentence)
  "Handles patterns that are defined using define-no-space-pattern
   and its associated machinery."
  (declare (special *sentence-terminating-punctuation*
                    *trace-sweep*))
  (tr :sweep-for-scan-patterns)
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

      (when (no-space-before-word? position-after)
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
             (when where-pattern-scan-ended
               (tr :successful-ns-pattern-reached where-pattern-scan-ended)
               (setq position-after where-pattern-scan-ended))))))
                 
      ;; The pattern could have taken us just past the period
      (when (position-precedes end-pos position-after)
        (return))
      (setq position-before position-after))))


;; Straight copy of loop code in sweep-for-scan-patterns if we
;; were to want to more of these it would be worth abstracting
;; the control structure.

(defun sweep-for-no-space-patterns (sentence)
  "If there is no-space between two successive words in the
   chart (no-space-before-word?) then call check-for-pattern
   to initiate the process in collect-no-space-segment-into-word
   and manage the return value."
  (declare (special *sentence-terminating-punctuation*
                    *trace-sweep*))
  (tr :sweep-for-no-space-patterns)
  (let ((position-before (starts-at-pos sentence))
        (end-pos (ends-at-pos sentence))
        treetop  position-after  multiple?  )
    (loop
      (multiple-value-setq (treetop position-after multiple?)
        (next-treetop/rightward position-before))
      (when multiple?
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

      (when (no-space-before-word? position-after)
        (tr :no-specific-pattern-trying-uniform position-before)
        (let ((where-uniform-ns-ended
               (do-no-space-collection 
                   treetop position-before position-after)))
          (if where-uniform-ns-ended
            (then
              (tr :successful-uniform-ns-reached where-uniform-ns-ended)
              (setq position-after where-uniform-ns-ended)
              (when (eq position-after end-pos)
                ;; check here, since the next pass can take
                ;; us past the end
                (return)))
            (else
              (tr :uniform-ns-pattern-failed)))))

       (deal-with-unhandled-unknown-words-at position-before)

       ;; The pattern could have taken us just past the period
       (when (position-precedes end-pos position-after)
         (return))
       (setq position-before position-after))

    (clear-unhandled-unknown-words)))



;;--- subroutines

(defun check-for-pattern (position-after)  ;; (trace-scan-patterns)
  "Used by sweep-for-scan-patterns to hide the details from
   the structure of the loop."
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


;; (trace-network-flow)

(defun do-no-space-collection (tt position-before position-after)
  "Used by sweep-for-no-space-patterns to hide details. Caller
   determined that there is no whitespace between the word at 
   the position-after and the previous word."
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

         ;; (p "a 0.45Î¼m filter")

         ;; Quick hit. Is there whitespace on the position
         ;; where it ends?  If there is, then we're done
         ;; because this is where the sequence would have ended anyway. 
         ((pos-preceding-whitespace end-pos)
          (pos-edge-ends-at tt))

         ;; Let it deal with whatever's there
         (t  (collect-no-space-segment-into-word end-pos)))
        ;;/// trace
        pos-reached ))))


#| Experimented with a sweep based on low-level debris analysis
patterns but the entry points just wrong and the effort
was dropped. 
;; (look-for-DA-pattern treetop)
;;/// this isn't properly handled. The return value if
;; there is a pattern and it succeeds is not properly
;; handled -- the standalone-da-execution runs for 
;; side-effects and we don't appreciate them. The
;; more customary eecute-da-trie call shows how the
;; 'result' can be more interesting 

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
|#
;; (p "PIK3CA and BRAF are, in part, regulated.")

(defun look-for-da-pattern (tt)
  "If there is a da pattern that starts at this treetop
  execute it and return the 'result' Used by old-pass2
  and execute-one-da-rule as of 1/3/17"
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
  (tr :short-conjunctions-sweep)
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
;; (trace-traversal-hook) (trace-traversal-hits)

(defun sweep-to-span-parentheses (sentence)
  ;; Given the sweeps that have preceded this, there will be
  ;; no edges over the parentheses. (////barring an errant
  ;; mention in a cfr, as happens for "the" or even ".")
  ;; So we walk through looking for words
  (declare (special *the-punctuation-period* *trace-sweep*
                    *sentence-terminating-punctuation*))
  (tr :sweep-to-span-parentheses)
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
 
      (when (and (word-p treetop)
                 (memq treetop *sentence-terminating-punctuation*))
          (tr :terminated-sweep-at position-after)
          (return))
      
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
        (warn "Stub of new case: probable acronym w/o edge to ~
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

(defparameter *show-acronym-conflicts* nil)

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
			(when *show-acronym-conflicts*
                          (warn "~&***Acronym -- attempting to change category of rule ~s to ~s~%  in ~s~%" rule
				(edge-category regular-edge)
				(current-string)))
                        (return-from recover-acronym-if-necessary nil))
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

