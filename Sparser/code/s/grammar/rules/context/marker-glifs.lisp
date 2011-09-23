;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "marker glifs"
;;;   Module:  "grammar;rules:context:"
;;;  Version:  May 1994

;; initiated  5/12/94 v2.3

(in-package :sparser)


;;;------
;;; dash
;;;------

(def-cfr dash ("-" "-"))

(assign-bracket dash ].phrase )
(assign-bracket dash phrase.[ )


#| -- See code in rules:FSAs:hyphen !! -- |#

