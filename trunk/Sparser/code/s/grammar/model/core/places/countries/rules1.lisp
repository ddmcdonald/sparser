;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "rules"
;;;   Module:  "model;core:names:places:countries:"
;;;  version:  1.0 October 1992

;; initiated December 1990, thought about in March, got first
;; context 10/2/91 v1.9
;; 1.0 (10/12/92 v2.1) introducing new semantics

(in-package :sparser)

#|
;;;------------------------------------------------
;;; extensions for combination into larger phrases
;;;------------------------------------------------

(def-cfr country ( "the" country )   ;; "the [United States]"
  :referent (:daughter right-edge))


(def-cfr for-country ("for" country)
  :referent (:daughter right-edge))

(def-cfr from-country ("from" country)
  :referent (:daughter right-edge))               |#

