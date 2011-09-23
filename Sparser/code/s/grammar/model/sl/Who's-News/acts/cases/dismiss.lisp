;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "dismiss"
;;;   Module:  "model forms;sl:whos news:acts:"
;;;  version:  March 1991                     (v1.8.1)

;; initiated 2/19, switched to define-job-event 3/7

(in-package :CTI-source)


(define-job-event 'dismiss-from-position  'job-event/co!__!pers
  :infinitive         "dismiss"
  :tensed/singular    "dismisses"
  :past-participle    "dismissed"
  :present-participle "dismissing")

