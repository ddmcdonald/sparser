;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$

;;;    File: "loader"
;;;  Module: "grammar/model/sl/checkpoint/
;;; version: September 2009

;; Initiated 4/7/09, updated through 8/13/09. 9/18/09 added post-processing

(in-package :sparser)

(when *call-signs*
  (gload "ckpt;vocabulary")
  (gload "ckpt;adjectives")
  (gload "ckpt;rules")
  (gload "ckpt;post-processing"))

