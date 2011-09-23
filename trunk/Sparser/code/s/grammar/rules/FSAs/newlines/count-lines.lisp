;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "count lines"
;;;   Module:  "grammar;rules:FSAs:newlines:"
;;;  Version:  June 1996

;; initiated 6/6/96. Synchronized with Adjustment protocol 6/18.

(in-package :sparser)


#| The source consists of a massive body of text without any markup and
   without any blank lines, indentation, or other explicit indicators of
   paragraph structure. 

   Furthermore, it's in that grep-prefered style where the lines are as
   long as needed so that each sentence takes up a single line. 

   To get the effect of paragraphing, in the sense that we can have Sparser
   pause at successive relatively small intervals so that we can examine
   the analysis incrementally, we set up this ad-hoc paragraphing by counting
   out a sequence of lines and breaking after each instance of a designated
   number of lines has gone by.

|#

;;;-------------------
;;; state information
;;;-------------------

(defparameter *nl-count-lines/number-of-lines-that-count-as-a-paragraph*  3)

(defparameter *nl-count-lines-counter* 0)

(define-per-run-init-form '(when (eq *newline-fsa-in-use*
                                     'count-sets-of-lines-newline-fsa)
                             (setq *nl-count-lines-counter* 0)))


;;;------------
;;; the NL fsa
;;;------------

(defun count-sets-of-lines-newline-fsa (position-being-filled)

  (unless *adjust-text-to-fixed-line-length*
    ;; This increments the counter used by the workbench's Text View, unless
    ;; the newlines aren't going to be going out to the stream because the
    ;; adjustment routines are doing that according to their own protocols.
    (increment-line-count))  

  (incf *nl-count-lines-counter*)  ;; our counter

  (if (= *nl-count-lines-counter*
         *nl-count-lines/number-of-lines-that-count-as-a-paragraph*)
    (then
      (setq *nl-count-lines-counter* 0)

      ;; Since Sort-out-result-of-newline-analysis is just going to pass
      ;; the paragraph-start word we're returning to Bump-*-store-word, which 
      ;; will then send it to the display-stream via Write-token, wherein the
      ;; fact that it's pname is "" (length 0) will keep the adjustment routine
      ;; from doing anything (and we do expect that this NL-routine is normally
      ;; used with adjustment: see Adjust-text-to-fixed-line-length).  
      ;; Then we're going to have to do the insertion of the NL ourselves:
      (insert-nl-and-reset-adjustment-parameters 0 ;; the 'token length'
                                                 position-being-filled)     

      ;; return the word that's used to indicate paragraphs
      word::paragraph-start )

    (else
      ;; Returning this will take us through Sort-out-result-of-newline-analysis 's
      ;; default path, which will put it into the chart and send it's print name
      ;; out to the display-stream (all via Bump-&-store-word).
      
      *sentence-boundary* )))

;(use-count-lines-nl-fsa)

(defun use-count-lines-nl-fsa ()
  (setf (symbol-function 'newline-fsa)
        (symbol-function 'count-sets-of-lines-newline-fsa))
  (setq *newline-fsa-in-use* 'count-sets-of-lines-newline-fsa))

