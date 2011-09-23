;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$

;;;    File: "loader"
;;;  Module: "grammar/model/sl/ambush/
;;; version: August 2007

;; Initiated 7/16/07. Added lots of stub files 8/1.

(in-package :sparser)

(when *call-signs*
  (gload "ambush;call-signs")
  (gload "ambush;protocols")
  (gload "ambush;checkpoints")
  (gload "ambush;contact")
  (gload "ambush;perimeter")
  (gload "ambush;munitions")
  (gload "ambush;casualties")
  (gload "ambush;misc"))
