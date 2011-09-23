;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "rules"
;;;   Module:  "model;core:names:"
;;;  version:  May 1995

;; initiated 10/12/94. Added possessive rules 5/16/95.

(in-package :sparser)

;;;--------------------------------
;;; combinations with prepositions
;;;--------------------------------

(def-cfr of-name ("of" name)
  :form pp
  :referent (:daughter right-edge))



;;;-------------
;;; possessives
;;;-------------

(def-cfr name-apostrophe (name apostrophe-s)
  :form possessive
  :referent (:daughter left-edge))

(def-cfr name-apostrophe (capitalized-word apostrophe-s)
  :form possessive
  :referent (:daughter left-edge))

