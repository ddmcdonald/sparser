;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "traversal"
;;;   Module:  "drivers;chart:"
;;;  Version:   1.0 December 1992

;; 1.0 (12/6/92 v2.3) Simplified it all considerably

(in-package :sparser)

;;;------------
;;; new driver
;;;------------

(defun word-traversal-hook (word position next-position)
  (when *trace-traversal-hook*
    (format t "~&Traversing the word ~A" word))
  (let ((routine (traversal-action word)))
    (if routine
      (then
        (when *trace-traversal-hook*
          (format t ", and it has a routine~%"))
        (when *trace-traversal-hits*
          (format t "~&Traversal: the word ~A~
                     ~%   triggers the routine ~A~
                     ~%   at p~A~%"
                  word routine (pos-token-index position)))
        (funcall routine position next-position))

      (when *trace-traversal-hook*
        (format t ", which does not have a routine~%")))))


;;;--------------------------------------
;;; linking labels to traversal routines
;;;--------------------------------------

(defparameter *traversal-routine-table*
              (make-hash-table :test #'eq))

(defun traversal-action (label)
  (gethash label *traversal-routine-table*))

(defun set-traversal-action (label funcall-able-routine)
  (setf (gethash label *traversal-routine-table*)
        funcall-able-routine))

(defun delete/traversal-action (label)
  (remhash label *traversal-routine-table*))

