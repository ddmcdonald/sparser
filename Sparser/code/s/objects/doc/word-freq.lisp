;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2012-2013,2019-2020  David D. McDonald  -- all rights reserved
;;;
;;;    File:  "word-freq"
;;;   Module:  "objects;doc:"
;;;  Version:  April 2020

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

