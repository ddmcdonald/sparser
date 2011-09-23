;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; $Id$
;;;
;;;     File: "ERG"
;;;   Module: "grammar;rules:words:one-offs:"
;;;  Version:  August 2010

;; Reads in a cached version of the ERG lexicon, puts it into
;; tables and converts them to word objects

;; initiated 8/13/10

(in-package :sparser)


(defvar *ERG-words* (make-hash-table))

;; Read in the ERG lexicon file -- the subset after the capitals so we're
;; excluding things like the days of the week or months of the year
(defun readin-English-lexicon ()
  (clrhash *ERG-words*)
  (with-open-file (stream
		   "/Users/ddm/ws/Vulcan/ws/Lisp/lexicon-English.txt"
		  :direction :input
		  :if-does-not-exist :error)
    (loop for string = (read-line stream nil :eof)
	 until (eq string :eof)
	 do (let ((word (or (word-named string)
			    ;; maybe record new vs old?
			    (define-word/expr string))))
	      (setf (gethash word *ERG-words*) t)))
     *ERG-words*))
