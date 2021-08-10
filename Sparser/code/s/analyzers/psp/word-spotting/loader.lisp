;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;;
;;;      File: "loader"
;;;    Module: "analyzers;psp:word-spotting:"
;;;   Version:  August 2021

;; Initiated 5/18/21

;; Spotting motif-triggers also involves motif-key-words in
;; dossiers and a file of categories in model/sl/motifs/basic-categories

(in-package :sparser)

(lload "spot;driver")
(lload "spot;object")
(lload "spot;actions")
(lload "spot;analysis")
(lload "spot;context")
;; (lload "spot;tests")
