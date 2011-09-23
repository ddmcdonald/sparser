;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1997  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "grammar;rules:paragraphs:"
;;;  Version:  0.5 August 1994

;; 0.1 (10/25/92 v2) Bumped the versions to reflect the substantial
;;     changes because of the redesign of section markers.
;; 0.2 (1/25/94 v2.3) flushing out the deadwood and adding [data]
;; 0.3 (4/24) put the section file under a gate
;; 0.4 (5/3) added [scrolling]
;; 0.5 (8/17) bumped files to accomodate shift to section objects

(in-package :sparser)

(gload "para;object2")

(gate-grammar *recognize-sections-within-articles*
  (gload "para;section rule2"))

(gload "para;data")

(unless *nothing-Mac-specific*
  (gload "para;scrolling"))

