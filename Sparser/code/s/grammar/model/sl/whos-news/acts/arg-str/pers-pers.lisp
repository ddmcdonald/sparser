;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "pers+pers"
;;;   Module:  "model forms;sl:whos news:acts:arg str:"
;;;  version:  February 1991               (v1.8.1) 

(in-package :CTI-source)

;; e.g. "succeed"


;;;-----------------------
;;; category for the verb
;;;-----------------------

(def-category  job-event/pers!__!pers :lattice-position :non-terminal)


;;;------------------------------------------
;;; passive -- promote the internal argument
;;;------------------------------------------

(def-cfr job-event/pers!__
         (be job-event/pers!__!pers)
  :form  vg
  :referent  (:daughter right-edge))


;;;---------------------------------------------------
;;; soak up other trailing elements of the verb group
;;;---------------------------------------------------

(def-cfr job-event/pers!__!pers
         (modal job-event/pers!__!pers)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/pers!__!pers
         (have job-event/pers!__!pers)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/pers!__!pers
         (adverb job-event/pers!__!pers)
  :form  vg
  :referent  (:daughter right-edge))


(def-cfr job-event/pers!__!pers
         (temporal-adverb job-event/pers!__!pers)
  :form  vg
  :referent  (:daughter right-edge))



(def-cfr job-event/pers!__!pers
         (job-event/pers!__!pers adverb)
  :form  vg
  :referent  (:daughter left-edge))


(def-cfr job-event/pers!__!pers
         (job-event/pers!__!pers temporal-adverb)
  :form  vg
  :referent  (:daughter left-edge))


(def-cfr job-event/pers!__!pers
         (job-event/pers!__!pers time)
  :form  vg
  :referent  (:daughter left-edge))

;;;----------------------------
;;; compose with direct object
;;;----------------------------

(def-cfr job-event/pers!__
         (job-event/pers!__!pers person)
  :form  VP
  :referent  (:composite job-event+replacing
                         left-edge right-edge))


;;;----------------------
;;; compose with subject
;;;----------------------

(def-cfr job-event
         (person job-event/pers!__)
  :form  S
  :referent  (:composite job-event+person
                         right-edge left-edge))

