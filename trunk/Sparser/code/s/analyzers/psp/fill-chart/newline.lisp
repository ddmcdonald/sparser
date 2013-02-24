;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1996, 2010  David D. McDonald
;;; extensions copyright (c) 2010 BBNT Solutions LLC.
;;; $Id$
;;;
;;;     File:  "newline"
;;;   Module:  "analyzers;psp:fill chart:"
;;;  Version:  0.8 February 2010

;; initiated 8/91 v1.2
;; (11/1 v2.0.1) Reordered the clauses by their frequency of occurance
;; 0.1 (6/26/92 v2.2) Changed the values checked to fit conventions for
;;      paragraph as a section-marker
;; 0.2 (11/28 v2.3) added default binding for sm-paragraph-start
;; 0.3 (4/9/93) flushed references to word package - used constants instead
;;      Moved sm-paragraph-start to rules:words:required
;; 0.4 (4/20/94) moved in all the basic setup from NL fsas that had been in
;;      in the version stored in the grammar
;; 0.5 (5/2) made the display of whitespace returned from the NL fsa be literally
;;      the word rather than what's in the buffer
;; 0.6 (12/13) Added a call to reset the line adjustment counter when a
;;      newline is returned and it is treated as whitespace.
;; 0.7 (1/15/96) added another case specifically looking for the paragraph start
;;      word so that it could direct bump-&-store-word not to look into the buffer
;;      for what to print.
;; 0.8 (6/18) added a case for sentence boundaries.
;;     (8/17/97) moved in *count-input-lines*
;;     (2/22/10) Somewhere along the line the newline fsa got an argument but
;;     the "not defined" hadn't been update to match.
;;     (11/10/10) fixed problem compiler identified

(in-package :sparser)



(defun sort-out-result-of-newline-analysis (position word)
  ;(format t "~&NL FSA returned: ~a at p~a~%" word (pos-token-index position))
  (cond ((eq word *newline*)
         (if *newline-is-a-word*
           (bump-&-store-word position word)
           (else
            (reset-display-line-chars-remaining-counter)
            (fill-whitespace-and-loop position word :display-word t)
            (when *newline-delimits-paragraphs*
              (check-begin-new-paragraph position)))))

        ((eq word word::paragraph-start)
         (bump-&-store-word position word :display-word t))

        ((eq word *sentence-boundary*)
         (bump-&-store-word position word :display-word t))

        ((eq :whitespace (word-rules word))
         (fill-whitespace-and-loop position word :display-word t))

        (t (bump-&-store-word position word))))




;;;-------
;;; flags
;;;-------

(defparameter *newline-is-a-word* nil
  "A flag read in Sort-out-result-of-newline-analysis to determine
   whether the newline word should be put into the chart as a
   terminal or treated as whitespace")


(defparameter *newline-delimits-paragraphs* t
  "A flag read in Sort-out-result-of-newline-analysis to determine
   whether the newline word delimits a paragraph (and does not get
   added to the chart)")


(defparameter *newline-fsa-in-use* nil
  "bound as a record after the switching routine has set the
   choice of fsa")


(defparameter *count-input-lines* t
  "Flag controlling the routine below. If the workbench is not being
   used and the source is very long this should be set to nil.
   It is managed in the 'switches' code.")



;;;-------------------------------------------
;;; routine used in-line and switched against
;;;-------------------------------------------

(defun newline-fsa (position)
  (declare (ignore position))
  ;; called from Add-terminal-to-chart
  (break "The initialization of the analyzer is incomplete:~
          ~%   The FSA for #\newline doesn't have a value"))


;;;---------------------------
;;; NL as word -- the default
;;;---------------------------

(defun use-return-newline-tokens-fsa ()
  (setf (symbol-function 'newline-fsa)
        (symbol-function 'return-newline-tokens))
  (setq *newline-fsa-in-use* 'return-newline-tokens))

; (use-return-newline-tokens-fsa)
(defun return-newline-tokens (position-being-filled)
  (declare (ignore position-being-filled))
  (when *count-input-lines*
    (increment-line-count))
  *newline* )

