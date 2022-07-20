;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011-2012,2016,2022  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   Module:  model:sl:military:
;;;  version:  July 2022

;; initiated 7/19/11. Moved in files from Answer 11/24/12.
;; 4/5/16 Moved ranks early to get military-rank defined earlier.

(in-package :sparser)

(gload "mil;ranks")
(gload "mil;forces")
(gload "mil;military-units")
(gload "mil;authorities")

(gload "mil;airports")
(gload "mil;airplanes")

