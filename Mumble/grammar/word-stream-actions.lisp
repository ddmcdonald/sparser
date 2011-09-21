;;; -*- Mode: Lisp; Package:MUMBLE; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id: word-stream-actions.lisp 100 2007-07-04 14:31:27Z dmcdonal $
;;;
;;; MUMBLE-86:  grammar > word-stream-actions
;;;
;;; Copyright (C) 1985-1999  David D. McDonald and the
;;;    Mumble Development Group.  All rights reserved.
;;;    Permission is granted to use and copy this file of the Mumble-86 system for
;;;    non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

;; 7/15/99 Added locale hook and dispatch for digit-separator in Print-punctuation.
;; 8/13 debugged it.

(in-package :mumble)


;;the body of the action type is a function body which takes as an implicit
;;argument OBJECT, which is the object of word stream action (it can be nil)

(define-word-stream-action-type function-word 
  (send-to-output-stream (pname object)))

(define-word-stream-action-type punctuation
  (print-punctuation object))

(define-word-stream-action-type add-possessive-ending
  (declare (ignore object))
  (send-to-output-stream *the-possessive-marker*))


(define-word-stream-action-type determiner
  (declare (ignore object))
  (print-determiner (state *current-phrasal-root*)))


(define-word-stream-action-type capitalize-the-next-word
  (declare (ignore object))
  (send-to-output-stream (blip-named 'capitalize-the-next-word)))


(define-word-stream-action-type capitalize-phrase
  (declare (ignore object))
  (send-to-output-stream (blip-named 'capitalize-and-regenerate)))


(define-word-stream-action-type end-capitalization
  (declare (ignore object))
  (send-to-output-stream (blip-named 'end-capitalization)))

(define-word-stream-action-type new-line
  (declare (ignore object))
  (send-to-output-stream :fresh-line))


(define-word-stream-action-type indent
  (declare (ignore object))
  (send-to-output-stream "     "))

(defun process-word-stream-actions (actions status)
  "Perform all of the actions that should be done at this moment"
  (dolist (action actions)
    (let ((moment (moment action))
	  (object (object action)))
      (when (and (or (and (eq moment 'initial)
			  (eq status 'new))
		     (and (eq moment 'final)
			  (eq status 'entered)))
		 (or (not (wsa-condition action))
		     (funcall (wsa-condition action))))
        (funcall (ws-action (action-type action)) object)

	#+ignore
	(case (name action)
	  (function-word   (send-to-output-stream (pname object)))
	  (punctuation     (print-punctuation object))
	  (determiner      (print-determiner (state *current-phrasal-root*)))
	  (add-possessive-ending
	                   (send-to-output-stream *the-possessive-marker*))
	  (capitalize-the-next-word
	   (send-to-output-stream
	     (blip-named 'capitalize-the-next-word)))
	  (capitalize-phrase
	   (send-to-output-stream
	     (blip-named 'capitalize-and-regenerate)))
	  (end-capitalization
	   (send-to-output-stream
	     (blip-named 'end-capitalization)))
	  (new-line (send-to-output-stream :fresh-line))
	  (indent (send-to-output-stream "     "))
	  )

        ))))





(defun print-determiner (state-list)
  (let ((determiner (state-value :determiner state-list)))
    (when determiner
      (ecase determiner
	(definite (send-to-output-stream "the"))
	(indefinite (ecase (state-value :number state-list)
		      (singular  (send-to-output-stream "a"))
		      (plural)))
	(no-determiner)))))


;; Obviously this is just a hack.
(defparameter locale 'us) ;; vs. 'europe


(defun print-punctuation  (object)
  (case (name object)
    (period (if (member (label-named 'question) (labels *current-position*))
		(send-to-output-stream (punctuation-mark-named 'question-mark))
		(send-to-output-stream object)))
    (digit-separator
     (send-to-output-stream (ecase locale
                              (us (punctuation-mark-named 'comma-without-following-space))
                              (europe (punctuation-mark-named 'period-without-following-space)))))
    (decimal-mark
     (send-to-output-stream (ecase locale
                              (us (punctuation-mark-named 'period-without-following-space))
                              (europe (punctuation-mark-named 'comma-without-following-space)))))
    (otherwise (send-to-output-stream object))
    ))

;################################################################
;                  One of a kind actions
;################################################################


(define-blip  capitalize-the-next-word)

(define-blip  capitalize-and-regenerate)

(define-blip  end-capitalization)

(defparameter *the-possessive-marker*
  (create-and-catalog 'the-possessive-marker
                      'possessive-marker
                      'name 'apostrophe-s))



;#######################################################
;  word stream action conditions

(defun lexical-contents ()
  (not (tracep (contents *current-position*))))



(defun not-a-pronoun-contents ()
  (not (pronounp (contents *current-position*))))


