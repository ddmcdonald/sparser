;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2021 SIFT LLC. All Rights Reserved
;;;
;;;    File: "output"
;;;  Module: "grammar/model/sl/score/
;;; version: August 2021

;; Broken out of comlex-verb-explorations 8/23/21

(in-package :sparser)

;;;---------
;;; streams
;;;---------

(defparameter *comlex-form-output-stream* *standard-output*
  "abstract the actual stream so the print routines don't need to know")

(defparameter *dossier-to-comlex-categories*
  (asdf:system-relative-pathname
   :sparser
   "Sparser/code/s/grammar/model/dossiers/comlex-categories.lisp"))

;;;--------
;;; driver
;;;--------

#| Test with a list of string for words that have comlex entires.
 Alternatively merge the various lists in the word-lists file into
 one big 'master' list and pass it to write-word-definitions-to-file.
   That will set in motion call to setup functions according to
 the contents of each words comlex entry. The setup functions make calls
 to make-category-form to create the define-category expressions,
 which are pretty printed to the stream that we've set up here. |#

(defun write-word-definitions-to-file (word-list name-of-word-list)
  "Specify and open a file for a batch of Comlex-based definitions.
   Provides a name to indicate what list we're generating from.
   Set the output stream parameter to the opened stream so it can be
   seen in the call to pprint-category-form in make-category-form."
  (declare (special *comlex-form-output-stream*))
  (with-open-file (stream *dossier-to-comlex-categories*
                          :direction :output
                          :if-exists :supersede)
    (word-definition-file-preamble name-of-word-list stream)
    (setq *comlex-form-output-stream* stream)
    (create-word-definitions word-list)))

(defun create-word-definitions (word-list)
  "Loops over the strings in the input word list. Does sanity check for
   having an entry, then passes them to the starting function for
   creating proper category expressions. Dynamically binds the
   guard that make-category-form checks before it assembles and
   writes an expression."
  (let ((*incrementally-save-comlex-categories* t))
    (declare (special *incrementally-save-comlex-categories*))
    (loop for word in word-list
       when (comlex-entry word)
       do (comlex-lemma-to-category-forms word))))
  

(defun word-definition-file-preamble (list-name stream)
  (format stream
          "~&;;; Copyright (c) 2021 SIFT LLC. All Rights Reserved~
         ~%~%;;; Generated file of category definitions for ~a~
           ~%;;; Written ~a~
         ~%~%(in-package :sparser)~%"
          list-name
          (date-&-time-as-formatted-string)))


;;;----------------------------------------
;;; cache when not sending to an open file
;;;----------------------------------------

(defvar *comlex-forms-encountered* nil)

(defun cache-comlex-expression (word form)
  "When we are running with Comlex in use for unknown words, we will
   continually run through the setup functon and make-category-form
   but without an active open file to write to and without even
   alphbetical order. We instead store the word and form
   on a cache and can save them later (or discard them when they are
   mistakes."
  (unless (assoc word *comlex-forms-encountered* :test #'equal)
    ;; while debugging we'll rerun the same texts many times
    (push (list word form) *comlex-forms-encountered*)))



;;--------------------------------------------------
;;----------------------- originals ----------------
  
;;; The main utility function for creating definitions of all
;;; previously unknown verbs which have been looked up in COMLEX
(defun write-comlex-verb-defs (&optional (stream t))
  (declare (special *comlex-verbs* *morph-comlex-verbs*))
  (loop for v in (sort (remove-duplicates (append *comlex-verbs*
                                                  *morph-comlex-verbs*)
                                          :test #'equal)
                       #'string<)
        do (pprint-def-cl (def-cl-verb-form v) stream)))


(defun write-category-defs-to-file (filename wordlist)
  (with-open-file (outfile filename
			   :direction :output
			   :if-exists :supersede)
    (dolist (w wordlist)
      (print (def-cat-form w) outfile))))



;; given a list of words and a filename, writes the subcat entries
;; for the words to the specified file
(defun write-subcats-to-file (filename word-list)
  (let ((subcat-list (make-subcat-list word-list)))
    (with-open-file (outfile filename
			     :direction :output
			     :if-exists :supersede)
      (dolist (l subcat-list)
	(print l outfile))))) 

