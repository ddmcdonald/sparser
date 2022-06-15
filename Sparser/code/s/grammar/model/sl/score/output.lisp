;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2021-2022 SIFT LLC. All Rights Reserved
;;;
;;;    File: "output"
;;;  Module: "grammar/model/sl/score/
;;; version: June 2022

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

#| Merge the various lists in the word-lists file into one big 'master'
 list and pass it to write-word-definitions-to-file.
   That will set in motion call to the setup functions according to
 the contents of each words Comlex entry. The setup functions make calls
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
       when (candidate-for-comlex-category? word)
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

(defvar *comlex-forms-encountered* nil
  "Accumulates a simple list of category forms. N.b this includes
   forms for words that are created by rule when Sparser is loading
   so this list will often be populated before we parse anything
   deliberated. The note with make-category-form explains further.")

(defun clear-comlex-form-cache ()
  (setq *comlex-forms-encountered* nil))

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


(defun package-comlex-cache ()
  "The cache contains string-form pairs. The words only have
   one of their possible forms (the one that the context said
   was the correct POS) so we only want to save the strings
   and their forms can be ignored.
     The list needs to be alphabetized and stemmed (though why
   non-lemma forms got this far is puzzling: 'slayings')"
  (let* ((no-entry nil)
         (raw-list (loop for pair in *comlex-forms-encountered*
                      collect (car pair)))
         (filtered-for-stems (loop for string in raw-list
                                collect (stem-if-necessary string)))
         (filtered-for-comlex (loop for string in filtered-for-stems
                                 when (comlex-entry string)
                                 collect string
                                 unless (comlex-entry string)
                                 do (push string no-entry))))
    (let ((sorted (sort filtered-for-stems #'string<)))
      sorted)))


(defparameter *location-for-cached-wordlist*
  (asdf:system-relative-pathname
   :sparser
   "Sparser/code/s/grammar/model/sl/score/comlex-cached-words.lisp"))

;; (write-comlex-cache-wordlist-to-file "acumen-100-to-200")

(defun write-comlex-cache-wordlist-to-file (name-for-word-list)
  (let* ((word-list (package-comlex-cache))
         (count (length word-list))
         (line-count 0))
    (with-open-file (stream *location-for-cached-wordlist*
                            :direction :output
                            :if-exists :supersede) ;; :append ?
      (format stream
          "~&;;; Copyright (c) 2021 SIFT LLC. All Rights Reserved~
         ~%~%;;; Generated wordlist derived from  ~a~
           ~%;;; ~a words~
           ~%;;; Written ~a~
         ~%~%(in-package :sparser)~%"
          name-for-word-list count
          (date-&-time-as-formatted-string))
      (format stream "(defparameter *~a*~
                    ~%  '(" name-for-word-list)
      (loop for string in  word-list
         do (format stream "~s " string)
         when (>= (incf line-count) 8)
         do (progn (format stream "~% ")
                   (setq line-count 0)))
      (format stream "))~%"))))


(defvar *no-morphology-on-word* nil)

(defun save-no-morphology-to-parameter (parameter-name &optional (stream *standard-output*))
  (let ((line-count 0))
    (format stream "~&(defparameter ~a~% '(" parameter-name)
    (loop for word in *no-morphology-on-word*
       do (format stream "~s " (pname word))
       when (>= (incf line-count) 8)
       do (progn (format stream "~% ")
                 (setq line-count 0)))
    (format stream "))~%")))


(defgeneric stem-if-necessary (pname)
  (:documentation "Is the word corresponding to this string already
     in its stem form? If not, stem it and return the result.
     Otherwise return the the original string.
     Motivated by cleaning word lists for Comlex, where the medium is strings
     rather than words.
     If the putative stem doesn't have a comlex entry take the base
     If the word doesn't have an entry for morphology it cann't be stemmed
     so we just pass it along.")
  (:method ((pname string))
    (let ((stem (stem-form pname))
          (word (resolve pname)))
      (when (null word)
        (break "~s does not name a known word" pname))
      (if (word-morphology word) 
        (cond
          ((eq stem word)
           pname)
          ((not (comlex-entry stem))
           pname)
          (t
           ;;(format t "~&Stemmed ~s to ~a~%" pname stem)
           (pname stem)))
        (else        
          ;;(push word *no-morphology-on-word*)
          pname)))))
     
  

#| presumably bad stems in 100 AC articles'
  (run-batch-of-acumen-files :n 100 :start 200)

;; typos
Stemmed "politicis" to #<word "politici">
Stemmed "victimis" to #<word "victimi">
Stemmed "terroris" to #<word "terrori">


Stemmed "roberts" to #<word "robert">

Stemmed "bias" to #<word "bia">
Stemmed "serving" to #<word "serve">

Stemmed "missing" to #<word "mis">

;; good
Stemmed "thats" to #<word "that"> == "thats" is the noun form of "thatses" via default

|#
         



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

