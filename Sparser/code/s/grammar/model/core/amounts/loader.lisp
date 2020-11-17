;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2000,2016-2020 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   module:  "model;core:amounts:"
;;;  Version:  November 2020

;; 9/18/93 v2.3 redid everything to put in new semantics
;; 0.1 (10/27/94) reordered the files to get referential categories before they're used
;;     (12/22/95) added [amount-change verbs], [amount-change relationships] on 12/26.
;; 1.0 (9/6/00) Starting to bump files to get fresh copies for the psi-based model.
;; 5/17/16 added file for citations.


(in-package :sparser)

(gload "amounts;object")
(gload "amounts;unit of measure")
(gload "amounts;quantities")
(gload "amounts;measurements")
(gload "amounts;amount-change verbs")
(gload "amounts;amount-chg relation")

(gload "amounts;rules")

(gload "amounts;citations-for-amounts")

#| loaded from dossiers
  (gload "amount-dossier;units of measure")
  (gload "amount-dossier;quantities")  |#

