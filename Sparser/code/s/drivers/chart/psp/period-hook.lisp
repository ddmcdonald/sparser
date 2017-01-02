;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2013-2016 David D. McDonald  -- all rights reserved
;;;
;;;      File:  "period-hook"
;;;    Module:  drivers/chart/psp  ;;"grammar;rules:DM&P:"
;;;   version:  December 2016

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

;; (trace-paragraphs)

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

  (if (period-marks-sentence-end? position-after)
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
        (start-sentence pos-after-period)))

      (tr :period-hook position-after)
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
          (ecase *scanning-terminals*
            (:polywords (throw :pw-sweep position-before)))
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
        (new-forest-driver position-before))))
    
    (else
      (tr :period-at-p-not-eos position-after)
      (handle-period-as-initial position-before))))


;;--- Sentences

(defun period-marks-sentence-end? (position-after)
  "The position-after is the position with the 
   terminal (word) that comes just after the period.
   Look for evidence that this instance of a
   period marks the end of a sentence. Returns nil
   if this isn't the end of the ongoing sentence."
  ;; What other capitalization cases could count?
  ;; Does the amount of space between the words matter?
  ;;   (pos-preceding-whitespace position-after)
  ;; This is enough to correctly ignore "11.4" and "p. 200"
  ;; If a sentence does start with, e.g. "p52" then we'll
  ;; not see it without a much more careful management of
  ;; non-final periods that this permits. 
  (unless (pos-terminal position-after)
    (scan-next-position))
  (or (eq (pos-terminal position-after) *end-of-source*)
      (memq (pos-capitalization position-after)
            '(:initial-letter-capitalized
              :single-capitalized-letter
              :all-caps))
      (period-marks-sentence-end?/look-deeper position-after)))


;; (trace-eos-lookahead)

(defun period-marks-sentence-end?/look-deeper (pos-after)
  "Subroutine of period-marks-sentence-end?.
   We have ruled out this position holding the eos or holding a word
   that's capitalized. Look for possibly domain-specific conditions
   that would permit us to conclude the period we just scanned
   indicates the end of a sentence. Return nil to continue
   the sentence. Non-nil to say that the period ends the sentence."
  (declare (special *big-mechanism* *sentence-making-sweep*))
  (let* ((word-just-after-period (pos-terminal pos-after))
         (position-back-one
          (chart-position-before (chart-position-before pos-after)))
         (word-just-before-period
          (pos-terminal position-back-one))
         (pre-caps (pos-capitalization position-back-one))
         (post-caps (pos-capitalization pos-after))
         (next-pos (chart-position-after pos-after)))
    (tr :eos-lookahead-start pos-after)

    ;; Look at the word just before the period
    (when (implicit-abbreviation? word-just-before-period)
      (return-from period-marks-sentence-end?/look-deeper nil))

    ;; The period could be a decimal point, which would
    ;; mean there were digits to either side. 
    (when (and (eq pre-caps :digits) (eq post-caps :digits))
      (if (no-space-before-word? pos-after) ;; ".. Ser259. 14-3-3 .."
        (return-from period-marks-sentence-end?/look-deeper nil)
        (return-from period-marks-sentence-end?/look-deeper t)))

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
    (unless (has-been-status? :scanned pos-after)
      (scan-next-position))
    (let ((next-word (pos-terminal pos-after)))
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
      t)))



(defparameter *permit-ad-hoc-abbreviations*
  (eq :biology common-lisp-user::script)
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
  
(defun implicit-abbreviation? (word)
  "Intended for configurations where we don't already have
   a substandial stock of abbreviations defined and/or 
   abbreviations aren't being looked for and so doing their
   on processing of the period that directly follows them.
   Compare with routines in rules/FSAs/abbreviations.lisp.
   Return t if the word is one of an anticipated set of
   abbreviations."
  (when *permit-ad-hoc-abbreviations*
    (when (stringp (car *words-observed-to-confuse-eos*))
      (vivify-words-observed-to-confuse-eos))
    (memq word *words-observed-to-confuse-eos*)))


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
