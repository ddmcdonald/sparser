;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "succeed"
;;;   Module:  "model forms;sl:whos news:acts:"
;;;  version:  1.2  March 1991 

;; initiated in October 1990
;; 1.1 (2/19 v1.8.1) Added "succeed" for swallowing mvb in "was named
;;     to succeed ..."
;; 1.2 (3/6 v1.8.1) Put the whole thing under the new define-job-event

(in-package :CTI-source)


(define-job-event 'succeed-person-as  'job-event/pers!__!pers
  :infinitive         "succeed"
  :tensed/singular    "succeeds"
  :past-participle    "succeeded"
  :present-participle "succeeding")

