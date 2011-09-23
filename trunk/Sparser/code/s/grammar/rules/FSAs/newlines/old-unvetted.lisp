;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "old unvetted"
;;;   Module:  "grammar;rules:FSAs:newlines:"
;;;  Version:  January 1995

;; initiated 1/5/95

(in-package :sparser)

#|  haven't been checked out (11/92)

(defun newline-FSA/indentation ()
  (let ((word-after-NL (next-token)))
    (expect-indentation word-after-NL)))

(defun expect-indentation (word)
  (cond ((eq word *paragraph-space*)
         (if *report-paragraphs*
           *paragraph-start*
           *paragraph-space*))
        ((eq word *indentation-space*)
         *NL+indentation*)
        ((whitespace word)
         word)
        (t ;; it's a real word of some kind
         (setq *word-buffered* word)
         *newline*)))


(defun use-Newline-FSA-for-paras-&-indentation ()
  (setf (symbol-function 'Newline-FSA)
        (symbol-function 'Newline-FSA/para-&-indentation))
  (setq *NewLine-FSA-in-use* 'Newline-FSA/para-&-indentation))


(defun newline-FSA/para-&-indentation ()
  (let ((word-after-NL (next-token)))
    (if *indentation-space*
      (if (eq word-after-NL *indentation-space*)
        *NL+indentation*
        (check-other-NL-follower-possiblities/p-&-i word-after-NL))
      (check-other-NL-follower-possiblities/p-&-i word-after-NL))))


(defun check-other-NL-follower-possiblities/p-&-i (word-after)
  (cond ((eq word-after *paragraph-space*)
         *paragraph-start* )
        ((not (whitespace word-after))
         (buffer-word word-after :newline-FSA)
         (incf *number-of-words-looked-at-this-pass*)
         *newline* )
        (t ;; it's an unanticipated kind of whitespace
           ;; If we just pass through this space, the record in
           ;; the chart of the whitespace between (real) words
           ;; will not be accurate.  ///ok for now though.
         word-after)))



(defun use-Newline-FSA/paras-&-indentation/linefeed ()
  (setf (symbol-function 'Newline-FSA)
        (symbol-function 'Newline-FSA/para-&-indentation/linefeed))
  (setq *NewLine-FSA-in-use* 'Newline-FSA/para-&-indentation/linefeed))

(defun newline-FSA/para-&-indentation/linefeed ()
  (let ((word-after-NL (next-token)))
    (if (eq word-after-NL (punctuation-named #\Linefeed))
      (newline-fsa/para-&-indentation)
      (break "no"))))
                                           |#

