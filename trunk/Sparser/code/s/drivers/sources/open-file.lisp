;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "open file"
;;;   Module:  "drivers;sources:"
;;;  Version:   February 1991

(in-package :sparser)

(export 'Analyze-text-from-open-file)


(defun analyze-text-from-open-file (file-stream)
  (establish-character-source/open-file file-stream)
  (analysis-core))

