;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$

;;;      File: "loader"
;;;    Module: "grammar;rules:SDM&P:
;;;   Version: September 2007

;; Initiated 2/9/07. Added [infer-categories] 9/4.

(in-package :sparser)

(gload "SDM&P;create-categories")
(gload "SDM&P;infer-categories")
