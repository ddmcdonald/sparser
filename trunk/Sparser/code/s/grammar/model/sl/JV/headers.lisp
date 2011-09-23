;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "headers"
;;;   Module:  "grammar;model:sl:jv:"    ("joint ventures")
;;;  version:  June 1992    v2.2

;; initiated 6/19/92

(in-package :sparser)

#| Rules needed specifically for processing the information found in
   the headers of Tipster articles  |#


;;;----------------------------------
;;; copyright notice in the SO field
;;;----------------------------------

;; e.g. "Copyright (c) 1990 Kyodo News Service"

(def-cfr copyright ("Copyright"))

(def-cfr copyright ( copyright "(c)" ))

(def-cfr copyright ( copyright year ))

(def-cfr copyright ( copyright company )
  :referent (:daughter right-edge ))

