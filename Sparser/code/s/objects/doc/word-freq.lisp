;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2012  David D. McDonald  -- all rights reserved
;;;
;;;    File:  "word-freq"
;;;   Module:  "objects;doc:"
;;;  Version:  September 2012

;; initiated 9/2/12 to provide a mix-in for tabulating word-frequency information.

(in-package :sparser)

;;;--------
;;; object
;;;--------

(defobject word-frequency ()
  ((words-to-count) ;; hash-table
   (words)  ;; list of the words in the document
   (token-count)) ;; total word count
  (:documentation "Provides a mix-in for anything that contains words whose
 frequencies can be counted."))


;;;------------
;;; operations
;;;------------

(defmethod initialize ((o word-frequency))
  (setf (words-to-count o) (make-hash-table))
  (setf (token-count o) 0))


(defmethod clear ((o word-frequency))
  (setf (words o) nil)
  (setf (token-count o) 0)
  (clrhash (words-to-count o))
  o)

;;;---------------------------
;;; tallying word-frequencies
;;;---------------------------

(defmethod incf-word-count ((w word) (o word-frequency))
  (let* ((table (words-to-count o))
	 (count (gethash w table)))
    (unless count
      (push w (words o))
      (setf (gethash w table) 0))
    (incf (token-count o))
    (incf (gethash w table))
    w))


