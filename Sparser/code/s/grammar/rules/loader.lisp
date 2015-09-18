;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1997,2014  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "grammar;rules:DA:"
;;;  Version:  October 2014

;; initiated 10/27/94 v2.3.  Gave it substantial content 5/5/95.
;; 1/2/95 added [stranded comma], which is just a CA-driven rule,
;; but goes here conceptually. 10/7/14 added [nospace-categories]
;; 10/25/14 added [sentence-fragments].

(in-package :sparser)

(gload "da-rules;aux+morph")
(gload "da-rules;stranded comma")
(gload "da-rules;sentence-fragments")

(gload "da-rules;nospace-categories")

