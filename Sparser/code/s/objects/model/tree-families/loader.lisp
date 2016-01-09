;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1997 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id$
;;;
;;;     File:  "loader"
;;;   Module:  "objects;model:tree-families:"
;;;  version:  1.1 July 2009

;; initiated 8/4/92. Bumped [subrs] 10/14/94 to save the original treatment.
;; 2/22/95 added [postprocessing].  6/22/95 bumped [subrs] again
;; 1.0 (12/6/97) bumped the whole loader to accomodate conditioned loading
;;      of lattice points. Incremented rdata, object, driver, form to 1.  
;;      Note that postprocessing has move to [grammar;rules:tree-families:]
;; 1.1 (7/24/09) Conditionalizing the load of the instantiation routines
;;      to handle fan-out from change to lexicalized variables.

(in-package :sparser)

(lload "tf;object")
(lload "tf;form")
(lload "tf;def form")
(lload "tf;driver")
(lload "tf;subrs")
(lload "tf;rdata")

