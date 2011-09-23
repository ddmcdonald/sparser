;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "string"
;;;   Module:  "drivers;sources:"
;;;  Version:   February 1991

(in-package :sparser)

(export 'Analyze-text-from-string)


(defun analyze-text-from-string (string)
  (establish-character-source/string string)
  (analysis-core))

