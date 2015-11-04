;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993,1994,1995,1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "store"
;;;   Module:  "analyzers;psp:fill chart:"
;;;  Version:  4.6 January 1996

;;1.1  (1/4/91 v1.7)  Moved the point of the trace so it could report
;;     character start indicies as well.  Added clearing the preceding
;;     whitespace field.
;;1.2  (1/14 v1.7)  Changed the calculation of the character index to
;;     include the amount accumulated in prior fillings of the character
;;     buffer.  This had been done only in Setup as part of reading
;;     an edge out (and thereby doing it at a lesser frequency -- now
;;     its being done all the time), but that led to a fencepost error
;;     when the buffer was refilled (bumping the accumulation) after the
;;     position was filled but before an edge referring to that position
;;     was read out.
;; 1.3 (6/30 v1.8.6) Added *first-chart-position-object*
;; 1.4 (1/14/92 v2.2)  moved in *display-word-stream*
;;     (1/15) added initialization of the capitalization field
;; 4.0 (9/28 v2.3) accomodates extensive changes to tokenizer
;; 4.1 (11/25) changed it to clear one position beyond the next position
;;     (12/15) fixed a bug in that change
;; 4.2 (11/12/93) the calculation of the char-index was wacko
;; 4.3 (1/21/94) tweeked the chart-index again using a value that gets
;;      subtracted to keep the record in sync with what's displayed
;; 4.4 (5/2) and again with a value to be added
;; 4.5 (5/3) Passing position to write routine to get display data
;; 4.6 (8/29) added call to keep discourse-history clean w.r.t. the Workbench
;;     (1/14/96) made that call unconditional. 1/15 added a keyword so that
;;     it prints the word it is passed rather than what's in the buffer. 
;;     1/16 tweeking call to long-term-ify

(in-package :sparser)

(defparameter *number-of-characters-to-subtract* 0
  "Some characters appear in the buffer but are not printed.
     The prime example is the linefeed that follows newlines in
   Dow Jones' DJNS version of the Wall Street Journal. It is caught
   by a NL-fsa, and kept from appearing in the display stream.
     We have to keep the indexes that are stored on the positions
   in sync with what's displayed, hence this counter.")

(defparameter *number-of-characters-to-add* 0
  "When the text of long lines is being adjusted automatically to
   a fixed line length, the original newlines of the article are
   converted in the display to spaces, and there are new, additional
   newline characters added by the adjustment process. That is a
   net increase in characters, hence this counter.
     This is initialized by Set-line-length-to-adjust-to and
   incremented by Insert-NL-and-reset-adjustment-parameters.")




(defun bump-&-store-word (position word
                          &key display-word)

  ;; store the word in the indicated position, then bump the relevant
  ;; pointers and initialize the next position after this one.
  
  (declare (special *trace-token-&-character-indicies* *text-out*))

  (setf (pos-terminal position) word)
  (setf (pos-capitalization position) *capitalization-of-current-token*)

  (setf (pos-character-index position)
        (+ (- (+ (cond ((eq :punctuation *capitalization-of-current-token*)
                        *index-of-next-character* )
                       (t (- *index-of-next-character*
                             *length-of-the-token*)))
                 *length-accumulated-from-prior-buffers*)
              *number-of-characters-to-subtract* )
           *number-of-characters-to-add* ))

  ;(format t "~&~A~15,4t~A~%" word *length-of-the-token*)

  (when *display-word-stream*
    (if display-word
      ;; If the word is paragraph-start or the equivalent, then
      ;; we don't want to print the token in the stream (e.g. Newline)
      ;; because it will already have been taken care of by the routine
      ;; that came up with paragraph-start.
      (write-specific-word-to-article-stream word position)
      (write-current-token-to-article-stream word position)))

  (when *trace-token-&-character-indicies*
    (format t " ~A/~A/~A "
            *next-array-position-to-fill* *number-of-next-position*
            (pos-character-index position)))

  (when *chart-empty*
    (setq *chart-empty* nil))

  (incf *number-of-next-position*)       ;; token index
  (incf *next-array-position-to-fill*)   ;; index to position array

  (when *position-array-is-wrapped*
    (incf *first-chart-position*)              ;; array index
    (incf *first-token-index-still-in-chart*)  ;; token index

    (if *first-chart-position-object*
      (setq *first-chart-position-object*
            (chart-position-after *first-chart-position-object*))
      (setq *first-chart-position-object*
            (chart-position *first-chart-position*))))

  (let ((position-to-clear
         (chart-position-after (chart-position-after position))))

    (long-term-ify/edge-referents/at position-to-clear
                                     :workbench-active? *text-out*)

    (initialize-position position-to-clear  ;; position object
                         (1+ *number-of-next-position*))  ;; token index
    position ))

