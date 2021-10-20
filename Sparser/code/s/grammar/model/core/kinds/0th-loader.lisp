;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2018 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "0th-loader"
;;;   Module:  "model;core:kinds:"
;;;  version:  October 2018

;; Initiated 3/28/14 to allow the upper-model file to be decomposed
;; into more managable pieces.

;; This file is loaded very early in the process of loading the grammar.
;; It defines the categories needed by the next loader (1st-loader)
;; but have to waid for the tree-families to be loaded.

(in-package :sparser)

(gload "kinds;upper-model")
(gload "kinds;tense-aspect")
(gload "kinds;roles") ;; before substantive categories

