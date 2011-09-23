;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "interface;file ops:"
;;;  Version:  1.0  March 1991

;; initiated 3/8/91

(in-package :sparser)


;;;----------------------
;;; adjusting file names
;;;----------------------

(defun filename-ends-in (string filename)
  ;; A predicate testing whether the string of the filename ends with
  ;; the indicated string.  Returns the index in the filename string
  ;; where the string searched for starts -- this can then be fed
  ;; to a replace routine.
  (let ((namestring
         (etypecase filename
           (string filename))))
    (search string namestring :from-end t)))


(defun replace-filename-suffix (original new filename)
  (let* ((namestring (etypecase filename
                       (string filename)))
         (end-index
          (filename-ends-in original namestring)))

    (unless end-index
      (error "The namestring of the filename ~A~
              ~%      does not end in ~A" filename original))

    (let ((stem (subseq namestring 0 end-index)))
      (concatenate 'string stem new))))

