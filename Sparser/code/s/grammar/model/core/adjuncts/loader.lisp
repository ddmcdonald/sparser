;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1997  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "loader"
;;;    Module:  "grammar;model:core:adjuncts:"
;;;   version:  June 1996

;; initiated 5/25/94 v2.3 merging files from next level down. 6/25/96 added
;; gate around the autodef'inition

(in-package :sparser)


;;;-------------------------------------------------------------------
;;; autodef for the whole set (since they don't have a common parent)
;;;-------------------------------------------------------------------

(unless (or *just-note-changed-files*
            *copy-file*)
  (define-autodef-data 'modifier
    :display-string "modifier"
    :not-instantiable t ))


;;;-------------
;;; the modules
;;;-------------

(gate-grammar *approximators*
  (gload "approx;object"))

(gate-grammar *frequency*
  (gload "frequency;object")
  (gload "frequency;aux rules"))

(gate-grammar *sequencers*
  (gload "sequence;object"))

