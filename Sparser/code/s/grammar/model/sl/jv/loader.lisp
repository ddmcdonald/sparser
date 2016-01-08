;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991,1992  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   Module:  "grammar;model:sl:jv:"    ("joint ventures")
;;;  version:  August 1992    v2.3

(in-package :sparser)

(gate-grammar *gl*
  (lload "jv;standins")
  (lload "gl entries;establish")  ;; only does "established"
  (lload "gl entries;venture")    ;; only word is "venture"
  (lload "jv;make jv")
  (lload "jv;event/agent"))

(gate-grammar *jv/relations-via-categories*
  (lload "jv;verbs")
  (lload "jv;capitalization")
  )

(gate-grammar *jv/phrases*
  ;(lload "jv;patches")
  )

(gate-grammar *sgml*
  (lload "jv;headers"))

