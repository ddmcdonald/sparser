;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1994,2015 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "loader"
;;;    Module:   "objects;rules:cfr:"
;;;   Version:   4.3 May 2015

;; 4.0 (9/3/92 v2.3) Pushed the version on most of the files given the dramatic
;;       reworking of the indexing scheme, 9/6 broke out [construct] and
;;       [duplicates] from [define], 10/23 bumped [construct] to 1.
;; 4.1 (12/21) ordered duplicates before multiplier, form, and define so that
;;       the flags it defines are loaded before they're referenced.
;; 4.2 (3/17/94) bumped [dotted] to 5
;;     (12/30/94) added [syntax rules]
;; 4.3 (5/19/15) bumped [polywords] to 2.

(in-package :sparser)

;; package for the symbols used for convience in debugging rules

(or (boundp '*phrase-structure-rule-package*)
    (defconstant *phrase-structure-rule-package*
                 (or (find-package :rule)
                     (make-package :rule
                                   :nicknames '("RULES")
                                   :use nil))))

(lload "cfr;object1")
(lload "cfr;dotted5")
(lload "cfr;polywords2")
(lload "cfr;printers1")
(lload "cfr;catalog")
(lload "cfr;lookup5")
(lload "cfr;duplicates")
(lload "cfr;multiplier3")
(lload "cfr;form6")
(lload "cfr;construct1")
(lload "cfr;form-rule form")
(lload "cfr;syntax rules")
(lload "cfr;define5")
(lload "cfr;delete4")
(lload "cfr;knit in3")

