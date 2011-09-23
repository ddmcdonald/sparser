;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992,1993  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "objects;words:"
;;;  Version:  3.2 October 1992

;; Changelog: 
;; 1.1 (starting 7/25/90)
;;     Minor adjustment to accomodate the new, two buffer design for
;;     the character buffers.
;; 1.2 (v1.5) puts Establish-unknown-word under a switch
;; 1.3 (12/12, v1.6)  Catches adjustments to the chart-level
;;     design for polywords [polywords2, lookup3]
;; 1.4 (12/14, v1.6)  Installs :ignore unknown words correctly
;;       [ "switch new1", constant1, "new words2" ]
;; 1.5 (12/17, v1.6)  Added routines over the word-lookup-buffer as
;;     part of getting *display-word-stream* into the tokenizer.
;;       [ lookup3 ]
;; 1.6 (10/22 v2.0) factoring out "labels": [object] -> 2
;; 1.7 (1/15/92 v2.2)  moved in the expr versions from forms; and
;;     moved the lookup code to chart;words:lookup:, bumped [lookup]
;;     to 3, [catalog] to 1
;; 3.0 (9/6 v2.3) bumped the version so that polywords could be treated
;;      with a different interning routine.
;; 3.1 (9/28) broke out the lookup subdirectory as its own call directly
;;      from the master-loader
;; 3.2 (10/5) bumped polyword-form having finally found a direct call to it
;; 3.3 (6/2/93) bumped [object] to change its definition to inherit from unit

(in-package :sparser)

;;--- package

(or (boundp '*word-package*)
    (defconstant *word-package*
                 (or (find-package :word)
                     (make-package :word
                                   :nicknames '()
                                   :use nil))))

;; This package is only used for the symbols used to
;; index word objects.  There is no code in it.


;;--- files

(lload "word-obj;object3")
(lload "word-obj;def form")
;(lload "word-obj;lookup3")
(lload "word-obj;catalog1")
(lload "word-obj;whitespace")
;(lload "word-obj;flush")
(lload "word-obj;resolve1")         ;; bumped for loader3

(lload "word-obj;polywords3")       ;; bumped for loader3
(lload "word-obj;polyword form1")   ;; bumped for loader3
(lload "word-obj;punctuation")
(lload "word-obj;spaces")
(lload "word-obj;whitespace")
(lload "word-obj;section markers")
(lload "word-obj;dummy words")

