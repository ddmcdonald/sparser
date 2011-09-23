;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991,1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "angle brackets"
;;;   Module:  "grammar;rules:traversal:"
;;;  Version:  1.0 September 1994

;; 1.0 (6/15/94) broke out most of the code as a standard dispatch. 9/15/95 cleaned up
;; 2/23/07 dropped the check that the matching open has a value, and included a reset.

(in-package :sparser)

;;;-------
;;; setup
;;;-------

(def-category  angle-brackets :lattice-position :non-terminal)

(set-traversal-action  word::open-angle-bracket  'mark-open-angle-bracket)
(set-traversal-action  word::close-angle-bracket 'span-angle-brackets)


;;;-------------------
;;; traversal actions
;;;-------------------

(defun mark-open-angle-bracket (start-pos end-pos)
  (declare (ignore end-pos))
  (setq *pending-open-angle-bracket* start-pos))


(defun span-angle-brackets (pos-before-close pos-after-close)
  (let ((pos-before-open *pending-open-angle-bracket*))
    (when pos-before-open
      ;;(break/debug "Can't find matching open angle bracket"))

      (let ((pos-after-open (chart-position-after pos-before-open)))

	(do-paired-punctuation-interior 
	    :angle-brackets
	  pos-before-open pos-after-open
	  pos-before-close pos-after-close)))
    (setq *pending-open-angle-bracket* nil)))

