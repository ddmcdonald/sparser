;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992,2017  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "state"
;;;   Module:   analyzers/tokenizer/
;;;  Version:   August 2017

;; initial version 6/90
;; 2.0 (9/28/92 v2.3) completely redone -- flushed the defstruct that
;;      would have permitted running several tokenizing processes
;;      simultaneously since it was never used and slowed things down.

(in-package :sparser)

;;;-----------------
;;; state variables
;;;-----------------

(defvar *pending-entry* nil
  "Holds the next whole entry to be processed when a non-punctuation
   token was just found. The character for this entry wasn't of the
   same type as the accumulating token, so it indicated its end but
   has not yet itself been processed.")

(defvar *category-of-accumulating-token* nil
  "Holds the keyword that indicates the type of the token currently
   being accumulated.  This keyword is the car of the whole entry
   for a character.")


;;;-----------------
;;; initializations
;;;-----------------

(defun initialize-tokenizer-state ()
  (declare (special *length-of-the-token* *capitalization-of-current-token*
                    *exact-pname-of-token*))
  (setq *pending-entry* nil
        *category-of-accumulating-token* nil
        *length-of-the-token* 0
        *capitalization-of-current-token* :uncalculated
        *exact-pname-of-token* "")
  (clear-unhandled-unknown-words))


;;;---------------
;;; other globals
;;;---------------

(defvar *length-of-the-token* 0
  "Set in Finish-token to be read in Bump-&-store-word")

(defvar *capitalization-of-current-token* :uncalculated
  "Set in Finish-token as result of cleaning up the last state
   of the capitalization-fsa - read in Bump-&-store-word")

(defvar *exact-pname-of-token* ""
  "Set in finish-token to the sub-sequence of the character
   buffer that contains the just-scanned token. Read in
   unknown word handlers that need the precise information
   to better deal with mixed cases words.")
