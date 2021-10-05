;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1995,2021 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "traversal"
;;;   Module:  "drivers;chart:"
;;;  Version:  September 2021

;; 1.0 (12/6/92 v2.3) Simplified it all considerably

(in-package :sparser)

;;;------------
;;; new driver
;;;------------

(defun word-traversal-hook (word position next-position)
  "Called from a scan operation, e.g. sweep-to-span-parentheses
   or scan/word-level-actions, which moves word by word.
   Traversal actions are managed by a hash table from the word
   qua label (i.e. could be applied to edges as well) to a function
   that takes these same arguments. This is used for bracket pairs
   such as parentheses, double quotes, etc. Check with a call to
   (list-hash-table *traversal-routine-table*)
      The action is always on the matching close. The open
    notes its oposition so the close knows what span to operate
    over. We check for traversal hits before the no-space check
    because the ns is greedy and moves the position, which can
    cause the open to be missed.  "
  
  (declare (special *trace-traversal-hook*
                    *trace-traversal-hits*))
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

