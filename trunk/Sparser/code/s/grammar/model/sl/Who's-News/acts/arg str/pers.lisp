;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "pers"
;;;   Module:  "model forms;sl:whos news:acts:arg str:"
;;;  version:  February 1991               (v1.8.1) 

(in-package :CTI-source)

;; e.g. "retire"

;;;-----------------------
;;; category for the verb
;;;-----------------------

(def-category  job-event/pers!__ :lattice-position :non-terminal)


;;;------------------------------------------
;;; passive -- promote the internal argument
;;;------------------------------------------

;;-- doesn't passivize


;;;---------------------------------------------------
;;; soak up other trailing elements of the verb group
;;;---------------------------------------------------

(def-cfr job-event/pers!__
         (modal  job-event/pers!__)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/pers!__
         (have  job-event/pers!__)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/pers!__
         (be  job-event/pers!__)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/pers!__
         (adverb  job-event/pers!__)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/pers!__
         (temporal-adverb  job-event/pers!__)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/pers!__
         (job-event/pers!__  adverb)
  :form  vg
  :referent  (:daughter left-edge))


(def-cfr job-event/pers!__
         (job-event/pers!__  temporal-adverb)
  :form  vg
  :referent  (:daughter left-edge))


(def-cfr job-event/pers!__
         (job-event/pers!__  time)
  :form  vg
  :referent  (:daughter left-edge))
