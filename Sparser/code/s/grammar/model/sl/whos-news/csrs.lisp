;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "csrs"
;;;   Module:  "model;sl:whos news:"
;;;  version:  April 1991            v1.8.2

;; initiated in February 1991.  5/26/13 This is completely out of date,
;; but can be mineid from. Started deleting rules that now appear elsewhere.

(in-package :CTI-source)


;;;----------------
;;; name -> person
;;;----------------


(def-csr  name person  :left-context  job-event/pers!__!pers
  :referent (:find-or-make-object
             find-or-make/person right-edge))


(def-csr  name person  :right-context  job-event/pers!__
  :referent (:find-or-make-object
             find-or-make/person left-edge))

(def-csr  name person  :left-context  job-event/co!__!pers!title
  :referent (:find-or-make-object
             find-or-make/person right-edge))




(def-csr  name person   :right-context  comma-number
  :referent (:find-or-make-object
             find-or-make/person left-edge))

(def-csr  name person   :right-context  comma-age
  :referent (:find-or-make-object
             find-or-make/person left-edge))


(def-cfr comma-name ("," name)
  :referent (:daughter right-edge))

(def-csr  comma-name comma-person  :left-context  title
  :referent (:find-or-make-object
             find-or-make/person right-edge))


(def-csr  name person  :left-context  title/caps
  :referent (:find-or-make-object
             find-or-make/person right-edge))


;;;----------------
;;; name -> company
;;;----------------

;; (ryder)  "[title] at Avial, a Ryder subsidiary"
;;
(def-csr name subsidiary-co :right-context subsidiary
  :referent (:find-or-make-object
             find-or-make/company left-edge))


(def-csr name company  :left-context job-event/pers!__!co
  :referent (:find-or-make-object
             find-or-make/company right-edge))


(def-csr  name company   :right-context  comma-defCo
  :referent (:find-or-make-object
             find-or-make/company left-edge))

(def-csr  name company   :right-context  comma-ThisCo
  :referent (:find-or-make-object
             find-or-make/company left-edge))

(def-csr  name company   :right-context  comma-ThisSubsid
  :referent (:find-or-make-object
             find-or-make/company left-edge))

