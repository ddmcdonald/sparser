;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   Module:  "model;core:names:people"
;;;  version:  0.0 December 1992

;; broken out from time;age 12/15/92 v2.3

;; Not loaded anymore. Functionality has been distributed
;; mostly to realizations on the object. Also see the age file
;; in core/time/ (5/13)

(in-package :sparser)


(def-cfr comma-number ("," number))

(def-cfr person (person comma-number)
  :referent (:daughter left-edge))

(def-cfr comma-age ("," age))

(def-cfr person (person comma-age)
  :referent (:daughter left-edge))


(def-cfr person (person age)
  :referent (:daughter left-edge))

(def-cfr person (age person)
  :referent (:daughter right-edge))


(def-csr name person :left-context age
  :referent (:find-or-make-object .
              (find-or-make/person right-edge)))

(def-csr name person :right-context age
  :referent (:find-or-make-object .
              (find-or-make/person left-edge)))

(def-csr name person :right-context comma-age
  :referent (:find-or-make-object .
              (find-or-make/person left-edge)))

