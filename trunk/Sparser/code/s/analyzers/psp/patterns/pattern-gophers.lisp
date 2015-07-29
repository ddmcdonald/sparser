;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2015  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "pattern-gophers"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  July 2015

;; initiated 12/4/14 breaking out the patterns from uniform-scan1.
;; 4/15/15 modified resolve-hyphen-between-two-words to ignore syntax
;;  or form rules. 4/24/15 Debugged confustion in order of slash positions.
;; 5/15/15 Sited the handling of edges within patterns here for want of
;;  a better place. 
;; 5/30/2015 catch error caused by undefined words in resolve-hyphen-between-three-words before they get to make-hyphenated-triple
;; 6/27/2015 more informative error message in resolve-hyphen-between-two-terms when the right element is a word, not an edge
;; Moved out code to hyphen-patterns, and to colon-patterns 7/28/15

(in-package :sparser)








    

