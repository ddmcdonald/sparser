;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "other brackets"
;;;   Module:  "grammar;rules:traversal:"
;;;  Version:  February 2007

;; initiated 9/13/95. 2/23/07 dropped the check that the matching open has
;; a value, and included a reset.

(in-package :sparser)

#| These are straight copies of the setup in [traversal;angle brackets] |#

;;;-----
;;; { }
;;;-----

(def-category  curly-brackets :lattice-position :non-terminal)

(set-traversal-action  word::open-curly-bracket  'mark-open-curly-bracket)
(set-traversal-action  word::close-curly-bracket 'span-curly-brackets)


;;;-------------------
;;; traversal actions
;;;-------------------

(defun mark-open-curly-bracket (start-pos end-pos)
  (declare (ignore end-pos))
  (setq *pending-open-curly-bracket* start-pos))


(defun span-curly-brackets (pos-before-close pos-after-close)
  (let ((pos-before-open *pending-open-curly-bracket*))
    (when pos-before-open
      ;;(break/debug "Can't find matching open curly bracket"))

      (let ((pos-after-open (chart-position-after pos-before-open)))
	
	(do-paired-punctuation-interior 
	    :curly-brackets
	  pos-before-open pos-after-open
	  pos-before-close pos-after-close)))
    (setq *pending-open-curly-bracket* nil)))


;;;-----
;;; [ ]
;;;-----

(def-category  square-brackets :lattice-position :non-terminal)

(set-traversal-action  word::open-square-bracket  'mark-open-square-bracket)
(set-traversal-action  word::close-square-bracket 'span-square-brackets)


;;;-------------------
;;; traversal actions
;;;-------------------

(defun mark-open-square-bracket (start-pos end-pos)
  (declare (ignore end-pos))
  (setq *pending-open-square-bracket* start-pos))


(defun span-square-brackets (pos-before-close pos-after-close)
  (let ((pos-before-open *pending-open-square-bracket*))
    (when pos-before-open
      ;;(break/debug "Can't find matching open square bracket"))

      (let ((pos-after-open (chart-position-after pos-before-open)))

	(do-paired-punctuation-interior
	    :square-brackets
	  pos-before-open pos-after-open
	  pos-before-close pos-after-close)))
    (setq *pending-open-square-bracket* nil)))

