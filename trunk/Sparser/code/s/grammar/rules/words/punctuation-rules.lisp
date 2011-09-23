;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2006-2007  BBN Solutions LLC.  -- all rights reserved
;;; $Id$
;;; 
;;;     File:  "punctuation rules"
;;;   Module:  "grammar;rules:words:"
;;;  Version:  0.0 November 2006

(in-package :sparser)

;;;-------
;;; N - N
;;;-------

(set-ca-action (word-named "-") 'hyphen-ca-hook)

(set-generic-treetop-action (word-named "-") 'hyphen-ca-hook)

(defun hyphen-ca-hook (edge-over-hyphen)
  ;(break "got here")
  )
