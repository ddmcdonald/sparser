;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2018-2019 SIFT, LLC.
;;;
;;;     File:  "loader"
;;;   Module:  "grammar/model/sl/music/"
;;;  version:  April 2019

;; Initiated 8/30/18 to work up model for Donya Quick's Museci sentences

(in-package :sparser)

(gload "music;objects")

;; moved into load-the-grammar so it can be at the end
;;(gload "music;methods")

;; moved to dossiers;verbs 12/17/18
#+ignore(gload "music;verbs")
