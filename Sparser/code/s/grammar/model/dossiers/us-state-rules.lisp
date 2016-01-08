;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "U.S. State rules"
;;;   Module:  "model;dossiers:"
;;;  version:  April 1995

;; initiated 4/30/95

(in-package :sparser)


;;;--------------------------
;;; context-marking prefixes
;;;--------------------------

(def-cfr comma-us-state ("," us-state)
  :form appositive-prefix
  :referent (:daughter right-edge))

