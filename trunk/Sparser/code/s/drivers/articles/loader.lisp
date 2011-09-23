;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "drivers;articles:"
;;;  Version:  0.1 December 1993

;; broken out from drivers;sources 9/24/93 v2.3
;; 0.1 (12/27) flushing [article] & [doc stream] as redundant with what's in
;;      drivers;sources, adding [style]

(in-package :sparser)

(lload "articles;style")

;; Not used, but worth canibalizing
;;(lload "articles;batch")

