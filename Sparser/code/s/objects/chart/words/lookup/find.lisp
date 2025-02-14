;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,2015 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "find"
;;;   Module:  "objects;words:lookup"
;;;  Version:  July 2015

;; initiated 1/16/92. 7/6/15 Commented out the complaint
;; just to make the load quieter. Needs researc.

(in-package :sparser)


(defun word-named (string &optional preserve-case?)
  (when (and *force-case-shift*
	     (not preserve-case?))
    (setq string (force-case-of-word-string string)))
  (populate-word-lookup-buffer/string string)
  (let ((symbol (lookup-word-symbol)))
    (if symbol
      (if (boundp symbol)
        (symbol-value symbol)
        (else #+ignore(format t "~%There is a word symbol, ~S,~
                         ~%   but it isn't bound to a word object~%"
                      string)
              nil))
      nil)))

