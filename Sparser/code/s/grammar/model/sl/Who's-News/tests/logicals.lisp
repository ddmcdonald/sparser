;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1991 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "logicals"
;;;   Module:  "model;sl:whos news:tests:"
;;;  version:  November 1991      system version 2.1

(in-package :CTI-source)


;; "Who's News;" is defined in "corpus;logicals"

(def-logical-pathname "typed;"      "Who's News;typed in:")
;; the directory was once organized like this -- it's one
;; flat file of articles now.
;(def-logical-pathname "batch #1;"   "typed;batch #1:")
;(def-logical-pathname "batch #2;"   "typed;batch #2:")
;(def-logical-pathname "batch #3;"   "typed;batch #3:")

(def-logical-pathname "wsj #1;"     "Who's News;batch #1:")

(def-logical-pathname "Dec90;"      "Who's News;December 1990:"
(def-logical-pathname "Dec 0;"      "Dec90;Section 0:")
(def-logical-pathname "Dec 1;"      "Dec90;Section 1:")
(def-logical-pathname "Dec 2;"      "Dec90;Section 2:")
(def-logical-pathname "Dec 3;"      "Dec90;Section 3:")

(def-logical-pathname "3/28;"       "Who's News;3/28/91:")

(def-logical-pathname "Feb91;"      "Who's News;Feb91:")
(def-logical-pathname "feb0;"       "Feb91;0:")
(def-logical-pathname "feb1;"       "Feb91;1:")
(def-logical-pathname "feb2;"       "Feb91;2:")
(def-logical-pathname "feb3;"       "Feb91;3:")

