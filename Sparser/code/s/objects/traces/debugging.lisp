;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1995,2013 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "debugging"
;;;   Module:  "objects;traces:"
;;;  Version:  August 2013

;; initiated 3/91. Added *..new-cases* 6/13/95.  Started the debugging flags
;; accumulator 7/25. Added to it 8/9.  Moved the two pre-existing flags into
;; the aggregating routine 9/5/95. 8/14/13 Added in the new crop of flags.

(in-package :sparser)


(defparameter *break-on-new-cases* t
  "Intended as a gate on any stubs that are put in the grammar code
   in the course of developing new rules.")


;;;---------------------------------------------
;;; 3/91 scheme for turning off all breakpoints
;;;---------------------------------------------

(defparameter *break-on-unexpected-cases* nil
  "If this flag is on, Unexpected situations in the code that are
   marked by calls to Break/debug will cause breaks.  Otherwise they
   will lead to format statements with the same information the
   break would have supplied.")

(defparameter *stream-for-bug-messages* *standard-output*)


(defun break/debug (format-string &rest args)
  (if *break-on-unexpected-cases*
    (apply #'break  format-string args)
    (apply #'format *stream-for-bug-messages* format-string args)))



;;;-----------------------------------------------
;;; aggregating point for all the debugging flags
;;;-----------------------------------------------

(defun turn-on-debugging-flags ()
  (setq *announce-missing-sort-routines* t
        *debug-treetops* t
        *debug-pnf* t
        *break-on-new-categories-in-cap-seq* t
        *break-on-new-cases* t
        *break-on-unexpected-cases* t
        ;; new ones from Grok and beyond
        *break-on-new-name-converter-cases* t
        *debug-reify-implicit-individuals* t
        *debug-segment-handling* t
        *break-on-new-bracket-situations* t
        ))

(defun turn-off-debugging-flags ()
  (setq *announce-missing-sort-routines* nil
        *debug-treetops* nil
        *debug-pnf* nil
        *break-on-new-categories-in-cap-seq* nil
        *break-on-new-cases* nil
        *break-on-unexpected-cases* nil
        ;; new
        *break-on-new-name-converter-cases* nil
        *debug-reify-implicit-individuals* nil
        *debug-segment-handling* nil
        *break-on-new-bracket-situations* nil
        ))

