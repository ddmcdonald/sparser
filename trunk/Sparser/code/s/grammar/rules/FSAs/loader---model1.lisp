;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1997 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader - model"
;;;   Module:  "grammar;rules:FSAs:"
;;;  Version:  1.4 January 1995

;; 1.0 (10/2/92 v2.3) bumped because of changes to scan/assess
;; 1.1 (11/9) bumped abbreviations and initials to accomodate changes to
;;      the cap.seq. fsa
;; 1.2 (3/11/93) bumped polywords to cover dramatic rethreading
;; 1.3 (~6/93) pulled [polyword] out to main loader to fix problems with
;;      the load order
;;     (1/11/94) added [hyphen]. 3/28 gated it
;; 1.4 (1/4/95) moved load point of initials to [names;loader2]

(in-package :sparser)

(gate-grammar *abbreviations*
  (gload "fsa;abbreviations2"))

(gate-grammar *single-quote*
  (gload "fsa;single quote1"))

(gate-grammar *hyphen*
  (gload "fsa;hyphen"))

