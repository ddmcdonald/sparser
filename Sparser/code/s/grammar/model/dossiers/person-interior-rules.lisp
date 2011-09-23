;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "person interior rules"        i.e. "Mr. Foo", but not
;;;   Module:  "model;dossiers:"                "Foo, 53 years old"
;;;  version:  March 2005

;; initiated 6/8/93 v2.3.  Began to flesh it out 7/1/94. Added csr 11/13/95.
;; 3/16/05 Added variant csr

(in-package :sparser)


;;;----------
;;; prefixes
;;;----------

#|   Semantically, these should set the 'standard-prefix' field in the
person-name of the person, //// but since we can't see that unit at this
point in the development of the reference system, we'll do nothing rather
than set up a kluge.  |#

(def-cfr person (person-prefix person)
  ;; :form ????
  :referent (:daughter right-edge))


(def-csr  name person
  :left-context person-prefix
  :form np
  :referent (:function interpret-name-as-person right-edge))

(def-csr  name-word person
  :left-context person-prefix
  :form np
  :referent (:function interpret-name-as-person right-edge))
