;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992,1993  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "loader"
;;;    Module:   "grammar;forms:"
;;;   Version:   7.12 December 1993

(in-package :sparser)

;; changelog:
;;   1.1  reflects continued development across a release
;;   1.2  Adding deletion routines, modifying some files to provide
;;        better printers, cfr and csr forms
;;   1.3  Added file for generalized delete routine analogous to
;;        resolve, but operating over objects.
;;   1.4  Propagates depletion of cfr into the cfr directory
;;   1.6  (12/12)  Catches change to treatment of polywords as an
;;        object.  Crossing the rubicon to henceforth always do
;;        them in the chart, but with an interned object to check
;;        the rules against [polyword4, resolve1]
;;   1.7  (10/19, v2.0) Added [pair interiors[ and [SGML],
;;        10/21 bumped [sectionizing] to 2.
;;   1.8  (1/15/92 v2.2)  pulled out the expr material from the various
;;        kinds of words, leaving only the def-form proper.
;;        (5/15 v2.2) bumped sectionizing to 3
;;        (6/18) added [context variables]
;;   1.9  (7/16 v2.3) bumped this file to 7 and [categories] to 1
;;        (9/3) added [form rules]
;;   7.10 (7/16/93) pulled the generic routines to their own directory
;;   7.11 (9/24) added some gates
;;   7.12 (12/7) added [header labels]. (12/27) added [style]

(lload "forms;words")
(lload "forms;polyword4")
(lload "forms;spaces1")
(lload "forms;punctuation1")
(lload "forms;context variables")
(lload "forms;categories1")
(lload "forms;cfrs4")
(lload "forms;csrs1")
(lload "forms;style")

(gate-grammar *recognize-sections-within-articles*
  (lload "forms;sectionizing3")
  (lload "forms;header labels"))

(unless (eq *loader-mode* :just-the-all-edges-parser)
  (lload "forms;form rules")
  (lload "forms;pair interiors"))

