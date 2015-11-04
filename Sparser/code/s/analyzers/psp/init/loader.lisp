;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "analyzers;psp:init:"
;;;  Version:  1.0 October 1992

;; initiated 10/90
;; 1/16/92 moved in replacement init routine
;; 1.0 (10/5 v2.3) bumped to shadow changes to initializations prompted
;;      by the new tokenizer

(in-package :sparser)

(lload "init chart;init chart1")
(lload "init chart;printer1")

