;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2020 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "multi-scan"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  June 2020

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


#| N.b. The sweeps for early rules, patterns, no-space, early information, 
   conjunctions, and parentheses run after the sweeps that are organized
   by scan-terminals-loop. Under the control of sentence-processing-core  |#


;;--- globals

(defparameter *scanning-terminals* nil
  "Used as a flag by scan-terminals-loop to control the
   behavior of the eos check and period hook.")

(defparameter *trace-scan-words-loop* nil
  "Echos the word being scanned")


;;;----------------------------------------------------------------
;;; Scan the entire text into the chart and run the polyword check
;;;---------------------------------------------------------------

;; (trace-network-flow)
;; (trace-period-hook) ;; for sentences
;; (trace-paragraphs) ;; for start/return traces

(defun scan-sentences-and-pws-to-eos (position
                                      &aux (*scanning-terminals* :polywords))
  "First pass over the text that the successive-sweeps driver does.
   Called by initiate-successive-sweeps both when reading from a document
   and when reading from a string/file.
      Checks each successive word for initiating a polyword (polyword-check). 
   The longest completion is spanned with an edge. Constructs sentence objects
   as needed for strings or reuses previously constructed sentences when reading
   from a document.  
      Loop stops at *end-of-source* and returns the position reached and the
   current sentence. N.b. does not use the period-hook, though does use its
   'is-a-sentence' checks.
      When the token machinery is interpreting newlines as an orthographic
   indication of a paragraph, then the newline word will be being introduced
   into the chart and is interpreted here as a termination condition.
   See parse-successive-paragraphs, which is sensitive to what we return."
  
  (declare (special *trace-sweep* *scanning-terminals* *sentence-terminating-punctuation*
                    *newline*)
           (optimize debug))

  (unless (includes-state position :scanned) ;; make sure there's a word
    (scan-next-position))
  
  (let ((word (pos-terminal position))
        (starting-position position)
        eos-backoff  )

    (tr :scan-to-eos/start position word)
    (tr :polyword-sweep-loop)
    
    (cond ((includes-state position :polywords-check)
           (values (eos-sweep-loop position)
                   (sentence)))
          (t 
           (loop
              (cond ((eq word *end-of-source*)
                     (if (eq (starts-at-pos (sentence)) position)
                       ;; There was a period just before the EOS and we may have
                       ;; just make a sentence with no text in it.
                       (let ((prev (previous (sentence))))
                         (when prev ;; disconnect this spurious sentence
                           (setf (next prev) nil))
                         (setq eos-backoff t)) ;; shift return values back one
                       ;; text ends with EOS, not a period
                       (tie-off-ongoing-sentence-at-eos position))
                     (return))

                    ((eq word *newline*)
                     (unless (eq position starting-position)
                       ;; Two newlines in a row would create extra paragraph
                       (tie-off-ongoing-sentence-at-eos position)
                       (return)))

                    ((member word *sentence-terminating-punctuation*)
                     (cond
                       ((and (eq word *the-punctuation-period*)
                             (isolated-potential-initial? position))
                        (unless *pnf-routine* ;; let the proper name fsa do it
                          (handle-period-as-initial position)))

                       ((period-marks-sentence-end? (chart-position-after position))
                        (tr :scan-sentence-start (chart-position-after position))
                        (start-sentence (chart-position-after position)))

                       (t (post-non-eos-period-operations position)))))

              (let* ((where-pw-ended (polyword-check position word))
                     (position-after (or where-pw-ended
                                         (chart-position-after position))))
                (when where-pw-ended
                  (tr :scanned-pw-ended-at word where-pw-ended)
                  (setq position where-pw-ended)
                  (unless (includes-state where-pw-ended :scanned)
                    ;; PW can complete without thinking about the
                    ;; word that follows it.
                    (scan-next-position))
                  (setq word (pos-terminal where-pw-ended)))
                
                (unless (includes-state position-after :scanned)
                  (scan-next-position))

                (let ((next-word (pos-terminal position-after)))
                  (tr :next-terminal-to-scan position-after next-word)
                  (setq position position-after)
                  (setq word next-word))))

           (tr :eos-sweep-returning position (sentence))
           (if eos-backoff
             (values (chart-position-before position)
                     (previous (sentence)))
             (values position (sentence)))))))


(defun eos-sweep-loop (position &aux (word (pos-terminal position)))
  "Subroutine of scan-sentences-and-pws-to-eos that applies if (when ?)
   we get a situation where the polyword check has already been done
   but we want to return the same values as the case when we're doing
   the pw check."
  (loop
    (when (eq word *end-of-source*)
      (return-from eos-sweep-loop position))
    (setq position (chart-position-after position))
     (setq word (pos-terminal position))))


(defun isolated-potential-initial? (position-of-period)
  "Could the position before the period hold a initial? It has to
   both be capitalized and separated by a space from other words."
  (let ((pos-before (chart-position-before position-of-period)))
    (when (eq :single-capitalized-letter (pos-capitalization pos-before))
      (or (pos-preceding-whitespace pos-before)
          (= 1 (pos-token-index pos-before)))))) ;; burn into preceding ws ?



;;;------------------------------------
;;; Post-polyword per-sentences driver
;;;------------------------------------

(defun scan-terminals-of-sentence (sentence)
  "Called from scan-terminals-and-do-core as the sentence-interface
   to scan-terminals-loop which orchestrates the successive passes."
  (tr :scan-terminals-of-sentence)
  (let* ((start-pos (starts-at-pos sentence))
         (first-word (pos-terminal start-pos)))
    (unless first-word ;;/// can we prove this check is OBE?
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
      (scan-terminals-loop start-pos first-word (ends-at-pos sentence)))))


;;;---------------------------------------------------
;;; 1st pass -- polywords, completion, terminal edges
;;;---------------------------------------------------

;; (trace-terminals-sweep)
;; (trace-terminals-loop)

;; (trace-network)
;; (setq *trace-sweep* t)


(defun scan-terminals-loop (position-before word end-pos)
  "Carries out the first layer of analysis by checking for and
   applying word-level rules. 
   -- Structured as a succession of passes ('sweeps') over
   a sentence-worth of text, though the start and end positions
   or the sentence are used, which could provide flexibility later.
   (sentence-processing-core orchestrates the sweeps done after this 
    one)
    -- Follows the scanning of the entire text into the chart and 
    detection of any polywords.
      1st. Sweep over the treetops in the sentence to
          handle any word-level fsas. 
       2d. Apply word-level completion hook to each word that
          isn't covered by an edge.
       3d. Introduce the terminal edges for every unspanned word
         and run any associated category-fsas such as the number fsa
   -- We return by throwing to :end-of-sentence, which is
   what period-hook does if it's called conventionally."
  
  ;; This is called from scan-terminals-of-sentence, which is called
  ;; from scan-terminals-and-do-core
  (declare (special end-pos  *sweep-for-polywords* *sweep-for-word-level-fsas*
                    *sweep-for-terminal-edges* *word-level-completion-sweep*)
           (optimize debug))
  
  (tr :scan-terminals-loop)
  (simple-eos-check position-before word)
  (sentence-level-initializations) ;; clear traversal state

  (when *sweep-for-word-level-fsas*
    (word-level-fsa-sweep position-before end-pos))

  (when *word-level-completion-sweep*
    (word-level-completion-sweep position-before end-pos))

  (when *sweep-for-terminal-edges*
    (terminal-edges-sweep position-before end-pos))

  (warn-about-verbified-nouns)
    
  (tr :scan-terminals-loop-finished)
  (throw :end-of-sentence t))


;;;--------------------------
;;; sweep for FSA's on words
;;;--------------------------

(defun word-level-fsa-sweep (start-pos end-pos)
  "At this point some spans may be covered with edges introduced
   by polywords. For any uncovered words, check for the possibility
   that the word introduces an fsa. The chart is already populated
   with the words introduced by the pw sweep, so we don't need
   to do our own scans."
  (declare (special *trace-sweep* *trace-fsa*)
           (optimize debug))
  (tr :word-level-fsa-sweep start-pos end-pos)      
  (let* ((position-before start-pos)
         (ev (pos-starts-here start-pos))
         (edge (top-edge-on-ev ev))  ;;(ev-top-node ev)) 
         (word (unless edge (pos-terminal start-pos)))
         (position-after (if edge
                           (pos-edge-ends-at edge)
                           (chart-position-after position-before))))
    (loop
       (when *trace-sweep*
         (format t "~&[fsa sweep] at p~a is ~a, position-after is ~s"
                 (pos-token-index position-before)
                 (or word edge)
                 position-after))
       (when word
         (tr :check-word-level-fsa-trigger position-before)
         (multiple-value-bind (fsa word-variant)
             (word-or-variant-has-fsas? word position-before)
           (let ((pnf? (and (word-at-this-position-is-capitalized? position-before)
                            *pnf-routine*)))
             (when (or fsa pnf?)
               (flet ((apply-fsa (fsa) (run-fsa fsa word-variant position-before))
                      (apply-pnf () (pnf position-before)))
                 (let ((where-fsa-ended
                        (cond
                          ((and fsa pnf?) (apply-pnf))
                          (fsa (apply-fsa fsa))
                          (pnf? (apply-pnf)))))
                   (when where-fsa-ended
                     (tr :word-fsa-ended-at word where-fsa-ended)
                     (when (memq 'abbreviation fsa)
                       ;; Can swallow an <eos> period after the abbreviated word
                       (let ((pos-before (chart-position-before where-fsa-ended))
                             (sentence (identify-current-sentence)))
                         (when (eq pos-before (ends-at-pos sentence))
                           (return))))
                     (setq position-after where-fsa-ended)
                     (unless (includes-state where-fsa-ended :scanned)
                       (scan-next-position))
                     (setq word (pos-terminal where-fsa-ended)))))))))
             
       (when (position/>= position-after end-pos)
         (return))

       (setq position-before position-after
             ev (pos-starts-here position-after)
             edge (top-edge-on-ev ev)
             word (unless edge (pos-terminal position-after))
             position-after (if edge
                              (pos-edge-ends-at edge)
                              (chart-position-after position-after))))))

         


;;;------------------------------------------
;;; sweep for word-level completion routines
;;;------------------------------------------

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
         (edge (top-edge-on-ev ev)) ;; (ev-top-node ev) can return :multiple-initial-edges
         (word (unless edge (pos-terminal start-pos)))
         (position-after (if edge
                           (pos-edge-ends-at edge)
                           (chart-position-after position-before)))
         (*scanning-terminals* :completion-sweep))
    (declare (special *scanning-terminals*))
    
    (loop
       (when *trace-sweep*
         (format t "~&[word-level completion sweep] at p~a is ~a"
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
             edge (top-edge-on-ev ev)
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

(defmacro carefully-walk-initial-chart (&body body)
  ;; candidate to redo earlier loops -- used in terminal-edges-sweep below
  `(let* ((position-before start-pos)
          (ev (pos-starts-here position-before))
          (edge (top-edge-on-ev ev))
          (word (unless edge (pos-terminal position-before)))
          (position-after (if edge
                            (pos-edge-ends-at edge)
                            (chart-position-after position-before))))
     (loop
        ,@body
        (when (position/>= position-after end-pos)
          (return))
        (setq position-before position-after
              ev (pos-starts-here position-after)
              edge (top-edge-on-ev ev)
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


;;;------------------------------------------------
;;; sweep to intoduce single-word edges over words
;;;------------------------------------------------

(defun terminal-edges-sweep (start-pos end-pos)
  "Sweep through the chart from the start position to the end
   position (the span of the current sentence). Whenever it
   encounters a word that has not already been covered by an
   edge it calls do-just-terminal-edges to create the edges
   for the word interpretation(s).
      It then looks for any category fsas that are associated
   with an existing or newly-instantiated edge (notably digit
   sequences) and follows those out to where the end."
  (declare (special *trace-sweep*))
  (tr :terminal-edges-sweep)
  (carefully-walk-initial-chart
    (progn
      (when *trace-sweep*
         (format t "~&[terminal edges sweep] at p~a is ~a"
                 (pos-token-index position-before)
                 (or word edge)))
      (flet ((run-any-edge-fsa (edges)
               (let ((where-fsa-ended
                      (do-any-category-fsas edges position-before)))
                 (when where-fsa-ended
                   (tr :edge-fsa-ended-at word where-fsa-ended)
                   (setq position-after where-fsa-ended
                         position-before (chart-position-before where-fsa-ended))
                   (unless (includes-state where-fsa-ended :scanned)
                     (scan-next-position))
                   (setq word (pos-terminal where-fsa-ended))))))
      (cond
        (edge ;; from an earlier pass, e.g. apostrophe-s
         (run-any-edge-fsa (list edge)))
        (word
         (let ((edges (do-just-terminal-edges word position-before position-after)))
           (tr :scanned-terminal-edges edges position-before position-after)
           (when edges ;; e.g. digit-sequence
             (unless (list-of-nil? edges)
               (run-any-edge-fsa edges))))))))))




;;;----------------------
;;; 1st pass subroutines
;;;----------------------

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
       (ecase *scanning-terminals*
         (:polywords
          (tr :eos-scanning-terminals/pw)
          ;; catch is in scan-terminals-loop
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


;; (trace-polywords)
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
           (caps-word (capitalized-correspondent position-before word))
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
                (unhandled-word-in-span? position-before position-reached)
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

;; (trace-delay-unknown-judgment)

(defvar *positions-with-unhandled-unknown-words* nil
  "Part of scheme for delaying assigning a semantic interpetation
   (and thereby an edge) to an uknown word. ")

(defun store-word-and-handle-it-later (word)
  "Called from make-word/all-properties/or-primed when the
   *big-mechanism* flag is up and capitalization suggests that
   this unknown word may well be absorbed during the no-space
   pattern checks."
  (declare (special *position-being-filled*)) ;; bound in add-terminal-to-chart
  (tr :storing-unknown-for-later word *position-being-filled*)
  (push *position-being-filled*
        *positions-with-unhandled-unknown-words*)
  word)

(defun unhandled-word-in-span? (from-pos to-pos)
  (declare (special *positions-with-unhandled-unknown-words*))
  (when *positions-with-unhandled-unknown-words*
    (loop for pos in *positions-with-unhandled-unknown-words*
       when (position-is-at-or-between pos from-pos to-pos)
       do (tr :handling-unknown-word-stared-ot pos)
          (setq *positions-with-unhandled-unknown-words*
                (delete pos *positions-with-unhandled-unknown-words*)))))


(defun deal-with-unhandled-unknown-words-at (pos-before)
  "Called at the last action in the pattern-sweep treetop loop.
   Did we make a record of an unhandled unknown word at position-before.
   If so, pop that position from the list and figure out what sort
   of edge to create for it and how (or whether) to record it."
  (declare (special *trace-delay-unknown-judgment*))
  (when *positions-with-unhandled-unknown-words*
    (when (memq pos-before *positions-with-unhandled-unknown-words*)
      (push-debug `(,pos-before)) ;(lsp-break "Check for covered at ~a" pos-before)
      (setq *positions-with-unhandled-unknown-words*
            (delete pos-before *positions-with-unhandled-unknown-words*))
      (tr :dealing-with-unknown-word-stared-ot pos-before)
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
              (when *trace-delay-unknown-judgment*
                (break "About to make a bio-entity for ~a" pos-before))
              (handle-unknown-word-as-bio-entity pos-before)))))
         (t
          (break "Any reason not to rewrite as bio-entity?")))))))

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
  "Initialization function called from initialize-tokenizer-state
   and its equivalents"
  (setq *positions-with-unhandled-unknown-words* nil))

