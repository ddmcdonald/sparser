;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2020  David D. McDonald  -- all rights reserved
;;;
;;;    File:  "word-freq-methods"
;;;   Module:  "objects;doc:"
;;;  Version:  April 2020

;; initiated 4/8/20 to allow methods to be loaded after all the classs
;; that they refer to. 

(in-package :sparser)


;;--- analogs to the readouts over the globals

(defgeneric readout-frequency-record (word-frequency)
  (:documentation "Given an instance of a document class that
 inherits from word-frequency, readout its hash table")
  (:method ((a article))
    (readout-frequency-record (words-to-count a)))
  (:method ((dc document-collection))
    (readout-frequency-record (words-to-count dc)))
  (:method ((table hash-table))
    ;; table is words to their counts. Extract them as a cons,
    ;; then sort by count and alphabetically.
    (let ((readout
           (loop for word being the hash-key in table
              as count = (gethash word table)                  
              collect (cons word count))))
      (let ((sorted (sort-word-count-pairs readout)))
        ;; populate *how-many-at-each-frequency-count* table
        (count-how-many-at-each-frequency-count sorted)
        (write-wf-readout-to-file sorted)
        (length sorted)))))

(defparameter *write-wf-readout-to-file* nil
  "If nil, the readout goes to standard-out, if set
   to a namestring, that file is created and the readout
   goes there.")
  
(defun write-wf-readout-to-file (sorted)
  (flet ((display (stream)
           (display-sorted-results stream
                                   nil ; just summary
                                   sorted)))
    (if *write-wf-readout-to-file*
      (with-open-file (stream
                       *write-wf-readout-to-file*
                       :direction :output
                       :if-exists :overwrite
                       :if-does-not-exist :create)
        (display stream))
      (display *standard-output*))))


;;;----------------------
;;; Steps towards tf/idf
;;;----------------------

(defgeneric count-in-document (word table)
  (:documentation "Look up the count for a particular document that
   inherits the word-frequency mixin class. Note that this doesn't use
   the entry structure of the word in the frequency table but assumes
   that's been recorded on the document.")
  (:method ((w word) (o word-frequency))
    (let ((table (words-to-count o)))
      (gethash w table))))


(defmethod normalized-count ((w word) (d word-frequency))
  (let ((total-tokens (token-count d))
	(count-for-word (count-in-document w d)))
    (unless (or (= total-tokens 0)
		(null count-for-word)) ;; #<source-start>
      (let ((ratio (/ count-for-word total-tokens)))
	(values
	 (format nil "~,8F" ratio)
	 ratio)))))

(defmethod unique-words ((d1 word-frequency) (d2 word-frequency))
  "What wards are in d1 that aren't in d2?"
  (let ( unique-to-d1
	(table1 (words-to-count d1))
	(table2 (words-to-count d2)))
    (maphash #'(lambda (word count)
		 (declare (ignore count))
		 (unless (gethash word table2)
		   (push word unique-to-d1)))
	     table1)
    unique-to-d1))

(defmethod term-frequency ((w word) (d word-frequency))
  (let ((total-tokens (token-count d))
	(count-for-word (count-in-document w d)))
    (unless (or (= total-tokens 0)
		(null count-for-word)) ;; #<source-start>
      (/ count-for-word total-tokens))))

(defun number-of-documents-containing-word (word)
  (let ((entry (frequency-table-entry word)))
    (if entry
      (length (cdr entry))
      0)))

(defmethod inverse-document-frequency ((w word) (list-of-documents list))
  (let* ((doc-count (length list-of-documents))
         (incident-count (number-of-documents-containing-word w))
         (ratio (/ doc-count (1+ incident-count))))
    (log ratio)))

(defmethod tf-idf ((w word) (document word-frequency)
                   (list-of-documents list))
  (let ((tf (term-frequency w document)))
    (when tf
      (* tf
         (inverse-document-frequency w list-of-documents)))))

