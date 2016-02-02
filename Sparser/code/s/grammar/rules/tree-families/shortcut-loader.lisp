;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "shortcut-loader"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  February 2016

(in-package :sparser)

;; initiated 2/1/16 These are the operations that were incuded in
;; the tree-families directory even though they don't belong there.
;; Breaking them out lets them be loaded earlier.

(gload "tree-families;morphology")
(gload "tree-families;single words")
(gload "tree-families;postprocessing")

(gload "tree-families;abbreviation")
(gload "tree-families;shortcut mechanics")
(gload "tree-families;shortcut expansion")
(gload "tree-families;shortcut master")
(gload "tree-families;shortcuts")
