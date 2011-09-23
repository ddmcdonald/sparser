;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "printers"
;;;   Module:  "objects;chart:categories:"
;;;  Version:  1.4 March 1994

;; 1.1 (2/11/91 v1.8.1) Added check in Princ-category for being passed a
;;      null category.
;; 1.2 (7/30 v1.8.6)  Added Sort/categories
;; 1.3 (3/92 v2.2) Added facilities for printing categories in a menu
;; 1.4 (3/10/94 v2.3) made princ-category use lowercase

(in-package :sparser)

;;;------------
;;; structure
;;;------------

(defun print-category-structures (obj stream depth)
  (declare (ignore depth))
  (write-string "#<category " stream)
  (write-string (symbol-name (cat-symbol obj)) stream)
  (write-string ">" stream))


;;;------------------
;;; pretty printing
;;;------------------

(defun princ-category (c stream)
  (if c
    (write-string (string-downcase 
                   (symbol-name (cat-symbol c)))
                  stream)
    (else
      ;; in some error conditions this routine can be fed a Nil
      (write-string "nil" stream))))


(defparameter *max-length-of-category-in-menu* 30
  "If a category is to be printed in a menu and its pname is longer
   than this, then it is truncated.")

(defun print-for-menu/categories (c  &optional (stream *standard-output*))
  ;; have to limit the size so that the table dialog can have
  ;; a predictable size
  (let* ((full-string (symbol-name (cat-symbol c)))
         (length (length full-string)))
    (format stream "~A"
            (if (> length *max-length-of-category-in-menu*)
              (subseq full-string 0 *max-length-of-category-in-menu*)
              full-string))))



;;;--------------------
;;; sorting categories
;;;--------------------

(defun sort/categories (&optional
                        (list-of-categories
                         (copy-list *categories-defined*)))
  (sort list-of-categories
        #'symbol-name-string-lessp
        :key #'cat-symbol))

