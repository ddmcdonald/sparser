;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "co+pers+title-pp"
;;;   Module:  "model forms;sl:whos news:acts:arg str:"
;;;  version:  March 1991               (v1.8.1) 

(in-package :CTI-source)

;; e.g. "confirm"


;;;-----------------------
;;; category for the verb
;;;-----------------------

(def-category  job-event/co!__!pers!title-pp  :lattice-position :non-terminal)


;;;------------------------------------------
;;; passive -- promote the internal argument
;;;------------------------------------------

(def-cfr job-event/pers!__!title-pp
         (be job-event/co!__!pers!title-pp)
  :form  vg
  :referent  (:daughter right-edge))


;;;---------------------------------------------------
;;; soak up other trailing elements of the verb group
;;;---------------------------------------------------

(def-cfr job-event/co!__!pers!title-pp
         (modal  job-event/co!__!pers!title-pp)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/co!__!pers!title-pp
         (have  job-event/co!__!pers!title-pp)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/co!__!pers!title-pp
         (adverb  job-event/co!__!pers!title-pp)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/co!__!pers!title-pp
         (temporal-adverb  job-event/co!__!pers!title-pp)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/co!__!pers!title-pp
         (job-event/co!__!pers!title-pp  adverb)
  :form  vg
  :referent  (:daughter left-edge))


(def-cfr job-event/co!__!pers!title-pp
         (job-event/co!__!pers!title-pp  temporal-adverb)
  :form  vg
  :referent  (:daughter left-edge))


(def-cfr job-event/co!__!pers!title-pp
         (job-event/co!__!pers!title-pp  time)
  :form  vg
  :referent  (:daughter left-edge))


;;;------------------------------------
;;; compose with first object (person)
;;;------------------------------------

(def-cfr job-event/co!__!title-pp
         (job-event/co!__!pers!title-pp  person)
  :form  vg
  :referent  (:composite job-event+person
                         left-edge right-edge))


;;;------------------------------------
;;; compose with second object (title)
;;;------------------------------------

(def-cfr job-event/co!__
         (job-event/co!__!title-pp title-pp)
  :form  vg
  :referent  (:composite job-event+title
                         left-edge right-edge))

