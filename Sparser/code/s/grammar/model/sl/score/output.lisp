;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2021 SIFT LLC. All Rights Reserved
;;;
;;;    File: "output"
;;;  Module: "grammar/model/sl/score/
;;; version: August 2021

;; Broken out of comlex-verb-explorations 8/23/21

(in-package :sparser)


(defparameter *comlex-form-output-stream* *standard-output*) ; abstract the print routines

(defun write-word-definitions-to-file (word-list)
  "Specify and open a file for a batch of Comlex-based definitions
   Set the output stream parameter to the opened stream so it can be
   seen in the call to pprint-category-form made by make-category-form."
  (create-word-definitions word-list))

(defun create-word-definitions (word-list)
  (loop for word in word-list
     when (comlex-entry word)
     do (comlex-lemma-to-category-forms word)))
  


;;----------------------- originals ----------------
  
;;; The main utility function for creating definitions of all
;;; previously unknown verbs which have been looked up in COMLEX
(defun write-comlex-verb-defs (&optional (stream t))
  (declare (special *comlex-verbs* *morph-comlex-verbs*))
  (loop for v in (sort (remove-duplicates (append *comlex-verbs*
                                                  *morph-comlex-verbs*)
                                          :test #'equal)
                       #'string<)
        do
           (pprint-def-cl (def-cl-verb-form v) stream)))


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

