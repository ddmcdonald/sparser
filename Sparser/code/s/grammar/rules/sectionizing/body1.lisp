;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;; 
;;;     File:  "body"
;;;   Module:  "grammar;rules:sectionizing:"
;;;  Version:   1.2  October 1991

;; initiated in August 1990
;; 1.1 (2/15 v1.8.1)  Modified to bring up to date with WN format.
;; 1.2 (10/27 v2.0) Gutted it. 

(in-package :CTI-source)


(defun establish-text-body-analysis-properties ()
  (setq *newline-is-a-word* nil)
  (turn-on-paragraph-detection))

