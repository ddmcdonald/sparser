;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993.1994.1995  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "loader"
;;;   Module:  "model;core:names:places:countries:"
;;;  version:  1.1 October 1993

;; initiated December 1990
;; 1.0 (10/12/92 v2.1) introducing new semantics
;; 1.1 (10/17/93 v2.3) moved the cases to dossiers.
;; (8/6/07) added relation.

(in-package :sparser)

(lload "countries;object1")
(lload "countries;relation")
(lload "countries;rules1")

