;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   Module:  "model;core:mid-level:"
;;;  version:  September 2016

;; Initiated 12/3/15

(in-package :sparser)


(gload "mid-level;ontology")

#+mumble(gload "mid-level;interlocutor")
(gload "mid-level;discourse")

(gload "mid-level;relations")

(defun isr-required-categories ()
  (gload "mid-level;cars"))
