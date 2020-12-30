;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1994,2015-2020 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "loader"
;;;    Module:   "objects;rules:cfr:"
;;;   Version:   December 2020

;; 4.0 (9/3/92 v2.3) Pushed the version on most of the files given the dramatic
;;       reworking of the indexing scheme, 9/6 broke out [construct] and
;;       [duplicates] from [define], 10/23 bumped [construct] to 1.
;; 4.1 (12/21) ordered duplicates before multiplier, form, and define so that
;;       the flags it defines are loaded before they're referenced.
;; 4.2 (3/17/94) bumped [dotted] to 5
;;     (12/30/94) added [syntax rules]
;; 4.3 (5/19/15) bumped [polywords] to 2.

(in-package :sparser)

(defvar *phrase-structure-rule-package*
  (or (find-package :rule)
      (make-package :rule :nicknames '("RULES") :use nil))
  "Package for the symbols used for convience in debugging rules.")

(lload "cfr;object")
(lload "cfr;dotted")
(lload "cfr;polywords")
(lload "cfr;printers")
(lload "cfr;catalog")
(lload "cfr;lookup")
(lload "cfr;duplicates")
(lload "cfr;multiplier")
(lload "cfr;form")
(lload "cfr;construct")
(lload "cfr;form-rule form")
(lload "cfr;syntax rules")
(lload "cfr;grok-rules")
(lload "cfr;define")
(lload "cfr;delete")
(lload "cfr;knit in")

