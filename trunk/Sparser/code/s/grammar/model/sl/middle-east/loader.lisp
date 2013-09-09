;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "loader"
;;;    Module:   "sl;middle-east"
;;;   version:   September 2013

;; initiated 5/23/13. Added [titles] 7/17/13. [martyrdom] 7/22/13.
;; 9/3/13 broke out [months], added [academics]

(in-package :sparser)

(gload "mideast;named-entities")
(gload "mideast;titles")
(gload "mideast;martyrdom")
(gload "mideast;months")
(gload "mideast;academics")
