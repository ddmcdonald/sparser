;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;; 
;;;     File:  "initial region"
;;;   Module:  "grammar;rules:sectionizing:"
;;;  Version:   1.2  October 1991

;; initiated in August 1990
;; 1.1  (4/11 v1.8.2)  Modified Establish-properties-for-initial-region
;;      to call a special setup routine for the header
;; 1.2  (10/27 v2.0) gutted it in anticipation of real style objects

(in-package :CTI-source)


(defun establish-properties-for-initial-region ()
  ;; called by Per-article-initializations, permiting this to
  ;; vary between articles, rather than just runs -- but that's
  ;; ok since there isn't a proper notion of a "run" yet.

  ;; reset the shallow-binding buffer
  ;(setq *toplevel-parsing-protocol* nil)

  )

