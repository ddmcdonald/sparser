;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "time"
;;;   Module:  "model;sl:whos news:"
;;;  version:  May 1991      system version 1.8.4

;; initiated 4/9, extended 5/7

(in-package :CTI-source)


;;;-----------------------------
;;; composition with job-events
;;;-----------------------------

(def-cfr job-event (job-event time)
  :referent (:daughter left-edge))



;;;------------------------------------------
;;; composition with fragments of job-events
;;;------------------------------------------

(def-cfr job-event/pers!__  (job-event/pers!__ time)
  :referent (:daughter left-edge))



;;;--------
;;; pieces
;;;--------

(def-cfr time (comma time)
  :referent (:daughter left-edge))


;;;----------------
;;; date effective
;;;----------------

(def-cfr time ("effective" time)
  :referent (:daughter right-edge))

(def-cfr time ("effective" weekday)
  :referent (:daughter right-edge))

(def-cfr time ("as" of-time))

