;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1997  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "grammar;rules:DA:"
;;;  Version:  January 1996

;; initiated 10/27/94 v2.3.  Gave it substantial content 5/5/95.
;; 1/2/95 added [stranded comma], which is just a CA-driven rule,
;; but goes here conceptually.

(in-package :sparser)

(gload "da-rules;aux+morph")
(gload "da-rules;stranded comma")

