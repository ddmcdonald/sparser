;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "retire"
;;;   Module:  "model forms;sl:whos news:acts:"
;;;  version:  March 1991               (v1.8) 

(in-package :CTI-source)


(define-job-event  'retire  'job-event/pers!__
  :infinitive         "retire"
  :tensed/singular    "retires"
  :past-participle    "retired"
  :present-participle "retiring"
  :nominalization     '("retirement" nominalization/person))

