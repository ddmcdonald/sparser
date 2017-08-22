;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   Module:  "model;core:mid-level:"
;;;  version:  August 2017

;; Initiated 12/3/15

(in-package :sparser)

(when *locations-core*
  (gload "mid-level;attributes")) ;; used in object

(gload "mid-level;ontology") ;; includes object as used in blocks world

#+mumble(gload "mid-level;interlocutor")

(gload "mid-level;discourse")

(gload "mid-level;relations")

(gload "mid-level;subcat-patterns")
(gload "mid-level;verbs")
(gload "mid-level;things")

(gload "mid-level;cars")
