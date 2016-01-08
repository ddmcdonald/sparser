;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2006  BBN Solutions LLC.  -- all rights reserved
;;; $Id$
;;; 
;;;     File:  "undo-other-settings"
;;;   Module:  "sitrep;"
;;;  Version:  0.0 November 2006

(in-package :sparser)

(let* ((w (word-named "a"))
       (rs (word-rules w)))
  ;; it wants to make a section head or something "A."
  (setf (rs-fsa rs) nil))

(let ((rs (word-rules word::hyphen)))
  ;; in grammar/rules/FSAs/hyphen for "--" and grouping hyphen separated words
  (setf (rs-fsa rs) nil))
