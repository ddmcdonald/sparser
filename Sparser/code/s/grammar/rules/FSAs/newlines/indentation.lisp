;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "indentation"
;;;   Module:  "grammar;rules:FSAs:newlines:"
;;;  Version:  March 2010

;; initiated 1/5/95 (broken out from rules:FSAs/newline4.lisp)
;; (3/12/10) Revitalizing to actually put in paragraph stuff.
;;   Debugging it through 3/25.

(in-package :sparser)

;;;--------------------
;;; simple indentation
;;;--------------------

(defun use-newline-fsa/paragraph ()
  (setf (symbol-function 'newline-fsa)
        (symbol-function 'newline-fsa/paragraph))
  (setq *newline-fsa-in-use* 'newline-fsa/paragraph))


;; uninteresting bindings just in case this file is being used without
;; the rest of the paragraph apparatus
(unless (boundp '*paragraph-space*)
  (defparameter *paragraph-space* nil))
(unless (boundp '*paragraph-start*)
  (defparameter *paragraph-start* nil))


; (use-newline-fsa/paragraph)

(defun newline-fsa/paragraph (next-position)
  ;; In add-terminal-to-chart the word just returned by (next-terminal)
  ;; is a newline. What we return becomes one of the arguments to
  ;; sort-or-result-of-newline-analysis
  (increment-line-count) ;; for the one that called up
  (let ((state :initial))
    (call-next-terminal-and-dispatch next-position)))

;; Tried doing this with flet's but the interlocking is too tight
(defun call-next-terminal-and-dispatch (next-position)
  (let ((word-after (next-terminal)))
    (format t "~&Word-after = ~a  at p~a~%" 
	    word-after (pos-token-index next-position))
    (cond ((eq word-after *newline*)
	   (soak-up-newline next-position))
	  ((not (whitespace word-after))
	   (insert-paragraph-marker next-position))
	  (t ;; it's an unanticipated kind of whitespace
	   (push-debug `(,word-after ,next-position))
	   (error  "NL-FSA unaticipated whitepace case: ~a at p~a"
		   word-after next-position)))))

(defun soak-up-newline (next-position)
  (increment-line-count)
  (format t "~&Soaking up newline~%")
  (fill-whitespace next-position *newline*)
  (call-next-terminal-and-dispatch next-position))

(defun insert-paragraph-marker (next-position)
  (format t "~&Returning paragraph word~%")
  ;; see /grammar/rules/paragraphs/section-rule2.lisp
  (tr :adding-paragraph-section-marker next-position)
  ;; This hands over responsibility to the 
  word::paragraph-start)




