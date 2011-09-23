;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991,1992,1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "catalog"
;;;   Module:  "objects;words:"
;;;  Version:  1.1 July 1994

;; 1.1 (2/13 v2.2) Moved the the file and grammar module checking into
;;     the catalog routine.
;;     (7/19/94) added Alphabetize-word-list

(in-package :sparser)

;;;---------------
;;;  Accumulator
;;;---------------

(defvar *words-defined* nil
  "A list, filled by Define-word, of all #<word> objects.")


;;;-------------------------
;;;  Cataloging operation
;;;-------------------------

(defun catalog/word (word symbol-for-word)
  (note-file-location word)
  (note-grammar-module word)
  (push word *words-defined*)
  (set symbol-for-word word)
  (proclaim `(special ,symbol-for-word))
  word )


(defun un-Catalog/word (object symbol-for-word)
  (setq *words-defined*
        (delete object *words-defined*))
  (makunbound symbol-for-word)
  (unintern symbol-for-word *word-package*)
  object)


;;;----------------------------
;;; packaged deletion routines
;;;----------------------------

(defun delete/word (word)
  (un-catalog/word word (word-symbol word)))


(defun expunge-unknown-words ()
  (let ( word-symbol
         deleted-pnames )
    (dolist (word *words-defined*)
      (unless (word-rules word)
        (push (word-pname word)
              deleted-pnames)
        (un-Catalog/word word (word-symbol word))))
    deleted-pnames))


;;;---------------------------------------
;;; other routines on whole sets of words
;;;---------------------------------------

(defun alphabetize-list-of-words (list-of-words)
  (let ((list (copy-list list-of-words)))
    ;; sort is destructive, so best to be sure
    (sort list
          #'string<  ;; distinguishes capitalized variants
          :key #'word-pname )))

