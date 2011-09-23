;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "co+pers"
;;;   Module:  "model forms;sl:whos news:acts:arg str:"
;;;  version:  March 1991               (v1.8.1) 

(in-package :CTI-source)

;; e.g. "dismiss"

;;;-----------------------
;;; category for the verb
;;;-----------------------

(def-category  job-event/co!__!pers  :lattice-position :non-terminal)


;;;------------------------------------------
;;; passive -- promote the internal argument
;;;------------------------------------------

(def-cfr job-event/pers!__
         (be job-event/co!__!pers)
  :form  vg
  :referent  (:daughter right-edge))


;;;---------------------------------------------------
;;; soak up other trailing elements of the verb group
;;;---------------------------------------------------

(def-cfr job-event/co!__!pers
         (modal  job-event/co!__!pers)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/co!__!pers
         (have  job-event/co!__!pers)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/co!__!pers
         (adverb  job-event/co!__!pers)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/co!__!pers
         (temporal-adverb  job-event/co!__!pers)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/co!__!pers
         (job-event/co!__!pers  adverb)
  :form  vg
  :referent  (:daughter left-edge))


(def-cfr job-event/co!__!pers
         (job-event/co!__!pers  temporal-adverb)
  :form  vg
  :referent  (:daughter left-edge))


(def-cfr job-event/co!__!pers
         (job-event/co!__!pers  time)
  :form  vg
  :referent  (:daughter left-edge))


;;;------------------------------------
;;; compose with first object (person)
;;;------------------------------------

(def-cfr job-event/co!__
         (job-event/co!__!pers  person)
  :form  vg
  :referent  (:composite job-event+person
                         left-edge right-edge))

