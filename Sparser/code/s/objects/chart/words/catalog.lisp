;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-1994,2012,2016,2020-2024  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "catalog"
;;;   Module:  "objects/chart/words/"
;;;  Version:  April 2024

;; 1.1 (2/13 v2.2) Moved the the file and grammar module checking into
;;     the catalog routine.
;;     (7/19/94) added Alphabetize-word-list
;;     (3/1/12) quieting the compiler

(in-package :sparser)

;;;-----------------------------------------------------------
;;; noting provinance of definitions for unknown words (etc.)
;;;-----------------------------------------------------------

(defparameter *source-of-unknown-words-definition* nil
  "This is intended to provide the same sort of information as
   grammar modules do for where we got the information we used
   to define the word and the categoy created for it.
   Dynamically bound by definition creators. Intended to
   add information to the property lists for at least human
   consumption.")
#| Bound to :comlex by continue-unpacking-lexical-entry
         to :default by setup-unknown-word-by-default
         to :computed by create-category-from-word / setup-word-based-verb-category
     and to :morphology by assign-morph-brackets-to-unknown-word  |#

(defun mark-definition-source (unit)
  "If we're defining an unknown word or making a category for it
   on the fly while reading. This adds the tag :source
   to the unit's plist"
  (declare (special *source-of-unknown-words-definition*))
  (when *source-of-unknown-words-definition*
    ;; Most definitions come from grammar modules so this is
    ;; usually off
    (when (not (consp unit)) ;; problem with ("more real")
      (setf (get-tag :source unit)
            *source-of-unknown-words-definition*))))


;;;---------------
;;;  Accumulator
;;;---------------

(defvar *words-defined* nil
  "A list, filled by Define-word, of all #<word> objects.")


;;;--------------------------------------
;;; tracking all the locations of a word
;;;--------------------------------------

(defun update-file-location (word)
  "Called from define-word/expr is the word is not new,
   i.e. we've already catalogued it. Add the current
   file location to any that are already there.
     The first time catalog/word calls note-file-location
   to put the file-being-loaded on the word's :file-location
   property (where 'loc' will look for it).
      Also used with categories."
  (declare (special *file-being-lloaded*))
  (when *file-being-lloaded*
    ;; only do this while the grammar is being loaded
    (let ((known (ensure-list (get-tag :file-location word))))
      (unless (memq *file-being-lloaded* known)
        (let ((augmented
               (if (listp known)
                 (tail-cons *file-being-lloaded* known)
                 (list *file-being-lloaded* known))))
          ;; (format t "  ~s " (pname word))
          (setf (get-tag :file-location word) augmented))))))



;;;-------------------------
;;;  Cataloging operation
;;;-------------------------

(defun catalog/word (word symbol-for-word)
  (declare (special *defining-a-polyword*))
  (note-grammar-module word)
  (if *defining-a-polyword*
    (setf (get-tag :used-in-pw word) *defining-a-polyword*)
    (note-file-location word))
  (mark-definition-source word)
  (push word *words-defined*)
  (set symbol-for-word word)
  (proclaim `(special ,symbol-for-word))
  word )


(defun un-catalog/word (object symbol-for-word)
  (setq *words-defined*
        (delete object *words-defined*))
  (makunbound symbol-for-word)
  (unintern symbol-for-word *word-package*)
  object)


;;;----------------------------
;;; packaged deletion routines
;;;----------------------------

(defmethod delete/word ((string-for-word string))
  (let ((word (word-named string-for-word)))
     (if word
       (delete/word word)
       (format t "\"~a\" is not a known word" string-for-word))))


(defmethod delete/word ((word word))
  (un-catalog/word word (word-symbol word)))


(defun expunge-unknown-words ()
  (let ( deleted-pnames )
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