(defun clean-unhandled-unknown-words (sentence-end-pos)
  "Called after pattern-sweep has looped over the entire sentence,
   which seems as good a place as any to do this. Because the
   process that determines when a sentence edges will often scan
   the next position after the period. It can pickup an unknown
   word. The position argument is right over the period -- any
   words on this list beyond that position should be retained."
  (declare (special *positions-with-unhandled-unknown-words*))
  (when *positions-with-unhandled-unknown-words*
    (let ((positions-retained
           (loop for pos in *positions-with-unhandled-unknown-words*
              when (position-precedes sentence-end-pos pos)
              collect pos)))
      (setq *positions-with-unhandled-unknown-words* positions-retained))))




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
           (word (when edge (find-head-word edge)))
           (there? (eq (pos-terminal (chart-position-after position-before))
                       (word-named "there"))))
      
      (flet ((handle-there-is (aux-edge)
               (make-initial-there-is-edge aux-edge)))

        (when form-label
          (case (cat-symbol form-label)
            ((category::verb category::verb+s category::verb+ed
              category::verb+ing category::verb+present category::verb+past)
             (when (auxiliary-word? word)
               (cond
                 (there?
                  (when (itypep (edge-referent edge) 'be)
                    (let ((there-is-edge (handle-there-is edge)))
                      (store-preposed-aux edge)
                      (specify-top-edge there-is-edge))))
                 (t (store-preposed-aux edge)))))
            (category::modal
             (when there? (handle-there-is edge))
             (store-preposed-aux edge))
            (category::wh-pronoun
             (delimit-and-label-initial-wh-term position-before edge))))))))

