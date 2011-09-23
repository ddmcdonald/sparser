;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "units"
;;;   Module:  "objects;units-labels:"
;;;  Version:  July 1992

;; initiated 7/16/92 v2.3

(in-package :sparser)


#| Provides a common data type for all the objects that Sparser
   has, though (7/92) only so far incorporated into categories and
   the types of the new representation system.  |#


(defstruct unit
  plist )

