;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "objects;chart:"
;;;  Version:   1.3  November 1990

;; initiated 8/90
;;;  Changelog:  Version 1.0 supported only examination of terminals
;;;    1.1 supports active-edge parsing.
;;;    1.2 propagates changes to the Edge-vector object
;;;    1.3 reflects flushing the parameters file and putting its
;;;        contents into array
;;;  (1/15/92, v2.2)  bumped [positions] to 1.

(in-package :sparser)

;; (lload "positions;parameters")
(lload "positions;positions1")
(lload "positions;array2")
(lload "positions;generic")
(lload "positions;display")