(defun store-preposed-aux (aux-edge)
  "Relabel the aux edge to keep other rules away from it
   and make a record on the sentence."
  (declare (special category::preposed-auxiliary))
  (let ((actual-form (edge-form aux-edge)))
    (setf (edge-form aux-edge) category::preposed-auxiliary)
    (record-preposed-aux aux-edge actual-form)
    (specify-top-edge aux-edge)))


;;;-------------------------------------------------------
;;; 1.5d pass -- early binary rules operating on NS pairs
;;;-------------------------------------------------------

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
  "Look for semantic rules that can be conveniently run here.
   Should simplify the situation that the chunker will have to deal with."
  (declare (special *trace-early-rules-sweep*))
  (tr :starting-early-rules-sweep)
  (when *trace-early-rules-sweep* (tts))
  (let ((*allow-pure-syntax-rules* nil)
        (*allow-form-rules* nil))
    (declare (special *allow-pure-syntax-rules* *allow-form-rules*))
    (let ((continue t))
      ;; The effect of this loop is to restart the sweep from
      ;; the beginning whenever it creates an edge.
      (loop while continue
         do (setq continue
                  (eq :new-edge
                      (do-early-rules-sweep-between
                          (starts-at-pos sent)
                        (ends-at-pos sent))))))
    (when *trace-early-rules-sweep*
      (break "finished early sweep"))))

