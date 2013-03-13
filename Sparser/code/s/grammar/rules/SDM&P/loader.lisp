;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; Copyright (c) 2013 David D. McDonald all rights reserved
;;;
;;;      File: "loader"
;;;    Module: "grammar;rules:SDM&P:
;;;   Version: March 2013

;; Initiated 2/9/07. Added [infer-categories] 9/4. Added [text-relations]
;; on 3/9/12. 

(in-package :sparser)

(gload "SDM&P;create-categories")
(gload "SDM&P;infer-categories")
(gload "SDM&P;text-relations")



