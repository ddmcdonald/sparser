;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "testing/file"
;;;   Module:  "analyzers;char-level:"
;;;  Version:  January 1995

;; 9/26/92 tweeked. 1/6/95 locations updated

(in-package :sparser)

;;;------------
;;; pathnames
;;;------------

(def-logical-pathname "test-files;" "timing;bankruptcy;eastern;")
(def-logical-pathname "one-line" "test-files;one-line")
(def-logical-pathname "short-file" "test-files;under-1k-chars")
(def-logical-pathname "body" "test-files;just-body")
(def-logical-pathname "article" "test-files;original-article")
