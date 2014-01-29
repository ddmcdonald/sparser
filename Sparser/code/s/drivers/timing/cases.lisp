;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1994,2011-2014 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "cases"
;;;   Module:  "drivers;timing:"
;;;  Version:   January 2014

;; initiated 2/91. 10/3/07 folding in some items from other test files and
;; adding more fixed strings to test. 6/17/11 Lowercased the "An" in *iraqi-
;; girl* to avoid yet-to-be-debuged PNF problem. 1/27/14 fixed *100-iraqi-girl*
;; to not be aaaa's

(in-package :sparser)

#| See testing code in these files:
 [analyzers;tokenizer:testing]
     Speed tests for the tokenizer and other lowerlevel actions.
     Some test strings like *2k-the*
 [analysers;char-level:testing]
     Speed tests for buffer-filling and test of buffer contents
     Includes minimal loop for testing the overhead.
|#

;;;------------------------------------------------------------------------
;;; variables tracked in the guts of the analysis for factoring the timing
;;;------------------------------------------------------------------------

(defvar *time-at-chart-level* 0)
;; Initialized and read in chart-based-analysis



;;;-----------------------
;;; Fixed strings to test
;;;-----------------------

(defparameter *20k-aaaa*
  (let ( accumulating-string )
    (dotimes (i 100)
      (setq accumulating-string
            (concatenate 'string
                         *200-aaaa*
                         accumulating-string)))
    accumulating-string ))

(defparameter *iraqi-girl* ;; 45 tokens
"an Iraqi girl who died on Jan. 17 in the Kurdish city of Sulaimaniya, had bird flu, Iraq's health minister said on Monday, despite the World Health Organisation (WHO) having initially ruled that out.")

(defparameter *100-iraqi-girl*
  (let ( accumulating-string )
    (dotimes (i 100)
      (setq accumulating-string
            (concatenate 'string
                         *iraqi-girl*
                         accumulating-string)))
    accumulating-string ))


