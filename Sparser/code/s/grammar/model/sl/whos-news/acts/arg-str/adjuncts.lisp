;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "adjuncts"
;;;   Module:  "model forms;acts:arg str:"
;;;  version:  May 1991

;; initiated 5/2

(in-package :CTI-source)

;;;-----------------------
;;; prepositional phrases
;;;-----------------------

(def-cfr job-event (job-event by-person)
  :referent (:composite job-event+by-person
                        left-edge right-edge))


(def-cfr job-event (job-event of-company)
  :referent (:composite je+of-company
                        left-edge right-edge))


(def-cfr job-event (job-event title-pp)
  :referent (:composite je+title-pp
                        left-edge right-edge))



;; this case comes up in a copula inversion (feb0;68)
;;
(def-cfr job-event/pers!__
         ( job-event/pers!__  title-pp )
  :referent (:composite job-event+title-pp
                        left-edge right-edge))



;;;--------------------------------------------------
;;; nominal adjuncts (optional complement arguments)
;;;--------------------------------------------------

(def-cfr job-event (job-event thisCo)
  :referent (:composite job-event+company
                        left-edge right-edge))

(def-cfr job-event (job-event of-thisCo)
  :referent (:composite job-event+company
                        left-edge right-edge))

