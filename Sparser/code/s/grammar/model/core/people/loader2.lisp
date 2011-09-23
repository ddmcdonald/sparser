;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1997 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id$
;;;
;;;     File:  "loader"
;;;   Module:  "model;core:people:"
;;;  version:  2.2 December 2007

;; bumped to 2 6/8/93 v2.3 carrying forward directory and a few file names
;; from set initiated 11/90 and bumped again 4/24/91 v1.8.4 and 10/12/92 v2.3,
;; but now with a completely different implementation based on Krisp.
;; 2/9/94 added [printers], moved dossiers to that directory
;; 2.1 (4/1) bumped [names] to 1
;; 2.2 (7/1) moved [interior rules] to dossiers.
;;     (4/12/95) added [names to people]
;;     (12/27/07) added [kinds]

(in-package :sparser)

(gload "people;object")
(gload "people;names1")
(gload "people;prefixes2") ;; e.g. "Mr."
(gload "people;versions1") ;; e.g. "Jr."
(gload "people;printers")
(gload "people;names to people")
(gload "people;kinds")

#| in dossiers;
  (gload "dossiers;person prefixes")
  (gload "dossiers;person versions")
  (gload "dossiers;person interior rules")
  (gload "dossiers;person exterior rules") |#