(defun do-early-rules-sweep-between (start end &aux left-edge mid-pos right-edge)
  "Walk from start to end. Successively setting a left and right edge, taking care
   that the right edge starts after the left one ends.
   If very specific criteria are met, look for a rule that will compose the two edges
   and create their edge."
  (declare (special left-edge mid-pos right-edge new-edge rule
                    *trace-early-rules-sweep*))
  (tr :early-rule-check-at start)
  (loop
     (cond ((eq start end) (return-from do-early-rules-sweep-between nil))
           ((null start)
            (error "do-early-rules-sweep-between start is nil in ~s" (current-string)))
           ((not (position-p start)) (lsp-break "Early-sweep: (position-p start-pos)")))
     
     (setq left-edge (right-treetop-edge-at start))
     (setq mid-pos  (when (edge-p left-edge) (pos-edge-ends-at left-edge)))
     (setq right-edge (when (edge-p left-edge) (right-treetop-edge-at mid-pos)))
     (tr :early-left-mid-right left-edge mid-pos right-edge)
     
     (if (early-rule-criteria left-edge mid-pos right-edge)
       (multiple-value-bind (new-edge rule)
           (apply-early-rule-at start mid-pos)
         (if new-edge
           (then
             (tr :early-back-to-start new-edge)
             ;; The edge at the beginning changed, so return to the
             ;; continue loop and re-start at the sentence-beginning
             (return-from do-early-rules-sweep-between :new-edge))
           (setq start mid-pos)))
       (else
         (tr :early-criteria-failed)
         (cond
           ((and left-edge (edge-p left-edge)
                 (position/<= end (pos-edge-ends-at left-edge)))
            (return-from do-early-rules-sweep-between nil))
           (t
            (setq start (where-tt-ends left-edge start))
            (tr :early-sweep-looping start)
            (when *trace-early-rules-sweep*
              (format t "~&Looping. New 'start' = ~a" start)
              (when (null start) (break "null start")))))))))

