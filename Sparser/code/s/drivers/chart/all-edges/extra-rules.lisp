;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "extra rules"
;;;   Module:  "drivers;chart:all edges"
;;;  version:  1.0  August 1991

;; initiated  8/13 v1.9

(in-package :sparser)


(def-cfr and/title ("and" title))
(def-cfr title     (title and/title))

