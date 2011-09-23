;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "confirm"
;;;   Module:  "model forms;sl:whos news:acts:"
;;;  version:  1.1  March 1991

;; initiated in October 1990
;; 1.1 (3/7 v1.8.1)  Switched to extended define-job-event

(in-package :CTI-source)


(define-job-event 'confirm-as-title 'job-event/co!__!pers!title-pp
  :infinitive         "confirm"
  :tensed/singular    "confirms"
  :past-participle    "confirmed"
  :present-participle "confirming")

