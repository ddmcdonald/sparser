;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992,1993 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "on/off"
;;;   Module:  "grammar;rules:paragraphs:"
;;;  Version:   1.2 November 1991

;; initiated in August 1990
;; 1.1 (2/15 v1.8.1)  Tweeked as part of setting up WN format
;; 1.2 (11/3 v2.0.1)  Cleaned up the commentary 

(in-package :sparser)

#|
   The machinery that detects paragraphs is alway active.  These
routines just control whether they are reported/acted-on or not.
Precisely what definition is used for a paragraph is controlled
independently by the choice of definition for the Newline FSA.  |#


(defparameter *report-paragraphs* t)

(defun turn-on-paragraph-detection ()
  (setq *report-paragraphs* t))

(defun turn-off-paragraph-detection ()
  (setq *report-paragraphs* nil))

