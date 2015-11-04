;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id: loader1.lisp 176 2009-04-27 16:57:42Z dmcdonal $
;;;
;;;     File:  "loader"
;;;   module:  "drivers;sinks:"
;;;  Version:  April 2009

;; 1.1 (8/10/94) flushed [article windows] as made redundant by the workbench
;;   (4/27/09) copied in export from Answer and added return-value.

(in-package :sparser)

(lload "sink-drivers;articles")
(lload "sink-drivers;records")
(lload "sink-drivers;core")
(lload "sink-drivers;export")
(lload "sink-drivers;return-value")

