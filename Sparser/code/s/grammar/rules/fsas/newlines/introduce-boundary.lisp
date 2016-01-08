;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "introduce boundary"
;;;   Module:  "grammar;rules:FSAs:newlines:"
;;;  Version:  January 1995

;; initiated 1/5/95

(in-package :sparser)

;;;-----------------------------------------
;;; blank lines introduce phrase boundaries
;;;-----------------------------------------

(defun use-blank-line/phrase-boundaries-nl-fsa ()
  (setf (symbol-function 'newline-fsa)
        (symbol-function 'blank-line/phrase-boundaries-nl-fsa))
  (setq *newline-fsa-in-use* 'blank-line/phrase-boundaries-nl-fsa))


(defun blank-line/phrase-boundaries-nl-fsa (next-position-to-fill)
  ;; When one or more blank lines interveen between parts of
  ;; the text we arrange that the next position have a ]. so that
  ;; any ongoing phrase will be terminated.
  ;; store the pending nl

  ;; stash the pending nl
  (increment-line-count)
  (fill-whitespace next-position-to-fill *newline* :display-word t)

  (let ((token (next-terminal)))
    (if (eq token *newline*)
      (then
        ;;/// if we've seen one blank line we might see several,
        ;; so consider replacing this with a loop
        (increment-line-count)

        (mark-position-as-generic-boundary next-position-to-fill)

        ;; returning this will lead to a call to Fill-whitespace-
        ;; and-loop
        *newline* )

      (else
        token ))))

;(use-blank-line/phrase-boundaries-nl-fsa)

