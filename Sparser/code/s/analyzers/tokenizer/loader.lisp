 ;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "analyzers;tokenizer:"
;;;  Version:  3.0 September 1992
 
;;  1.1  (7/25/90) Minor adjustment to accomodate the new, two buffer design for
;;       the character buffers.
;;  1.2  (v1.6 12/14)  Installing the :ignore unknown words feature correctly,
;;       including moving the point of printout for *display-word-stream* down
;;       to the level of Lookup-word-delimited-by-indicies. [ lookup1, utilities1 ]
;;  1.3  (v1.6, 12/17)  Moved *display-word-stream* trace back to Next-token,
;;       [ "next token1". "token FSA2" ]
;;  1.4  (v1.8.1  2/7)  Completely redesigned Tokens-in-short-string/no-whitespace
;;       in order to cure the premature eos bug.  saved the old version:
;;       [ utilities1 -> 2 ]
;;  1.5  (v2.0 10/31) moved in [NL buffer] from fsa
;;  1.6  (v2.2 1/14) bumped [next token] to 2
;;  3.0  (9/15 v2.3) bumped version for overhaul to array-dispatch scheme

(in-package :sparser)

(lload "tokens;alphabet fns")  ;; new
(lload "tokens;state2")        ;; bumped
(lload "tokens;punctuation")   ;; new
(lload "tokens;caps fsa")      ;; new
(lload "tokens;token FSA3")    ;; bumped

(lload "tokens;lookup2")       ;; bumped
(lload "tokens;next token3")   ;; bumped
(lload "tokens;NL buffer")     ;; upstream -- unchanged

(lload "tokens;testing1")

;; logically part of this module but loaded from master loader
;; after all of the objects code and the word definition and
;; punctuation files have been loaded
;;   "tokens;alphabet"  ;; new

