;;; -*- Mode: Lisp; Syntax: Common-Lisp; -*-
;;;
;;;  MUMBLE-86: package

;;; Copyright (C) 1985, 1986, 1987, 1988  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2010-2023 David D. McDonald

;; Modified, 12/15/10 (ddm) to provides a location for packages and
;; exports to be defined across the whole system so that they can 
;; be available early before anything other than utilities have
;; been loaded. 11/19/13 Added lots more exports, done in the correct
;; style. 3/27/16 (afp) Simplified, renamed.

(defpackage :mumble
  (:use :common-lisp :ddm-util)
  (:shadow :labels :locative :number)
  (:nicknames :m)
  (:export :say :mumble :turn-on-tracker :turn-off-tracker))
