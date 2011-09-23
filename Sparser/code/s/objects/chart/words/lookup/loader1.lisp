;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "objects;words:lookup"
;;;  Version:  1.0 September 1992

;; initiated 1/16/92.  (2/6 v2.2) bumped [new words] to 3 to sharpen the
;; treatment of unknown words.
;; 1.0 (9/28 v2.3) bumped to accomodate changes to the tokenizer

(in-package :sparser)

(lload "lookup words;buffer")
(lload "lookup words;find")
(lload "lookup words;canonical")
(lload "lookup words;properties")
(lload "lookup words;capitalization")
(lload "lookup words;morphology")

(lload "lookup words;switch new1")
(lload "lookup words;constant1")
(lload "lookup words;new words4")   ;; bumped for 1 

(lload "lookup words;testing")

