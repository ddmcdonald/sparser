;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;; copyright (c) 1992,1993  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "runs"
;;;   Module:  "drivers;inits:"
;;;  Version:  1.5 September 1993

;; initiated September 1990
;; 1.1 (7/18 v1.8.6) Added explicit default settings
;; 1.2 (10/27 v2.0) moved to document-style objects
;; 1.3 (11/12 v2.0.1)  Added conditionalization so that there is the right
;;     minimum of behavior when Sparser is loaded without provisions for
;;     document sources.
;; 1.4 (6/26/92 v2.2) Conditionalized Minimal-setup to check for there
;;     already being a newline fsa.
;; 1.5 (9/24/93 v2.3) pulled an out-of-date NL routine from Minimal-setup

(in-package :sparser)


(defun setup-context-for-this-run ( &key source )
  (if (and *recognize-sections-within-articles*
           (boundp '*document-source*))
    (then      
      (when (null source)
        (setq source *document-source*))
      (if source
        (then
          (unless (typep source 'document-style)
            (break "Document source isn't a style object")))
        (else
          (minimal-setup))))
    (else
      (minimal-setup))))


(defun minimal-setup ()
  (unless *NewLine-FSA-in-use* ;; check for it already having a setting
    (setq *newline-is-a-word* nil) ;; NL is whitespace
    ))

