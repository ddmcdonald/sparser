;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2013-2016 David D. McDonald  -- all rights reserved
;;;
;;;      File:  "period-hook"
;;;    Module:  "grammar;rules:DM&P:"
;;;   version:  April 2016

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


;;--- state variable

(defvar *position-before-last-period* nil
  "Records what its name suggests. Updated with each call to
 the period-hook function.")

(defvar *most-recent-sentence-start* nil
  "Bound to a position by any routine that knows that some position
   starts a sentence (e.g. a sectionizing routine).  It is up to the
   managing programs to be sure that any relevant analysis on an
   ongoing sentence is finished before it updates this state variable.
   Read by could-be-the-start-of-a-sentence,")



;;--- Basic hook function. Invoked by completion of a period

(defparameter *break-on-next-sentence* nil
  "Flag to cut in when we want to see something")

;; (trace-paragraphs)

(defun period-hook (the-word-period position-before position-after)
  (declare (ignore the-word-period)
           (special *reading-populated-document* *sentence-making-sweep*))
  ;; position-before is the one with the period on it. After picks out
  ;; the word following the period.  The stack at this point starts
  ;; with word-level-actions-except-terminals > complete-word/hugen >
  ;; carry-out-actions
  ;;(setq position-before (cadr *) position-after (caddr *))
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

      (cond
       ;; First dispatch is by 'mode' -- either we going sentence
       ;; by sentence at the lower levels (sweeps) or we're scanning
       ;; phrases incrementally and then going to the forest level 
       ;; at the sentence boundary (new-forest-level
       ((sucessive-sweeps?)
        (when nil
          (format t "~&======= at p~a the status of~
                     ~%    ~a is ~a~%"
                  (pos-token-index position-before)
                  s (parsing-status s)))
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
                   on ~a" (parsing-status s) s))))
       ((new-forest-protocol?)
        ;; goes with the incremental protocol when waiting
        ;; for an entire sentence to be chunked before
        ;; rolling any of them up.
        (new-forest-driver position-before)))
      (setq *position-before-last-period* position-before))
    
    (else
      (tr :period-at-p-not-eos position-after)
      (handle-period-as-initial position-before))))


;;--- Sentences

(defun period-marks-sentence-end? (position-after)
  "The position-after is the position with the 
   terminal (word) that comes just after the period.
   Look ahead for evidence that this instance of a
   period marks the end of a sentence. Returns nil
   if this isn't the end of the ongoing sentence."
  ;; What other capitalization cases could count?
  ;; Does the amount of space between the words matter?
  ;;   (pos-preceding-whitespace position-after)
  ;; This is enough to correctly ignore "11.4" and "p. 200"
  ;; If a sentence does start with, e.g. "p52" then we'll
  ;; not see it without a much more careful management of
  ;; non-final periods that this permits. 
  (unless (has-been-status? :scanned position-after)
    (scan-next-position))
  (or (eq (pos-terminal position-after) *end-of-source*)
      (memq (pos-capitalization position-after)
            '(:initial-letter-capitalized
              :single-capitalized-letter
              :all-caps))
      (lookahead-for-period-as-eos position-after)))


;; (trace-eos-lookahead)

(defun lookahead-for-period-as-eos (pos-after)
  "Subroutine of period-marks-sentence-end?.
  We have ruled out this position holding the eos or holding a word
  that's capitalized. Look for possibly domain-specific conditions
  that would permit us to conclude the period we just scanned
  indicates the end of a sentence."
  (declare (special *big-mechanism*))
  (let ((word-just-after-period (pos-terminal pos-after))
        (word-just-before-period
         (pos-terminal
          (chart-position-before (chart-position-before pos-after))))
        (caps (pos-capitalization pos-after))
        (next-pos (chart-position-after pos-after)))
    (tr :eos-lookahead word-just-before-period word-just-after-period caps)

    ;; 1. Look at the word just before the period
    ;; "Dr."
    ;; In a load that included people, these would be defined
    ;; in dossiers/person-prefixes.lisp
    ;;(memq word-just-before-period *person-prefixes*) 

    ;; 2. Look at the word just after the period
    ;; We know that the word after the period is neither
    ;; capitalized nor all caps. It could be :mixed-case
    ;; or lowercase.
    
    ;; If it's more than one character long ("cAMP") and
    ;; it's not lowercase (poor-man's preceding abbrev check)
    ;; then let's just take it
    (when (> (length (pname word-just-after-period)) 1)
      (cond
        ((eq caps :lower-case)
         (tr :eos-following-lowercase)
         (return-from lookahead-for-period-as-eos nil))
        (t
         (tr :eos-mult-char-next-word)
         (return-from lookahead-for-period-as-eos t))))
    
    ;; If it's one character long, then it must be touching
    ;; the following word, and we check for periods (and what else?)
    ;; First get the second word after the period
    (unless (has-been-status? :scanned pos-after)
      (scan-next-position))
    (let ((next-word (pos-terminal pos-after)))
      (tr :eos-next-word next-word)

      (unless (no-space-before-word? next-pos)
        (tr :eos-separated-by-space)
        (return-from lookahead-for-period-as-eos nil))

      (when (eq next-word *end-of-source*)
        (tr :eos-reached-eos)
        (return-from lookahead-for-period-as-eos nil))
      (when (eq next-word *the-punctuation-period*)
        (tr :eos-followed-by-a-period)
        (return-from lookahead-for-period-as-eos nil))

      ;; We know that the second word after the period
      ;; is touching the word just after the period
      ;; and the obvious cases have been looked for

      ;; Lets just take it. If there turn out to be issues
      ;; we'll call (characterize-word-type pos-after next-word)))
      ;; and look more closely
      (tr :eos-fall-through-accept)
      t)))

  
    
