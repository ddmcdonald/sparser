;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1994,2012-2015  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "switch new"
;;;   Module:  "objects;chart:words:lookup:"
;;;  Version:   1.0 October 2015

;; 1.0 (2/6/92 v2.2) Pulled the original version of Make-new... and
;;      replaced it with two more specific cases
;;     (12/12/94 v2.3) added the :no-properties case
;;     (3/1/12) quiet compiler
;;     (10/14/14) added :capitalization-digits-&-morphology/or-primed
;;     (10/6/15) Added second optional to accommodate

(in-package :sparser)


(defun establish-unknown-word (&optional symbol second-optional)
  "Switched function -- select an unknown word handler and call
   what-to-do-with-unknown-words with the appropriate keyword.
   Extend the code if you need another treatment. All but one
   of the handlers take at most single argument, the character type 
   of the word that is presently in the word-buffer. One of them
   wants to know if the word already exists (see find-word) so it
   takes a second argument."
  (declare (ignore symbol second-optional))
  (error "Switch that determines what protocol to use with unknown ~
          words~%   has not been set"))


(defun what-to-do-with-unknown-words (keyword)
  (declare (special *unknown-word-policy*))
  ;(unless *the-constant-unknown-word*
  ;  (create-the-unknown-word))
  (case keyword
    (:ignore
     (setf (symbol-function 'establish-unknown-word)
           (symbol-function 'constant-unknown-word)))
    (:no-properties
     (setf (symbol-function 'establish-unknown-word)
           (symbol-function 'make-word/no-properties)))
    (:capitalization-&-digits
     (setf (symbol-function 'establish-unknown-word)
           (symbol-function 'make-word/capitalization-&-digits)))
    (:capitalization-digits-&-morphology
     (setf (symbol-function 'establish-unknown-word)
           (symbol-function 'make-word/all-properties)))
    (:capitalization-digits-&-morphology/or-primed
     (setf (symbol-function 'establish-unknown-word)
           (symbol-function 'make-word/all-properties/or-primed)))
    (:check-for-primed
     (setf (symbol-function 'establish-unknown-word)
           (symbol-function 'look-for-primed-word-else-all-properties)))
    (otherwise
     (error "Unknown unknown-word policy: ~a" keyword)))

  (setq *unknown-word-policy* keyword))

