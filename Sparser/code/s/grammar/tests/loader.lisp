;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1997  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id: loader.lisp 110 2007-08-27 18:36:52Z dmcdonal $
;;;
;;;     File:  "loader"
;;;   Module:  "grammar;tests:"
;;;  version:  August 2007

;; initiated 11/12/93 v2.3.  Added [timing] 1/6/95. Redid calls as 
;; logicals 3/18/95. Added [edge-tests] 8/21/07

(in-package :sparser)

;; [parsing] is loaded by the master loader after the analysis
;;   files are in

(gload "gr-tests;workspace")
(gload "gr-tests;rule deletion")
(gload "gr-tests;edge resource")
(gload "gr-tests;timing")
(gload "gr-tests;edge-tests")

