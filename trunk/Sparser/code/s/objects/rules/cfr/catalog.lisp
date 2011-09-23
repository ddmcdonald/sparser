;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.  -- all rights reserved
;;; copyright (c) 1991 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "catalog"
;;;    Module:   "objects;rules:cfr:"   ;; "context free rules"
;;;   Version:   1.0   August 1990
;;;

(in-package :sparser)

;;;--------------
;;; accumulator
;;;--------------

(defvar *context-free-rules-defined* nil
  "Accumulates all phrase-structure rules defined during the course
   of a session.")

(defvar *accumulating-psg-rules* nil
  "Intended as a local accumulator, operating in parallel with the
   primary accumulator, that is rebound and unbound locally for
   specific domains of rules.")


;;;-----------------------
;;; cataloging operation
;;;-----------------------

(defun catalog/cfr (cfr r-symbol)
  (push cfr
        *context-free-rules-defined*)
  (set r-symbol cfr)
  (proclaim `(special ,r-symbol))
  (setf (cfr-symbol cfr) r-symbol)
  (when (boundp '*accumulating-psg-rules*)
    (push cfr *accumulating-psg-rules*))
  cfr )


(defun un-catalog/cfr (cfr r-symbol)
  (unintern r-symbol *phrase-structure-rule-package*)
  (setq *context-free-rules-defined*
        (delete cfr *context-free-rules-defined*))
  cfr )


;;;----------------------------------
;;; the symbols that refer to a CFR
;;;----------------------------------

(defvar *next-number-for-phrase-structure-rule* 0)

(defun gen-cfr-symbol ()
  (let ((number
         (incf *next-number-for-phrase-structure-rule*)))
    (intern (concatenate 'string
                         "PSR"
                         (format nil "~A" number))
            *phrase-structure-rule-package*)))

