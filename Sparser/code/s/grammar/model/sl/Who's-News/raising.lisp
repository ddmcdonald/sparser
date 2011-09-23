;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "raising"
;;;   Module:  "model;sl:whos news:"
;;;  version:  March 1991      system version 1.8.1

;; initiated 3/26

(in-package :CTI-source)

#|  This file is for the case where a defined verb, such as "continue",
   can also act as a modifier to the actual verb of the clause. |#


;; N.b. this cries out for a treatment as transparent form rules


;;;--------------------------------
;;; 1st swallow the following "to"
;;;--------------------------------

(def-cfr verb-to ( job-event/pers!__!title-pp "to" )
  :referent (:daughter left-edge))


;;;----------------------------------------------------------------
;;; then have the intruding raising verb absorbed by the real verb
;;;----------------------------------------------------------------

(def-cfr job-event/pers!__!title-pp
         ( verb-to job-event/pers!__!title-pp )
  :referent (:daughter right-edge))

