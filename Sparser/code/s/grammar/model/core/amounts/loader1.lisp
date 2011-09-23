;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2000 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   module:  "model;core:amounts:"
;;;  Version:  1.0 September 2000

;; 9/18/93 v2.3 redid everything to put in new semantics
;; 0.1 (10/27/94) reordered the files to get referential categories before they're used
;;     (12/22/95) added [amount-change verbs], [amount-change relationships] on 12/26.
;; 1.0 (9/6/00) Starting to bump files to get fresh copies for the psi-based model.

(in-package :sparser)

(gload "amounts;unit of measure1")
(gload "amounts;quantities")
(gload "amounts;measurements")
(gload "amounts;object1")
(gload "amounts;amount-change verbs")
(gload "amounts;amount-chg relation")

(gload "amounts;rules1")

#| loaded from dossiers
  (gload "amount-dossier;units of measure")
  (gload "amount-dossier;quantities")  |#