(defun apply-early-rule-at (start middle-pos)
  (declare (optimize (debug 3)(speed 1)))
  (let* ((edges-ending-there (tt-edges-starting-at (pos-starts-here start)))
         ;; below was (all-edges-on ...)
         (edges-starting-there (tt-edges-starting-at (pos-starts-here middle-pos)))         
         rule left right )
    (let ((new-edge         
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
      (show-early-rule? rule left right)
      (values new-edge rule))))

(defun early-rule-criteria (left-edge mid-pos right-edge)
  "If these criteria are met then we'll look for a rule that combines
   the two edges. These are all positive criteria. If any of the
   forms in the 'or' are true then we've met the criteria"
  (declare (special category::number category::plus-minus-number
                    *the-punctuation-plus-minus*))
  (and (and (edge-p left-edge)
            (edge-p right-edge))
       (or 
        (includes-edge-over-literal? mid-pos)
        (and
         (eq (edge-category left-edge) category::number)
         (eq (edge-form right-edge) category::plus-minus-number))
        (and
         (eq (edge-referent left-edge) *the-punctuation-plus-minus*)                   
         (eq (edge-category right-edge) category::number))

        (itypep (edge-referent left-edge) 'approximator) ; "only 35%"

        (not (pos-preceding-whitespace mid-pos))
        (and (eq script :biology)
             (itypep (edge-referent left-edge) 'amino-acid)
             (itypep (edge-referent right-edge) 'number)))))

#| original form of the criterion before 5/10/19
    (if (or (and (edge-p left-edge)
                  (edge-p right-edge)
                  (or (and
                       (eq (edge-category left-edge) category::number)
                       (eq (edge-form right-edge) category::plus-minus-number))
                      (and
                       (eq (edge-referent left-edge) *the-punctuation-plus-minus*)                   
                       (eq (edge-category right-edge) category::number))))
             (and (edge-p left-edge)
                  (edge-p right-edge)
                  (or
                   (not (pos-preceding-whitespace mid-pos))
                   (and (eq script :biology)
                        (itypep (edge-referent left-edge) 'amino-acid)
                        (itypep (edge-referent right-edge) 'number))))) |#
#| Even earlier version ~3/5/18
    (if (and (edge-p left-edge)
             (edge-p right-edge)
             (or
              (not (pos-preceding-whitespace mid-pos))
              (and (eq script :biology)
                   (itypep (edge-referent left-edge) 'amino-acid)
                   (itypep (edge-referent right-edge) 'number))))  |#

        
(defun show-early-rule? (rule left-edge right-edge)
  (when (and rule
             *show-early-rules*
             (not (eq (cat-name (car (cfr-rhs rule))) 'subordinate-conjunction)))
    (format t "~%**early rule: ~s on \"~a~a\""
            rule
            (retrieve-surface-string left-edge)
            (retrieve-surface-string right-edge))))


;; NEED TO FIND A WAY TO GENERALIZE THE TESTING OF EARLY RULES which is done
;;  in a one-off way below
;;  (not (and (itypep (edge-referent left-edge) 'amino-acid)
;;            (itypep (edge-referent right-edge) 'number)))

;; -- ddm this function is an example of that (and belongs in edge-vectors/object.lisp
(defgeneric includes-edge-over-literal? (position)
  (:documentation "Are any of the edges starting at this position
    edges over a literal?")
  (:method ((e edge))
    (includes-edge-over-literal? (edge-starts-at e)))
  (:method ((p position))
    (includes-edge-over-literal? (pos-starts-here p)))
  (:method ((ev edge-vector))
    (loop for edge in (all-edges-on ev)
       when (literal-edge? edge)
       return t
       finally (return nil))))


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


;;--- patterns

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


;;--- no-space analysis

;; (trace-ns-sequences) 

(defun sweep-for-no-space-patterns (sentence)
  "Identify successive positions as which a no-space region could
   start, and if it's valid (i.e. not already covered by an
   edge) then find where the region ends and call the ns pattern suite."
  (tr :sweep-for-no-space-patterns)
  (let ((pos (starts-at-pos sentence))
        (sent-end-pos (ends-at-pos sentence))
        ns-end-pos)
    (when (eq *newline* (pos-terminal pos)) ;; paragraph debris
      (setq pos (chart-position-after pos)))
    (loop
       while (and pos (setq pos (start-of-ns-region pos sent-end-pos)))
       ;; While there is a position, 'pos', that starts a no-space
       ;; sequence, find the end of that region ('ns-end-pos')
       do
         (setq ns-end-pos (end-of-ns-region pos sent-end-pos))
         (unless (edge-between pos ns-end-pos)
           ;; some other process has covered the regoin
           (setq ns-end-pos (end-of-ns-region pos sent-end-pos))
           (tr :ns-identify-ns-pattern-between pos ns-end-pos)
           (unless (= 1 (length (words-between pos ns-end-pos))) ; "gneiss,"
             (setq ns-end-pos
                   (collect-no-space-segment-into-word pos ns-end-pos))))
         (if (position/<= sent-end-pos ns-end-pos)
           (setq pos nil) ;; fall out of loop
           (setq pos ns-end-pos)))
    (loop for pos in (copy-list *positions-with-unhandled-unknown-words*)
          unless (position-precedes sent-end-pos pos)
          do (deal-with-unhandled-unknown-words-at pos))
    (clean-unhandled-unknown-words sent-end-pos)))


(defun start-of-ns-region (pos &optional sent-end-pos &aux tt next-pos)
  "Starting at the position 'pos', walk over successive treetops.
   Returns the position just before a position without pos-preceding-whitespace"
  (tr :find-ns-region-start pos)
  (loop
     (multiple-value-setq (tt next-pos)
       (next-treetop/rightward pos))
     (tr :ns-start-tt-pos pos tt next-pos)
     (cond ((eq next-pos sent-end-pos)
            (return nil))
           ((or (pos-preceding-whitespace next-pos)
                (word-never-in-ns-sequence
                 (or (left-treetop-at/only-edges next-pos)
                     (pos-terminal
                      ;; needs to be chart-position-before because
                      ;; otherwise we end up with "(Figure 1b)"
                      ;; resulting in a "(Figure" bioentity and leaving
                      ;; the close-paren stranded 
                      (chart-position-before next-pos)))))
            (setq pos next-pos))
           (t (tr :ns-found-region-start pos)
              (return pos)))))

(defun end-of-ns-region (pos sent-end-pos &aux tt next-pos multiple?)
  "The start-of-ns-region says that there's a no-space region starting
   at position 'pos'
   Loop over tree-tops starting there until we get reach a position
   from which the regions can't continue."
  (tr :ns-find-region-end pos)
  (loop
     (multiple-value-setq (tt next-pos multiple?)
       (next-treetop/rightward pos))
     (tr :ns-end-check-next-pos tt pos)

     (when (pos-preceding-whitespace next-pos)
       (tr :ns-find-region-end/stops-at next-pos :space-before)
       (return next-pos))
     (when (eq next-pos sent-end-pos)
       (tr :ns-find-region-end/stops-at next-pos :end-of-sentence)
       (return next-pos))
     (when (edge-spans-position? tt sent-end-pos)
       (tr :ns-find-region-end/stops-at next-pos :edge-spans-to-end)
       (return next-pos))
     (let ((next-word (pos-terminal next-pos)))
       (if (punctuation? next-word)
         (let* ((pos-after (chart-position-after next-pos))
                (space-before-pos-after? (pos-preceding-whitespace pos-after)))
           (cond
             ((punct-normally-in-ns? next-word)
              (tr :ns-find-region-end/includes next-pos)
              (setq pos next-pos))
             ((punct-nospace-can-incorporate? next-word)
              (if space-before-pos-after?
                (then (tr :ns-find-region-end/stops-at next-pos :space-after-punct)
                      (return next-pos))
                (else (tr :ns-find-region-end/includes next-pos)
                      (setq pos next-pos))))
             ((word-never-in-ns-sequence next-word)
              (tr :ns-find-region-end/stops-at next-pos :punct-never-included)
              (return next-pos)))))
       
       (else (tr :ns-find-region-end/includes next-pos)
             (setq pos next-pos)))))


;;;-------------------------
;;; 3d pass -- conjunctions
;;;-------------------------

(defparameter *use-form-heuristic-in-conj-sweep* t
  "Controls whether we also look at the form of edges in doing 
   conjunction during this early sweep")

;;  (p "by PIK3CA and BRAF are.")
(defun short-conjunctions-sweep (sentence)
  "Look for adjacent single edges that can conjoin around an instance of
   'and' identified by the completion action on the conjunction"
  (declare (ignore sentence))
  (tr :short-conjunctions-sweep)
  (when *pending-conjunction*
    (dolist (position (remove-duplicates *pending-conjunction*))
      (let ((left-edge (left-treetop-at/only-edges position))
            (right-edge (right-treetop-at/edge 
                         (chart-position-after position)))
            (*allow-form-conjunction-heuristic* 
             *use-form-heuristic-in-conj-sweep*))
        (declare (special *allow-form-conjunction-heuristic*))
        (unless (or (word-p left-edge)
                    (word-p right-edge))
          (when left-edge
            ;; "... for Ras17N (and Ras17N/69N)" in overnight #10
            (if (edge-over-comma? left-edge)
              (let ((new-left-edge (oxford-comma-pattern? left-edge)))
                (when new-left-edge
                  (tr :oxford-comma new-left-edge)
                  (create-short-conjunction-edge-if-possible
                   new-left-edge right-edge)))
              (else ;; it's the simple case
                (create-short-conjunction-edge-if-possible
                 left-edge right-edge)))))))))


(defun create-short-conjunction-edge-if-possible (left-edge right-edge)
  "Loop through the edges on the end edge vectors of these two edges.
   Take the first pair of edges that pass the currently active set of heuristics
   and make a conjunction edge."
  (dolist (left (if (edge-vector-p left-edge) 
		    (ev-edges left-edge)
		    (list left-edge)))
    (dolist (right (if (edge-vector-p right-edge) 
		       (ev-edges right-edge)
		       (list right-edge)))
      (let ((heuristic (conjunction-heuristics left right)))
	(if heuristic
          ;; conjoin/2 looks for leftwards for more comma-separated conjuncts
          (let ((edge (conjoin/2 left right heuristic :pass 'short-conjunctions-sweep)))
            (tr :short-conjoined-edge edge)
            (return-from create-short-conjunction-edge-if-possible edge))
          (tr :no-heuristics-for left-edge right-edge))))))


;;;-------------------------
;;; 4th pass -- parentheses
;;;-------------------------

;; (trace-parentheses)
;; (trace-traversal-hook) (trace-traversal-hits)

(defun sweep-to-span-parentheses (sentence)
  "Given the sweeps that have preceded this, there will be
   no edges over the parentheses. (////barring an errant
   mention in a cfr, as happens for 'the' or even '.')
   So we walk through the sentence looking for 'exposed'
   words applying the word-traversal-hook to each on in turn.
   Actions occur when the close of a set of paired punctuation
   is encountered."
  (declare (special *the-punctuation-period* *trace-sweep*
                    *sentence-terminating-punctuation*))
  (tr :sweep-to-span-parentheses)
  (let ((position-before (starts-at-pos sentence))
        (end-pos (ends-at-pos sentence))
        (*special-acronym-handling* t)
        treetop  position-after )
    (declare (special *special-acronym-handling*))

    (loop ;; copied from the pattern sweep. 
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

      (when (position/<= end-pos position-after)
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

(defparameter *store-acronyms* nil
  "If this flag is up we 'hide' each probable acronym (full-caps word
   inside parentheses) on the edge to its left.  If it is down (nil)
   we 'elevate' the acronym as an edge spanning the parens so that
   it is visible to rules (e.g. acronym-is-alternative-for-name).")

(defvar *pending-acronyms* nil
  "If we have walked over what appears to be an acronym to be
  handled later, this stores the needed information.")

(define-per-run-init-form
    ;; see per-article-initializations as called from analysis-core
    '(setq *pending-acronyms* nil))

   
(defun assess-parenthesized-content (paren-edge
                                     pos-before-open pos-after-open
                                     pos-before-close pos-after-close)
  "Called from span-parentheses after all the handling of
   the interior is finished and a (usually) vanilla edge
   has been constructed to span the whole expression.
   What we do is determined by the parameters just above.
   The paren-edge is the top edge starting at the open.
   It will have been created by do-paired-punctuation-interior
   and will span everything between the open and close inclusive."
  (push-debug `(,paren-edge ,pos-before-open ,pos-after-open
                ,pos-before-close ,pos-after-close))
  #| (setq first-edge (nth 0 *) pos-before-open (nth 1 *)
       pos-after-open (nth 2 *) pos-before-close (nth 3 *)
  pos-after-close (nth 4 *)) |#
  
  (let* ((first-edge (right-treetop-at/edge pos-after-open))
         (one-edge-over-entire-segment?
          (when (edge-p first-edge) ;; e.g. "the underlying mechanism(s)."
            (eq (pos-edge-ends-at first-edge) pos-before-close)))
         (edge-to-left (left-treetop-at/edge pos-before-open)))
    (cond
      ;; check whether it could be an acronym
      ((and (edge-p first-edge)
            one-edge-over-entire-segment?
            (one-word-long? first-edge)
            (eq (pos-capitalization pos-after-open) :all-caps))
       (if *store-acronyms*
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
                ;; Move the left-side edge over the parentheses
                do (knit-edge-into-position edge ev-after-close)
                  (setf (edge-ends-at edge) ev-after-close))
             ;; save the information we need to recover it all
             (push `(,pos-before-open ,paren-edge ,first-edge ,ev-of-edge)
                   *pending-acronyms*)))
         
         (else ;; re-label it
           (revise-edge-labels
            paren-edge
            :category (category-named 'single-capitalized-word-in-parentheses)))))

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
		      (when (and (cfr-p rule)
                                 ;; case like "anti-SGOL1 (ABNOVA)"
                                 ;; where the regular edge has a referent created by a function
                                 (not (consp (cfr-referent rule))))
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

