;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2013-2014 David D. McDonald  -- all rights reserved
;;;
;;;      File:  "period-hook"
;;;    Module:  "grammar;rules:DM&P:"
;;;   version:  February 2014

;; initiated 5/26/10. Picked up working on it 7/10. 9/17/13 Actually
;; hooked it into creating sentences. 2/10/14 Added period-hook-off.

(in-package :sparser)


(defun period-hook-on ()
  (define-completion-action word::period :hook 'period-hook))

(defun period-hook-off ()
  (delete-completion-action word::period :hook))


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

(defun period-hook (the-word-period position-before position-after)
  ;; position-before is the one with the period on it. After picks out
  ;; the word following the period. 
  ;;(setq position-before (cadr *) position-after (caddr *))
  (unless *position-before-last-period*
    (setq *position-before-last-period* (position# 0)))
  (when (period-marks-sentence-end? position-after)
    (let* ((pos-after-period (chart-position-after position-before))
           (s (start-sentence pos-after-period)))
      (tr :period-hook)
      (when *break-on-next-sentence*
        (push-debug `(,s))
        (break "sentence: ~a" s))))
  (setq *position-before-last-period* position-before))


;;--- Sentences

(defun period-marks-sentence-end? (position-after)
  ;; What other capitalization cases could count?
  ;; Does the amount of space between the words matter?
  ;;   (pos-preceding-whitespace position-after)
  ;; This is enough to correctly ignore "11.4" and "p. 200"
  (or (eq (pos-terminal position-after) *end-of-source*)
      (eq (pos-capitalization position-after)
          :initial-letter-capitalized)))





