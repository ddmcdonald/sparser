;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright 2011,2020 David D. McDonald, all rights reserved
;;;
;;;     File: "def-word"
;;;   Module: "grammar;rules:words:one-offs:"
;;;  Version:  April 2020

;; initiated 7/27/11.

(in-package :sparser)

(defparameter *def-word-definition* :comlex
    "Determines what the def-word macro expands into.
     Possible values are :comlex and :2010-frequency.")

(defun establish-version-of-def-word (keyword)
  (unless (memq keyword '(:comlex :word-frequency))
    (error "keyword must be either :comlex or :word-frequency"))
  (setq *def-word-definition* keyword))

(defmacro def-word (string &rest data)
  (declare (special *def-word-definition*))
  (ecase *def-word-definition*
    (:comlex
     `(prime-word-from-comlex ,string ',data))
    (:word-frequency
     `(define-2010-words-frequency-data ,string ',data))))

#+ignore
(defun def-word/expr (string data)
  (declare (ignore string data))
  (error "No definition for def-word yet.~
        ~%Use establish-version-of-def-word"))

#+ignore
(defun establish-version-of-def-word (keyword)
  (case keyword
    (:2010-frequency
     (setf (symbol-function 'def-word/expr)
           (symbol-function 'define-2010-words-frequency-data)))
    (:comlex
     (setf (symbol-function 'def-word/expr)
           (symbol-function 'prime-word-from-comlex)))
    (otherwise
     (error "~a is not a known keyword for def-word.~
           ~%Possible values are~
           ~%   :comlex~
           ~%   :2010-frequency"
            keyword)))
  (setq *def-word-definition* keyword))
