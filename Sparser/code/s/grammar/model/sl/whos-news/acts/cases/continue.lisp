;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "continue"
;;;   Module:  "model forms;sl:whos news:acts:"
;;;  version:  March 1991               (v1.8.1) 

;; initiated 2/18, switched to define-job-event 3/7

(in-package :CTI-source)


(define-job-event  'continue-as-title 'job-event/pers!__!title-pp
  :infinitive         "continue"
  :tensed/singular    "continues"
  :past-participle    "continued"
  :present-participle "continuing")

