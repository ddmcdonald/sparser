;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2021 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader 2"
;;;   Module:  "model;core;kinds;"
;;;  version:  October 2021

;; initiated 3/18/13 to hold general rules over kinds that can be stated earlier
;; because all of the categories involved wouldn't have been defined yet.
;; 9/22/15 added assign-lemmas. 

(in-package :sparser)

(gload "kinds;relationships")
(gload "kinds;rules-over-referents")

