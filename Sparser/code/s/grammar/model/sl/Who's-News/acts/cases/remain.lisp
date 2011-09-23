;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "remain"
;;;   Module:  "model forms;sl:whos news:acts:"
;;;  version:  1.1  March 1991

;; initiated October 1990
;; 1.1 (3/7 v1.8.1) Switched to define-job-event

(in-package :CTI-source)

(define-job-event  'remain-in-post 'job-event/pers!__!title
  :infinitive         "remain"
  :tensed/singular    "remains"
  :past-participle    "remained"
  :present-participle "remaining")

