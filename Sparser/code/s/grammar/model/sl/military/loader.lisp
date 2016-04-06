;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011-2012,2016  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   Module:  "model:sl:military:"
;;;  version:  April 2016

;; initiated 7/19/11. Moved in files from Answer 11/24/12.
;; 4/5/16 Moved ranks early to get military-rank defined earlier.

(in-package :sparser)

(gload "mil;ranks")
(gload "mil;forces")
(gload "mil;military-units")
(gload "mil;authorities")

