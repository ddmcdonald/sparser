;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1998  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   Module:  "grammar;model:core:money:"
;;;  version:  1.0 July 1998

;; initiated 10/22/93 v2.3 from Tipster memo of 11/91
;; 4/19/95 added [printers]. 
;; 1.0 (7/20/98) Bumped objects and rules to use realizations rather than
;;      explicit cfrs.

(in-package :sparser)

(gload "money;objects1")
(gload "money;printers")
(gload "money;rules1")

#| in dossiers:
  (gload "money-dossier;denominations of money")
  (gload "money-dossier;currencies")  |#

