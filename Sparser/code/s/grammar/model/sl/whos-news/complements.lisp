;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "complements"
;;;   Module:  "model;sl:whos news:"
;;;  version:  February 1991      system version 1.8.1

;; initiated 2/19

(in-package :CTI-source)

#|  Infinitive complements done by composing two base verb forms  |#


(def-cfr job-event/pers!__!pers
         (job-event/pers!__!title  job-event/pers!__!pers)
  :form mvb
  :referent (:daughter right-edge))

