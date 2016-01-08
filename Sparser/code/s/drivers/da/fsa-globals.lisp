;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "fsa globals"
;;;   Module:  "drivers;DA:"
;;;  Version:  May 1995

;; initiated 5/5/95

(in-package :sparser)

(defparameter *best-pattern-matched-so-far* nil)
(defparameter *pending-arcs* nil)

(defun initialize-da-search ()
  (setq *best-pattern-matched-so-far* nil
        *pending-arcs* nil))

