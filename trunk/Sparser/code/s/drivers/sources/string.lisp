;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990-1991  Content Technologies Inc.
;;; copyright (c) 1992,2013 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "string"
;;;   Module:  "drivers;sources:"
;;;  Version:   September 2013

;; Created February 1991 or earlier
;; 5/1/13 Added section and paragraph initialization that will not be
;;  in place in the normal use of this form via the abbreviation p.
;;  Might be overkill, but we don't want anything inhibited. 9/23/13
;;  added paragraph initialization

(in-package :sparser)

(export 'analyze-text-from-string)


(defun analyze-text-from-string (string)
  (when *recognize-sections-within-articles* ;; grammar module
    (initialize-article-resource)
    (initialize-section-resource)
    (initialize-paragraph-state)
    (begin-new-article :name 'string-run)
    (begin-new-paragraph (position# 1)))
  (when *note-text-relations*
    (initialize-text-relationships))
  (establish-character-source/string string)
  (analysis-core))

