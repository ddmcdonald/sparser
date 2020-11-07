;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2013-2020 David D. McDonald  -- all rights reserved
;;;
;;;      File:  "period-hook"
;;;    Module:  drivers/chart/psp  ;;"grammar;rules:DM&P:"
;;;   version:  November 2020

;; initiated 5/26/10. Picked up working on it 7/10. 9/17/13 Actually
;; hooked it into creating sentences. 2/10/14 Added period-hook-off.
;; 8/8/14 Fixed edge case in period-marks-sentence-end?
;; 8/31/14 Moved the shift to the new forest into here. It's to fix
;; something that used to happen, but it will do. 
;; 10/6/14) First modification to accommodate successive scans operation.
;; Tweeked that 10/15/14 so that the next sentence would be available
;; when we moved back to the sweep loop. 2/4/15 Added full-caps to the
;; options for capitalization of the word after the period. 4/11/15
;; moved set-sentence-endpoints to the other sentence operations. 
;; 12/22/15 Moved the gate functions period-hook-on/-off to grammar/
;; rules/words/required.lisp so they've be available before the switch-
;; settings that call them. 


(in-package :sparser)


;;--- state variables

(defvar *position-before-last-period* nil
  "Records what its name suggests. Updated with each call to
 the period-hook function.")

(defvar *most-recent-sentence-start* nil
  "Bound to a position by any routine that knows that some position
   starts a sentence (e.g. a sectionizing routine).  It is up to the
   managing programs to be sure that any relevant analysis on an
   ongoing sentence is finished before it updates this state variable.
   Read by could-be-the-start-of-a-sentence,")

(defparameter *break-on-next-sentence* nil
  "Flag to cut in when we want to see something")
(defparameter *break-on-next-sentence-status* nil
  "For debugging the state of the sentence's status")



;;--- Basic hook function. Invoked by completion of a period

;; (trace-period-hook)  -- brief
;; (trace-eos-lookahead)  -- thorough

(defun period-hook (the-word-period position-before position-after)
  "Hook is envoked by word-level completion when a period or question-
   mark has been scanned. If it concludes that this is an end-of-
   sentence period (period-marks-sentence-end?), then it closes off
   the current sentence and starts (or reuses) a new one. Returns
   by doing a throw or tail-recursion depending on the mode."
  (declare (ignore the-word-period)
           (special *reading-populated-document*
                    *sentence-making-sweep*
                    *scanning-terminals*))
  ;; position-before is the one with the period on it. position-after 
  ;; picks out the word following the period. The stack at this point 
  ;; starts with word-level-actions-except-terminals > complete-word/hugen >
  ;; carry-out-actions

  ;; 1st call
  (unless *position-before-last-period*
    (setq *position-before-last-period* (position# 0)))

  (when (eq position-before position-after)
        (lsp-break "pathology in scan-words"))

  (cond ((period-marks-sentence-end? position-after)
         (let ((s (sentence))
               (pos-after-period (chart-position-after position-before)))
           ;; Do we make another sentence or reuse one that's
           ;; already been made on a previous pass.
           (cond 
             (*reading-populated-document*
              (unless (and (slot-boundp s 'next) ;; next sentence exists
                           (next s))
                (start-sentence pos-after-period)))
             (t ;; ordinary reading from a stream
              (unless  (and (slot-boundp s 'next) ;; next sentence exists
                            (next s)) ;; already created
                (start-sentence pos-after-period))))

           (tr :period-hook-sentence-end position-after)
           (when *break-on-next-sentence*
             (push-debug `(,s))
             (break "sentence: ~a" s))

           (setq *position-before-last-period* position-before)
      
           (cond
             ;; First dispatch is by 'mode' -- either we going sentence
             ;; by sentence at the lower levels (sweeps) or we're scanning
             ;; phrases incrementally and then going to the forest level 
             ;; at the sentence boundary (new-forest-protocol?)
             ((sucessive-sweeps?)
              (when *break-on-next-sentence-status*
                (push-debug `(,s))
                (lsp-break "~&======= at p~a the status of~
                      ~%    ~a is ~a~%"
                           (pos-token-index position-before)
                           s (parsing-status s)))
              (if *scanning-terminals*
                  (case *scanning-terminals*
                    (:polywords (throw :pw-sweep position-before))
                    (:completion-sweep) ;; nothing to do
                    (t (error "New case *scanning-terminals* = ~a" *scanning-terminals*)
                       nil))
                  (case (parsing-status s)
                    ;; this is the sentence that we're finishing
                    (:initial
                     ;; This is the first moment when we know the length
                     ;; of the sentence. 'position-before' is the one that
                     ;; has the period as the value of its terminal slot.
                     (when *sentence-making-sweep*
                       (set-sentence-endpoints position-before s)) ;; and saves the string
                     (set-sentence-status s :scanned)
                     (throw :end-of-sentence :finished-scanning))
                    (:scanned
                     (when *reading-populated-document*
                       (throw :end-of-sentence :finished-scanning)))
                    (:chunked
                     ;; shouldn't have to do this. Compensates for something
                     (when *reading-populated-document*
                       (throw :end-of-sentence :finished-scanning)))
                    (otherwise
                     (push-debug `(,s))
                     (break "Period-hook did not expect the status ~a ~
                   on ~a" (parsing-status s) s)))))
       
             ((new-forest-protocol?)
              ;; goes with the incremental protocol when waiting
              ;; for an entire sentence to be chunked before
              ;; rolling any of them up.
              (new-forest-driver position-before)))))

        (t
         ;; The period has been determined to -not- indicate the
         ;; end of the sentence, but we should see if we can cover it.
         (tr :period-at-p-not-eos position-after)
         (post-non-eos-period-operations position-before))))

(defun post-non-eos-period-operations (pos-of-period)
  "It's simplest to deal with these loose periods right away
   than to trust that they will be dealt with properly in
   the sweep since there will rarely be anything actively
   looking for them (like the period hook does). 
     Note that when this is running within scan-sentences-and-pws-to-eos
   there will only be words to the left of the period, not edges."
  (let* ((pos-before (chart-position-before pos-of-period))
         (caps-type (pos-capitalization pos-before)))
    (case caps-type
      (:single-capitalized-letter
       (handle-period-as-initial pos-of-period))
      (:initial-letter-capitalized
       (check-for-abbreviation-before-position pos-of-period))
      (otherwise
       (preceded-by-angstrom-character? pos-of-period)))))


;;--- Sentences

(defun period-marks-sentence-end? (position-after)
  "The position-after is the position with the 
   terminal (word) that comes just after the period.
   Look for evidence that this instance of a
   period marks the end of a sentence. 
     Returns nil if this is -not- the end of the 
   ongoing sentence."
  (unless (pos-terminal position-after)
    (scan-next-position))
  (cond
    ((eq (pos-terminal position-after) *end-of-source*) t)
    ((and (pnf-is-not-running)
          (eq (pos-capitalization position-after) :all-caps))
     t)
    ((and (eq (pos-capitalization position-after) :digits) ; ".005"
          (null (pos-preceding-whitespace position-after)))
     nil)
    (t
      (period-marks-sentence-end?/look-deeper position-after))))


;; (trace-eos-lookahead)

(defun period-marks-sentence-end?/look-deeper (pos-after) ;; after the period
  "Subroutine of period-marks-sentence-end?.
   We have ruled out this position holding the eos or holding a word
   that's capitalized. Look for possibly domain-specific conditions
   that would permit us to conclude the period we just scanned
   indicates the end of a sentence. 
     Return nil to continue the sentence. 
     Non-nil to say that the period does end the sentence."
  (declare (special *sentence-making-sweep* *trace-period-eos-lookahead*
                    category::unit-of-measure)
           (optimize debug))

  (unless (has-been-status? :scanned pos-after)
    (scan-next-position))
   
  (let* ((word-just-after-period (pos-terminal pos-after))
         (pos-before (chart-position-before pos-after)) ;; before the period
         (position-back-one (chart-position-before pos-before))
         (word-just-before-period
          (pos-terminal position-back-one))
         (edge-just-before-period
          (ev-top-node (pos-starts-here position-back-one)))
         (pre-caps (pos-capitalization position-back-one))
         (post-caps (pos-capitalization pos-after))
         (next-pos (chart-position-after pos-after))
         (next-caps (pos-capitalization next-pos))
         (next-word (pos-terminal next-pos)))
    
    (when *trace-period-eos-lookahead*
      (push-debug `(,word-just-after-period ,word-just-before-period
                    ,pre-caps ,post-caps ,next-caps ,next-pos)))
    
    (tr :eos-lookahead-start pos-after)
   
    ;; Could the word just before the period be an abbreviation?
    ;; N.b. 2d sentence initial "Mr. Vinken ..."
    (when (implicit-abbreviation? word-just-before-period pos-before)
      (tr :eos-implicit-abbreviation word-just-before-period)
      (return-from period-marks-sentence-end?/look-deeper nil))

    (when (preceded-by-angstrom-character? pos-before edge-just-before-period)
      (tr :eos-preceded-by-angstrom)
      (return-from period-marks-sentence-end?/look-deeper t))
               
    ;; Author pattern: "K. Naoki"
    (when (and (pnf-is-not-running)
               (eq post-caps :initial-letter-capitalized)
               (eq pre-caps :single-capitalized-letter))
      (tr :eos-initial-author-pattern)
      (return-from period-marks-sentence-end?/look-deeper nil))
    
    ;; Author as abbreviation: "M. M."
    (when (and (pnf-is-not-running)
               (eq pre-caps :single-capitalized-letter)
               (eq post-caps :single-capitalized-letter))
      (tr :eos-two-initials)
      (return-from period-marks-sentence-end?/look-deeper nil))

    ;; The period could be a decimal point, which would
    ;; mean there were digits to either side. 
    (when (and (eq pre-caps :digits) (eq post-caps :digits))
      (tr :eos-period-surrounded-by-digits)
      (if (no-space-before-word? pos-after) ;; ".. Ser259. 14-3-3 .."
        (then
          (tr :eos-no-space-before-trailing-digit)
          (return-from period-marks-sentence-end?/look-deeper nil))
        (else
          (tr :eos-space-before-trailing-digit)
          (return-from period-marks-sentence-end?/look-deeper t))))

    (when (and (not (pnf-is-not-running))
               ;; seen in Cure article: "(K. Naoki and M. M., unpublished data)"
               (memq (pos-capitalization pos-after)
                     '(:initial-letter-capitalized
                       :single-capitalized-letter
                       :all-caps)))
      (tr :eos-no-pnf-and-next-caps)
      (return-from period-marks-sentence-end?/look-deeper t))
         

    (when *sentence-making-sweep*
      ;; Is this period inside a polyword (which would have covered
      ;; it in a later pass).
      (when (period-final-polyword-could-end-here?
             pos-after word-just-before-period)
        (tr :eos-period-would-be-under-pw)
        (return-from period-marks-sentence-end?/look-deeper nil)))

    ;; Look at the word just after the period
    ;; We know that the word after the period is neither
    ;; capitalized nor all caps. It could be :mixed-case
    ;; or lowercase. // or :punctuation
    
    ;; If it's more than one character long ("cAMP") and
    ;; it's not lowercase (poor-man's preceding abbrev check)
    ;; then let's just take it
    (when (> (length (pname word-just-after-period)) 1)
      (cond
        ((eq post-caps :lower-case)
         (tr :eos-following-lowercase)
         (return-from period-marks-sentence-end?/look-deeper nil))
        (t
         (tr :eos-mult-char-next-word)
         (return-from period-marks-sentence-end?/look-deeper t))))

    ;; If it is adjacent punctuation as with "el al.," then it
    ;; doesn't end the sentence.
    (when (and (eq post-caps :punctuation) ;;/// only comma?
               (no-space-before-word? next-pos))
      (tr :eos-adjacent-punctuation)
      (return-from period-marks-sentence-end?/look-deeper nil))

    ;; If the next word is one character long, then it must be touching
    ;; the following word, and we check for periods (and what else?)
    ;; First get the second word after the period
    (tr :eos-next-word next-word)
      
    (unless (no-space-before-word? next-pos)
      (tr :eos-separated-by-space)
      (return-from period-marks-sentence-end?/look-deeper nil))

    (when (eq next-word *end-of-source*)
      (tr :eos-reached-eos)
      (return-from period-marks-sentence-end?/look-deeper nil))
    (when (eq next-word *the-punctuation-period*)
      (tr :eos-followed-by-a-period)
      (return-from period-marks-sentence-end?/look-deeper nil))

    ;; We know that the second word after the period
    ;; is touching the word just after the period
    ;; and the obvious cases have been looked for

    ;; Lets just take it. If there turn out to be issues
    ;; we'll call (characterize-word-type pos-after next-word)))
    ;; and look more closely
    (tr :eos-fall-through-accept)
    t))


(defun preceded-by-angstrom-character? (pos-before ;; before the period
                                        &optional edge-before)
  "Does the position to the immediate left of the period hold the
   character for an angstrom? It is a unit of measure, which means
   that it does not consume the period the way, say, an initial would.
   Depending on the stage of processing the angstrom may be
   already covered by an edge."
  (let* ((position-back-one (chart-position-before pos-before))
         (edge-just-before-period
          (or edge-before
              (ev-top-node (pos-starts-here position-back-one)))))
    (or (and (edge-p edge-just-before-period)
             (eq (cat-name (edge-category edge-just-before-period))
                 'unit-of-measure))
        ;; In the initial sentence-creation sweep through
        ;; a document there won't be any edges except for PWs
        (and (boundp 'word::LATIN_CAPITAL_LETTER_A_WITH_RING_ABOVE)
             (eq (pos-terminal position-back-one)
                 word::LATIN_CAPITAL_LETTER_A_WITH_RING_ABOVE)))))


(defun pnf-is-not-running ()
  "If the Proper Name Facility were running, it would handle all issues
  with initials and capitalized names. We turned it off for biology 
  because the names and capitalization patterns were irrelevant and
  needlessly difficult ('C. Elegans'). This flag should suffice to
  mark whether we've actually turned on PNF. It's set by a call to
  establish-pnf-routine, as organized by the switch setting, see e.g.
  sublanguage-settings or blocks-world-setting for pattern."
  (declare (special *big-mechanism* *pnf-routine*))
  (or *big-mechanism*
      *ignore-capitalization* ;; blocks-world-setting
      (not *pnf-routine*))) ;; no call made to establish-pnf-routine

  
(defparameter *permit-ad-hoc-abbreviations*
  (pnf-is-not-running)
 "Should be up if a 'proper' set of abbreviations isn't available.
  For instance there's a list of *person-prefixes is the dossier
  of that name, and in modes where that's loaded we should go the
  high road on all abbreviations.")

(defvar *words-observed-to-confuse-eos*
  '("Dr"
    "nr" ;; funding from grant nr. 175.010.2007.012
    ))

(defun vivify-words-observed-to-confuse-eos ()
  (let ((words (loop for s in *words-observed-to-confuse-eos*
                  collect (resolve/make s))))
    (setq *words-observed-to-confuse-eos* words)))
  
(defun implicit-abbreviation? (word period-pos)
  "Intended for configurations where we don't already have
   a substandial stock of abbreviations defined and/or 
   abbreviations aren't being looked for and so doing their
   on processing of the period that directly follows them.
   Compare with routines in rules/FSAs/abbreviations.lisp.
   Return t if the word is one of an anticipated set of
   abbreviations."
  (or (abbreviation? word) ;; see define-abbreviation
      (will-trigger-abbreviation? period-pos) ;; ditto 
      (when *permit-ad-hoc-abbreviations*
        (when (stringp (car *words-observed-to-confuse-eos*))
          (vivify-words-observed-to-confuse-eos))
        (memq word *words-observed-to-confuse-eos*))))


;;--- emulating polyword application

(defun period-final-polyword-could-end-here? (pos-with-period
                                              word-just-before-period)
  "Of the polywords whose last word is a period. Could one of them 
  have ended with its final period at this position. The identity
  of the pw is irrelevant, just that it would have run and completed.
  Return nil is no pw fits what's in the chart."
  (declare (special *polywords-ending-in-period*))
  ;; The period matches. Does the word just before it match?
  (flet ((pw-word-just-before-end (pw)
           (let ((length (length (pw-words pw))))
             (nth (- length 2) (pw-words pw)))))
    (let ((passed-trivial-filter
           (loop for pw in *polywords-ending-in-period*
              when (eq (pw-word-just-before-end pw)
                       word-just-before-period)
              collect pw)))
      (when passed-trivial-filter
        ;; if all the candidates are just two words long ("vs.")
        ;; then we're done, otherwise we have to work our way
        ;; back through the pw(s) and the chart.
        (let ((longer-pws (loop for pw in passed-trivial-filter
                             when (> (length (pw-words pw)) 2)
                             collect pw)))
          (if (null longer-pws)
            t ;; but some passed the two-word filter
            (loop for pw in longer-pws
               when (pw-words-fit-chart-ending-here pw pos-with-period)
               do (return-from period-final-polyword-could-end-here? pw))))))))

(defun pw-words-fit-chart-ending-here (pw end-pos)
  (let* ((words (pw-words pw))
         (start-pos (chart-position-n-positions-before (length words) end-pos)))
    (equal (words-between start-pos end-pos)
           words)))
