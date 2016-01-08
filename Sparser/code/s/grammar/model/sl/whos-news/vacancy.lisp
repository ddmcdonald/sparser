;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "vacancy"
;;;   Module:  "model;sl:whos news:"
;;;  version:  April 1991      system version 1.8.2

;; initiated 4/10

(in-package :CTI-source)


#|  a set of syntactic rules that cover the presenting set of citations
  that talk about vacant positions and events over them, without trying
  to give the objects or events any denotations.    |#

;;;---------
;;; objects
;;;---------

(def-cfr vacancy ("vacancy"))

(def-cfr vacancy ("a" vacancy))


;;;--------
;;; events
;;;--------

(def-cfr vacancy-event ("filling" vacancy))


;;;---------------------------------
;;; connections to job events, etc.
;;;---------------------------------

(def-cfr comma-vacancy ("," vacancy-event))

(def-cfr job-event (job-event comma-vacancy)
  :referent (:daughter left-edge))

