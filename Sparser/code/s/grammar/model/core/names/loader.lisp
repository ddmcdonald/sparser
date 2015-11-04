;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1997,2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   Module:  "model;core:names:"
;;;  version:  2.3 March 2013

;; 1.0 (10/14/92 v2.3) shadowing old version to redesign the name fsa
;; 1.1 (11/9) bumped initials and single letters to 2, names to 4, 
;;      added abbreviations.
;; 1.2 (5/15/93) added [fsa:driver, classifier, scan, record] flushed the 
;;      files that were grossly out of date
;; 1.3 (6/2) moved [transitions] and [classifications] to [loader-2d] so
;;      they could be loaded at the end of the grammar and not be hassled
;;      by the category references they make
;; 1.4 (11/1) changed the order so fsa routines could define generic states
;; 1.5 (1/27/94) broke [do transitions] our from [classify]
;; 2.0 (4/1) bumped [classify], [do transitions], and [record] and added [examine]
;;      for new classification routine.  10/12 added [rules]
;; 2.1 (1/4/95) moved in [fsa;initials]
;; 2.2 (1/23) broke [simple classify] out of [classify1]
;;     (3/18) put in logical for fsa
;; 2.3 (4/12) bumped [scan] to 3
;;     (4/20) added [name words].  5/29 added [lists]
;;     (7/11/96) added [parens after name]
;;     (3/28/13) added [gofers-for-examine]

#| Dropped loading of abbreviations somewhere in late 1992.
See rules/FSAs/abbreviations.lisp
|#

(in-package :sparser)

(gload "names-model;object")
(gload "names-model;single letters2")
(gload "names-model;name words")
(gload "names-model;lists")

(gate-grammar *initials*
  (gload "names-model;initials2")
  (gload "fsa;initials2"))

(gload "names;printing")

(gload "names-fsa;driver")
(gload "names-fsa;scan3")
(gload "names-fsa;resume scan")
(gload "names-fsa;classify1")
(gload "names-fsa;simple classify")
(gload "names-fsa;transition rules")
(gload "names-fsa;do transitions1")
(gload "names-fsa;embedded parse")
(gload "names-fsa;record1")
(gload "names-fsa;gofers-for-examine")
(gload "names-fsa;examine")

(gload "names-model;rules")
(gload "names-model;parens after name")

