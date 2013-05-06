;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "add"
;;;   Module:  "analyzers;psp;fill-chart:"
;;;  Version:  5.4 December 1994

(in-package :sparser)

;; 5.0 (9/28/92 v2.3) accomodating changes to the tokenizer
;; 5.1 (4/9/93) flushed references to word package - used constants instead
;; 5.2 (1/13/94) added reset of *first-chart-position* to 2 on wrap
;; 5.3 (5/3) added passing through of position to writing routines
;;     (6/3) added Next-chart-position-to-fill
;; 5.4 (12/12) moved binding point of 'word' after the wrapping-check so that
;;      the correct *next-array-position-to-fill* is available to next-terminal.


(defun add-terminal-to-chart ()
  (declare (special *source-exhausted*))

  (if *source-exhausted*
    (break "scan has gone beyond the end of the text")

    (else
      (when (= *next-array-position-to-fill*
               *number-of-positions-in-the-chart*)
        (setq *position-array-is-wrapped* t)
        (setq *next-array-position-to-fill* 0)
        (setq *first-chart-position* 2))
      
      (let ((word (next-terminal))
            (position (aref *the-chart* *next-array-position-to-fill*)))
        
        (setf (pos-token-index position)
              *number-of-next-position*)  ;; token index
        
        (if (eq word *one-space*)
          (fill-whitespace-and-loop position word)
          (else
            (let ((rule-set (word-rules word)))
              (if rule-set
                (cond ((eq word *newline*)
                       (sort-out-result-of-newline-analysis
                        position
                        (newline-fsa position)))
                      ((not (symbolp rule-set))
                       (bump-&-store-word position word))
                      ((eq rule-set :whitespace)
                       (fill-whitespace-and-loop position word))
                      (t (error "Unknown case in categorization ~
                                 of terminals")))
                (else
                  ;;unknown word
                  (bump-&-store-word position word))))))))))




(defun next-chart-position-to-fill ()
  ;; called by sub-chart routines that need to know what Add-terminal-
  ;; to-chart is going to do. Has to stay in sync with any changes
  ;; to the real thing.  This is called _before_ the operations in
  ;; the corresponding call to Add-terminal-to-chart -- they will
  ;; happen momentarily.
  (if (= *next-array-position-to-fill*
         *number-of-positions-in-the-chart*)
    (aref *the-chart* 0)
    (aref *the-chart* *next-array-position-to-fill*)))





(defun fill-whitespace-and-loop (position word
                                 &key display-word )

  (fill-whitespace position word :display-word display-word)
  (add-terminal-to-chart))



(defun fill-whitespace (position word  &key display-word)
 (when *display-word-stream*
    (if display-word
      ;; this option overrides the normal move of displaying the
      ;; current token from the input buffer
      (write-specific-word-to-article-stream word position)
      (write-current-token-to-article-stream word position)))

  (when (pos-preceding-whitespace position)
    (position-already-has-whitespace position word))

  (setf (pos-preceding-whitespace position) word))



(defun position-already-has-whitespace (position word)
  (declare (ignore position word))
  ;; a placeholder -- allows a tally to be taken of how often and
  ;; why it happens that there could be two whitespace tokens in
  ;; a row
  )

