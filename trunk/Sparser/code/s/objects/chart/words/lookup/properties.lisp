;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992,1993  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "properties"
;;;   Module:  "objects;words:lookup:"
;;;  Version:  0.1 November 1992

;; initiated 6/90
;; 0.1 (11/23/92 v2.3) Swapped the order of one operation so its results
;;      could be used by the other operation. Added :digits as an option for the capitalization field.

(in-package :sparser)


(defun calculate-properties-of-words-pname/in-buffer (word)

  ;; called by Define-word -- which arranged to fill the word-buffer
  ;; correctly.

  (setf (word-capitalization word)
        (calculate-capitalization-of-word/in-buffer))
  
  (setf (word-morphology word)
        (calculate-morphology-of-word/in-buffer))
  word )



(defun calculate-morphology-of-word/in-buffer ()
  ;; also called from the tokenizer via some versions of
  ;; Establish-unknown-word
  (initialize-state-of-morphology-FSA)
  (start-affix-stripper/word-buffer))


(defun calculate-capitalization-of-word/in-buffer ()
  ;; not called from the tokenizer because it has already calculated
  ;; the capitalization -- only used when words are defined explicitly.
  (initialize-state-of-capitalization-FSA)
  (start-capitalization-FSA/word-buffer)
  (reify-state-of-capitalization-FSA))

