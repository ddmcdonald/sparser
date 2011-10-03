;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2011 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$

;;;      File: "loader"
;;;    Module: "grammar/model/sl/checkpoint/
;;;   version: September 2011

;; Initiated 4/7/09, updated through 8/13/09. 9/18/09 added post-processing.
;; 9/30/11 Removed adjectives file from load as too fine-grained as setup
;; to load all at once as opposed to the current model that does them
;; on-demand.

(in-package :sparser)

(when *call-signs*
  (gload "ckpt;vocabulary")
  ;; (gload "ckpt;adjectives")
  (gload "ckpt;rules")
  (gload "ckpt;post-processing"))

