;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "leave"
;;;   Module:  "model forms;sl:whos news:acts:"
;;;  version:  February 1991               (v1.8.1) 

;; initiated 2/18

(in-package :CTI-source)


#| Doing it as the intransitive.  Pick up the optional [co] with CA  |#

(define-job-event  'leave-company 'job-event/pers!__
  :infinitive         "leave"
  :tensed/singular    "leaves"
  :past-participle    "left"
  :present-participle "leaving")

