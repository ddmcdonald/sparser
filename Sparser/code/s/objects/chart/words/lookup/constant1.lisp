;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992,1993  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "constant"
;;;   Module:  "objects;words:"
;;;  Version:   1.1 February 1992

;; initiated 12/90
;; 1.1 (2/1/92 v2.2) completely redid the technique for doing
;;     the word.

(in-package :sparser)

;;;-----------------------------
;;; setting up the unknown word
;;;-----------------------------

(defparameter *the-unknown-word* 
  (let* ((w-symbol (intern "UNKNOWN-WORD" *word-package*))
         (word (make-word
                :symbol w-symbol
                :pname ""
                :plist '(:use-symbol-name-when-printing))))

    (setf (word-rule-set word)
          (make-rule-set :backpointer word))

    word ))
        

;;;---------------------------------------
;;; the routine called from the tokenizer
;;;---------------------------------------

(defun constant-unknown-word ( &optional symbol )
  ;; this routine is called as an alternative to 
  ;; Make-new-word/analyze-properties or one of the variants
  ;; depending on the value of *unknown-word-policy*

  (declare (ignore symbol))
  *the-unknown-word* )

