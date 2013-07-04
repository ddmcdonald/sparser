;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2000,2011-2013 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "loader"
;;;   Module:  "model;core:time:"
;;;  version:  1.5 June 2013

;; mature recognition grammar 9/91 v1.9
;; 1.0 (12/7/92 v2.3) bumped everything to move it to the new semantics
;; Started complete rebuild 7/8/93 (trashing the recognition grammar)
;; 1.1 (9/19/93) started uncommenting the files as they were done
;; 1.2 (4/27/94) added [amounts] and  uncommented [age1]
;; 1.3 (5/24) moved the dossiers out to that loader
;;     (10/20) refurbished the files that had been commented out
;; 1.4 (9/27/99) Started reworking the design for psi so removed
;;      day-in-month and month-in-year and bumped dates to 2.
;; 1.5 (7/7/00) Bumped fiscal to 2 to rework them for psi. 7/8 bumped
;;      year. (8/27/08) Added time-of-day. (4/6/11) bumped phrases to 2.
;;    (6/12/13) added in seasons and citations.

(in-package :sparser)

(gload "time;object")
(gload "time;units1")
(gload "time;weekdays1")
(gload "time;months1")
(gload "time;years2")
(gload "time;time-of-day")
(gload "time;relative moments")
;(gload "time;day-in-month1")
;(gload "time;month-in-year1")
(gload "time;dates2")
(gload "time;season-year")
(gload "time;amounts")
(gload "time;phrases2")
(gload "time;anaphors1")
(gload "time;age1")
(gload "time;fiscal2")
(gload "time;seasons")

(gload "time;citations")



