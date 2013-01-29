;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013 David D. McDonald all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved

;;;      File: "loader"
;;;    Module: "analyzers;SDM&P:
;;;   Version: January 2013

;; Initiated 2/9/07. Bumped scan to 1 to completely revamp it 1/21/13. Added
;; [form-march] 1/23/13. 

(in-package :sparser)

(lload "do SDM&P;scan1")
(lload "do SDM&P;form-march")
(lload "do SDM&P;traces")

