;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2012-2013,2019  David D. McDonald  -- all rights reserved
;;;
;;;    File:  "word-freq"
;;;   Module:  "objects;doc:"
;;;  Version:  August 2019

;; initiated 9/2/12 to provide a mix-in for tabulating word-frequency information.
;; 10/26/13 Reworked as a regular class form with initial values since the initialize
;; method was never pushed through the other classes.

(in-package :sparser)

;;;--------
;;; object
;;;--------

(defclass word-frequency ()
  ((words-to-count :type hash-table :initform (make-hash-table)
    :accessor words-to-count
    :documentation "a hash-table from a word to its count")
   (words :type list :initform nil :accessor words
    :documentation "list of the words in the document")
   (token-count :type integer :initform 0 :accessor token-count
    :documentation "total word token count in the document"))
  (:documentation "Provides a mix-in for anything that contains words whose
 frequencies can be counted."))


;;;------------
;;; operations
;;;------------

(defmethod clear ((o word-frequency))
  (setf (words o) nil)
  (setf (token-count o) 0)
  (clrhash (words-to-count o))
  o)

;;;---------------------------
;;; tallying word-frequencies
;;;---------------------------

(defgeneric incf-word-count (word table)
  (:documentation "Assumes the table is an instance of word-frequency.
    Bumps up the count, and if the word is new it is added to that list.")

  (:method  ((w word) (o word-frequency))
    (let* ((table (words-to-count o))
           (count (gethash w table)))
      (unless count
        (push w (words o))
        (setf (gethash w table) 0))
      (incf (token-count o))
      (incf (gethash w table))
      w))
  (:method ((w polyword) (o word-frequency))
    (let* ((table (words-to-count o))
           (count (gethash w table)))
      (unless count
        (push w (words o))
        (setf (gethash w table) 0))
      (incf (token-count o))
      (incf (gethash w table))
      w)))


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
