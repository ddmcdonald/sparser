;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "miscl"                  ;; miscelaneous combinations
;;;   Module:  "model;core:titles:"     ;; headed on titles
;;;  version:  April 1992

;; initiated 4/19/92 v2.2

(in-package :CTI-source)


;;;-------------
;;; age + title
;;;-------------

;; "Kenneth L. Gregson, 60-year-old president and chief executive officer 
;;  of this hobbies and handicrafts concern"

(def-cfr title  ( age title )
  :form NP
  :referent (:daughter right-edge))

