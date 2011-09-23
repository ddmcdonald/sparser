;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2003-2005  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "load"
;;;    Module:   "objects;export:"
;;;   version:   February 2005
;;;
;;; This file loads all the code involved with exporting (serializing as XML)
;;; various data structures within Sparser. It loads after all of the objects
;;; do. See the-Master-loader

;; Initiated April 2003
;; 2/1/05 Fixed typos that kept it from loading

(lload "objects;export:common")
(lload "objects;export:etf")
(lload "objects;export:mumble-grammar")
