;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2020-2023 David D. McDonald  -- all rights reserved
;;;
;;;    File:  "word-freq-methods"
;;;   Module:  "objects;doc:"
;;;  Version:  October 2023

;; initiated 4/8/20 to allow methods to be loaded after all the classs
;; that they refer to. 

(in-package :sparser)

;;;------------
;;; populators
;;;------------

;;--- sentences

(defgeneric do-integrated-wf-count (sentence)
  (:documentation "Called from scan-terminals-and-do-core when the
 *smart-frequency-count* flag is nil, and the *integrated-word-frequency-count*
 flag is up. Gets the treetop edges of the sentence, extracts their words,
 and updates the word-frequence fields in the sentence.")
  (:method ((s sentence))
    (let* ((edges (all-tts (starts-at-pos s) (ends-at-pos s)))
           (words (loop for e in edges collect (word-from-edge e))))
      (setf (words s) words)
      (setf (token-count s) (length words))
      (loop for w in words
        do (incf-word-count w s)))))


;;--- higher levels

(defgeneric aggregate-frequency-data (doc-element)
  (:documentation "Piggy-backs on the text-characteristics methods:
    collect-text-characteristics for paragraphs, with all the higher
    levels in aggregate-text-characteristics. These dispatch is
    controlled by the parameter *integrated-word-frequency-count*.")
  (:method ((p paragraph))
    (let* ((sentences (sentences-in-paragraph p))
           (all-words (loop for s in sentences append (words s)))
           (words (remove-duplicates all-words)))
      (setf (token-count p)
            (loop for s in sentences
                  sum (token-count s)))
      (setf (words p) words)
      (push-debug `(,words ,p ,sentences)) ;; (break "test")
      (increment-word-count words sentences (words-to-count p))))
  
  (:method ((e document-element))
    (let* ((daughters (children e))
           (parent-table (words-to-count e))
           (all-words (loop for d in daughters append (words d)))
           (words (remove-duplicates all-words)))
      (setf (words e) words)
      (setf (token-count e)
            (loop for d in daughters
                  sum (token-count d)))
      (increment-word-count words daughters parent-table))))
    

;;--- tally methods

(defun increment-word-count (words sentences parent-table)
  "At the base level we have to sum the instance counts in
   each of the sentences, then update the table in the
   parent paragraph."
  (loop for w in words
        as count = (count-in-daughters w sentences)
        do (setf (gethash w parent-table) count)))

(defun count-in-daughters (w daughters)
  "Get the number of instances of the word 'w' in each of
   the hashtables (words-to-count) of the daughters
   and sum the result. If w is not in a daugher table enter 0."
  (flet ((pad-frequency-table (w table)
           "The word often as not will not be in the table.
            If that's the case we enter 0 for it."
           (unless (gethash w table)
             (setf (gethash w table) 0))
           table))
    (loop for d in daughters
          as table = (words-to-count d)
          as padded-table = (pad-frequency-table w table)
          sum (gethash w padded-table))))

(defgeneric incf-word-count (word sentence)
  (:documentation "Assumes the sentence is an instance of word-frequency.
    Bumps the count on each word.")
  (:method  ((w word) (s sentence))
    (let* ((table (words-to-count s))
           (count (gethash w table)))
      (unless count
        (setf (gethash w table) 0))
      (incf (gethash w table))
      w))
  (:method ((w polyword) (s sentence))
    (let* ((table (words-to-count s))
           (count (gethash w table)))
      (unless count
        (setf (gethash w table) 0))
      (incf (gethash w table))
      w)))



;;;------------------------------------------
;;; analogs to the readouts over the globals
;;;------------------------------------------

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

