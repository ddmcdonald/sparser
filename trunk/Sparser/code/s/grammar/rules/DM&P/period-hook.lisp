;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;; $Id$
;;;
;;;      File:  "period-hook"
;;;    Module:  "grammar;rules:DM&P:"
;;;   version:  July 2010

;; initiated 5/26/10. Picked up working on it 7/10. 

(in-package :sparser)


(defun period-hook-on ()
  (define-completion-action word::period :hook 'period-hook))


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

(defun period-hook (the-word-period position-before position-after)
  ;; position-before is the one with the period on it. After picks out
  ;; the word following the period. 
  (push-debug `(,the-word-period ,position-before ,position-after))
  ;;(setq position-before (cadr *) position-after (caddr *))
  (unless *position-before-last-period*
    (setq *position-before-last-period* (position# 0)))
  (when (period-marks-sentence-end? position-after)
    ;; For the moment lets ignore the first sentence. The bio chapters
    ;; all start with a lot of topic lines that don't use periods,
    ;; so we should coordinate this with paragraph breaks to get the
    ;; right size 'sentence chunks'
    (break "3")

    (delimited-sentence *position-before-last-period* position-before)
    (push-debug `(,*position-before-last-period* ,position-before))
    (break "got to period hook~% last = ~a~% now = ~a"
           *position-before-last-period* position-before))
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

(defun delimited-sentence (pos-previous-period pos-this-period)
  (format t "~&[  ~a  ]~%" ;; sentence length
	  (- (pos-token-index pos-this-period)
	     (pos-token-index pos-previous-period))))




