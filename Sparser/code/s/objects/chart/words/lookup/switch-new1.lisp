;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "switch new"
;;;   Module:  "objects;chart:words:lookup:"
;;;  Version:   1.0 December 1994

;; 1.0 (2/6/92 v2.2) Pulled the original version of Make-new... and
;;      replaced it with two more specific cases
;;     (12/12/94 v2.3) added the :no-properties case

(in-package :sparser)


(defun establish-unknown-word (&optional symbol)
  (declare (ignore symbol))
  (error "Switch that determines what protocol to use with unknown ~
          words~%   has not been set"))


(defun what-to-do-with-unknown-words (keyword)
  ;(unless *the-constant-unknown-word*
  ;  (create-the-unknown-word))
  (ecase keyword
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
    (:check-for-primed
     (setf (symbol-function 'establish-unknown-word)
           (symbol-function 'look-for-primed-word-else-all-properties)))
    (otherwise
     (error "Unknown unknown-word policy: ~a" keyword)))

  (setq *unknown-word-policy* keyword))

