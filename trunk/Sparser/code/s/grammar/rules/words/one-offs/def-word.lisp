;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; $Id$
;;; Copyright 2011 David D. McDonald, all rights reserved
;;;
;;;     File: "def-word"
;;;   Module: "grammar;rules:words:one-offs:"
;;;  Version:  July 2011

;; initiated 7/27/11.

(in-package :sparser)

(unless (boundp '*def-word-definition*)
  (defvar *def-word-definition* nil
    "Determines what the def-word macro expands into.
     Possible values are :comlex and :2010-frequency."))


(defmacro def-word (string &rest data)
  `(def-word/expr ,string ',data))

;; Changing the macro itself is unnecessary since it
;; expands into an ordinary function. Were we to change
;; the macro we'd need to recompile all the sites that
;; referenced it.

(defun def-word/expr (string data)
  (error "No definition for def-word yet.~
        ~%Use establish-version-of-def-word"))

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
           ~%   :2010-frequency")))
  (setq *def-word-definition* keyword))
