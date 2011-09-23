;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   Module:  "model;core:companies:"
;;;  version:  2.1 February 2005

;; 0.1  (4/24 v1.8.4)  Bumped the versions of files involving abbreviations
;;      or polywords: inc, corp.
;; 0.2  (5/10 v1.8.5) broke out the subdirectories
;; 1.0 (10/12/92 v2.3) startings to completely redo everything
;; 1.1 (5/22/93) continued the process, added [object], [kind of company]
;;      [inc terms], and dossiers for them
;; 1.2 (10/29) added generic co words
;; 1.3 (1/18/94) added grammar modules. (3/15) adjusted them a bit
;; 1.4 (4/1) bumped [names] to 2
;;     (9/28) added [descriptor]. 10/17 bumped [subsidiary].  11/23 added [printing]
;;     (4/12/95) added [names to companies]  4/30 bumped [non-kind co words]
;; 2.0 (3/18/00) Started bumping everything into a lattice-point treatment.
;; 2.1 (2/11/05) Lattice-point treatment seems bad a-prior, so reviving the files

(in-package :sparser)

(gate-grammar *company-core*
  (gload "companies;object1")
  (gload "companies;names2")
  (gload "companies;inc terms")
  (gload "companies;non-kind co words1"))

(gate-grammar *kinds-of-companies*
  (gload "companies;kind of company")
  (gload "companies;descriptor"))

(gate-grammar *subsidiaries*
  (gload "companies;subsidiary1"))

(gate-grammar *company-core*
  (gload "companies;printing")
  (gload "companies;rules1")
  (gload "companies;names to companies"))

#| loaded from dossiers:
(gload "dossiers;kinds of companies")
(gload "dossiers;inc terms")
(gload "dossiers;generic co words")
(gload "dossiers;co indicating words")
(gload "dossiers;co actiity nominals-er")
(gload "dossiers;kinds of subsidiaries")
(gload "dossiers;co rules")
(gload "dossiers:known companies")  |#


#|  old and yet to be worked through and updated or flushed
(gload "companies;subsid:loader")
(gload "companies;ThisCo1")
(gload "companies;DefCo2")
(gload "companies;extend edge")
(gload "companies;CA1")
(gload "companies;complete")  |#
